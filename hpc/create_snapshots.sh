#!/bin/bash
#PBS -N create_snapshots
#PBS -o create_snapshots.out
#PBS -lselect=1:ncpus=32:mem=62gb
#PBS -lwalltime=24:00:00
set -vx

cd /rds/general/user/zrw20/home/DD-GAN-AE/submodules/DD-GAN/preprocessing/src
module purge
module load anaconda3/personal
source activate py2
python get_snapshots_3D.py --ndatapoints=20 --nfiles=799 --in_file_base="/rds/general/user/zrw20/home/data/slug_255_exp_projected_compressed_"

mkdir $WORK/$PBS_JOBID
cp * $WORK/$PBS_JOBID

echo "... Run finished $(date) ..."