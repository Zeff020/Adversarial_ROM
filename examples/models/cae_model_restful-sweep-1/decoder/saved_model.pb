??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

;
Elu
features"T
activations"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??

y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?H*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	d?H*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?H*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:?H*
dtype0
?
conv3d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??* 
shared_nameconv3d_3/kernel
?
#conv3d_3/kernel/Read/ReadVariableOpReadVariableOpconv3d_3/kernel*,
_output_shapes
:??*
dtype0
s
conv3d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_3/bias
l
!conv3d_3/bias/Read/ReadVariableOpReadVariableOpconv3d_3/bias*
_output_shapes	
:?*
dtype0
?
conv3d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:?@* 
shared_nameconv3d_4/kernel
?
#conv3d_4/kernel/Read/ReadVariableOpReadVariableOpconv3d_4/kernel*+
_output_shapes
:?@*
dtype0
r
conv3d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_4/bias
k
!conv3d_4/bias/Read/ReadVariableOpReadVariableOpconv3d_4/bias*
_output_shapes
:@*
dtype0
?
conv3d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv3d_5/kernel

#conv3d_5/kernel/Read/ReadVariableOpReadVariableOpconv3d_5/kernel**
_output_shapes
:@ *
dtype0
r
conv3d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_5/bias
k
!conv3d_5/bias/Read/ReadVariableOpReadVariableOpconv3d_5/bias*
_output_shapes
: *
dtype0
?
conv3d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_6/kernel

#conv3d_6/kernel/Read/ReadVariableOpReadVariableOpconv3d_6/kernel**
_output_shapes
: *
dtype0
r
conv3d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_6/bias
k
!conv3d_6/bias/Read/ReadVariableOpReadVariableOpconv3d_6/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?$
value?$B?$ B?$
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
 regularization_losses
!trainable_variables
"	variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
R
*regularization_losses
+trainable_variables
,	variables
-	keras_api
h

.kernel
/bias
0regularization_losses
1trainable_variables
2	variables
3	keras_api
R
4regularization_losses
5trainable_variables
6	variables
7	keras_api
h

8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
R
>regularization_losses
?trainable_variables
@	variables
A	keras_api
F
0
1
2
3
$4
%5
.6
/7
88
99
 
F
0
1
2
3
$4
%5
.6
/7
88
99
?
Bnon_trainable_variables

Clayers
Dlayer_regularization_losses
trainable_variables
regularization_losses
	variables
Emetrics
Flayer_metrics
 
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Gnon_trainable_variables

Hlayers
Ilayer_regularization_losses
regularization_losses
trainable_variables
	variables
Jmetrics
Klayer_metrics
 
 
 
?
Lnon_trainable_variables

Mlayers
Nlayer_regularization_losses
regularization_losses
trainable_variables
	variables
Ometrics
Player_metrics
[Y
VARIABLE_VALUEconv3d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Qnon_trainable_variables

Rlayers
Slayer_regularization_losses
regularization_losses
trainable_variables
	variables
Tmetrics
Ulayer_metrics
 
 
 
?
Vnon_trainable_variables

Wlayers
Xlayer_regularization_losses
 regularization_losses
!trainable_variables
"	variables
Ymetrics
Zlayer_metrics
[Y
VARIABLE_VALUEconv3d_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
?
[non_trainable_variables

\layers
]layer_regularization_losses
&regularization_losses
'trainable_variables
(	variables
^metrics
_layer_metrics
 
 
 
?
`non_trainable_variables

alayers
blayer_regularization_losses
*regularization_losses
+trainable_variables
,	variables
cmetrics
dlayer_metrics
[Y
VARIABLE_VALUEconv3d_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
?
enon_trainable_variables

flayers
glayer_regularization_losses
0regularization_losses
1trainable_variables
2	variables
hmetrics
ilayer_metrics
 
 
 
?
jnon_trainable_variables

klayers
llayer_regularization_losses
4regularization_losses
5trainable_variables
6	variables
mmetrics
nlayer_metrics
[Y
VARIABLE_VALUEconv3d_6/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_6/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
?
onon_trainable_variables

players
qlayer_regularization_losses
:regularization_losses
;trainable_variables
<	variables
rmetrics
slayer_metrics
 
 
 
?
tnon_trainable_variables

ulayers
vlayer_regularization_losses
>regularization_losses
?trainable_variables
@	variables
wmetrics
xlayer_metrics
 
F
0
1
2
3
4
5
6
7
	8

9
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_dense_1_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_1_inputdense_1/kerneldense_1/biasconv3d_3/kernelconv3d_3/biasconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasconv3d_6/kernelconv3d_6/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_505389
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp#conv3d_3/kernel/Read/ReadVariableOp!conv3d_3/bias/Read/ReadVariableOp#conv3d_4/kernel/Read/ReadVariableOp!conv3d_4/bias/Read/ReadVariableOp#conv3d_5/kernel/Read/ReadVariableOp!conv3d_5/bias/Read/ReadVariableOp#conv3d_6/kernel/Read/ReadVariableOp!conv3d_6/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_506104
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasconv3d_3/kernelconv3d_3/biasconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasconv3d_6/kernelconv3d_6/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_506144ۤ

??
?

!__inference__wrapped_model_504825
dense_1_inputF
3sequential_1_dense_1_matmul_readvariableop_resource:	d?HC
4sequential_1_dense_1_biasadd_readvariableop_resource:	?HT
4sequential_1_conv3d_3_conv3d_readvariableop_resource:??D
5sequential_1_conv3d_3_biasadd_readvariableop_resource:	?S
4sequential_1_conv3d_4_conv3d_readvariableop_resource:?@C
5sequential_1_conv3d_4_biasadd_readvariableop_resource:@R
4sequential_1_conv3d_5_conv3d_readvariableop_resource:@ C
5sequential_1_conv3d_5_biasadd_readvariableop_resource: R
4sequential_1_conv3d_6_conv3d_readvariableop_resource: C
5sequential_1_conv3d_6_biasadd_readvariableop_resource:
identity??,sequential_1/conv3d_3/BiasAdd/ReadVariableOp?+sequential_1/conv3d_3/Conv3D/ReadVariableOp?,sequential_1/conv3d_4/BiasAdd/ReadVariableOp?+sequential_1/conv3d_4/Conv3D/ReadVariableOp?,sequential_1/conv3d_5/BiasAdd/ReadVariableOp?+sequential_1/conv3d_5/Conv3D/ReadVariableOp?,sequential_1/conv3d_6/BiasAdd/ReadVariableOp?+sequential_1/conv3d_6/Conv3D/ReadVariableOp?+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	d?H*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMuldense_1_input2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
sequential_1/dense_1/Relu?
sequential_1/reshape/ShapeShape'sequential_1/dense_1/Relu:activations:0*
T0*
_output_shapes
:2
sequential_1/reshape/Shape?
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack?
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1?
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2?
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice?
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1?
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2?
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/3?
$sequential_1/reshape/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_1/reshape/Reshape/shape/4?
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0-sequential_1/reshape/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape?
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????2
sequential_1/reshape/Reshape?
+sequential_1/conv3d_3/Conv3D/ReadVariableOpReadVariableOp4sequential_1_conv3d_3_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02-
+sequential_1/conv3d_3/Conv3D/ReadVariableOp?
sequential_1/conv3d_3/Conv3DConv3D%sequential_1/reshape/Reshape:output:03sequential_1/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
sequential_1/conv3d_3/Conv3D?
,sequential_1/conv3d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_1/conv3d_3/BiasAdd/ReadVariableOp?
sequential_1/conv3d_3/BiasAddBiasAdd%sequential_1/conv3d_3/Conv3D:output:04sequential_1/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
sequential_1/conv3d_3/BiasAdd?
sequential_1/conv3d_3/EluElu&sequential_1/conv3d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
sequential_1/conv3d_3/Elu?
*sequential_1/up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d/split/split_dim?
 sequential_1/up_sampling3d/splitSplit3sequential_1/up_sampling3d/split/split_dim:output:0'sequential_1/conv3d_3/Elu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2"
 sequential_1/up_sampling3d/split?
&sequential_1/up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_1/up_sampling3d/concat/axis?
!sequential_1/up_sampling3d/concatConcatV2)sequential_1/up_sampling3d/split:output:0)sequential_1/up_sampling3d/split:output:0)sequential_1/up_sampling3d/split:output:1)sequential_1/up_sampling3d/split:output:1)sequential_1/up_sampling3d/split:output:2)sequential_1/up_sampling3d/split:output:2)sequential_1/up_sampling3d/split:output:3)sequential_1/up_sampling3d/split:output:3)sequential_1/up_sampling3d/split:output:4)sequential_1/up_sampling3d/split:output:4)sequential_1/up_sampling3d/split:output:5)sequential_1/up_sampling3d/split:output:5)sequential_1/up_sampling3d/split:output:6)sequential_1/up_sampling3d/split:output:6)sequential_1/up_sampling3d/split:output:7)sequential_1/up_sampling3d/split:output:7/sequential_1/up_sampling3d/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2#
!sequential_1/up_sampling3d/concat?
,sequential_1/up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_1/up_sampling3d/split_1/split_dim?
"sequential_1/up_sampling3d/split_1Split5sequential_1/up_sampling3d/split_1/split_dim:output:0*sequential_1/up_sampling3d/concat:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2$
"sequential_1/up_sampling3d/split_1?
(sequential_1/up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_1/up_sampling3d/concat_1/axis?
#sequential_1/up_sampling3d/concat_1ConcatV2+sequential_1/up_sampling3d/split_1:output:0+sequential_1/up_sampling3d/split_1:output:0+sequential_1/up_sampling3d/split_1:output:1+sequential_1/up_sampling3d/split_1:output:1+sequential_1/up_sampling3d/split_1:output:2+sequential_1/up_sampling3d/split_1:output:21sequential_1/up_sampling3d/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2%
#sequential_1/up_sampling3d/concat_1?
,sequential_1/up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_1/up_sampling3d/split_2/split_dim?
"sequential_1/up_sampling3d/split_2Split5sequential_1/up_sampling3d/split_2/split_dim:output:0,sequential_1/up_sampling3d/concat_1:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2$
"sequential_1/up_sampling3d/split_2?
(sequential_1/up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_1/up_sampling3d/concat_2/axis?
#sequential_1/up_sampling3d/concat_2ConcatV2+sequential_1/up_sampling3d/split_2:output:0+sequential_1/up_sampling3d/split_2:output:0+sequential_1/up_sampling3d/split_2:output:1+sequential_1/up_sampling3d/split_2:output:1+sequential_1/up_sampling3d/split_2:output:2+sequential_1/up_sampling3d/split_2:output:21sequential_1/up_sampling3d/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2%
#sequential_1/up_sampling3d/concat_2?
+sequential_1/conv3d_4/Conv3D/ReadVariableOpReadVariableOp4sequential_1_conv3d_4_conv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02-
+sequential_1/conv3d_4/Conv3D/ReadVariableOp?
sequential_1/conv3d_4/Conv3DConv3D,sequential_1/up_sampling3d/concat_2:output:03sequential_1/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@*
paddingSAME*
strides	
2
sequential_1/conv3d_4/Conv3D?
,sequential_1/conv3d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_1/conv3d_4/BiasAdd/ReadVariableOp?
sequential_1/conv3d_4/BiasAddBiasAdd%sequential_1/conv3d_4/Conv3D:output:04sequential_1/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@2
sequential_1/conv3d_4/BiasAdd?
sequential_1/conv3d_4/EluElu&sequential_1/conv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????@2
sequential_1/conv3d_4/Elu?
,sequential_1/up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_1/up_sampling3d_1/split/split_dim?
"sequential_1/up_sampling3d_1/splitSplit5sequential_1/up_sampling3d_1/split/split_dim:output:0'sequential_1/conv3d_4/Elu:activations:0*
T0*?
_output_shapes?
?:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@*
	num_split2$
"sequential_1/up_sampling3d_1/split?
(sequential_1/up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_1/up_sampling3d_1/concat/axis?
#sequential_1/up_sampling3d_1/concatConcatV2+sequential_1/up_sampling3d_1/split:output:0+sequential_1/up_sampling3d_1/split:output:0+sequential_1/up_sampling3d_1/split:output:1+sequential_1/up_sampling3d_1/split:output:1+sequential_1/up_sampling3d_1/split:output:2+sequential_1/up_sampling3d_1/split:output:2+sequential_1/up_sampling3d_1/split:output:3+sequential_1/up_sampling3d_1/split:output:3+sequential_1/up_sampling3d_1/split:output:4+sequential_1/up_sampling3d_1/split:output:4+sequential_1/up_sampling3d_1/split:output:5+sequential_1/up_sampling3d_1/split:output:5+sequential_1/up_sampling3d_1/split:output:6+sequential_1/up_sampling3d_1/split:output:6+sequential_1/up_sampling3d_1/split:output:7+sequential_1/up_sampling3d_1/split:output:7+sequential_1/up_sampling3d_1/split:output:8+sequential_1/up_sampling3d_1/split:output:8+sequential_1/up_sampling3d_1/split:output:9+sequential_1/up_sampling3d_1/split:output:9,sequential_1/up_sampling3d_1/split:output:10,sequential_1/up_sampling3d_1/split:output:10,sequential_1/up_sampling3d_1/split:output:11,sequential_1/up_sampling3d_1/split:output:11,sequential_1/up_sampling3d_1/split:output:12,sequential_1/up_sampling3d_1/split:output:12,sequential_1/up_sampling3d_1/split:output:13,sequential_1/up_sampling3d_1/split:output:13,sequential_1/up_sampling3d_1/split:output:14,sequential_1/up_sampling3d_1/split:output:14,sequential_1/up_sampling3d_1/split:output:15,sequential_1/up_sampling3d_1/split:output:151sequential_1/up_sampling3d_1/concat/axis:output:0*
N *
T0*3
_output_shapes!
:????????? @2%
#sequential_1/up_sampling3d_1/concat?
.sequential_1/up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.sequential_1/up_sampling3d_1/split_1/split_dim?
$sequential_1/up_sampling3d_1/split_1Split7sequential_1/up_sampling3d_1/split_1/split_dim:output:0,sequential_1/up_sampling3d_1/concat:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2&
$sequential_1/up_sampling3d_1/split_1?
*sequential_1/up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d_1/concat_1/axis?
%sequential_1/up_sampling3d_1/concat_1ConcatV2-sequential_1/up_sampling3d_1/split_1:output:0-sequential_1/up_sampling3d_1/split_1:output:0-sequential_1/up_sampling3d_1/split_1:output:1-sequential_1/up_sampling3d_1/split_1:output:1-sequential_1/up_sampling3d_1/split_1:output:2-sequential_1/up_sampling3d_1/split_1:output:2-sequential_1/up_sampling3d_1/split_1:output:3-sequential_1/up_sampling3d_1/split_1:output:3-sequential_1/up_sampling3d_1/split_1:output:4-sequential_1/up_sampling3d_1/split_1:output:4-sequential_1/up_sampling3d_1/split_1:output:5-sequential_1/up_sampling3d_1/split_1:output:53sequential_1/up_sampling3d_1/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2'
%sequential_1/up_sampling3d_1/concat_1?
.sequential_1/up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.sequential_1/up_sampling3d_1/split_2/split_dim?
$sequential_1/up_sampling3d_1/split_2Split7sequential_1/up_sampling3d_1/split_2/split_dim:output:0.sequential_1/up_sampling3d_1/concat_1:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2&
$sequential_1/up_sampling3d_1/split_2?
*sequential_1/up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d_1/concat_2/axis?
%sequential_1/up_sampling3d_1/concat_2ConcatV2-sequential_1/up_sampling3d_1/split_2:output:0-sequential_1/up_sampling3d_1/split_2:output:0-sequential_1/up_sampling3d_1/split_2:output:1-sequential_1/up_sampling3d_1/split_2:output:1-sequential_1/up_sampling3d_1/split_2:output:2-sequential_1/up_sampling3d_1/split_2:output:2-sequential_1/up_sampling3d_1/split_2:output:3-sequential_1/up_sampling3d_1/split_2:output:3-sequential_1/up_sampling3d_1/split_2:output:4-sequential_1/up_sampling3d_1/split_2:output:4-sequential_1/up_sampling3d_1/split_2:output:5-sequential_1/up_sampling3d_1/split_2:output:53sequential_1/up_sampling3d_1/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2'
%sequential_1/up_sampling3d_1/concat_2?
+sequential_1/conv3d_5/Conv3D/ReadVariableOpReadVariableOp4sequential_1_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02-
+sequential_1/conv3d_5/Conv3D/ReadVariableOp?
sequential_1/conv3d_5/Conv3DConv3D.sequential_1/up_sampling3d_1/concat_2:output:03sequential_1/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 *
paddingVALID*
strides	
2
sequential_1/conv3d_5/Conv3D?
,sequential_1/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv3d_5/BiasAdd/ReadVariableOp?
sequential_1/conv3d_5/BiasAddBiasAdd%sequential_1/conv3d_5/Conv3D:output:04sequential_1/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 2
sequential_1/conv3d_5/BiasAdd?
sequential_1/conv3d_5/EluElu&sequential_1/conv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????

 2
sequential_1/conv3d_5/Elu?
,sequential_1/up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_1/up_sampling3d_2/split/split_dim?	
"sequential_1/up_sampling3d_2/splitSplit5sequential_1/up_sampling3d_2/split/split_dim:output:0'sequential_1/conv3d_5/Elu:activations:0*
T0*?
_output_shapes?
?:?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 *
	num_split2$
"sequential_1/up_sampling3d_2/split?
(sequential_1/up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_1/up_sampling3d_2/concat/axis?
#sequential_1/up_sampling3d_2/concatConcatV2+sequential_1/up_sampling3d_2/split:output:0+sequential_1/up_sampling3d_2/split:output:0+sequential_1/up_sampling3d_2/split:output:1+sequential_1/up_sampling3d_2/split:output:1+sequential_1/up_sampling3d_2/split:output:2+sequential_1/up_sampling3d_2/split:output:2+sequential_1/up_sampling3d_2/split:output:3+sequential_1/up_sampling3d_2/split:output:3+sequential_1/up_sampling3d_2/split:output:4+sequential_1/up_sampling3d_2/split:output:4+sequential_1/up_sampling3d_2/split:output:5+sequential_1/up_sampling3d_2/split:output:5+sequential_1/up_sampling3d_2/split:output:6+sequential_1/up_sampling3d_2/split:output:6+sequential_1/up_sampling3d_2/split:output:7+sequential_1/up_sampling3d_2/split:output:7+sequential_1/up_sampling3d_2/split:output:8+sequential_1/up_sampling3d_2/split:output:8+sequential_1/up_sampling3d_2/split:output:9+sequential_1/up_sampling3d_2/split:output:9,sequential_1/up_sampling3d_2/split:output:10,sequential_1/up_sampling3d_2/split:output:10,sequential_1/up_sampling3d_2/split:output:11,sequential_1/up_sampling3d_2/split:output:11,sequential_1/up_sampling3d_2/split:output:12,sequential_1/up_sampling3d_2/split:output:12,sequential_1/up_sampling3d_2/split:output:13,sequential_1/up_sampling3d_2/split:output:13,sequential_1/up_sampling3d_2/split:output:14,sequential_1/up_sampling3d_2/split:output:14,sequential_1/up_sampling3d_2/split:output:15,sequential_1/up_sampling3d_2/split:output:15,sequential_1/up_sampling3d_2/split:output:16,sequential_1/up_sampling3d_2/split:output:16,sequential_1/up_sampling3d_2/split:output:17,sequential_1/up_sampling3d_2/split:output:17,sequential_1/up_sampling3d_2/split:output:18,sequential_1/up_sampling3d_2/split:output:18,sequential_1/up_sampling3d_2/split:output:19,sequential_1/up_sampling3d_2/split:output:19,sequential_1/up_sampling3d_2/split:output:20,sequential_1/up_sampling3d_2/split:output:20,sequential_1/up_sampling3d_2/split:output:21,sequential_1/up_sampling3d_2/split:output:21,sequential_1/up_sampling3d_2/split:output:22,sequential_1/up_sampling3d_2/split:output:22,sequential_1/up_sampling3d_2/split:output:23,sequential_1/up_sampling3d_2/split:output:23,sequential_1/up_sampling3d_2/split:output:24,sequential_1/up_sampling3d_2/split:output:24,sequential_1/up_sampling3d_2/split:output:25,sequential_1/up_sampling3d_2/split:output:25,sequential_1/up_sampling3d_2/split:output:26,sequential_1/up_sampling3d_2/split:output:26,sequential_1/up_sampling3d_2/split:output:27,sequential_1/up_sampling3d_2/split:output:27,sequential_1/up_sampling3d_2/split:output:28,sequential_1/up_sampling3d_2/split:output:28,sequential_1/up_sampling3d_2/split:output:29,sequential_1/up_sampling3d_2/split:output:291sequential_1/up_sampling3d_2/concat/axis:output:0*
N<*
T0*3
_output_shapes!
:?????????<

 2%
#sequential_1/up_sampling3d_2/concat?
.sequential_1/up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.sequential_1/up_sampling3d_2/split_1/split_dim?
$sequential_1/up_sampling3d_2/split_1Split7sequential_1/up_sampling3d_2/split_1/split_dim:output:0,sequential_1/up_sampling3d_2/concat:output:0*
T0*?
_output_shapes?
?:?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 *
	num_split
2&
$sequential_1/up_sampling3d_2/split_1?
*sequential_1/up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d_2/concat_1/axis?	
%sequential_1/up_sampling3d_2/concat_1ConcatV2-sequential_1/up_sampling3d_2/split_1:output:0-sequential_1/up_sampling3d_2/split_1:output:0-sequential_1/up_sampling3d_2/split_1:output:1-sequential_1/up_sampling3d_2/split_1:output:1-sequential_1/up_sampling3d_2/split_1:output:2-sequential_1/up_sampling3d_2/split_1:output:2-sequential_1/up_sampling3d_2/split_1:output:3-sequential_1/up_sampling3d_2/split_1:output:3-sequential_1/up_sampling3d_2/split_1:output:4-sequential_1/up_sampling3d_2/split_1:output:4-sequential_1/up_sampling3d_2/split_1:output:5-sequential_1/up_sampling3d_2/split_1:output:5-sequential_1/up_sampling3d_2/split_1:output:6-sequential_1/up_sampling3d_2/split_1:output:6-sequential_1/up_sampling3d_2/split_1:output:7-sequential_1/up_sampling3d_2/split_1:output:7-sequential_1/up_sampling3d_2/split_1:output:8-sequential_1/up_sampling3d_2/split_1:output:8-sequential_1/up_sampling3d_2/split_1:output:9-sequential_1/up_sampling3d_2/split_1:output:93sequential_1/up_sampling3d_2/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????<
 2'
%sequential_1/up_sampling3d_2/concat_1?
.sequential_1/up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.sequential_1/up_sampling3d_2/split_2/split_dim?
$sequential_1/up_sampling3d_2/split_2Split7sequential_1/up_sampling3d_2/split_2/split_dim:output:0.sequential_1/up_sampling3d_2/concat_1:output:0*
T0*?
_output_shapes?
?:?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< *
	num_split
2&
$sequential_1/up_sampling3d_2/split_2?
*sequential_1/up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d_2/concat_2/axis?	
%sequential_1/up_sampling3d_2/concat_2ConcatV2-sequential_1/up_sampling3d_2/split_2:output:0-sequential_1/up_sampling3d_2/split_2:output:0-sequential_1/up_sampling3d_2/split_2:output:1-sequential_1/up_sampling3d_2/split_2:output:1-sequential_1/up_sampling3d_2/split_2:output:2-sequential_1/up_sampling3d_2/split_2:output:2-sequential_1/up_sampling3d_2/split_2:output:3-sequential_1/up_sampling3d_2/split_2:output:3-sequential_1/up_sampling3d_2/split_2:output:4-sequential_1/up_sampling3d_2/split_2:output:4-sequential_1/up_sampling3d_2/split_2:output:5-sequential_1/up_sampling3d_2/split_2:output:5-sequential_1/up_sampling3d_2/split_2:output:6-sequential_1/up_sampling3d_2/split_2:output:6-sequential_1/up_sampling3d_2/split_2:output:7-sequential_1/up_sampling3d_2/split_2:output:7-sequential_1/up_sampling3d_2/split_2:output:8-sequential_1/up_sampling3d_2/split_2:output:8-sequential_1/up_sampling3d_2/split_2:output:9-sequential_1/up_sampling3d_2/split_2:output:93sequential_1/up_sampling3d_2/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:?????????< 2'
%sequential_1/up_sampling3d_2/concat_2?
+sequential_1/conv3d_6/Conv3D/ReadVariableOpReadVariableOp4sequential_1_conv3d_6_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02-
+sequential_1/conv3d_6/Conv3D/ReadVariableOp?
sequential_1/conv3d_6/Conv3DConv3D.sequential_1/up_sampling3d_2/concat_2:output:03sequential_1/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<*
paddingSAME*
strides	
2
sequential_1/conv3d_6/Conv3D?
,sequential_1/conv3d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_1/conv3d_6/BiasAdd/ReadVariableOp?
sequential_1/conv3d_6/BiasAddBiasAdd%sequential_1/conv3d_6/Conv3D:output:04sequential_1/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<2
sequential_1/conv3d_6/BiasAdd?
sequential_1/conv3d_6/SigmoidSigmoid&sequential_1/conv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????<2
sequential_1/conv3d_6/Sigmoid?
+sequential_1/cropping3d/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    2-
+sequential_1/cropping3d/strided_slice/stack?
-sequential_1/cropping3d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    2/
-sequential_1/cropping3d/strided_slice/stack_1?
-sequential_1/cropping3d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               2/
-sequential_1/cropping3d/strided_slice/stack_2?
%sequential_1/cropping3d/strided_sliceStridedSlice!sequential_1/conv3d_6/Sigmoid:y:04sequential_1/cropping3d/strided_slice/stack:output:06sequential_1/cropping3d/strided_slice/stack_1:output:06sequential_1/cropping3d/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:?????????<*

begin_mask*
end_mask2'
%sequential_1/cropping3d/strided_slice?
IdentityIdentity.sequential_1/cropping3d/strided_slice:output:0-^sequential_1/conv3d_3/BiasAdd/ReadVariableOp,^sequential_1/conv3d_3/Conv3D/ReadVariableOp-^sequential_1/conv3d_4/BiasAdd/ReadVariableOp,^sequential_1/conv3d_4/Conv3D/ReadVariableOp-^sequential_1/conv3d_5/BiasAdd/ReadVariableOp,^sequential_1/conv3d_5/Conv3D/ReadVariableOp-^sequential_1/conv3d_6/BiasAdd/ReadVariableOp,^sequential_1/conv3d_6/Conv3D/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 2\
,sequential_1/conv3d_3/BiasAdd/ReadVariableOp,sequential_1/conv3d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv3d_3/Conv3D/ReadVariableOp+sequential_1/conv3d_3/Conv3D/ReadVariableOp2\
,sequential_1/conv3d_4/BiasAdd/ReadVariableOp,sequential_1/conv3d_4/BiasAdd/ReadVariableOp2Z
+sequential_1/conv3d_4/Conv3D/ReadVariableOp+sequential_1/conv3d_4/Conv3D/ReadVariableOp2\
,sequential_1/conv3d_5/BiasAdd/ReadVariableOp,sequential_1/conv3d_5/BiasAdd/ReadVariableOp2Z
+sequential_1/conv3d_5/Conv3D/ReadVariableOp+sequential_1/conv3d_5/Conv3D/ReadVariableOp2\
,sequential_1/conv3d_6/BiasAdd/ReadVariableOp,sequential_1/conv3d_6/BiasAdd/ReadVariableOp2Z
+sequential_1/conv3d_6/Conv3D/ReadVariableOp+sequential_1/conv3d_6/Conv3D/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_1_input
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_505796

inputs1
matmul_readvariableop_resource:	d?H.
biasadd_readvariableop_resource:	?H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?H*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
g
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_505938

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15concat/axis:output:0*
N *
T0*3
_output_shapes!
:????????? @2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:????????? @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@:[ W
3
_output_shapes!
:?????????@
 
_user_specified_nameinputs
?
g
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_504985

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15concat/axis:output:0*
N *
T0*3
_output_shapes!
:????????? @2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:????????? @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@:[ W
3
_output_shapes!
:?????????@
 
_user_specified_nameinputs
?
?
D__inference_conv3d_4_layer_call_and_return_conditional_losses_504938

inputs=
conv3d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@2	
BiasAdda
EluEluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
D
(__inference_reshape_layer_call_fn_505825

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5048792
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????H:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?'
g
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_506026

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 *
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15split:output:16split:output:16split:output:17split:output:17split:output:18split:output:18split:output:19split:output:19split:output:20split:output:20split:output:21split:output:21split:output:22split:output:22split:output:23split:output:23split:output:24split:output:24split:output:25split:output:25split:output:26split:output:26split:output:27split:output:27split:output:28split:output:28split:output:29split:output:29concat/axis:output:0*
N<*
T0*3
_output_shapes!
:?????????<

 2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 *
	num_split
2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????<
 2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< *
	num_split
2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:?????????< 2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:?????????< 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????

 :[ W
3
_output_shapes!
:?????????

 
 
_user_specified_nameinputs
?
?
D__inference_conv3d_3_layer_call_and_return_conditional_losses_505836

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAddb
EluEluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?-
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505246

inputs!
dense_1_505215:	d?H
dense_1_505217:	?H/
conv3d_3_505221:??
conv3d_3_505223:	?.
conv3d_4_505227:?@
conv3d_4_505229:@-
conv3d_5_505233:@ 
conv3d_5_505235: -
conv3d_6_505239: 
conv3d_6_505241:
identity?? conv3d_3/StatefulPartitionedCall? conv3d_4/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_505215dense_1_505217*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5048582!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5048792
reshape/PartitionedCall?
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv3d_3_505221conv3d_3_505223*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_5048922"
 conv3d_3/StatefulPartitionedCall?
up_sampling3d/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_5049252
up_sampling3d/PartitionedCall?
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling3d/PartitionedCall:output:0conv3d_4_505227conv3d_4_505229*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_5049382"
 conv3d_4/StatefulPartitionedCall?
up_sampling3d_1/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_5049852!
up_sampling3d_1/PartitionedCall?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_1/PartitionedCall:output:0conv3d_5_505233conv3d_5_505235*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_5049982"
 conv3d_5/StatefulPartitionedCall?
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_5050672!
up_sampling3d_2/PartitionedCall?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_6_505239conv3d_6_505241*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_5050802"
 conv3d_6/StatefulPartitionedCall?
cropping3d/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_5048342
cropping3d/PartitionedCall?
IdentityIdentity#cropping3d/PartitionedCall:output:0!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
J
.__inference_up_sampling3d_layer_call_fn_505877

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_5049252
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_505389
dense_1_input
unknown:	d?H
	unknown_0:	?H)
	unknown_1:??
	unknown_2:	?(
	unknown_3:?@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_5048252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_1_input
?
?
)__inference_conv3d_5_layer_call_fn_505963

inputs%
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_5049982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????

 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? @: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:????????? @
 
_user_specified_nameinputs
?
?
)__inference_conv3d_3_layer_call_fn_505845

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_5048922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
D__inference_conv3d_5_layer_call_and_return_conditional_losses_504998

inputs<
conv3d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 *
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 2	
BiasAdda
EluEluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????

 2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????

 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:????????? @
 
_user_specified_nameinputs
?
_
C__inference_reshape_layer_call_and_return_conditional_losses_504879

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3e
Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/4?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape|
ReshapeReshapeinputsReshape/shape:output:0*
T0*4
_output_shapes"
 :??????????2	
Reshapeq
IdentityIdentityReshape:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????H:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?

?
-__inference_sequential_1_layer_call_fn_505294
dense_1_input
unknown:	d?H
	unknown_0:	?H)
	unknown_1:??
	unknown_2:	?(
	unknown_3:?@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_5052462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_1_input
?'
g
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_505067

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 *
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15split:output:16split:output:16split:output:17split:output:17split:output:18split:output:18split:output:19split:output:19split:output:20split:output:20split:output:21split:output:21split:output:22split:output:22split:output:23split:output:23split:output:24split:output:24split:output:25split:output:25split:output:26split:output:26split:output:27split:output:27split:output:28split:output:28split:output:29split:output:29concat/axis:output:0*
N<*
T0*3
_output_shapes!
:?????????<

 2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 *
	num_split
2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????<
 2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< *
	num_split
2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:?????????< 2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:?????????< 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????

 :[ W
3
_output_shapes!
:?????????

 
 
_user_specified_nameinputs
?
?
(__inference_dense_1_layer_call_fn_505805

inputs
unknown:	d?H
	unknown_0:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5048582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
e
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_505872

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?	
b
F__inference_cropping3d_layer_call_and_return_conditional_losses_504834

inputs
identity?
strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    2
strided_slice/stack_1?
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               2
strided_slice/stack_2?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*

begin_mask*
end_mask2
strided_slice?
IdentityIdentitystrided_slice:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_up_sampling3d_1_layer_call_fn_505943

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_5049852
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:????????? @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@:[ W
3
_output_shapes!
:?????????@
 
_user_specified_nameinputs
?.
?
"__inference__traced_restore_506144
file_prefix2
assignvariableop_dense_1_kernel:	d?H.
assignvariableop_1_dense_1_bias:	?HB
"assignvariableop_2_conv3d_3_kernel:??/
 assignvariableop_3_conv3d_3_bias:	?A
"assignvariableop_4_conv3d_4_kernel:?@.
 assignvariableop_5_conv3d_4_bias:@@
"assignvariableop_6_conv3d_5_kernel:@ .
 assignvariableop_7_conv3d_5_bias: @
"assignvariableop_8_conv3d_6_kernel: .
 assignvariableop_9_conv3d_6_bias:
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv3d_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv3d_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv3d_4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv3d_4_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv3d_5_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv3d_5_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv3d_6_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv3d_6_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?-
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505328
dense_1_input!
dense_1_505297:	d?H
dense_1_505299:	?H/
conv3d_3_505303:??
conv3d_3_505305:	?.
conv3d_4_505309:?@
conv3d_4_505311:@-
conv3d_5_505315:@ 
conv3d_5_505317: -
conv3d_6_505321: 
conv3d_6_505323:
identity?? conv3d_3/StatefulPartitionedCall? conv3d_4/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_505297dense_1_505299*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5048582!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5048792
reshape/PartitionedCall?
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv3d_3_505303conv3d_3_505305*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_5048922"
 conv3d_3/StatefulPartitionedCall?
up_sampling3d/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_5049252
up_sampling3d/PartitionedCall?
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling3d/PartitionedCall:output:0conv3d_4_505309conv3d_4_505311*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_5049382"
 conv3d_4/StatefulPartitionedCall?
up_sampling3d_1/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_5049852!
up_sampling3d_1/PartitionedCall?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_1/PartitionedCall:output:0conv3d_5_505315conv3d_5_505317*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_5049982"
 conv3d_5/StatefulPartitionedCall?
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_5050672!
up_sampling3d_2/PartitionedCall?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_6_505321conv3d_6_505323*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_5050802"
 conv3d_6/StatefulPartitionedCall?
cropping3d/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_5048342
cropping3d/PartitionedCall?
IdentityIdentity#cropping3d/PartitionedCall:output:0!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_1_input
?-
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505362
dense_1_input!
dense_1_505331:	d?H
dense_1_505333:	?H/
conv3d_3_505337:??
conv3d_3_505339:	?.
conv3d_4_505343:?@
conv3d_4_505345:@-
conv3d_5_505349:@ 
conv3d_5_505351: -
conv3d_6_505355: 
conv3d_6_505357:
identity?? conv3d_3/StatefulPartitionedCall? conv3d_4/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_505331dense_1_505333*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5048582!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5048792
reshape/PartitionedCall?
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv3d_3_505337conv3d_3_505339*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_5048922"
 conv3d_3/StatefulPartitionedCall?
up_sampling3d/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_5049252
up_sampling3d/PartitionedCall?
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling3d/PartitionedCall:output:0conv3d_4_505343conv3d_4_505345*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_5049382"
 conv3d_4/StatefulPartitionedCall?
up_sampling3d_1/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_5049852!
up_sampling3d_1/PartitionedCall?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_1/PartitionedCall:output:0conv3d_5_505349conv3d_5_505351*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_5049982"
 conv3d_5/StatefulPartitionedCall?
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_5050672!
up_sampling3d_2/PartitionedCall?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_6_505355conv3d_6_505357*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_5050802"
 conv3d_6/StatefulPartitionedCall?
cropping3d/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_5048342
cropping3d/PartitionedCall?
IdentityIdentity#cropping3d/PartitionedCall:output:0!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_1_input
?
?
D__inference_conv3d_4_layer_call_and_return_conditional_losses_505888

inputs=
conv3d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@2	
BiasAdda
EluEluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
D__inference_conv3d_3_layer_call_and_return_conditional_losses_504892

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAddb
EluEluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?-
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505088

inputs!
dense_1_504859:	d?H
dense_1_504861:	?H/
conv3d_3_504893:??
conv3d_3_504895:	?.
conv3d_4_504939:?@
conv3d_4_504941:@-
conv3d_5_504999:@ 
conv3d_5_505001: -
conv3d_6_505081: 
conv3d_6_505083:
identity?? conv3d_3/StatefulPartitionedCall? conv3d_4/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_504859dense_1_504861*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5048582!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5048792
reshape/PartitionedCall?
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv3d_3_504893conv3d_3_504895*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_5048922"
 conv3d_3/StatefulPartitionedCall?
up_sampling3d/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_5049252
up_sampling3d/PartitionedCall?
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling3d/PartitionedCall:output:0conv3d_4_504939conv3d_4_504941*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_5049382"
 conv3d_4/StatefulPartitionedCall?
up_sampling3d_1/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_5049852!
up_sampling3d_1/PartitionedCall?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_1/PartitionedCall:output:0conv3d_5_504999conv3d_5_505001*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_5049982"
 conv3d_5/StatefulPartitionedCall?
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_5050672!
up_sampling3d_2/PartitionedCall?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_6_505081conv3d_6_505083*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_5050802"
 conv3d_6/StatefulPartitionedCall?
cropping3d/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_5048342
cropping3d/PartitionedCall?
IdentityIdentity#cropping3d/PartitionedCall:output:0!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_504858

inputs1
matmul_readvariableop_resource:	d?H.
biasadd_readvariableop_resource:	?H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?H*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
-__inference_sequential_1_layer_call_fn_505111
dense_1_input
unknown:	d?H
	unknown_0:	?H)
	unknown_1:??
	unknown_2:	?(
	unknown_3:?@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_5050882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_1_input
?
?
D__inference_conv3d_6_layer_call_and_return_conditional_losses_505080

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<2	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????<2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????< 
 
_user_specified_nameinputs
?
_
C__inference_reshape_layer_call_and_return_conditional_losses_505820

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3e
Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/4?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape|
ReshapeReshapeinputsReshape/shape:output:0*
T0*4
_output_shapes"
 :??????????2	
Reshapeq
IdentityIdentityReshape:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????H:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
D__inference_conv3d_5_layer_call_and_return_conditional_losses_505954

inputs<
conv3d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 *
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 2	
BiasAdda
EluEluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????

 2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????

 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:????????? @
 
_user_specified_nameinputs
?
?
)__inference_conv3d_6_layer_call_fn_506051

inputs%
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_5050802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????< : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????< 
 
_user_specified_nameinputs
?
G
+__inference_cropping3d_layer_call_fn_504840

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_5048342
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_up_sampling3d_2_layer_call_fn_506031

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_5050672
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????< 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????

 :[ W
3
_output_shapes!
:?????????

 
 
_user_specified_nameinputs
?
?
)__inference_conv3d_4_layer_call_fn_505897

inputs&
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_5049382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?"
?
__inference__traced_save_506104
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop.
*savev2_conv3d_3_kernel_read_readvariableop,
(savev2_conv3d_3_bias_read_readvariableop.
*savev2_conv3d_4_kernel_read_readvariableop,
(savev2_conv3d_4_bias_read_readvariableop.
*savev2_conv3d_5_kernel_read_readvariableop,
(savev2_conv3d_5_bias_read_readvariableop.
*savev2_conv3d_6_kernel_read_readvariableop,
(savev2_conv3d_6_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop*savev2_conv3d_3_kernel_read_readvariableop(savev2_conv3d_3_bias_read_readvariableop*savev2_conv3d_4_kernel_read_readvariableop(savev2_conv3d_4_bias_read_readvariableop*savev2_conv3d_5_kernel_read_readvariableop(savev2_conv3d_5_bias_read_readvariableop*savev2_conv3d_6_kernel_read_readvariableop(savev2_conv3d_6_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	d?H:?H:??:?:?@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	d?H:!

_output_shapes	
:?H:2.
,
_output_shapes
:??:!

_output_shapes	
:?:1-
+
_output_shapes
:?@: 

_output_shapes
:@:0,
*
_output_shapes
:@ : 

_output_shapes
: :0	,
*
_output_shapes
: : 


_output_shapes
::

_output_shapes
: 
?
e
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_504925

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
D__inference_conv3d_6_layer_call_and_return_conditional_losses_506042

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<2	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????<2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????< 
 
_user_specified_nameinputs
?

?
-__inference_sequential_1_layer_call_fn_505760

inputs
unknown:	d?H
	unknown_0:	?H)
	unknown_1:??
	unknown_2:	?(
	unknown_3:?@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_5050882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505562

inputs9
&dense_1_matmul_readvariableop_resource:	d?H6
'dense_1_biasadd_readvariableop_resource:	?HG
'conv3d_3_conv3d_readvariableop_resource:??7
(conv3d_3_biasadd_readvariableop_resource:	?F
'conv3d_4_conv3d_readvariableop_resource:?@6
(conv3d_4_biasadd_readvariableop_resource:@E
'conv3d_5_conv3d_readvariableop_resource:@ 6
(conv3d_5_biasadd_readvariableop_resource: E
'conv3d_6_conv3d_readvariableop_resource: 6
(conv3d_6_biasadd_readvariableop_resource:
identity??conv3d_3/BiasAdd/ReadVariableOp?conv3d_3/Conv3D/ReadVariableOp?conv3d_4/BiasAdd/ReadVariableOp?conv3d_4/Conv3D/ReadVariableOp?conv3d_5/BiasAdd/ReadVariableOp?conv3d_5/Conv3D/ReadVariableOp?conv3d_6/BiasAdd/ReadVariableOp?conv3d_6/Conv3D/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	d?H*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
dense_1/Reluh
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/3u
reshape/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape/Reshape/shape/4?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0 reshape/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????2
reshape/Reshape?
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_3/Conv3D/ReadVariableOp?
conv3d_3/Conv3DConv3Dreshape/Reshape:output:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_3/Conv3D?
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_3/BiasAdd/ReadVariableOp?
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_3/BiasAdd}
conv3d_3/EluEluconv3d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_3/Elu?
up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/split/split_dim?
up_sampling3d/splitSplit&up_sampling3d/split/split_dim:output:0conv3d_3/Elu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d/splitx
up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat/axis?
up_sampling3d/concatConcatV2up_sampling3d/split:output:0up_sampling3d/split:output:0up_sampling3d/split:output:1up_sampling3d/split:output:1up_sampling3d/split:output:2up_sampling3d/split:output:2up_sampling3d/split:output:3up_sampling3d/split:output:3up_sampling3d/split:output:4up_sampling3d/split:output:4up_sampling3d/split:output:5up_sampling3d/split:output:5up_sampling3d/split:output:6up_sampling3d/split:output:6up_sampling3d/split:output:7up_sampling3d/split:output:7"up_sampling3d/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat?
up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_1/split_dim?
up_sampling3d/split_1Split(up_sampling3d/split_1/split_dim:output:0up_sampling3d/concat:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2
up_sampling3d/split_1|
up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_1/axis?
up_sampling3d/concat_1ConcatV2up_sampling3d/split_1:output:0up_sampling3d/split_1:output:0up_sampling3d/split_1:output:1up_sampling3d/split_1:output:1up_sampling3d/split_1:output:2up_sampling3d/split_1:output:2$up_sampling3d/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat_1?
up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_2/split_dim?
up_sampling3d/split_2Split(up_sampling3d/split_2/split_dim:output:0up_sampling3d/concat_1:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2
up_sampling3d/split_2|
up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_2/axis?
up_sampling3d/concat_2ConcatV2up_sampling3d/split_2:output:0up_sampling3d/split_2:output:0up_sampling3d/split_2:output:1up_sampling3d/split_2:output:1up_sampling3d/split_2:output:2up_sampling3d/split_2:output:2$up_sampling3d/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat_2?
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02 
conv3d_4/Conv3D/ReadVariableOp?
conv3d_4/Conv3DConv3Dup_sampling3d/concat_2:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@*
paddingSAME*
strides	
2
conv3d_4/Conv3D?
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv3d_4/BiasAdd/ReadVariableOp?
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@2
conv3d_4/BiasAdd|
conv3d_4/EluEluconv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????@2
conv3d_4/Elu?
up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_1/split/split_dim?
up_sampling3d_1/splitSplit(up_sampling3d_1/split/split_dim:output:0conv3d_4/Elu:activations:0*
T0*?
_output_shapes?
?:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@*
	num_split2
up_sampling3d_1/split|
up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat/axis?	
up_sampling3d_1/concatConcatV2up_sampling3d_1/split:output:0up_sampling3d_1/split:output:0up_sampling3d_1/split:output:1up_sampling3d_1/split:output:1up_sampling3d_1/split:output:2up_sampling3d_1/split:output:2up_sampling3d_1/split:output:3up_sampling3d_1/split:output:3up_sampling3d_1/split:output:4up_sampling3d_1/split:output:4up_sampling3d_1/split:output:5up_sampling3d_1/split:output:5up_sampling3d_1/split:output:6up_sampling3d_1/split:output:6up_sampling3d_1/split:output:7up_sampling3d_1/split:output:7up_sampling3d_1/split:output:8up_sampling3d_1/split:output:8up_sampling3d_1/split:output:9up_sampling3d_1/split:output:9up_sampling3d_1/split:output:10up_sampling3d_1/split:output:10up_sampling3d_1/split:output:11up_sampling3d_1/split:output:11up_sampling3d_1/split:output:12up_sampling3d_1/split:output:12up_sampling3d_1/split:output:13up_sampling3d_1/split:output:13up_sampling3d_1/split:output:14up_sampling3d_1/split:output:14up_sampling3d_1/split:output:15up_sampling3d_1/split:output:15$up_sampling3d_1/concat/axis:output:0*
N *
T0*3
_output_shapes!
:????????? @2
up_sampling3d_1/concat?
!up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_1/split_dim?
up_sampling3d_1/split_1Split*up_sampling3d_1/split_1/split_dim:output:0up_sampling3d_1/concat:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2
up_sampling3d_1/split_1?
up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_1/axis?
up_sampling3d_1/concat_1ConcatV2 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:5&up_sampling3d_1/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2
up_sampling3d_1/concat_1?
!up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_2/split_dim?
up_sampling3d_1/split_2Split*up_sampling3d_1/split_2/split_dim:output:0!up_sampling3d_1/concat_1:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2
up_sampling3d_1/split_2?
up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_2/axis?
up_sampling3d_1/concat_2ConcatV2 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:5&up_sampling3d_1/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2
up_sampling3d_1/concat_2?
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02 
conv3d_5/Conv3D/ReadVariableOp?
conv3d_5/Conv3DConv3D!up_sampling3d_1/concat_2:output:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 *
paddingVALID*
strides	
2
conv3d_5/Conv3D?
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv3d_5/BiasAdd/ReadVariableOp?
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 2
conv3d_5/BiasAdd|
conv3d_5/EluEluconv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????

 2
conv3d_5/Elu?
up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_2/split/split_dim?
up_sampling3d_2/splitSplit(up_sampling3d_2/split/split_dim:output:0conv3d_5/Elu:activations:0*
T0*?
_output_shapes?
?:?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 *
	num_split2
up_sampling3d_2/split|
up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat/axis?
up_sampling3d_2/concatConcatV2up_sampling3d_2/split:output:0up_sampling3d_2/split:output:0up_sampling3d_2/split:output:1up_sampling3d_2/split:output:1up_sampling3d_2/split:output:2up_sampling3d_2/split:output:2up_sampling3d_2/split:output:3up_sampling3d_2/split:output:3up_sampling3d_2/split:output:4up_sampling3d_2/split:output:4up_sampling3d_2/split:output:5up_sampling3d_2/split:output:5up_sampling3d_2/split:output:6up_sampling3d_2/split:output:6up_sampling3d_2/split:output:7up_sampling3d_2/split:output:7up_sampling3d_2/split:output:8up_sampling3d_2/split:output:8up_sampling3d_2/split:output:9up_sampling3d_2/split:output:9up_sampling3d_2/split:output:10up_sampling3d_2/split:output:10up_sampling3d_2/split:output:11up_sampling3d_2/split:output:11up_sampling3d_2/split:output:12up_sampling3d_2/split:output:12up_sampling3d_2/split:output:13up_sampling3d_2/split:output:13up_sampling3d_2/split:output:14up_sampling3d_2/split:output:14up_sampling3d_2/split:output:15up_sampling3d_2/split:output:15up_sampling3d_2/split:output:16up_sampling3d_2/split:output:16up_sampling3d_2/split:output:17up_sampling3d_2/split:output:17up_sampling3d_2/split:output:18up_sampling3d_2/split:output:18up_sampling3d_2/split:output:19up_sampling3d_2/split:output:19up_sampling3d_2/split:output:20up_sampling3d_2/split:output:20up_sampling3d_2/split:output:21up_sampling3d_2/split:output:21up_sampling3d_2/split:output:22up_sampling3d_2/split:output:22up_sampling3d_2/split:output:23up_sampling3d_2/split:output:23up_sampling3d_2/split:output:24up_sampling3d_2/split:output:24up_sampling3d_2/split:output:25up_sampling3d_2/split:output:25up_sampling3d_2/split:output:26up_sampling3d_2/split:output:26up_sampling3d_2/split:output:27up_sampling3d_2/split:output:27up_sampling3d_2/split:output:28up_sampling3d_2/split:output:28up_sampling3d_2/split:output:29up_sampling3d_2/split:output:29$up_sampling3d_2/concat/axis:output:0*
N<*
T0*3
_output_shapes!
:?????????<

 2
up_sampling3d_2/concat?
!up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_1/split_dim?
up_sampling3d_2/split_1Split*up_sampling3d_2/split_1/split_dim:output:0up_sampling3d_2/concat:output:0*
T0*?
_output_shapes?
?:?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 *
	num_split
2
up_sampling3d_2/split_1?
up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_1/axis?
up_sampling3d_2/concat_1ConcatV2 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:9 up_sampling3d_2/split_1:output:9&up_sampling3d_2/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????<
 2
up_sampling3d_2/concat_1?
!up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_2/split_dim?
up_sampling3d_2/split_2Split*up_sampling3d_2/split_2/split_dim:output:0!up_sampling3d_2/concat_1:output:0*
T0*?
_output_shapes?
?:?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< *
	num_split
2
up_sampling3d_2/split_2?
up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_2/axis?
up_sampling3d_2/concat_2ConcatV2 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:9 up_sampling3d_2/split_2:output:9&up_sampling3d_2/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:?????????< 2
up_sampling3d_2/concat_2?
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02 
conv3d_6/Conv3D/ReadVariableOp?
conv3d_6/Conv3DConv3D!up_sampling3d_2/concat_2:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<*
paddingSAME*
strides	
2
conv3d_6/Conv3D?
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_6/BiasAdd/ReadVariableOp?
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<2
conv3d_6/BiasAdd?
conv3d_6/SigmoidSigmoidconv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????<2
conv3d_6/Sigmoid?
cropping3d/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    2 
cropping3d/strided_slice/stack?
 cropping3d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    2"
 cropping3d/strided_slice/stack_1?
 cropping3d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               2"
 cropping3d/strided_slice/stack_2?
cropping3d/strided_sliceStridedSliceconv3d_6/Sigmoid:y:0'cropping3d/strided_slice/stack:output:0)cropping3d/strided_slice/stack_1:output:0)cropping3d/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:?????????<*

begin_mask*
end_mask2
cropping3d/strided_slice?
IdentityIdentity!cropping3d/strided_slice:output:0 ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505735

inputs9
&dense_1_matmul_readvariableop_resource:	d?H6
'dense_1_biasadd_readvariableop_resource:	?HG
'conv3d_3_conv3d_readvariableop_resource:??7
(conv3d_3_biasadd_readvariableop_resource:	?F
'conv3d_4_conv3d_readvariableop_resource:?@6
(conv3d_4_biasadd_readvariableop_resource:@E
'conv3d_5_conv3d_readvariableop_resource:@ 6
(conv3d_5_biasadd_readvariableop_resource: E
'conv3d_6_conv3d_readvariableop_resource: 6
(conv3d_6_biasadd_readvariableop_resource:
identity??conv3d_3/BiasAdd/ReadVariableOp?conv3d_3/Conv3D/ReadVariableOp?conv3d_4/BiasAdd/ReadVariableOp?conv3d_4/Conv3D/ReadVariableOp?conv3d_5/BiasAdd/ReadVariableOp?conv3d_5/Conv3D/ReadVariableOp?conv3d_6/BiasAdd/ReadVariableOp?conv3d_6/Conv3D/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	d?H*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
dense_1/Reluh
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/3u
reshape/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape/Reshape/shape/4?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0 reshape/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????2
reshape/Reshape?
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_3/Conv3D/ReadVariableOp?
conv3d_3/Conv3DConv3Dreshape/Reshape:output:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_3/Conv3D?
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_3/BiasAdd/ReadVariableOp?
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_3/BiasAdd}
conv3d_3/EluEluconv3d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_3/Elu?
up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/split/split_dim?
up_sampling3d/splitSplit&up_sampling3d/split/split_dim:output:0conv3d_3/Elu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d/splitx
up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat/axis?
up_sampling3d/concatConcatV2up_sampling3d/split:output:0up_sampling3d/split:output:0up_sampling3d/split:output:1up_sampling3d/split:output:1up_sampling3d/split:output:2up_sampling3d/split:output:2up_sampling3d/split:output:3up_sampling3d/split:output:3up_sampling3d/split:output:4up_sampling3d/split:output:4up_sampling3d/split:output:5up_sampling3d/split:output:5up_sampling3d/split:output:6up_sampling3d/split:output:6up_sampling3d/split:output:7up_sampling3d/split:output:7"up_sampling3d/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat?
up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_1/split_dim?
up_sampling3d/split_1Split(up_sampling3d/split_1/split_dim:output:0up_sampling3d/concat:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2
up_sampling3d/split_1|
up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_1/axis?
up_sampling3d/concat_1ConcatV2up_sampling3d/split_1:output:0up_sampling3d/split_1:output:0up_sampling3d/split_1:output:1up_sampling3d/split_1:output:1up_sampling3d/split_1:output:2up_sampling3d/split_1:output:2$up_sampling3d/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat_1?
up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_2/split_dim?
up_sampling3d/split_2Split(up_sampling3d/split_2/split_dim:output:0up_sampling3d/concat_1:output:0*
T0*t
_output_shapesb
`:??????????:??????????:??????????*
	num_split2
up_sampling3d/split_2|
up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_2/axis?
up_sampling3d/concat_2ConcatV2up_sampling3d/split_2:output:0up_sampling3d/split_2:output:0up_sampling3d/split_2:output:1up_sampling3d/split_2:output:1up_sampling3d/split_2:output:2up_sampling3d/split_2:output:2$up_sampling3d/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat_2?
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02 
conv3d_4/Conv3D/ReadVariableOp?
conv3d_4/Conv3DConv3Dup_sampling3d/concat_2:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@*
paddingSAME*
strides	
2
conv3d_4/Conv3D?
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv3d_4/BiasAdd/ReadVariableOp?
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????@2
conv3d_4/BiasAdd|
conv3d_4/EluEluconv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????@2
conv3d_4/Elu?
up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_1/split/split_dim?
up_sampling3d_1/splitSplit(up_sampling3d_1/split/split_dim:output:0conv3d_4/Elu:activations:0*
T0*?
_output_shapes?
?:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@:?????????@*
	num_split2
up_sampling3d_1/split|
up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat/axis?	
up_sampling3d_1/concatConcatV2up_sampling3d_1/split:output:0up_sampling3d_1/split:output:0up_sampling3d_1/split:output:1up_sampling3d_1/split:output:1up_sampling3d_1/split:output:2up_sampling3d_1/split:output:2up_sampling3d_1/split:output:3up_sampling3d_1/split:output:3up_sampling3d_1/split:output:4up_sampling3d_1/split:output:4up_sampling3d_1/split:output:5up_sampling3d_1/split:output:5up_sampling3d_1/split:output:6up_sampling3d_1/split:output:6up_sampling3d_1/split:output:7up_sampling3d_1/split:output:7up_sampling3d_1/split:output:8up_sampling3d_1/split:output:8up_sampling3d_1/split:output:9up_sampling3d_1/split:output:9up_sampling3d_1/split:output:10up_sampling3d_1/split:output:10up_sampling3d_1/split:output:11up_sampling3d_1/split:output:11up_sampling3d_1/split:output:12up_sampling3d_1/split:output:12up_sampling3d_1/split:output:13up_sampling3d_1/split:output:13up_sampling3d_1/split:output:14up_sampling3d_1/split:output:14up_sampling3d_1/split:output:15up_sampling3d_1/split:output:15$up_sampling3d_1/concat/axis:output:0*
N *
T0*3
_output_shapes!
:????????? @2
up_sampling3d_1/concat?
!up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_1/split_dim?
up_sampling3d_1/split_1Split*up_sampling3d_1/split_1/split_dim:output:0up_sampling3d_1/concat:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2
up_sampling3d_1/split_1?
up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_1/axis?
up_sampling3d_1/concat_1ConcatV2 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:5&up_sampling3d_1/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2
up_sampling3d_1/concat_1?
!up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_2/split_dim?
up_sampling3d_1/split_2Split*up_sampling3d_1/split_2/split_dim:output:0!up_sampling3d_1/concat_1:output:0*
T0*?
_output_shapes?
?:????????? @:????????? @:????????? @:????????? @:????????? @:????????? @*
	num_split2
up_sampling3d_1/split_2?
up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_2/axis?
up_sampling3d_1/concat_2ConcatV2 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:5&up_sampling3d_1/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:????????? @2
up_sampling3d_1/concat_2?
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02 
conv3d_5/Conv3D/ReadVariableOp?
conv3d_5/Conv3DConv3D!up_sampling3d_1/concat_2:output:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 *
paddingVALID*
strides	
2
conv3d_5/Conv3D?
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv3d_5/BiasAdd/ReadVariableOp?
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????

 2
conv3d_5/BiasAdd|
conv3d_5/EluEluconv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????

 2
conv3d_5/Elu?
up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_2/split/split_dim?
up_sampling3d_2/splitSplit(up_sampling3d_2/split/split_dim:output:0conv3d_5/Elu:activations:0*
T0*?
_output_shapes?
?:?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 :?????????

 *
	num_split2
up_sampling3d_2/split|
up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat/axis?
up_sampling3d_2/concatConcatV2up_sampling3d_2/split:output:0up_sampling3d_2/split:output:0up_sampling3d_2/split:output:1up_sampling3d_2/split:output:1up_sampling3d_2/split:output:2up_sampling3d_2/split:output:2up_sampling3d_2/split:output:3up_sampling3d_2/split:output:3up_sampling3d_2/split:output:4up_sampling3d_2/split:output:4up_sampling3d_2/split:output:5up_sampling3d_2/split:output:5up_sampling3d_2/split:output:6up_sampling3d_2/split:output:6up_sampling3d_2/split:output:7up_sampling3d_2/split:output:7up_sampling3d_2/split:output:8up_sampling3d_2/split:output:8up_sampling3d_2/split:output:9up_sampling3d_2/split:output:9up_sampling3d_2/split:output:10up_sampling3d_2/split:output:10up_sampling3d_2/split:output:11up_sampling3d_2/split:output:11up_sampling3d_2/split:output:12up_sampling3d_2/split:output:12up_sampling3d_2/split:output:13up_sampling3d_2/split:output:13up_sampling3d_2/split:output:14up_sampling3d_2/split:output:14up_sampling3d_2/split:output:15up_sampling3d_2/split:output:15up_sampling3d_2/split:output:16up_sampling3d_2/split:output:16up_sampling3d_2/split:output:17up_sampling3d_2/split:output:17up_sampling3d_2/split:output:18up_sampling3d_2/split:output:18up_sampling3d_2/split:output:19up_sampling3d_2/split:output:19up_sampling3d_2/split:output:20up_sampling3d_2/split:output:20up_sampling3d_2/split:output:21up_sampling3d_2/split:output:21up_sampling3d_2/split:output:22up_sampling3d_2/split:output:22up_sampling3d_2/split:output:23up_sampling3d_2/split:output:23up_sampling3d_2/split:output:24up_sampling3d_2/split:output:24up_sampling3d_2/split:output:25up_sampling3d_2/split:output:25up_sampling3d_2/split:output:26up_sampling3d_2/split:output:26up_sampling3d_2/split:output:27up_sampling3d_2/split:output:27up_sampling3d_2/split:output:28up_sampling3d_2/split:output:28up_sampling3d_2/split:output:29up_sampling3d_2/split:output:29$up_sampling3d_2/concat/axis:output:0*
N<*
T0*3
_output_shapes!
:?????????<

 2
up_sampling3d_2/concat?
!up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_1/split_dim?
up_sampling3d_2/split_1Split*up_sampling3d_2/split_1/split_dim:output:0up_sampling3d_2/concat:output:0*
T0*?
_output_shapes?
?:?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 :?????????<
 *
	num_split
2
up_sampling3d_2/split_1?
up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_1/axis?
up_sampling3d_2/concat_1ConcatV2 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:9 up_sampling3d_2/split_1:output:9&up_sampling3d_2/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????<
 2
up_sampling3d_2/concat_1?
!up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_2/split_dim?
up_sampling3d_2/split_2Split*up_sampling3d_2/split_2/split_dim:output:0!up_sampling3d_2/concat_1:output:0*
T0*?
_output_shapes?
?:?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< :?????????< *
	num_split
2
up_sampling3d_2/split_2?
up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_2/axis?
up_sampling3d_2/concat_2ConcatV2 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:9 up_sampling3d_2/split_2:output:9&up_sampling3d_2/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:?????????< 2
up_sampling3d_2/concat_2?
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02 
conv3d_6/Conv3D/ReadVariableOp?
conv3d_6/Conv3DConv3D!up_sampling3d_2/concat_2:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<*
paddingSAME*
strides	
2
conv3d_6/Conv3D?
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_6/BiasAdd/ReadVariableOp?
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????<2
conv3d_6/BiasAdd?
conv3d_6/SigmoidSigmoidconv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????<2
conv3d_6/Sigmoid?
cropping3d/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    2 
cropping3d/strided_slice/stack?
 cropping3d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    2"
 cropping3d/strided_slice/stack_1?
 cropping3d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               2"
 cropping3d/strided_slice/stack_2?
cropping3d/strided_sliceStridedSliceconv3d_6/Sigmoid:y:0'cropping3d/strided_slice/stack:output:0)cropping3d/strided_slice/stack_1:output:0)cropping3d/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:?????????<*

begin_mask*
end_mask2
cropping3d/strided_slice?
IdentityIdentity!cropping3d/strided_slice:output:0 ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
-__inference_sequential_1_layer_call_fn_505785

inputs
unknown:	d?H
	unknown_0:	?H)
	unknown_1:??
	unknown_2:	?(
	unknown_3:?@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_5052462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
dense_1_input6
serving_default_dense_1_input:0?????????dJ

cropping3d<
StatefulPartitionedCall:0?????????<tensorflow/serving/predict:??
?W
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
trainable_variables
regularization_losses
	variables
	keras_api

signatures
*y&call_and_return_all_conditional_losses
z_default_save_signature
{__call__"?T
_tf_keras_sequential?S{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_1_input"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 9216, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 3, 3, 128]}}}, {"class_name": "Conv3D", "config": {"name": "conv3d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv3D", "config": {"name": "conv3d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv3D", "config": {"name": "conv3d_5", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv3D", "config": {"name": "conv3d_6", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Cropping3D", "config": {"name": "cropping3d", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}}]}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 100]}, "float32", "dense_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_1_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 9216, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 3, 3, 128]}}, "shared_object_id": 4}, {"class_name": "Conv3D", "config": {"name": "conv3d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7}, {"class_name": "Conv3D", "config": {"name": "conv3d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Conv3D", "config": {"name": "conv3d_5", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 13}, {"class_name": "Conv3D", "config": {"name": "conv3d_6", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "Cropping3D", "config": {"name": "cropping3d", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "shared_object_id": 16}]}}}
?	

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*|&call_and_return_all_conditional_losses
}__call__"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 9216, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
regularization_losses
trainable_variables
	variables
	keras_api
*~&call_and_return_all_conditional_losses
__call__"?
_tf_keras_layer?{"name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 3, 3, 128]}}, "shared_object_id": 4}
?


kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 128}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 3, 3, 128]}}
?
 regularization_losses
!trainable_variables
"	variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "up_sampling3d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7}
?


$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 128}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 6, 6, 128]}}
?
*regularization_losses
+trainable_variables
,	variables
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "up_sampling3d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10}
?


.kernel
/bias
0regularization_losses
1trainable_variables
2	variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_5", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 64}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 12, 12, 64]}}
?
4regularization_losses
5trainable_variables
6	variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "up_sampling3d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 13}
?


8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_6", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 20, 20, 32]}}
?
>regularization_losses
?trainable_variables
@	variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "cropping3d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Cropping3D", "config": {"name": "cropping3d", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 23}}
f
0
1
2
3
$4
%5
.6
/7
88
99"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
$4
%5
.6
/7
88
99"
trackable_list_wrapper
?
Bnon_trainable_variables

Clayers
Dlayer_regularization_losses
trainable_variables
regularization_losses
	variables
Emetrics
Flayer_metrics
{__call__
z_default_save_signature
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
!:	d?H2dense_1/kernel
:?H2dense_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Gnon_trainable_variables

Hlayers
Ilayer_regularization_losses
regularization_losses
trainable_variables
	variables
Jmetrics
Klayer_metrics
}__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lnon_trainable_variables

Mlayers
Nlayer_regularization_losses
regularization_losses
trainable_variables
	variables
Ometrics
Player_metrics
__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
/:-??2conv3d_3/kernel
:?2conv3d_3/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Qnon_trainable_variables

Rlayers
Slayer_regularization_losses
regularization_losses
trainable_variables
	variables
Tmetrics
Ulayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Vnon_trainable_variables

Wlayers
Xlayer_regularization_losses
 regularization_losses
!trainable_variables
"	variables
Ymetrics
Zlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,?@2conv3d_4/kernel
:@2conv3d_4/bias
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
[non_trainable_variables

\layers
]layer_regularization_losses
&regularization_losses
'trainable_variables
(	variables
^metrics
_layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
`non_trainable_variables

alayers
blayer_regularization_losses
*regularization_losses
+trainable_variables
,	variables
cmetrics
dlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+@ 2conv3d_5/kernel
: 2conv3d_5/bias
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?
enon_trainable_variables

flayers
glayer_regularization_losses
0regularization_losses
1trainable_variables
2	variables
hmetrics
ilayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
jnon_trainable_variables

klayers
llayer_regularization_losses
4regularization_losses
5trainable_variables
6	variables
mmetrics
nlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv3d_6/kernel
:2conv3d_6/bias
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
onon_trainable_variables

players
qlayer_regularization_losses
:regularization_losses
;trainable_variables
<	variables
rmetrics
slayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
tnon_trainable_variables

ulayers
vlayer_regularization_losses
>regularization_losses
?trainable_variables
@	variables
wmetrics
xlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505562
H__inference_sequential_1_layer_call_and_return_conditional_losses_505735
H__inference_sequential_1_layer_call_and_return_conditional_losses_505328
H__inference_sequential_1_layer_call_and_return_conditional_losses_505362?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_504825?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *,?)
'?$
dense_1_input?????????d
?2?
-__inference_sequential_1_layer_call_fn_505111
-__inference_sequential_1_layer_call_fn_505760
-__inference_sequential_1_layer_call_fn_505785
-__inference_sequential_1_layer_call_fn_505294?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_dense_1_layer_call_and_return_conditional_losses_505796?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_1_layer_call_fn_505805?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_reshape_layer_call_and_return_conditional_losses_505820?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_reshape_layer_call_fn_505825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv3d_3_layer_call_and_return_conditional_losses_505836?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv3d_3_layer_call_fn_505845?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_505872?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_up_sampling3d_layer_call_fn_505877?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv3d_4_layer_call_and_return_conditional_losses_505888?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv3d_4_layer_call_fn_505897?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_505938?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_up_sampling3d_1_layer_call_fn_505943?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv3d_5_layer_call_and_return_conditional_losses_505954?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv3d_5_layer_call_fn_505963?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_506026?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_up_sampling3d_2_layer_call_fn_506031?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv3d_6_layer_call_and_return_conditional_losses_506042?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv3d_6_layer_call_fn_506051?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_cropping3d_layer_call_and_return_conditional_losses_504834?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
+__inference_cropping3d_layer_call_fn_504840?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?B?
$__inference_signature_wrapper_505389dense_1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_504825?
$%./896?3
,?)
'?$
dense_1_input?????????d
? "C?@
>

cropping3d0?-

cropping3d?????????<?
D__inference_conv3d_3_layer_call_and_return_conditional_losses_505836v<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
)__inference_conv3d_3_layer_call_fn_505845i<?9
2?/
-?*
inputs??????????
? "%?"???????????
D__inference_conv3d_4_layer_call_and_return_conditional_losses_505888u$%<?9
2?/
-?*
inputs??????????
? "1?.
'?$
0?????????@
? ?
)__inference_conv3d_4_layer_call_fn_505897h$%<?9
2?/
-?*
inputs??????????
? "$?!?????????@?
D__inference_conv3d_5_layer_call_and_return_conditional_losses_505954t./;?8
1?.
,?)
inputs????????? @
? "1?.
'?$
0?????????

 
? ?
)__inference_conv3d_5_layer_call_fn_505963g./;?8
1?.
,?)
inputs????????? @
? "$?!?????????

 ?
D__inference_conv3d_6_layer_call_and_return_conditional_losses_506042t89;?8
1?.
,?)
inputs?????????< 
? "1?.
'?$
0?????????<
? ?
)__inference_conv3d_6_layer_call_fn_506051g89;?8
1?.
,?)
inputs?????????< 
? "$?!?????????<?
F__inference_cropping3d_layer_call_and_return_conditional_losses_504834?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
+__inference_cropping3d_layer_call_fn_504840?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
C__inference_dense_1_layer_call_and_return_conditional_losses_505796]/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????H
? |
(__inference_dense_1_layer_call_fn_505805P/?,
%?"
 ?
inputs?????????d
? "???????????H?
C__inference_reshape_layer_call_and_return_conditional_losses_505820f0?-
&?#
!?
inputs??????????H
? "2?/
(?%
0??????????
? ?
(__inference_reshape_layer_call_fn_505825Y0?-
&?#
!?
inputs??????????H
? "%?"???????????
H__inference_sequential_1_layer_call_and_return_conditional_losses_505328
$%./89>?;
4?1
'?$
dense_1_input?????????d
p 

 
? "1?.
'?$
0?????????<
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505362
$%./89>?;
4?1
'?$
dense_1_input?????????d
p

 
? "1?.
'?$
0?????????<
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505562x
$%./897?4
-?*
 ?
inputs?????????d
p 

 
? "1?.
'?$
0?????????<
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_505735x
$%./897?4
-?*
 ?
inputs?????????d
p

 
? "1?.
'?$
0?????????<
? ?
-__inference_sequential_1_layer_call_fn_505111r
$%./89>?;
4?1
'?$
dense_1_input?????????d
p 

 
? "$?!?????????<?
-__inference_sequential_1_layer_call_fn_505294r
$%./89>?;
4?1
'?$
dense_1_input?????????d
p

 
? "$?!?????????<?
-__inference_sequential_1_layer_call_fn_505760k
$%./897?4
-?*
 ?
inputs?????????d
p 

 
? "$?!?????????<?
-__inference_sequential_1_layer_call_fn_505785k
$%./897?4
-?*
 ?
inputs?????????d
p

 
? "$?!?????????<?
$__inference_signature_wrapper_505389?
$%./89G?D
? 
=?:
8
dense_1_input'?$
dense_1_input?????????d"C?@
>

cropping3d0?-

cropping3d?????????<?
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_505938p;?8
1?.
,?)
inputs?????????@
? "1?.
'?$
0????????? @
? ?
0__inference_up_sampling3d_1_layer_call_fn_505943c;?8
1?.
,?)
inputs?????????@
? "$?!????????? @?
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_506026p;?8
1?.
,?)
inputs?????????

 
? "1?.
'?$
0?????????< 
? ?
0__inference_up_sampling3d_2_layer_call_fn_506031c;?8
1?.
,?)
inputs?????????

 
? "$?!?????????< ?
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_505872r<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
.__inference_up_sampling3d_layer_call_fn_505877e<?9
2?/
-?*
inputs??????????
? "%?"??????????