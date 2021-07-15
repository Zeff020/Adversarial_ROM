"""

Predictive Models

"""

from keras.layers import Input, Conv1D
from keras.models import Model
import tensorflow as tf
import datetime
import numpy as np
import wandb
from sklearn.preprocessing import MinMaxScaler


class Predictive_adversarial:
    """
    Predictive adversarial SVD Autoencoder class
    """

    def __init__(self, encoder, decoder, discriminator, optimizer):
        self.encoder = encoder
        self.decoder = decoder
        self.discriminator = discriminator
        self.latent_dim = self.decoder.layers[0].input_shape[1]

        self.optimizer = optimizer

    def reconstruct_from_pod(coeffs, R):
        return R @ coeffs

    def compile(self, nPOD):

        self.nPOD = nPOD
        if isinstance(self.encoder.layers[0], Conv1D):
            # Convolutional networks require a slightly different input shape
            self.input_shape = (1, 3*nPOD)
        else:
            self.input_shape = (3*nPOD,)

        self.discriminator.compile(optimizer=self.optimizer,
                                   loss='binary_crossentropy',
                                   metrics=['accuracy'])

        self.discriminator.trainable = False

        vec = Input(shape=self.input_shape)
        encoded_repr = self.encoder(vec)
        gen_vec = self.decoder(encoded_repr)

        valid = self.discriminator(encoded_repr)

        self.adversarial_autoencoder = Model(vec, [gen_vec, valid])

        self.adversarial_autoencoder.compile(loss=['mse',
                                                   'binary_crossentropy'],
                                             loss_weights=[0.999, 0.001],
                                             optimizer=self.optimizer)

    def train(self, input_data, epochs, interval=5, val_data=None,
              batch_size=128, val_batch_size=128, wandb_log=False,
              n_discriminator=5):
        """
        Training model where we use a training method that weights
        the losses of the discriminator and autoencoder and as such combines
        them into one loss and trains on them simultaneously. Takes in POD
        coefficients or latent variables. The timestep shifts will be done in
        this function.

        Args:
            train_data (np.ndarray): Array with train data, in shape
                                     (ngrids, nvars, ntime) (rescaled)
            epochs (int): Number of epochs
            interval (int): choose every `interval` variables to model
            val_data (np.ndarray, optional): Array with validation data.
                Defaults to None.
            batch_size (int, optional): Batch size. Defaults to 128.
            plot_losses (bool, optional): Whether to plot losses.
                Defaults to False.
            print_losses (bool, optional): Whether to print losses.
                Defaults to False.
        """

        d_loss_val = g_loss_val = None
        self.interval = interval

        # Preprocessing
        # For now only select first 4 subdomains
        for k in range(interval):
            grid_coeffs = np.array(input_data)[:, :, k::interval]

            train_data = np.zeros((grid_coeffs.shape[0] - 2,
                                   grid_coeffs.shape[1]
                                   * 3, grid_coeffs.shape[2]))

            for i in range(1, grid_coeffs.shape[0]-1):
                for j in range(3):
                    train_data[i-1, j*self.nPOD:(j+1)*self.nPOD, :] = \
                        grid_coeffs[i+j-1, :, :]

            train_data_swap = train_data.swapaxes(1, 2)

            step = train_data_swap[:, :-1, :]
            step_forward = train_data_swap[:, 1:, :]

            step[:, :, :self.nPOD] = step_forward[:, :, :self.nPOD]
            step[:, :, self.nPOD*2:] = step_forward[:, :, self.nPOD*2:]

            x_train = step
            y_train = step_forward

            x_train = np.concatenate(x_train, 0)
            y_train = np.concatenate(y_train, 0)

            # We only predict the central POD coefficients
            y_train = y_train[:, self.nPOD:self.nPOD*2]

            if k == 0:
                x_train_full = x_train
                y_train_full = y_train
            else:
                x_train_full = np.concatenate([x_train_full, x_train])
                y_train_full = np.concatenate([y_train_full, y_train])

        train_dataset = tf.data.Dataset.from_tensor_slices((x_train_full,
                                                            y_train_full))
        train_dataset = train_dataset.batch(batch_size, drop_remainder=True)

        # Set up tensorboard logging
        current_time = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
        train_log_dir = 'logs/' + current_time + '/train'
        val_log_dir = 'logs/' + current_time + '/val'
        train_summary_writer = tf.summary.create_file_writer(train_log_dir)
        val_summary_writer = tf.summary.create_file_writer(val_log_dir)

        # Adversarial ground truths
        valid = np.ones((batch_size, 1))
        fake = np.zeros((batch_size, 1))

        for epoch in range(epochs):

            # Regularization phase
            d_loss_cum = 0
            g_loss_cum = 0
            g_step = 0
            step = 0
            for step, (x, y) in enumerate(train_dataset):

                latent_fake = self.encoder.predict(x)
                latent_real = np.random.normal(size=(batch_size,
                                                     self.latent_dim))

                # Train the discriminator
                d_loss_real = self.discriminator.train_on_batch(latent_real,
                                                                valid)[0]
                d_loss_fake = self.discriminator.train_on_batch(latent_fake,
                                                                fake)[0]
                d_loss_cum += 0.5 * np.add(d_loss_real, d_loss_fake)

                if step % n_discriminator == 0:

                    g_loss_cum += \
                        self.adversarial_autoencoder.train_on_batch(x,
                                                                    [y,
                                                                     valid])[0]
                    g_step += 1

            d_loss = d_loss_cum/(step+1)
            g_loss = g_loss_cum/(g_step+1)

            with train_summary_writer.as_default():
                tf.summary.scalar('loss - g', g_loss, step=epoch)
                tf.summary.scalar('loss - d', d_loss, step=epoch)

            # Calculate the accuracies on the validation set
            if val_data is not None:

                with val_summary_writer.as_default():
                    tf.summary.scalar('loss - g', g_loss_val, step=epoch)
                    tf.summary.scalar('loss - d', d_loss_val, step=epoch)

            if wandb_log:
                if val_data is not None:
                    log = {"epoch": epoch,
                           "g_train_loss": g_loss,
                           "d_train_loss": d_loss,
                           "g_valid_loss": g_loss_val,
                           "d_valid_loss": d_loss_val}
                else:
                    log = {"epoch": epoch,
                           "g_train_loss": g_loss,
                           "d_train_loss": d_loss}

                wandb.log(log)

    def validate(self, val_dataset, val_batch_size):
        """
        Validate model on previously unseen dataset.

        Args:
            val_dataset (np.array): Validation dataset
            val_batch_size (int, optional): Validation batch size. Defaults to
                                            128.

        Returns:
            tuple: Validation losses and accuracies
        """

        # Adversarial ground truths
        valid = np.ones((val_batch_size, 1))
        fake = np.zeros((val_batch_size, 1))

        d_loss_cum = 0
        g_loss_cum = 0
        step = 0
        for step, val_grids in enumerate(val_dataset):

            latent_fake = self.encoder.predict(val_grids)
            latent_real = np.random.normal(size=(val_batch_size,
                                                 self.latent_dim))

            d_loss_real = self.discriminator.evaluate(latent_real,
                                                      valid, verbose=0)[0]
            d_loss_fake = self.discriminator.evaluate(latent_fake,
                                                      fake, verbose=0)[0]
            d_loss_cum += 0.5 * np.add(d_loss_real, d_loss_fake)

            g_loss_cum += self.adversarial_autoencoder.evaluate(val_grids,
                                                                [val_grids,
                                                                 valid],
                                                                verbose=0)[0]

        # Average the loss and accuracy over the entire dataset
        d_loss = d_loss_cum/(step+1)
        g_loss = g_loss_cum/(step+1)

        return d_loss, g_loss

    def predict(self, boundaries, init_values, timesteps, iters=5):
        """
        Predict in time using boundaries and initial values for a certain
        number of timesteps. The timestep shifts will be done in this function

        Args:
            boundaries (np.ndarray): Boundaries in shape
                                     (nboundaries (2), nvars, ntimesteps)
            init_values (np.ndarray): Initial values in shape (ngrids, nvars)
            timesteps (int): Number of timesteps to predict
            iters (int): Number of iterations to do before a prediction
        """
        boundaries = boundaries[:, :, ::self.interval][:, :, 1:]

        pred_vars = np.zeros((2 + init_values.shape[0], 10,
                              boundaries.shape[2]))
        pred_vars[0] = boundaries[0]
        pred_vars[1:-1, :, 0] = init_values
        pred_vars[3] = boundaries[1]

        for i in range(timesteps):
            # Outer "timesteps" loop
            for j in range(iters):
                # Inner optimization loop within a timestep
                for k in range(1, init_values.shape[0]+1):
                    # Loop over the columns that are meant to be predicted
                    pred_vars[k, :, i+1] = \
                        self.adversarial_autoencoder.predict(
                            pred_vars[k-1:k+2, :, i].reshape(1, -1))[0]

        return pred_vars