??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
module_wrapper/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namemodule_wrapper/conv2d/kernel
?
0module_wrapper/conv2d/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/kernel*&
_output_shapes
:*
dtype0
?
module_wrapper/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namemodule_wrapper/conv2d/bias
?
.module_wrapper/conv2d/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/bias*
_output_shapes
:*
dtype0
?
 module_wrapper_2/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" module_wrapper_2/conv2d_1/kernel
?
4module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_2/conv2d_1/kernel*&
_output_shapes
:*
dtype0
?
module_wrapper_2/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name module_wrapper_2/conv2d_1/bias
?
2module_wrapper_2/conv2d_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_2/conv2d_1/bias*
_output_shapes
:*
dtype0
?
 module_wrapper_4/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" module_wrapper_4/conv2d_2/kernel
?
4module_wrapper_4/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_4/conv2d_2/kernel*&
_output_shapes
: *
dtype0
?
module_wrapper_4/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name module_wrapper_4/conv2d_2/bias
?
2module_wrapper_4/conv2d_2/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_4/conv2d_2/bias*
_output_shapes
: *
dtype0
?
*module_wrapper_7/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*module_wrapper_7/batch_normalization/gamma
?
>module_wrapper_7/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp*module_wrapper_7/batch_normalization/gamma*
_output_shapes	
:?*
dtype0
?
)module_wrapper_7/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)module_wrapper_7/batch_normalization/beta
?
=module_wrapper_7/batch_normalization/beta/Read/ReadVariableOpReadVariableOp)module_wrapper_7/batch_normalization/beta*
_output_shapes	
:?*
dtype0
?
0module_wrapper_7/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*A
shared_name20module_wrapper_7/batch_normalization/moving_mean
?
Dmodule_wrapper_7/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp0module_wrapper_7/batch_normalization/moving_mean*
_output_shapes	
:?*
dtype0
?
4module_wrapper_7/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64module_wrapper_7/batch_normalization/moving_variance
?
Hmodule_wrapper_7/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp4module_wrapper_7/batch_normalization/moving_variance*
_output_shapes	
:?*
dtype0
?
module_wrapper_9/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namemodule_wrapper_9/dense/kernel
?
1module_wrapper_9/dense/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_9/dense/kernel*
_output_shapes
:	?*
dtype0
?
module_wrapper_9/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namemodule_wrapper_9/dense/bias
?
/module_wrapper_9/dense/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_9/dense/bias*
_output_shapes
:*
dtype0
?
-module_wrapper_10/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-module_wrapper_10/batch_normalization_1/gamma
?
Amodule_wrapper_10/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp-module_wrapper_10/batch_normalization_1/gamma*
_output_shapes
:*
dtype0
?
,module_wrapper_10/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,module_wrapper_10/batch_normalization_1/beta
?
@module_wrapper_10/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp,module_wrapper_10/batch_normalization_1/beta*
_output_shapes
:*
dtype0
?
3module_wrapper_10/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53module_wrapper_10/batch_normalization_1/moving_mean
?
Gmodule_wrapper_10/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp3module_wrapper_10/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
?
7module_wrapper_10/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*H
shared_name97module_wrapper_10/batch_normalization_1/moving_variance
?
Kmodule_wrapper_10/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp7module_wrapper_10/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
?
 module_wrapper_12/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" module_wrapper_12/dense_1/kernel
?
4module_wrapper_12/dense_1/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_12/dense_1/kernel*
_output_shapes

:*
dtype0
?
module_wrapper_12/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name module_wrapper_12/dense_1/bias
?
2module_wrapper_12/dense_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_12/dense_1/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
#Adam/module_wrapper/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/module_wrapper/conv2d/kernel/m
?
7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/m*&
_output_shapes
:*
dtype0
?
!Adam/module_wrapper/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/module_wrapper/conv2d/bias/m
?
5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/m*
_output_shapes
:*
dtype0
?
'Adam/module_wrapper_2/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'Adam/module_wrapper_2/conv2d_1/kernel/m
?
;Adam/module_wrapper_2/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_2/conv2d_1/kernel/m*&
_output_shapes
:*
dtype0
?
%Adam/module_wrapper_2/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_2/conv2d_1/bias/m
?
9Adam/module_wrapper_2/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_2/conv2d_1/bias/m*
_output_shapes
:*
dtype0
?
'Adam/module_wrapper_4/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/module_wrapper_4/conv2d_2/kernel/m
?
;Adam/module_wrapper_4/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_4/conv2d_2/kernel/m*&
_output_shapes
: *
dtype0
?
%Adam/module_wrapper_4/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/module_wrapper_4/conv2d_2/bias/m
?
9Adam/module_wrapper_4/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_4/conv2d_2/bias/m*
_output_shapes
: *
dtype0
?
1Adam/module_wrapper_7/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*B
shared_name31Adam/module_wrapper_7/batch_normalization/gamma/m
?
EAdam/module_wrapper_7/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp1Adam/module_wrapper_7/batch_normalization/gamma/m*
_output_shapes	
:?*
dtype0
?
0Adam/module_wrapper_7/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*A
shared_name20Adam/module_wrapper_7/batch_normalization/beta/m
?
DAdam/module_wrapper_7/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOp0Adam/module_wrapper_7/batch_normalization/beta/m*
_output_shapes	
:?*
dtype0
?
$Adam/module_wrapper_9/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/module_wrapper_9/dense/kernel/m
?
8Adam/module_wrapper_9/dense/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_9/dense/kernel/m*
_output_shapes
:	?*
dtype0
?
"Adam/module_wrapper_9/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/module_wrapper_9/dense/bias/m
?
6Adam/module_wrapper_9/dense/bias/m/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_9/dense/bias/m*
_output_shapes
:*
dtype0
?
4Adam/module_wrapper_10/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/module_wrapper_10/batch_normalization_1/gamma/m
?
HAdam/module_wrapper_10/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_10/batch_normalization_1/gamma/m*
_output_shapes
:*
dtype0
?
3Adam/module_wrapper_10/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53Adam/module_wrapper_10/batch_normalization_1/beta/m
?
GAdam/module_wrapper_10/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_10/batch_normalization_1/beta/m*
_output_shapes
:*
dtype0
?
'Adam/module_wrapper_12/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'Adam/module_wrapper_12/dense_1/kernel/m
?
;Adam/module_wrapper_12/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_12/dense_1/kernel/m*
_output_shapes

:*
dtype0
?
%Adam/module_wrapper_12/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_12/dense_1/bias/m
?
9Adam/module_wrapper_12/dense_1/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_12/dense_1/bias/m*
_output_shapes
:*
dtype0
?
#Adam/module_wrapper/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/module_wrapper/conv2d/kernel/v
?
7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/v*&
_output_shapes
:*
dtype0
?
!Adam/module_wrapper/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/module_wrapper/conv2d/bias/v
?
5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/v*
_output_shapes
:*
dtype0
?
'Adam/module_wrapper_2/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'Adam/module_wrapper_2/conv2d_1/kernel/v
?
;Adam/module_wrapper_2/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_2/conv2d_1/kernel/v*&
_output_shapes
:*
dtype0
?
%Adam/module_wrapper_2/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_2/conv2d_1/bias/v
?
9Adam/module_wrapper_2/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_2/conv2d_1/bias/v*
_output_shapes
:*
dtype0
?
'Adam/module_wrapper_4/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/module_wrapper_4/conv2d_2/kernel/v
?
;Adam/module_wrapper_4/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_4/conv2d_2/kernel/v*&
_output_shapes
: *
dtype0
?
%Adam/module_wrapper_4/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/module_wrapper_4/conv2d_2/bias/v
?
9Adam/module_wrapper_4/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_4/conv2d_2/bias/v*
_output_shapes
: *
dtype0
?
1Adam/module_wrapper_7/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*B
shared_name31Adam/module_wrapper_7/batch_normalization/gamma/v
?
EAdam/module_wrapper_7/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp1Adam/module_wrapper_7/batch_normalization/gamma/v*
_output_shapes	
:?*
dtype0
?
0Adam/module_wrapper_7/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*A
shared_name20Adam/module_wrapper_7/batch_normalization/beta/v
?
DAdam/module_wrapper_7/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOp0Adam/module_wrapper_7/batch_normalization/beta/v*
_output_shapes	
:?*
dtype0
?
$Adam/module_wrapper_9/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/module_wrapper_9/dense/kernel/v
?
8Adam/module_wrapper_9/dense/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_9/dense/kernel/v*
_output_shapes
:	?*
dtype0
?
"Adam/module_wrapper_9/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/module_wrapper_9/dense/bias/v
?
6Adam/module_wrapper_9/dense/bias/v/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_9/dense/bias/v*
_output_shapes
:*
dtype0
?
4Adam/module_wrapper_10/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/module_wrapper_10/batch_normalization_1/gamma/v
?
HAdam/module_wrapper_10/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_10/batch_normalization_1/gamma/v*
_output_shapes
:*
dtype0
?
3Adam/module_wrapper_10/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53Adam/module_wrapper_10/batch_normalization_1/beta/v
?
GAdam/module_wrapper_10/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_10/batch_normalization_1/beta/v*
_output_shapes
:*
dtype0
?
'Adam/module_wrapper_12/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'Adam/module_wrapper_12/dense_1/kernel/v
?
;Adam/module_wrapper_12/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_12/dense_1/kernel/v*
_output_shapes

:*
dtype0
?
%Adam/module_wrapper_12/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_12/dense_1/bias/v
?
9Adam/module_wrapper_12/dense_1/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_12/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?~
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?}
value?}B?} B?}
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
_
_module
	variables
trainable_variables
regularization_losses
	keras_api
_
_module
	variables
trainable_variables
regularization_losses
	keras_api
_
_module
	variables
 trainable_variables
!regularization_losses
"	keras_api
_
#_module
$	variables
%trainable_variables
&regularization_losses
'	keras_api
_
(_module
)	variables
*trainable_variables
+regularization_losses
,	keras_api
_
-_module
.	variables
/trainable_variables
0regularization_losses
1	keras_api
_
2_module
3	variables
4trainable_variables
5regularization_losses
6	keras_api
_
7_module
8	variables
9trainable_variables
:regularization_losses
;	keras_api
_
<_module
=	variables
>trainable_variables
?regularization_losses
@	keras_api
_
A_module
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
_
F_module
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
_
K_module
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
_
P_module
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?
Uiter

Vbeta_1

Wbeta_2
	Xdecay
Ylearning_rateZm?[m?\m?]m?^m?_m?`m?am?dm?em?fm?gm?jm?km?Zv?[v?\v?]v?^v?_v?`v?av?dv?ev?fv?gv?jv?kv?
?
Z0
[1
\2
]3
^4
_5
`6
a7
b8
c9
d10
e11
f12
g13
h14
i15
j16
k17
f
Z0
[1
\2
]3
^4
_5
`6
a7
d8
e9
f10
g11
j12
k13
 
?
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
onon_trainable_variables
regularization_losses

players
 
h

Zkernel
[bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api

Z0
[1

Z0
[1
 
?
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
xnon_trainable_variables
regularization_losses

ylayers
R
z	variables
{trainable_variables
|regularization_losses
}	keras_api
 
 
 
?
~metrics
layer_regularization_losses
?layer_metrics
	variables
trainable_variables
?non_trainable_variables
regularization_losses
?layers
l

\kernel
]bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

\0
]1

\0
]1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
?non_trainable_variables
!regularization_losses
?layers
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
$	variables
%trainable_variables
?non_trainable_variables
&regularization_losses
?layers
l

^kernel
_bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

^0
_1

^0
_1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
?non_trainable_variables
+regularization_losses
?layers
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
?non_trainable_variables
0regularization_losses
?layers
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
?non_trainable_variables
5regularization_losses
?layers
?
	?axis
	`gamma
abeta
bmoving_mean
cmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api

`0
a1
b2
c3

`0
a1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
?non_trainable_variables
:regularization_losses
?layers
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?non_trainable_variables
?regularization_losses
?layers
l

dkernel
ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

d0
e1

d0
e1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
?non_trainable_variables
Dregularization_losses
?layers
?
	?axis
	fgamma
gbeta
hmoving_mean
imoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api

f0
g1
h2
i3

f0
g1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
?non_trainable_variables
Iregularization_losses
?layers
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
?non_trainable_variables
Nregularization_losses
?layers
l

jkernel
kbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

j0
k1

j0
k1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
?non_trainable_variables
Sregularization_losses
?layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmodule_wrapper/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEmodule_wrapper/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE module_wrapper_2/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEmodule_wrapper_2/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE module_wrapper_4/conv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEmodule_wrapper_4/conv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE*module_wrapper_7/batch_normalization/gamma&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE)module_wrapper_7/batch_normalization/beta&variables/7/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0module_wrapper_7/batch_normalization/moving_mean&variables/8/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE4module_wrapper_7/batch_normalization/moving_variance&variables/9/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEmodule_wrapper_9/dense/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmodule_wrapper_9/dense/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-module_wrapper_10/batch_normalization_1/gamma'variables/12/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,module_wrapper_10/batch_normalization_1/beta'variables/13/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3module_wrapper_10/batch_normalization_1/moving_mean'variables/14/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7module_wrapper_10/batch_normalization_1/moving_variance'variables/15/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE module_wrapper_12/dense_1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEmodule_wrapper_12/dense_1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 
 

b0
c1
h2
i3
^
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
10
11
12

Z0
[1

Z0
[1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
q	variables
rtrainable_variables
?non_trainable_variables
sregularization_losses
?layers
 
 
 
 
 
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
?non_trainable_variables
|regularization_losses
?layers
 
 
 
 
 

\0
]1

\0
]1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 
 
 
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 
 
 

^0
_1

^0
_1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 
 
 
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 
 
 
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 
 
 
 

`0
a1
b2
c3

`0
a1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 

b0
c1
 
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 
 
 

d0
e1

d0
e1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 
 
 
 

f0
g1
h2
i3

f0
g1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 

h0
i1
 
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 
 
 

j0
k1

j0
k1
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
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

b0
c1
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

h0
i1
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
{y
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/module_wrapper_2/conv2d_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE%Adam/module_wrapper_2/conv2d_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/module_wrapper_4/conv2d_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE%Adam/module_wrapper_4/conv2d_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/module_wrapper_7/batch_normalization/gamma/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/module_wrapper_7/batch_normalization/beta/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE$Adam/module_wrapper_9/dense/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/module_wrapper_9/dense/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_10/batch_normalization_1/gamma/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_10/batch_normalization_1/beta/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUE'Adam/module_wrapper_12/dense_1/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE%Adam/module_wrapper_12/dense_1/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/module_wrapper_2/conv2d_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE%Adam/module_wrapper_2/conv2d_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/module_wrapper_4/conv2d_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE%Adam/module_wrapper_4/conv2d_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/module_wrapper_7/batch_normalization/gamma/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/module_wrapper_7/batch_normalization/beta/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE$Adam/module_wrapper_9/dense/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/module_wrapper_9/dense/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_10/batch_normalization_1/gamma/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_10/batch_normalization_1/beta/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUE'Adam/module_wrapper_12/dense_1/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE%Adam/module_wrapper_12/dense_1/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
$serving_default_module_wrapper_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall$serving_default_module_wrapper_inputmodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_2/conv2d_1/kernelmodule_wrapper_2/conv2d_1/bias module_wrapper_4/conv2d_2/kernelmodule_wrapper_4/conv2d_2/bias0module_wrapper_7/batch_normalization/moving_mean4module_wrapper_7/batch_normalization/moving_variance)module_wrapper_7/batch_normalization/beta*module_wrapper_7/batch_normalization/gammamodule_wrapper_9/dense/kernelmodule_wrapper_9/dense/bias3module_wrapper_10/batch_normalization_1/moving_mean7module_wrapper_10/batch_normalization_1/moving_variance,module_wrapper_10/batch_normalization_1/beta-module_wrapper_10/batch_normalization_1/gamma module_wrapper_12/dense_1/kernelmodule_wrapper_12/dense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1390400
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp0module_wrapper/conv2d/kernel/Read/ReadVariableOp.module_wrapper/conv2d/bias/Read/ReadVariableOp4module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOp2module_wrapper_2/conv2d_1/bias/Read/ReadVariableOp4module_wrapper_4/conv2d_2/kernel/Read/ReadVariableOp2module_wrapper_4/conv2d_2/bias/Read/ReadVariableOp>module_wrapper_7/batch_normalization/gamma/Read/ReadVariableOp=module_wrapper_7/batch_normalization/beta/Read/ReadVariableOpDmodule_wrapper_7/batch_normalization/moving_mean/Read/ReadVariableOpHmodule_wrapper_7/batch_normalization/moving_variance/Read/ReadVariableOp1module_wrapper_9/dense/kernel/Read/ReadVariableOp/module_wrapper_9/dense/bias/Read/ReadVariableOpAmodule_wrapper_10/batch_normalization_1/gamma/Read/ReadVariableOp@module_wrapper_10/batch_normalization_1/beta/Read/ReadVariableOpGmodule_wrapper_10/batch_normalization_1/moving_mean/Read/ReadVariableOpKmodule_wrapper_10/batch_normalization_1/moving_variance/Read/ReadVariableOp4module_wrapper_12/dense_1/kernel/Read/ReadVariableOp2module_wrapper_12/dense_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOp;Adam/module_wrapper_2/conv2d_1/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_2/conv2d_1/bias/m/Read/ReadVariableOp;Adam/module_wrapper_4/conv2d_2/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_4/conv2d_2/bias/m/Read/ReadVariableOpEAdam/module_wrapper_7/batch_normalization/gamma/m/Read/ReadVariableOpDAdam/module_wrapper_7/batch_normalization/beta/m/Read/ReadVariableOp8Adam/module_wrapper_9/dense/kernel/m/Read/ReadVariableOp6Adam/module_wrapper_9/dense/bias/m/Read/ReadVariableOpHAdam/module_wrapper_10/batch_normalization_1/gamma/m/Read/ReadVariableOpGAdam/module_wrapper_10/batch_normalization_1/beta/m/Read/ReadVariableOp;Adam/module_wrapper_12/dense_1/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_12/dense_1/bias/m/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOp;Adam/module_wrapper_2/conv2d_1/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_2/conv2d_1/bias/v/Read/ReadVariableOp;Adam/module_wrapper_4/conv2d_2/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_4/conv2d_2/bias/v/Read/ReadVariableOpEAdam/module_wrapper_7/batch_normalization/gamma/v/Read/ReadVariableOpDAdam/module_wrapper_7/batch_normalization/beta/v/Read/ReadVariableOp8Adam/module_wrapper_9/dense/kernel/v/Read/ReadVariableOp6Adam/module_wrapper_9/dense/bias/v/Read/ReadVariableOpHAdam/module_wrapper_10/batch_normalization_1/gamma/v/Read/ReadVariableOpGAdam/module_wrapper_10/batch_normalization_1/beta/v/Read/ReadVariableOp;Adam/module_wrapper_12/dense_1/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_12/dense_1/bias/v/Read/ReadVariableOpConst*D
Tin=
;29	*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_1391885
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratemodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_2/conv2d_1/kernelmodule_wrapper_2/conv2d_1/bias module_wrapper_4/conv2d_2/kernelmodule_wrapper_4/conv2d_2/bias*module_wrapper_7/batch_normalization/gamma)module_wrapper_7/batch_normalization/beta0module_wrapper_7/batch_normalization/moving_mean4module_wrapper_7/batch_normalization/moving_variancemodule_wrapper_9/dense/kernelmodule_wrapper_9/dense/bias-module_wrapper_10/batch_normalization_1/gamma,module_wrapper_10/batch_normalization_1/beta3module_wrapper_10/batch_normalization_1/moving_mean7module_wrapper_10/batch_normalization_1/moving_variance module_wrapper_12/dense_1/kernelmodule_wrapper_12/dense_1/biastotalcounttotal_1count_1#Adam/module_wrapper/conv2d/kernel/m!Adam/module_wrapper/conv2d/bias/m'Adam/module_wrapper_2/conv2d_1/kernel/m%Adam/module_wrapper_2/conv2d_1/bias/m'Adam/module_wrapper_4/conv2d_2/kernel/m%Adam/module_wrapper_4/conv2d_2/bias/m1Adam/module_wrapper_7/batch_normalization/gamma/m0Adam/module_wrapper_7/batch_normalization/beta/m$Adam/module_wrapper_9/dense/kernel/m"Adam/module_wrapper_9/dense/bias/m4Adam/module_wrapper_10/batch_normalization_1/gamma/m3Adam/module_wrapper_10/batch_normalization_1/beta/m'Adam/module_wrapper_12/dense_1/kernel/m%Adam/module_wrapper_12/dense_1/bias/m#Adam/module_wrapper/conv2d/kernel/v!Adam/module_wrapper/conv2d/bias/v'Adam/module_wrapper_2/conv2d_1/kernel/v%Adam/module_wrapper_2/conv2d_1/bias/v'Adam/module_wrapper_4/conv2d_2/kernel/v%Adam/module_wrapper_4/conv2d_2/bias/v1Adam/module_wrapper_7/batch_normalization/gamma/v0Adam/module_wrapper_7/batch_normalization/beta/v$Adam/module_wrapper_9/dense/kernel/v"Adam/module_wrapper_9/dense/bias/v4Adam/module_wrapper_10/batch_normalization_1/gamma/v3Adam/module_wrapper_10/batch_normalization_1/beta/v'Adam/module_wrapper_12/dense_1/kernel/v%Adam/module_wrapper_12/dense_1/bias/v*C
Tin<
:28*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1392060??
?E
?	
G__inference_sequential_layer_call_and_return_conditional_losses_1390165

inputs0
module_wrapper_1390115:$
module_wrapper_1390117:2
module_wrapper_2_1390121:&
module_wrapper_2_1390123:2
module_wrapper_4_1390127: &
module_wrapper_4_1390129: '
module_wrapper_7_1390134:	?'
module_wrapper_7_1390136:	?'
module_wrapper_7_1390138:	?'
module_wrapper_7_1390140:	?+
module_wrapper_9_1390144:	?&
module_wrapper_9_1390146:'
module_wrapper_10_1390149:'
module_wrapper_10_1390151:'
module_wrapper_10_1390153:'
module_wrapper_10_1390155:+
module_wrapper_12_1390159:'
module_wrapper_12_1390161:
identity??&module_wrapper/StatefulPartitionedCall?)module_wrapper_10/StatefulPartitionedCall?)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_12/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_4/StatefulPartitionedCall?(module_wrapper_7/StatefulPartitionedCall?(module_wrapper_8/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_1390115module_wrapper_1390117*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_13900622(
&module_wrapper/StatefulPartitionedCall?
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13900362"
 module_wrapper_1/PartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_1390121module_wrapper_2_1390123*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13900162*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13899902"
 module_wrapper_3/PartitionedCall?
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_3/PartitionedCall:output:0module_wrapper_4_1390127module_wrapper_4_1390129*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13899702*
(module_wrapper_4/StatefulPartitionedCall?
 module_wrapper_5/PartitionedCallPartitionedCall1module_wrapper_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13899442"
 module_wrapper_5/PartitionedCall?
 module_wrapper_6/PartitionedCallPartitionedCall)module_wrapper_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_13899282"
 module_wrapper_6/PartitionedCall?
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_6/PartitionedCall:output:0module_wrapper_7_1390134module_wrapper_7_1390136module_wrapper_7_1390138module_wrapper_7_1390140*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_13899032*
(module_wrapper_7/StatefulPartitionedCall?
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_13898502*
(module_wrapper_8/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_8/StatefulPartitionedCall:output:0module_wrapper_9_1390144module_wrapper_9_1390146*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_13898232*
(module_wrapper_9/StatefulPartitionedCall?
)module_wrapper_10/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0module_wrapper_10_1390149module_wrapper_10_1390151module_wrapper_10_1390153module_wrapper_10_1390155*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_13897892+
)module_wrapper_10/StatefulPartitionedCall?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_10/StatefulPartitionedCall:output:0)^module_wrapper_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_13897362+
)module_wrapper_11/StatefulPartitionedCall?
)module_wrapper_12/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0module_wrapper_12_1390159module_wrapper_12_1390161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_13897092+
)module_wrapper_12/StatefulPartitionedCall?
IdentityIdentity2module_wrapper_12/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall*^module_wrapper_10/StatefulPartitionedCall*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_12/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2V
)module_wrapper_10/StatefulPartitionedCall)module_wrapper_10/StatefulPartitionedCall2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_12/StatefulPartitionedCall)module_wrapper_12/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1391237

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1389990

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool|
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
l
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1391350

args_0
identity?s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const?
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Muld
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2*2.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul_1n
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1390016

args_0A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1390623

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1~
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2~
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
m
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_1391497

args_0
identity?w
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulargs_0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mulh
dropout_1/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2*20
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mul_1o
IdentityIdentitydropout_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
5__inference_batch_normalization_layer_call_fn_1391563

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_13905212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
N
2__inference_module_wrapper_6_layer_call_fn_1391226

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_13895362
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?)
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1391697

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2|
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1391101

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
3__inference_module_wrapper_12_layer_call_fn_1391506

args_0
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_13896402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1389573

args_0
identityk
dropout/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout/Identityn
IdentityIdentitydropout/Identity:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_1391526

args_08
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1389469

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1391130

args_0A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_4_layer_call_fn_1391170

args_0!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13895172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
3__inference_module_wrapper_10_layer_call_fn_1391403

args_0
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_13896122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1389536

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_2_layer_call_fn_1391119

args_0!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13900162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
k
2__inference_module_wrapper_8_layer_call_fn_1391333

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_13898502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?)
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1390521

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2}
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_1_layer_call_fn_1390425

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_13904192
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_1391537

args_08
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1391156

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool|
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1391221

args_0
identity?
max_pooling2d_2/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool|
IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
??
?(
#__inference__traced_restore_1392060
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: I
/assignvariableop_5_module_wrapper_conv2d_kernel:;
-assignvariableop_6_module_wrapper_conv2d_bias:M
3assignvariableop_7_module_wrapper_2_conv2d_1_kernel:?
1assignvariableop_8_module_wrapper_2_conv2d_1_bias:M
3assignvariableop_9_module_wrapper_4_conv2d_2_kernel: @
2assignvariableop_10_module_wrapper_4_conv2d_2_bias: M
>assignvariableop_11_module_wrapper_7_batch_normalization_gamma:	?L
=assignvariableop_12_module_wrapper_7_batch_normalization_beta:	?S
Dassignvariableop_13_module_wrapper_7_batch_normalization_moving_mean:	?W
Hassignvariableop_14_module_wrapper_7_batch_normalization_moving_variance:	?D
1assignvariableop_15_module_wrapper_9_dense_kernel:	?=
/assignvariableop_16_module_wrapper_9_dense_bias:O
Aassignvariableop_17_module_wrapper_10_batch_normalization_1_gamma:N
@assignvariableop_18_module_wrapper_10_batch_normalization_1_beta:U
Gassignvariableop_19_module_wrapper_10_batch_normalization_1_moving_mean:Y
Kassignvariableop_20_module_wrapper_10_batch_normalization_1_moving_variance:F
4assignvariableop_21_module_wrapper_12_dense_1_kernel:@
2assignvariableop_22_module_wrapper_12_dense_1_bias:#
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: Q
7assignvariableop_27_adam_module_wrapper_conv2d_kernel_m:C
5assignvariableop_28_adam_module_wrapper_conv2d_bias_m:U
;assignvariableop_29_adam_module_wrapper_2_conv2d_1_kernel_m:G
9assignvariableop_30_adam_module_wrapper_2_conv2d_1_bias_m:U
;assignvariableop_31_adam_module_wrapper_4_conv2d_2_kernel_m: G
9assignvariableop_32_adam_module_wrapper_4_conv2d_2_bias_m: T
Eassignvariableop_33_adam_module_wrapper_7_batch_normalization_gamma_m:	?S
Dassignvariableop_34_adam_module_wrapper_7_batch_normalization_beta_m:	?K
8assignvariableop_35_adam_module_wrapper_9_dense_kernel_m:	?D
6assignvariableop_36_adam_module_wrapper_9_dense_bias_m:V
Hassignvariableop_37_adam_module_wrapper_10_batch_normalization_1_gamma_m:U
Gassignvariableop_38_adam_module_wrapper_10_batch_normalization_1_beta_m:M
;assignvariableop_39_adam_module_wrapper_12_dense_1_kernel_m:G
9assignvariableop_40_adam_module_wrapper_12_dense_1_bias_m:Q
7assignvariableop_41_adam_module_wrapper_conv2d_kernel_v:C
5assignvariableop_42_adam_module_wrapper_conv2d_bias_v:U
;assignvariableop_43_adam_module_wrapper_2_conv2d_1_kernel_v:G
9assignvariableop_44_adam_module_wrapper_2_conv2d_1_bias_v:U
;assignvariableop_45_adam_module_wrapper_4_conv2d_2_kernel_v: G
9assignvariableop_46_adam_module_wrapper_4_conv2d_2_bias_v: T
Eassignvariableop_47_adam_module_wrapper_7_batch_normalization_gamma_v:	?S
Dassignvariableop_48_adam_module_wrapper_7_batch_normalization_beta_v:	?K
8assignvariableop_49_adam_module_wrapper_9_dense_kernel_v:	?D
6assignvariableop_50_adam_module_wrapper_9_dense_bias_v:V
Hassignvariableop_51_adam_module_wrapper_10_batch_normalization_1_gamma_v:U
Gassignvariableop_52_adam_module_wrapper_10_batch_normalization_1_beta_v:M
;assignvariableop_53_adam_module_wrapper_12_dense_1_kernel_v:G
9assignvariableop_54_adam_module_wrapper_12_dense_1_bias_v:
identity_56??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
value?B?8B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp/assignvariableop_5_module_wrapper_conv2d_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp-assignvariableop_6_module_wrapper_conv2d_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp3assignvariableop_7_module_wrapper_2_conv2d_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp1assignvariableop_8_module_wrapper_2_conv2d_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp3assignvariableop_9_module_wrapper_4_conv2d_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp2assignvariableop_10_module_wrapper_4_conv2d_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp>assignvariableop_11_module_wrapper_7_batch_normalization_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp=assignvariableop_12_module_wrapper_7_batch_normalization_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpDassignvariableop_13_module_wrapper_7_batch_normalization_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpHassignvariableop_14_module_wrapper_7_batch_normalization_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp1assignvariableop_15_module_wrapper_9_dense_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp/assignvariableop_16_module_wrapper_9_dense_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpAassignvariableop_17_module_wrapper_10_batch_normalization_1_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp@assignvariableop_18_module_wrapper_10_batch_normalization_1_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpGassignvariableop_19_module_wrapper_10_batch_normalization_1_moving_meanIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpKassignvariableop_20_module_wrapper_10_batch_normalization_1_moving_varianceIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_module_wrapper_12_dense_1_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp2assignvariableop_22_module_wrapper_12_dense_1_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adam_module_wrapper_conv2d_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp5assignvariableop_28_adam_module_wrapper_conv2d_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_adam_module_wrapper_2_conv2d_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp9assignvariableop_30_adam_module_wrapper_2_conv2d_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp;assignvariableop_31_adam_module_wrapper_4_conv2d_2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp9assignvariableop_32_adam_module_wrapper_4_conv2d_2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpEassignvariableop_33_adam_module_wrapper_7_batch_normalization_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpDassignvariableop_34_adam_module_wrapper_7_batch_normalization_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp8assignvariableop_35_adam_module_wrapper_9_dense_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_module_wrapper_9_dense_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpHassignvariableop_37_adam_module_wrapper_10_batch_normalization_1_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpGassignvariableop_38_adam_module_wrapper_10_batch_normalization_1_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp;assignvariableop_39_adam_module_wrapper_12_dense_1_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp9assignvariableop_40_adam_module_wrapper_12_dense_1_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp7assignvariableop_41_adam_module_wrapper_conv2d_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp5assignvariableop_42_adam_module_wrapper_conv2d_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp;assignvariableop_43_adam_module_wrapper_2_conv2d_1_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp9assignvariableop_44_adam_module_wrapper_2_conv2d_1_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp;assignvariableop_45_adam_module_wrapper_4_conv2d_2_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp9assignvariableop_46_adam_module_wrapper_4_conv2d_2_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOpEassignvariableop_47_adam_module_wrapper_7_batch_normalization_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpDassignvariableop_48_adam_module_wrapper_7_batch_normalization_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp8assignvariableop_49_adam_module_wrapper_9_dense_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_module_wrapper_9_dense_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOpHassignvariableop_51_adam_module_wrapper_10_batch_normalization_1_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOpGassignvariableop_52_adam_module_wrapper_10_batch_normalization_1_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp;assignvariableop_53_adam_module_wrapper_12_dense_1_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp9assignvariableop_54_adam_module_wrapper_12_dense_1_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_549
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_55?

Identity_56IdentityIdentity_55:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_56"#
identity_56Identity_56:output:0*?
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
l
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1389850

args_0
identity?s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const?
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Muld
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2*2.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul_1n
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1391289

args_0?
0batch_normalization_cast_readvariableop_resource:	?A
2batch_normalization_cast_1_readvariableop_resource:	?A
2batch_normalization_cast_2_readvariableop_resource:	?A
2batch_normalization_cast_3_readvariableop_resource:	?
identity??'batch_normalization/Cast/ReadVariableOp?)batch_normalization/Cast_1/ReadVariableOp?)batch_normalization/Cast_2/ReadVariableOp?)batch_normalization/Cast_3/ReadVariableOp?
'batch_normalization/Cast/ReadVariableOpReadVariableOp0batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization/Cast/ReadVariableOp?
)batch_normalization/Cast_1/ReadVariableOpReadVariableOp2batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_1/ReadVariableOp?
)batch_normalization/Cast_2/ReadVariableOpReadVariableOp2batch_normalization_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_2/ReadVariableOp?
)batch_normalization/Cast_3/ReadVariableOpReadVariableOp2batch_normalization_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_3/ReadVariableOp?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV21batch_normalization/Cast_1/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/Rsqrt?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:01batch_normalization/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1Mulargs_0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/mul_1?
#batch_normalization/batchnorm/mul_2Mul/batch_normalization/Cast/ReadVariableOp:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/mul_2?
!batch_normalization/batchnorm/subSub1batch_normalization/Cast_2/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/add_1?
IdentityIdentity'batch_normalization/batchnorm/add_1:z:0(^batch_normalization/Cast/ReadVariableOp*^batch_normalization/Cast_1/ReadVariableOp*^batch_normalization/Cast_2/ReadVariableOp*^batch_normalization/Cast_3/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2R
'batch_normalization/Cast/ReadVariableOp'batch_normalization/Cast/ReadVariableOp2V
)batch_normalization/Cast_1/ReadVariableOp)batch_normalization/Cast_1/ReadVariableOp2V
)batch_normalization/Cast_2/ReadVariableOp)batch_normalization/Cast_2/ReadVariableOp2V
)batch_normalization/Cast_3/ReadVariableOp)batch_normalization/Cast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
,__inference_sequential_layer_call_fn_1390843

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_13901652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1389517

args_0A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: 
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1391201

args_0A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: 
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1389586

args_07
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_6_layer_call_fn_1391231

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_13899282
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_7_layer_call_fn_1391256

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_13895582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
,__inference_sequential_layer_call_fn_1389686
module_wrapper_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_13896472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
i
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1389928

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1391141

args_0A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1390461

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1389528

args_0
identity?
max_pooling2d_2/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool|
IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
5__inference_batch_normalization_layer_call_fn_1391550

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_13904612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1391583

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
O
3__inference_module_wrapper_11_layer_call_fn_1391475

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_13896272
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1391243

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1391161

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool|
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
??
?
"__inference__wrapped_model_1389451
module_wrapper_inputY
?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource:N
@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource:]
Csequential_module_wrapper_2_conv2d_1_conv2d_readvariableop_resource:R
Dsequential_module_wrapper_2_conv2d_1_biasadd_readvariableop_resource:]
Csequential_module_wrapper_4_conv2d_2_conv2d_readvariableop_resource: R
Dsequential_module_wrapper_4_conv2d_2_biasadd_readvariableop_resource: [
Lsequential_module_wrapper_7_batch_normalization_cast_readvariableop_resource:	?]
Nsequential_module_wrapper_7_batch_normalization_cast_1_readvariableop_resource:	?]
Nsequential_module_wrapper_7_batch_normalization_cast_2_readvariableop_resource:	?]
Nsequential_module_wrapper_7_batch_normalization_cast_3_readvariableop_resource:	?S
@sequential_module_wrapper_9_dense_matmul_readvariableop_resource:	?O
Asequential_module_wrapper_9_dense_biasadd_readvariableop_resource:]
Osequential_module_wrapper_10_batch_normalization_1_cast_readvariableop_resource:_
Qsequential_module_wrapper_10_batch_normalization_1_cast_1_readvariableop_resource:_
Qsequential_module_wrapper_10_batch_normalization_1_cast_2_readvariableop_resource:_
Qsequential_module_wrapper_10_batch_normalization_1_cast_3_readvariableop_resource:U
Csequential_module_wrapper_12_dense_1_matmul_readvariableop_resource:R
Dsequential_module_wrapper_12_dense_1_biasadd_readvariableop_resource:
identity??7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp?6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp?Fsequential/module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp?Hsequential/module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp?Hsequential/module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp?Hsequential/module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp?;sequential/module_wrapper_12/dense_1/BiasAdd/ReadVariableOp?:sequential/module_wrapper_12/dense_1/MatMul/ReadVariableOp?;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?;sequential/module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp?:sequential/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp?Csequential/module_wrapper_7/batch_normalization/Cast/ReadVariableOp?Esequential/module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp?Esequential/module_wrapper_7/batch_normalization/Cast_2/ReadVariableOp?Esequential/module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp?8sequential/module_wrapper_9/dense/BiasAdd/ReadVariableOp?7sequential/module_wrapper_9/dense/MatMul/ReadVariableOp?
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype028
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp?
'sequential/module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input>sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2)
'sequential/module_wrapper/conv2d/Conv2D?
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp?
(sequential/module_wrapper/conv2d/BiasAddBiasAdd0sequential/module_wrapper/conv2d/Conv2D:output:0?sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
(sequential/module_wrapper/conv2d/BiasAdd?
%sequential/module_wrapper/conv2d/ReluRelu1sequential/module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2'
%sequential/module_wrapper/conv2d/Relu?
1sequential/module_wrapper_1/max_pooling2d/MaxPoolMaxPool3sequential/module_wrapper/conv2d/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
23
1sequential/module_wrapper_1/max_pooling2d/MaxPool?
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?
+sequential/module_wrapper_2/conv2d_1/Conv2DConv2D:sequential/module_wrapper_1/max_pooling2d/MaxPool:output:0Bsequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2-
+sequential/module_wrapper_2/conv2d_1/Conv2D?
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02=
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_2/conv2d_1/BiasAddBiasAdd4sequential/module_wrapper_2/conv2d_1/Conv2D:output:0Csequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2.
,sequential/module_wrapper_2/conv2d_1/BiasAdd?
)sequential/module_wrapper_2/conv2d_1/ReluRelu5sequential/module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2+
)sequential/module_wrapper_2/conv2d_1/Relu?
3sequential/module_wrapper_3/max_pooling2d_1/MaxPoolMaxPool7sequential/module_wrapper_2/conv2d_1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
25
3sequential/module_wrapper_3/max_pooling2d_1/MaxPool?
:sequential/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_4_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02<
:sequential/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp?
+sequential/module_wrapper_4/conv2d_2/Conv2DConv2D<sequential/module_wrapper_3/max_pooling2d_1/MaxPool:output:0Bsequential/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2-
+sequential/module_wrapper_4/conv2d_2/Conv2D?
;sequential/module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_4_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02=
;sequential/module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_4/conv2d_2/BiasAddBiasAdd4sequential/module_wrapper_4/conv2d_2/Conv2D:output:0Csequential/module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2.
,sequential/module_wrapper_4/conv2d_2/BiasAdd?
)sequential/module_wrapper_4/conv2d_2/ReluRelu5sequential/module_wrapper_4/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2+
)sequential/module_wrapper_4/conv2d_2/Relu?
3sequential/module_wrapper_5/max_pooling2d_2/MaxPoolMaxPool7sequential/module_wrapper_4/conv2d_2/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
25
3sequential/module_wrapper_5/max_pooling2d_2/MaxPool?
)sequential/module_wrapper_6/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2+
)sequential/module_wrapper_6/flatten/Const?
+sequential/module_wrapper_6/flatten/ReshapeReshape<sequential/module_wrapper_5/max_pooling2d_2/MaxPool:output:02sequential/module_wrapper_6/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2-
+sequential/module_wrapper_6/flatten/Reshape?
Csequential/module_wrapper_7/batch_normalization/Cast/ReadVariableOpReadVariableOpLsequential_module_wrapper_7_batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Csequential/module_wrapper_7/batch_normalization/Cast/ReadVariableOp?
Esequential/module_wrapper_7/batch_normalization/Cast_1/ReadVariableOpReadVariableOpNsequential_module_wrapper_7_batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Esequential/module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp?
Esequential/module_wrapper_7/batch_normalization/Cast_2/ReadVariableOpReadVariableOpNsequential_module_wrapper_7_batch_normalization_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Esequential/module_wrapper_7/batch_normalization/Cast_2/ReadVariableOp?
Esequential/module_wrapper_7/batch_normalization/Cast_3/ReadVariableOpReadVariableOpNsequential_module_wrapper_7_batch_normalization_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Esequential/module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp?
?sequential/module_wrapper_7/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2A
?sequential/module_wrapper_7/batch_normalization/batchnorm/add/y?
=sequential/module_wrapper_7/batch_normalization/batchnorm/addAddV2Msequential/module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp:value:0Hsequential/module_wrapper_7/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2?
=sequential/module_wrapper_7/batch_normalization/batchnorm/add?
?sequential/module_wrapper_7/batch_normalization/batchnorm/RsqrtRsqrtAsequential/module_wrapper_7/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2A
?sequential/module_wrapper_7/batch_normalization/batchnorm/Rsqrt?
=sequential/module_wrapper_7/batch_normalization/batchnorm/mulMulCsequential/module_wrapper_7/batch_normalization/batchnorm/Rsqrt:y:0Msequential/module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2?
=sequential/module_wrapper_7/batch_normalization/batchnorm/mul?
?sequential/module_wrapper_7/batch_normalization/batchnorm/mul_1Mul4sequential/module_wrapper_6/flatten/Reshape:output:0Asequential/module_wrapper_7/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2A
?sequential/module_wrapper_7/batch_normalization/batchnorm/mul_1?
?sequential/module_wrapper_7/batch_normalization/batchnorm/mul_2MulKsequential/module_wrapper_7/batch_normalization/Cast/ReadVariableOp:value:0Asequential/module_wrapper_7/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2A
?sequential/module_wrapper_7/batch_normalization/batchnorm/mul_2?
=sequential/module_wrapper_7/batch_normalization/batchnorm/subSubMsequential/module_wrapper_7/batch_normalization/Cast_2/ReadVariableOp:value:0Csequential/module_wrapper_7/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2?
=sequential/module_wrapper_7/batch_normalization/batchnorm/sub?
?sequential/module_wrapper_7/batch_normalization/batchnorm/add_1AddV2Csequential/module_wrapper_7/batch_normalization/batchnorm/mul_1:z:0Asequential/module_wrapper_7/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2A
?sequential/module_wrapper_7/batch_normalization/batchnorm/add_1?
,sequential/module_wrapper_8/dropout/IdentityIdentityCsequential/module_wrapper_7/batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2.
,sequential/module_wrapper_8/dropout/Identity?
7sequential/module_wrapper_9/dense/MatMul/ReadVariableOpReadVariableOp@sequential_module_wrapper_9_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype029
7sequential/module_wrapper_9/dense/MatMul/ReadVariableOp?
(sequential/module_wrapper_9/dense/MatMulMatMul5sequential/module_wrapper_8/dropout/Identity:output:0?sequential/module_wrapper_9/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential/module_wrapper_9/dense/MatMul?
8sequential/module_wrapper_9/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_module_wrapper_9_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential/module_wrapper_9/dense/BiasAdd/ReadVariableOp?
)sequential/module_wrapper_9/dense/BiasAddBiasAdd2sequential/module_wrapper_9/dense/MatMul:product:0@sequential/module_wrapper_9/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2+
)sequential/module_wrapper_9/dense/BiasAdd?
&sequential/module_wrapper_9/dense/ReluRelu2sequential/module_wrapper_9/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2(
&sequential/module_wrapper_9/dense/Relu?
Fsequential/module_wrapper_10/batch_normalization_1/Cast/ReadVariableOpReadVariableOpOsequential_module_wrapper_10_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype02H
Fsequential/module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp?
Hsequential/module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpQsequential_module_wrapper_10_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02J
Hsequential/module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp?
Hsequential/module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpQsequential_module_wrapper_10_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype02J
Hsequential/module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp?
Hsequential/module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpQsequential_module_wrapper_10_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype02J
Hsequential/module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp?
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2D
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/add/y?
@sequential/module_wrapper_10/batch_normalization_1/batchnorm/addAddV2Psequential/module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp:value:0Ksequential/module_wrapper_10/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:2B
@sequential/module_wrapper_10/batch_normalization_1/batchnorm/add?
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/RsqrtRsqrtDsequential/module_wrapper_10/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:2D
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/Rsqrt?
@sequential/module_wrapper_10/batch_normalization_1/batchnorm/mulMulFsequential/module_wrapper_10/batch_normalization_1/batchnorm/Rsqrt:y:0Psequential/module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2B
@sequential/module_wrapper_10/batch_normalization_1/batchnorm/mul?
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/mul_1Mul4sequential/module_wrapper_9/dense/Relu:activations:0Dsequential/module_wrapper_10/batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2D
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/mul_1?
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/mul_2MulNsequential/module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp:value:0Dsequential/module_wrapper_10/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:2D
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/mul_2?
@sequential/module_wrapper_10/batch_normalization_1/batchnorm/subSubPsequential/module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp:value:0Fsequential/module_wrapper_10/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2B
@sequential/module_wrapper_10/batch_normalization_1/batchnorm/sub?
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/add_1AddV2Fsequential/module_wrapper_10/batch_normalization_1/batchnorm/mul_1:z:0Dsequential/module_wrapper_10/batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2D
Bsequential/module_wrapper_10/batch_normalization_1/batchnorm/add_1?
/sequential/module_wrapper_11/dropout_1/IdentityIdentityFsequential/module_wrapper_10/batch_normalization_1/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????21
/sequential/module_wrapper_11/dropout_1/Identity?
:sequential/module_wrapper_12/dense_1/MatMul/ReadVariableOpReadVariableOpCsequential_module_wrapper_12_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02<
:sequential/module_wrapper_12/dense_1/MatMul/ReadVariableOp?
+sequential/module_wrapper_12/dense_1/MatMulMatMul8sequential/module_wrapper_11/dropout_1/Identity:output:0Bsequential/module_wrapper_12/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+sequential/module_wrapper_12/dense_1/MatMul?
;sequential/module_wrapper_12/dense_1/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_12_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02=
;sequential/module_wrapper_12/dense_1/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_12/dense_1/BiasAddBiasAdd5sequential/module_wrapper_12/dense_1/MatMul:product:0Csequential/module_wrapper_12/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,sequential/module_wrapper_12/dense_1/BiasAdd?
,sequential/module_wrapper_12/dense_1/SoftmaxSoftmax5sequential/module_wrapper_12/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2.
,sequential/module_wrapper_12/dense_1/Softmax?

IdentityIdentity6sequential/module_wrapper_12/dense_1/Softmax:softmax:08^sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7^sequential/module_wrapper/conv2d/Conv2D/ReadVariableOpG^sequential/module_wrapper_10/batch_normalization_1/Cast/ReadVariableOpI^sequential/module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOpI^sequential/module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOpI^sequential/module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp<^sequential/module_wrapper_12/dense_1/BiasAdd/ReadVariableOp;^sequential/module_wrapper_12/dense_1/MatMul/ReadVariableOp<^sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp;^sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp<^sequential/module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp;^sequential/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOpD^sequential/module_wrapper_7/batch_normalization/Cast/ReadVariableOpF^sequential/module_wrapper_7/batch_normalization/Cast_1/ReadVariableOpF^sequential/module_wrapper_7/batch_normalization/Cast_2/ReadVariableOpF^sequential/module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp9^sequential/module_wrapper_9/dense/BiasAdd/ReadVariableOp8^sequential/module_wrapper_9/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 2r
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp2p
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp2?
Fsequential/module_wrapper_10/batch_normalization_1/Cast/ReadVariableOpFsequential/module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp2?
Hsequential/module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOpHsequential/module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp2?
Hsequential/module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOpHsequential/module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp2?
Hsequential/module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOpHsequential/module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp2z
;sequential/module_wrapper_12/dense_1/BiasAdd/ReadVariableOp;sequential/module_wrapper_12/dense_1/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_12/dense_1/MatMul/ReadVariableOp:sequential/module_wrapper_12/dense_1/MatMul/ReadVariableOp2z
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2z
;sequential/module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp;sequential/module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp:sequential/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp2?
Csequential/module_wrapper_7/batch_normalization/Cast/ReadVariableOpCsequential/module_wrapper_7/batch_normalization/Cast/ReadVariableOp2?
Esequential/module_wrapper_7/batch_normalization/Cast_1/ReadVariableOpEsequential/module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp2?
Esequential/module_wrapper_7/batch_normalization/Cast_2/ReadVariableOpEsequential/module_wrapper_7/batch_normalization/Cast_2/ReadVariableOp2?
Esequential/module_wrapper_7/batch_normalization/Cast_3/ReadVariableOpEsequential/module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp2t
8sequential/module_wrapper_9/dense/BiasAdd/ReadVariableOp8sequential/module_wrapper_9/dense/BiasAdd/ReadVariableOp2r
7sequential/module_wrapper_9/dense/MatMul/ReadVariableOp7sequential/module_wrapper_9/dense/MatMul/ReadVariableOp:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1389970

args_0A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: 
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_1389709

args_08
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1391070

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?<
?
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1389903

args_0J
;batch_normalization_assignmovingavg_readvariableop_resource:	?L
=batch_normalization_assignmovingavg_1_readvariableop_resource:	??
0batch_normalization_cast_readvariableop_resource:	?A
2batch_normalization_cast_1_readvariableop_resource:	?
identity??#batch_normalization/AssignMovingAvg?2batch_normalization/AssignMovingAvg/ReadVariableOp?%batch_normalization/AssignMovingAvg_1?4batch_normalization/AssignMovingAvg_1/ReadVariableOp?'batch_normalization/Cast/ReadVariableOp?)batch_normalization/Cast_1/ReadVariableOp?
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 24
2batch_normalization/moments/mean/reduction_indices?
 batch_normalization/moments/meanMeanargs_0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2"
 batch_normalization/moments/mean?
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	?2*
(batch_normalization/moments/StopGradient?
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceargs_01batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2/
-batch_normalization/moments/SquaredDifference?
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization/moments/variance/reduction_indices?
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2&
$batch_normalization/moments/variance?
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2%
#batch_normalization/moments/Squeeze?
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1?
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)batch_normalization/AssignMovingAvg/decay?
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOp?
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2)
'batch_normalization/AssignMovingAvg/sub?
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2)
'batch_normalization/AssignMovingAvg/mul?
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvg?
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization/AssignMovingAvg_1/decay?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOp?
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization/AssignMovingAvg_1/sub?
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization/AssignMovingAvg_1/mul?
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1?
'batch_normalization/Cast/ReadVariableOpReadVariableOp0batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization/Cast/ReadVariableOp?
)batch_normalization/Cast_1/ReadVariableOpReadVariableOp2batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_1/ReadVariableOp?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/Rsqrt?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:01batch_normalization/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1Mulargs_0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/mul_1?
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/mul_2?
!batch_normalization/batchnorm/subSub/batch_normalization/Cast/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/add_1?
IdentityIdentity'batch_normalization/batchnorm/add_1:z:0$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp(^batch_normalization/Cast/ReadVariableOp*^batch_normalization/Cast_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization/Cast/ReadVariableOp'batch_normalization/Cast/ReadVariableOp2V
)batch_normalization/Cast_1/ReadVariableOp)batch_normalization/Cast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_1389640

args_08
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
??
?
G__inference_sequential_layer_call_and_return_conditional_losses_1391041

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource:C
5module_wrapper_conv2d_biasadd_readvariableop_resource:R
8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource:G
9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource:R
8module_wrapper_4_conv2d_2_conv2d_readvariableop_resource: G
9module_wrapper_4_conv2d_2_biasadd_readvariableop_resource: [
Lmodule_wrapper_7_batch_normalization_assignmovingavg_readvariableop_resource:	?]
Nmodule_wrapper_7_batch_normalization_assignmovingavg_1_readvariableop_resource:	?P
Amodule_wrapper_7_batch_normalization_cast_readvariableop_resource:	?R
Cmodule_wrapper_7_batch_normalization_cast_1_readvariableop_resource:	?H
5module_wrapper_9_dense_matmul_readvariableop_resource:	?D
6module_wrapper_9_dense_biasadd_readvariableop_resource:]
Omodule_wrapper_10_batch_normalization_1_assignmovingavg_readvariableop_resource:_
Qmodule_wrapper_10_batch_normalization_1_assignmovingavg_1_readvariableop_resource:R
Dmodule_wrapper_10_batch_normalization_1_cast_readvariableop_resource:T
Fmodule_wrapper_10_batch_normalization_1_cast_1_readvariableop_resource:J
8module_wrapper_12_dense_1_matmul_readvariableop_resource:G
9module_wrapper_12_dense_1_biasadd_readvariableop_resource:
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?7module_wrapper_10/batch_normalization_1/AssignMovingAvg?Fmodule_wrapper_10/batch_normalization_1/AssignMovingAvg/ReadVariableOp?9module_wrapper_10/batch_normalization_1/AssignMovingAvg_1?Hmodule_wrapper_10/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp?=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp?0module_wrapper_12/dense_1/BiasAdd/ReadVariableOp?/module_wrapper_12/dense_1/MatMul/ReadVariableOp?0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp?4module_wrapper_7/batch_normalization/AssignMovingAvg?Cmodule_wrapper_7/batch_normalization/AssignMovingAvg/ReadVariableOp?6module_wrapper_7/batch_normalization/AssignMovingAvg_1?Emodule_wrapper_7/batch_normalization/AssignMovingAvg_1/ReadVariableOp?8module_wrapper_7/batch_normalization/Cast/ReadVariableOp?:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp?-module_wrapper_9/dense/BiasAdd/ReadVariableOp?,module_wrapper_9/dense/MatMul/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/Relu?
&module_wrapper_1/max_pooling2d/MaxPoolMaxPool(module_wrapper/conv2d/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_1/max_pooling2d/MaxPool?
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype021
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_2/conv2d_1/Conv2DConv2D/module_wrapper_1/max_pooling2d/MaxPool:output:07module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2"
 module_wrapper_2/conv2d_1/Conv2D?
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_2/conv2d_1/BiasAddBiasAdd)module_wrapper_2/conv2d_1/Conv2D:output:08module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2#
!module_wrapper_2/conv2d_1/BiasAdd?
module_wrapper_2/conv2d_1/ReluRelu*module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2 
module_wrapper_2/conv2d_1/Relu?
(module_wrapper_3/max_pooling2d_1/MaxPoolMaxPool,module_wrapper_2/conv2d_1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2*
(module_wrapper_3/max_pooling2d_1/MaxPool?
/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_4_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_4/conv2d_2/Conv2DConv2D1module_wrapper_3/max_pooling2d_1/MaxPool:output:07module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 module_wrapper_4/conv2d_2/Conv2D?
0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_4_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_4/conv2d_2/BiasAddBiasAdd)module_wrapper_4/conv2d_2/Conv2D:output:08module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!module_wrapper_4/conv2d_2/BiasAdd?
module_wrapper_4/conv2d_2/ReluRelu*module_wrapper_4/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
module_wrapper_4/conv2d_2/Relu?
(module_wrapper_5/max_pooling2d_2/MaxPoolMaxPool,module_wrapper_4/conv2d_2/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2*
(module_wrapper_5/max_pooling2d_2/MaxPool?
module_wrapper_6/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
module_wrapper_6/flatten/Const?
 module_wrapper_6/flatten/ReshapeReshape1module_wrapper_5/max_pooling2d_2/MaxPool:output:0'module_wrapper_6/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_6/flatten/Reshape?
Cmodule_wrapper_7/batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodule_wrapper_7/batch_normalization/moments/mean/reduction_indices?
1module_wrapper_7/batch_normalization/moments/meanMean)module_wrapper_6/flatten/Reshape:output:0Lmodule_wrapper_7/batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(23
1module_wrapper_7/batch_normalization/moments/mean?
9module_wrapper_7/batch_normalization/moments/StopGradientStopGradient:module_wrapper_7/batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	?2;
9module_wrapper_7/batch_normalization/moments/StopGradient?
>module_wrapper_7/batch_normalization/moments/SquaredDifferenceSquaredDifference)module_wrapper_6/flatten/Reshape:output:0Bmodule_wrapper_7/batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2@
>module_wrapper_7/batch_normalization/moments/SquaredDifference?
Gmodule_wrapper_7/batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gmodule_wrapper_7/batch_normalization/moments/variance/reduction_indices?
5module_wrapper_7/batch_normalization/moments/varianceMeanBmodule_wrapper_7/batch_normalization/moments/SquaredDifference:z:0Pmodule_wrapper_7/batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(27
5module_wrapper_7/batch_normalization/moments/variance?
4module_wrapper_7/batch_normalization/moments/SqueezeSqueeze:module_wrapper_7/batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 26
4module_wrapper_7/batch_normalization/moments/Squeeze?
6module_wrapper_7/batch_normalization/moments/Squeeze_1Squeeze>module_wrapper_7/batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 28
6module_wrapper_7/batch_normalization/moments/Squeeze_1?
:module_wrapper_7/batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2<
:module_wrapper_7/batch_normalization/AssignMovingAvg/decay?
Cmodule_wrapper_7/batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOpLmodule_wrapper_7_batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Cmodule_wrapper_7/batch_normalization/AssignMovingAvg/ReadVariableOp?
8module_wrapper_7/batch_normalization/AssignMovingAvg/subSubKmodule_wrapper_7/batch_normalization/AssignMovingAvg/ReadVariableOp:value:0=module_wrapper_7/batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2:
8module_wrapper_7/batch_normalization/AssignMovingAvg/sub?
8module_wrapper_7/batch_normalization/AssignMovingAvg/mulMul<module_wrapper_7/batch_normalization/AssignMovingAvg/sub:z:0Cmodule_wrapper_7/batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2:
8module_wrapper_7/batch_normalization/AssignMovingAvg/mul?
4module_wrapper_7/batch_normalization/AssignMovingAvgAssignSubVariableOpLmodule_wrapper_7_batch_normalization_assignmovingavg_readvariableop_resource<module_wrapper_7/batch_normalization/AssignMovingAvg/mul:z:0D^module_wrapper_7/batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype026
4module_wrapper_7/batch_normalization/AssignMovingAvg?
<module_wrapper_7/batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2>
<module_wrapper_7/batch_normalization/AssignMovingAvg_1/decay?
Emodule_wrapper_7/batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOpNmodule_wrapper_7_batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodule_wrapper_7/batch_normalization/AssignMovingAvg_1/ReadVariableOp?
:module_wrapper_7/batch_normalization/AssignMovingAvg_1/subSubMmodule_wrapper_7/batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0?module_wrapper_7/batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2<
:module_wrapper_7/batch_normalization/AssignMovingAvg_1/sub?
:module_wrapper_7/batch_normalization/AssignMovingAvg_1/mulMul>module_wrapper_7/batch_normalization/AssignMovingAvg_1/sub:z:0Emodule_wrapper_7/batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2<
:module_wrapper_7/batch_normalization/AssignMovingAvg_1/mul?
6module_wrapper_7/batch_normalization/AssignMovingAvg_1AssignSubVariableOpNmodule_wrapper_7_batch_normalization_assignmovingavg_1_readvariableop_resource>module_wrapper_7/batch_normalization/AssignMovingAvg_1/mul:z:0F^module_wrapper_7/batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype028
6module_wrapper_7/batch_normalization/AssignMovingAvg_1?
8module_wrapper_7/batch_normalization/Cast/ReadVariableOpReadVariableOpAmodule_wrapper_7_batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_7/batch_normalization/Cast/ReadVariableOp?
:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOpReadVariableOpCmodule_wrapper_7_batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp?
4module_wrapper_7/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4module_wrapper_7/batch_normalization/batchnorm/add/y?
2module_wrapper_7/batch_normalization/batchnorm/addAddV2?module_wrapper_7/batch_normalization/moments/Squeeze_1:output:0=module_wrapper_7/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2module_wrapper_7/batch_normalization/batchnorm/add?
4module_wrapper_7/batch_normalization/batchnorm/RsqrtRsqrt6module_wrapper_7/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4module_wrapper_7/batch_normalization/batchnorm/Rsqrt?
2module_wrapper_7/batch_normalization/batchnorm/mulMul8module_wrapper_7/batch_normalization/batchnorm/Rsqrt:y:0Bmodule_wrapper_7/batch_normalization/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2module_wrapper_7/batch_normalization/batchnorm/mul?
4module_wrapper_7/batch_normalization/batchnorm/mul_1Mul)module_wrapper_6/flatten/Reshape:output:06module_wrapper_7/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4module_wrapper_7/batch_normalization/batchnorm/mul_1?
4module_wrapper_7/batch_normalization/batchnorm/mul_2Mul=module_wrapper_7/batch_normalization/moments/Squeeze:output:06module_wrapper_7/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4module_wrapper_7/batch_normalization/batchnorm/mul_2?
2module_wrapper_7/batch_normalization/batchnorm/subSub@module_wrapper_7/batch_normalization/Cast/ReadVariableOp:value:08module_wrapper_7/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2module_wrapper_7/batch_normalization/batchnorm/sub?
4module_wrapper_7/batch_normalization/batchnorm/add_1AddV28module_wrapper_7/batch_normalization/batchnorm/mul_1:z:06module_wrapper_7/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4module_wrapper_7/batch_normalization/batchnorm/add_1?
&module_wrapper_8/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2(
&module_wrapper_8/dropout/dropout/Const?
$module_wrapper_8/dropout/dropout/MulMul8module_wrapper_7/batch_normalization/batchnorm/add_1:z:0/module_wrapper_8/dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2&
$module_wrapper_8/dropout/dropout/Mul?
&module_wrapper_8/dropout/dropout/ShapeShape8module_wrapper_7/batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2(
&module_wrapper_8/dropout/dropout/Shape?
=module_wrapper_8/dropout/dropout/random_uniform/RandomUniformRandomUniform/module_wrapper_8/dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2*2?
=module_wrapper_8/dropout/dropout/random_uniform/RandomUniform?
/module_wrapper_8/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?21
/module_wrapper_8/dropout/dropout/GreaterEqual/y?
-module_wrapper_8/dropout/dropout/GreaterEqualGreaterEqualFmodule_wrapper_8/dropout/dropout/random_uniform/RandomUniform:output:08module_wrapper_8/dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2/
-module_wrapper_8/dropout/dropout/GreaterEqual?
%module_wrapper_8/dropout/dropout/CastCast1module_wrapper_8/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2'
%module_wrapper_8/dropout/dropout/Cast?
&module_wrapper_8/dropout/dropout/Mul_1Mul(module_wrapper_8/dropout/dropout/Mul:z:0)module_wrapper_8/dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2(
&module_wrapper_8/dropout/dropout/Mul_1?
,module_wrapper_9/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_9_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,module_wrapper_9/dense/MatMul/ReadVariableOp?
module_wrapper_9/dense/MatMulMatMul*module_wrapper_8/dropout/dropout/Mul_1:z:04module_wrapper_9/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
module_wrapper_9/dense/MatMul?
-module_wrapper_9/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_9_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-module_wrapper_9/dense/BiasAdd/ReadVariableOp?
module_wrapper_9/dense/BiasAddBiasAdd'module_wrapper_9/dense/MatMul:product:05module_wrapper_9/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
module_wrapper_9/dense/BiasAdd?
module_wrapper_9/dense/ReluRelu'module_wrapper_9/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
module_wrapper_9/dense/Relu?
Fmodule_wrapper_10/batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fmodule_wrapper_10/batch_normalization_1/moments/mean/reduction_indices?
4module_wrapper_10/batch_normalization_1/moments/meanMean)module_wrapper_9/dense/Relu:activations:0Omodule_wrapper_10/batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(26
4module_wrapper_10/batch_normalization_1/moments/mean?
<module_wrapper_10/batch_normalization_1/moments/StopGradientStopGradient=module_wrapper_10/batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes

:2>
<module_wrapper_10/batch_normalization_1/moments/StopGradient?
Amodule_wrapper_10/batch_normalization_1/moments/SquaredDifferenceSquaredDifference)module_wrapper_9/dense/Relu:activations:0Emodule_wrapper_10/batch_normalization_1/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2C
Amodule_wrapper_10/batch_normalization_1/moments/SquaredDifference?
Jmodule_wrapper_10/batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2L
Jmodule_wrapper_10/batch_normalization_1/moments/variance/reduction_indices?
8module_wrapper_10/batch_normalization_1/moments/varianceMeanEmodule_wrapper_10/batch_normalization_1/moments/SquaredDifference:z:0Smodule_wrapper_10/batch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2:
8module_wrapper_10/batch_normalization_1/moments/variance?
7module_wrapper_10/batch_normalization_1/moments/SqueezeSqueeze=module_wrapper_10/batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 29
7module_wrapper_10/batch_normalization_1/moments/Squeeze?
9module_wrapper_10/batch_normalization_1/moments/Squeeze_1SqueezeAmodule_wrapper_10/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2;
9module_wrapper_10/batch_normalization_1/moments/Squeeze_1?
=module_wrapper_10/batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2?
=module_wrapper_10/batch_normalization_1/AssignMovingAvg/decay?
Fmodule_wrapper_10/batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOpOmodule_wrapper_10_batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02H
Fmodule_wrapper_10/batch_normalization_1/AssignMovingAvg/ReadVariableOp?
;module_wrapper_10/batch_normalization_1/AssignMovingAvg/subSubNmodule_wrapper_10/batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0@module_wrapper_10/batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes
:2=
;module_wrapper_10/batch_normalization_1/AssignMovingAvg/sub?
;module_wrapper_10/batch_normalization_1/AssignMovingAvg/mulMul?module_wrapper_10/batch_normalization_1/AssignMovingAvg/sub:z:0Fmodule_wrapper_10/batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2=
;module_wrapper_10/batch_normalization_1/AssignMovingAvg/mul?
7module_wrapper_10/batch_normalization_1/AssignMovingAvgAssignSubVariableOpOmodule_wrapper_10_batch_normalization_1_assignmovingavg_readvariableop_resource?module_wrapper_10/batch_normalization_1/AssignMovingAvg/mul:z:0G^module_wrapper_10/batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_10/batch_normalization_1/AssignMovingAvg?
?module_wrapper_10/batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2A
?module_wrapper_10/batch_normalization_1/AssignMovingAvg_1/decay?
Hmodule_wrapper_10/batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOpQmodule_wrapper_10_batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02J
Hmodule_wrapper_10/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
=module_wrapper_10/batch_normalization_1/AssignMovingAvg_1/subSubPmodule_wrapper_10/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:0Bmodule_wrapper_10/batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2?
=module_wrapper_10/batch_normalization_1/AssignMovingAvg_1/sub?
=module_wrapper_10/batch_normalization_1/AssignMovingAvg_1/mulMulAmodule_wrapper_10/batch_normalization_1/AssignMovingAvg_1/sub:z:0Hmodule_wrapper_10/batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2?
=module_wrapper_10/batch_normalization_1/AssignMovingAvg_1/mul?
9module_wrapper_10/batch_normalization_1/AssignMovingAvg_1AssignSubVariableOpQmodule_wrapper_10_batch_normalization_1_assignmovingavg_1_readvariableop_resourceAmodule_wrapper_10/batch_normalization_1/AssignMovingAvg_1/mul:z:0I^module_wrapper_10/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02;
9module_wrapper_10/batch_normalization_1/AssignMovingAvg_1?
;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOpReadVariableOpDmodule_wrapper_10_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype02=
;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp?
=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpFmodule_wrapper_10_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02?
=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp?
7module_wrapper_10/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_10/batch_normalization_1/batchnorm/add/y?
5module_wrapper_10/batch_normalization_1/batchnorm/addAddV2Bmodule_wrapper_10/batch_normalization_1/moments/Squeeze_1:output:0@module_wrapper_10/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:27
5module_wrapper_10/batch_normalization_1/batchnorm/add?
7module_wrapper_10/batch_normalization_1/batchnorm/RsqrtRsqrt9module_wrapper_10/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:29
7module_wrapper_10/batch_normalization_1/batchnorm/Rsqrt?
5module_wrapper_10/batch_normalization_1/batchnorm/mulMul;module_wrapper_10/batch_normalization_1/batchnorm/Rsqrt:y:0Emodule_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:27
5module_wrapper_10/batch_normalization_1/batchnorm/mul?
7module_wrapper_10/batch_normalization_1/batchnorm/mul_1Mul)module_wrapper_9/dense/Relu:activations:09module_wrapper_10/batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????29
7module_wrapper_10/batch_normalization_1/batchnorm/mul_1?
7module_wrapper_10/batch_normalization_1/batchnorm/mul_2Mul@module_wrapper_10/batch_normalization_1/moments/Squeeze:output:09module_wrapper_10/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:29
7module_wrapper_10/batch_normalization_1/batchnorm/mul_2?
5module_wrapper_10/batch_normalization_1/batchnorm/subSubCmodule_wrapper_10/batch_normalization_1/Cast/ReadVariableOp:value:0;module_wrapper_10/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:27
5module_wrapper_10/batch_normalization_1/batchnorm/sub?
7module_wrapper_10/batch_normalization_1/batchnorm/add_1AddV2;module_wrapper_10/batch_normalization_1/batchnorm/mul_1:z:09module_wrapper_10/batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????29
7module_wrapper_10/batch_normalization_1/batchnorm/add_1?
)module_wrapper_11/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)module_wrapper_11/dropout_1/dropout/Const?
'module_wrapper_11/dropout_1/dropout/MulMul;module_wrapper_10/batch_normalization_1/batchnorm/add_1:z:02module_wrapper_11/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2)
'module_wrapper_11/dropout_1/dropout/Mul?
)module_wrapper_11/dropout_1/dropout/ShapeShape;module_wrapper_10/batch_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:2+
)module_wrapper_11/dropout_1/dropout/Shape?
@module_wrapper_11/dropout_1/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_11/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2*2B
@module_wrapper_11/dropout_1/dropout/random_uniform/RandomUniform?
2module_wrapper_11/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?24
2module_wrapper_11/dropout_1/dropout/GreaterEqual/y?
0module_wrapper_11/dropout_1/dropout/GreaterEqualGreaterEqualImodule_wrapper_11/dropout_1/dropout/random_uniform/RandomUniform:output:0;module_wrapper_11/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
0module_wrapper_11/dropout_1/dropout/GreaterEqual?
(module_wrapper_11/dropout_1/dropout/CastCast4module_wrapper_11/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2*
(module_wrapper_11/dropout_1/dropout/Cast?
)module_wrapper_11/dropout_1/dropout/Mul_1Mul+module_wrapper_11/dropout_1/dropout/Mul:z:0,module_wrapper_11/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2+
)module_wrapper_11/dropout_1/dropout/Mul_1?
/module_wrapper_12/dense_1/MatMul/ReadVariableOpReadVariableOp8module_wrapper_12_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype021
/module_wrapper_12/dense_1/MatMul/ReadVariableOp?
 module_wrapper_12/dense_1/MatMulMatMul-module_wrapper_11/dropout_1/dropout/Mul_1:z:07module_wrapper_12/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_12/dense_1/MatMul?
0module_wrapper_12/dense_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_12_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_12/dense_1/BiasAdd/ReadVariableOp?
!module_wrapper_12/dense_1/BiasAddBiasAdd*module_wrapper_12/dense_1/MatMul:product:08module_wrapper_12/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_12/dense_1/BiasAdd?
!module_wrapper_12/dense_1/SoftmaxSoftmax*module_wrapper_12/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_12/dense_1/Softmax?

IdentityIdentity+module_wrapper_12/dense_1/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp8^module_wrapper_10/batch_normalization_1/AssignMovingAvgG^module_wrapper_10/batch_normalization_1/AssignMovingAvg/ReadVariableOp:^module_wrapper_10/batch_normalization_1/AssignMovingAvg_1I^module_wrapper_10/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp<^module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp>^module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp1^module_wrapper_12/dense_1/BiasAdd/ReadVariableOp0^module_wrapper_12/dense_1/MatMul/ReadVariableOp1^module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp1^module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp5^module_wrapper_7/batch_normalization/AssignMovingAvgD^module_wrapper_7/batch_normalization/AssignMovingAvg/ReadVariableOp7^module_wrapper_7/batch_normalization/AssignMovingAvg_1F^module_wrapper_7/batch_normalization/AssignMovingAvg_1/ReadVariableOp9^module_wrapper_7/batch_normalization/Cast/ReadVariableOp;^module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp.^module_wrapper_9/dense/BiasAdd/ReadVariableOp-^module_wrapper_9/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2r
7module_wrapper_10/batch_normalization_1/AssignMovingAvg7module_wrapper_10/batch_normalization_1/AssignMovingAvg2?
Fmodule_wrapper_10/batch_normalization_1/AssignMovingAvg/ReadVariableOpFmodule_wrapper_10/batch_normalization_1/AssignMovingAvg/ReadVariableOp2v
9module_wrapper_10/batch_normalization_1/AssignMovingAvg_19module_wrapper_10/batch_normalization_1/AssignMovingAvg_12?
Hmodule_wrapper_10/batch_normalization_1/AssignMovingAvg_1/ReadVariableOpHmodule_wrapper_10/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2z
;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp2~
=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp2d
0module_wrapper_12/dense_1/BiasAdd/ReadVariableOp0module_wrapper_12/dense_1/BiasAdd/ReadVariableOp2b
/module_wrapper_12/dense_1/MatMul/ReadVariableOp/module_wrapper_12/dense_1/MatMul/ReadVariableOp2d
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2d
0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp2l
4module_wrapper_7/batch_normalization/AssignMovingAvg4module_wrapper_7/batch_normalization/AssignMovingAvg2?
Cmodule_wrapper_7/batch_normalization/AssignMovingAvg/ReadVariableOpCmodule_wrapper_7/batch_normalization/AssignMovingAvg/ReadVariableOp2p
6module_wrapper_7/batch_normalization/AssignMovingAvg_16module_wrapper_7/batch_normalization/AssignMovingAvg_12?
Emodule_wrapper_7/batch_normalization/AssignMovingAvg_1/ReadVariableOpEmodule_wrapper_7/batch_normalization/AssignMovingAvg_1/ReadVariableOp2t
8module_wrapper_7/batch_normalization/Cast/ReadVariableOp8module_wrapper_7/batch_normalization/Cast/ReadVariableOp2x
:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp2^
-module_wrapper_9/dense/BiasAdd/ReadVariableOp-module_wrapper_9/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_9/dense/MatMul/ReadVariableOp,module_wrapper_9/dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
j
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_1391485

args_0
identityn
dropout_1/IdentityIdentityargs_0*
T0*'
_output_shapes
:?????????2
dropout_1/Identityo
IdentityIdentitydropout_1/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
,__inference_sequential_layer_call_fn_1390802

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_13896472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
j
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_1389627

args_0
identityn
dropout_1/IdentityIdentityargs_0*
T0*'
_output_shapes
:?????????2
dropout_1/Identityo
IdentityIdentitydropout_1/Identity:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_3_layer_call_fn_1391146

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13895042
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?)
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1390683

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2|
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1389789

args_0K
=batch_normalization_1_assignmovingavg_readvariableop_resource:M
?batch_normalization_1_assignmovingavg_1_readvariableop_resource:@
2batch_normalization_1_cast_readvariableop_resource:B
4batch_normalization_1_cast_1_readvariableop_resource:
identity??%batch_normalization_1/AssignMovingAvg?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?'batch_normalization_1/AssignMovingAvg_1?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOp?
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_1/moments/mean/reduction_indices?
"batch_normalization_1/moments/meanMeanargs_0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2$
"batch_normalization_1/moments/mean?
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes

:2,
*batch_normalization_1/moments/StopGradient?
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferenceargs_03batch_normalization_1/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????21
/batch_normalization_1/moments/SquaredDifference?
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_1/moments/variance/reduction_indices?
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2(
&batch_normalization_1/moments/variance?
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2'
%batch_normalization_1/moments/Squeeze?
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1?
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_1/AssignMovingAvg/decay?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOp?
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes
:2+
)batch_normalization_1/AssignMovingAvg/sub?
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2+
)batch_normalization_1/AssignMovingAvg/mul?
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_1/AssignMovingAvg?
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_1/AssignMovingAvg_1/decay?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2-
+batch_normalization_1/AssignMovingAvg_1/sub?
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2-
+batch_normalization_1/AssignMovingAvg_1/mul?
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_1?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1Mulargs_0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub1batch_normalization_1/Cast/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_1/batchnorm/add_1?
IdentityIdentity)batch_normalization_1/batchnorm/add_1:z:0&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_1_layer_call_fn_1391091

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13900362
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
??
?
G__inference_sequential_layer_call_and_return_conditional_losses_1390921

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource:C
5module_wrapper_conv2d_biasadd_readvariableop_resource:R
8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource:G
9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource:R
8module_wrapper_4_conv2d_2_conv2d_readvariableop_resource: G
9module_wrapper_4_conv2d_2_biasadd_readvariableop_resource: P
Amodule_wrapper_7_batch_normalization_cast_readvariableop_resource:	?R
Cmodule_wrapper_7_batch_normalization_cast_1_readvariableop_resource:	?R
Cmodule_wrapper_7_batch_normalization_cast_2_readvariableop_resource:	?R
Cmodule_wrapper_7_batch_normalization_cast_3_readvariableop_resource:	?H
5module_wrapper_9_dense_matmul_readvariableop_resource:	?D
6module_wrapper_9_dense_biasadd_readvariableop_resource:R
Dmodule_wrapper_10_batch_normalization_1_cast_readvariableop_resource:T
Fmodule_wrapper_10_batch_normalization_1_cast_1_readvariableop_resource:T
Fmodule_wrapper_10_batch_normalization_1_cast_2_readvariableop_resource:T
Fmodule_wrapper_10_batch_normalization_1_cast_3_readvariableop_resource:J
8module_wrapper_12_dense_1_matmul_readvariableop_resource:G
9module_wrapper_12_dense_1_biasadd_readvariableop_resource:
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp?=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp?=module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp?=module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp?0module_wrapper_12/dense_1/BiasAdd/ReadVariableOp?/module_wrapper_12/dense_1/MatMul/ReadVariableOp?0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp?8module_wrapper_7/batch_normalization/Cast/ReadVariableOp?:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp?:module_wrapper_7/batch_normalization/Cast_2/ReadVariableOp?:module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp?-module_wrapper_9/dense/BiasAdd/ReadVariableOp?,module_wrapper_9/dense/MatMul/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/Relu?
&module_wrapper_1/max_pooling2d/MaxPoolMaxPool(module_wrapper/conv2d/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_1/max_pooling2d/MaxPool?
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype021
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_2/conv2d_1/Conv2DConv2D/module_wrapper_1/max_pooling2d/MaxPool:output:07module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2"
 module_wrapper_2/conv2d_1/Conv2D?
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_2/conv2d_1/BiasAddBiasAdd)module_wrapper_2/conv2d_1/Conv2D:output:08module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2#
!module_wrapper_2/conv2d_1/BiasAdd?
module_wrapper_2/conv2d_1/ReluRelu*module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2 
module_wrapper_2/conv2d_1/Relu?
(module_wrapper_3/max_pooling2d_1/MaxPoolMaxPool,module_wrapper_2/conv2d_1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2*
(module_wrapper_3/max_pooling2d_1/MaxPool?
/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_4_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_4/conv2d_2/Conv2DConv2D1module_wrapper_3/max_pooling2d_1/MaxPool:output:07module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 module_wrapper_4/conv2d_2/Conv2D?
0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_4_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_4/conv2d_2/BiasAddBiasAdd)module_wrapper_4/conv2d_2/Conv2D:output:08module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!module_wrapper_4/conv2d_2/BiasAdd?
module_wrapper_4/conv2d_2/ReluRelu*module_wrapper_4/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
module_wrapper_4/conv2d_2/Relu?
(module_wrapper_5/max_pooling2d_2/MaxPoolMaxPool,module_wrapper_4/conv2d_2/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2*
(module_wrapper_5/max_pooling2d_2/MaxPool?
module_wrapper_6/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
module_wrapper_6/flatten/Const?
 module_wrapper_6/flatten/ReshapeReshape1module_wrapper_5/max_pooling2d_2/MaxPool:output:0'module_wrapper_6/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_6/flatten/Reshape?
8module_wrapper_7/batch_normalization/Cast/ReadVariableOpReadVariableOpAmodule_wrapper_7_batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_7/batch_normalization/Cast/ReadVariableOp?
:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOpReadVariableOpCmodule_wrapper_7_batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp?
:module_wrapper_7/batch_normalization/Cast_2/ReadVariableOpReadVariableOpCmodule_wrapper_7_batch_normalization_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:module_wrapper_7/batch_normalization/Cast_2/ReadVariableOp?
:module_wrapper_7/batch_normalization/Cast_3/ReadVariableOpReadVariableOpCmodule_wrapper_7_batch_normalization_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp?
4module_wrapper_7/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4module_wrapper_7/batch_normalization/batchnorm/add/y?
2module_wrapper_7/batch_normalization/batchnorm/addAddV2Bmodule_wrapper_7/batch_normalization/Cast_1/ReadVariableOp:value:0=module_wrapper_7/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2module_wrapper_7/batch_normalization/batchnorm/add?
4module_wrapper_7/batch_normalization/batchnorm/RsqrtRsqrt6module_wrapper_7/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4module_wrapper_7/batch_normalization/batchnorm/Rsqrt?
2module_wrapper_7/batch_normalization/batchnorm/mulMul8module_wrapper_7/batch_normalization/batchnorm/Rsqrt:y:0Bmodule_wrapper_7/batch_normalization/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2module_wrapper_7/batch_normalization/batchnorm/mul?
4module_wrapper_7/batch_normalization/batchnorm/mul_1Mul)module_wrapper_6/flatten/Reshape:output:06module_wrapper_7/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4module_wrapper_7/batch_normalization/batchnorm/mul_1?
4module_wrapper_7/batch_normalization/batchnorm/mul_2Mul@module_wrapper_7/batch_normalization/Cast/ReadVariableOp:value:06module_wrapper_7/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4module_wrapper_7/batch_normalization/batchnorm/mul_2?
2module_wrapper_7/batch_normalization/batchnorm/subSubBmodule_wrapper_7/batch_normalization/Cast_2/ReadVariableOp:value:08module_wrapper_7/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2module_wrapper_7/batch_normalization/batchnorm/sub?
4module_wrapper_7/batch_normalization/batchnorm/add_1AddV28module_wrapper_7/batch_normalization/batchnorm/mul_1:z:06module_wrapper_7/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4module_wrapper_7/batch_normalization/batchnorm/add_1?
!module_wrapper_8/dropout/IdentityIdentity8module_wrapper_7/batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_8/dropout/Identity?
,module_wrapper_9/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_9_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,module_wrapper_9/dense/MatMul/ReadVariableOp?
module_wrapper_9/dense/MatMulMatMul*module_wrapper_8/dropout/Identity:output:04module_wrapper_9/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
module_wrapper_9/dense/MatMul?
-module_wrapper_9/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_9_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-module_wrapper_9/dense/BiasAdd/ReadVariableOp?
module_wrapper_9/dense/BiasAddBiasAdd'module_wrapper_9/dense/MatMul:product:05module_wrapper_9/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
module_wrapper_9/dense/BiasAdd?
module_wrapper_9/dense/ReluRelu'module_wrapper_9/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
module_wrapper_9/dense/Relu?
;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOpReadVariableOpDmodule_wrapper_10_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype02=
;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp?
=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpFmodule_wrapper_10_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02?
=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp?
=module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpFmodule_wrapper_10_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype02?
=module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp?
=module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpFmodule_wrapper_10_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype02?
=module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp?
7module_wrapper_10/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_10/batch_normalization_1/batchnorm/add/y?
5module_wrapper_10/batch_normalization_1/batchnorm/addAddV2Emodule_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp:value:0@module_wrapper_10/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:27
5module_wrapper_10/batch_normalization_1/batchnorm/add?
7module_wrapper_10/batch_normalization_1/batchnorm/RsqrtRsqrt9module_wrapper_10/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:29
7module_wrapper_10/batch_normalization_1/batchnorm/Rsqrt?
5module_wrapper_10/batch_normalization_1/batchnorm/mulMul;module_wrapper_10/batch_normalization_1/batchnorm/Rsqrt:y:0Emodule_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:27
5module_wrapper_10/batch_normalization_1/batchnorm/mul?
7module_wrapper_10/batch_normalization_1/batchnorm/mul_1Mul)module_wrapper_9/dense/Relu:activations:09module_wrapper_10/batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????29
7module_wrapper_10/batch_normalization_1/batchnorm/mul_1?
7module_wrapper_10/batch_normalization_1/batchnorm/mul_2MulCmodule_wrapper_10/batch_normalization_1/Cast/ReadVariableOp:value:09module_wrapper_10/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:29
7module_wrapper_10/batch_normalization_1/batchnorm/mul_2?
5module_wrapper_10/batch_normalization_1/batchnorm/subSubEmodule_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp:value:0;module_wrapper_10/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:27
5module_wrapper_10/batch_normalization_1/batchnorm/sub?
7module_wrapper_10/batch_normalization_1/batchnorm/add_1AddV2;module_wrapper_10/batch_normalization_1/batchnorm/mul_1:z:09module_wrapper_10/batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????29
7module_wrapper_10/batch_normalization_1/batchnorm/add_1?
$module_wrapper_11/dropout_1/IdentityIdentity;module_wrapper_10/batch_normalization_1/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2&
$module_wrapper_11/dropout_1/Identity?
/module_wrapper_12/dense_1/MatMul/ReadVariableOpReadVariableOp8module_wrapper_12_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype021
/module_wrapper_12/dense_1/MatMul/ReadVariableOp?
 module_wrapper_12/dense_1/MatMulMatMul-module_wrapper_11/dropout_1/Identity:output:07module_wrapper_12/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_12/dense_1/MatMul?
0module_wrapper_12/dense_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_12_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_12/dense_1/BiasAdd/ReadVariableOp?
!module_wrapper_12/dense_1/BiasAddBiasAdd*module_wrapper_12/dense_1/MatMul:product:08module_wrapper_12/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_12/dense_1/BiasAdd?
!module_wrapper_12/dense_1/SoftmaxSoftmax*module_wrapper_12/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_12/dense_1/Softmax?
IdentityIdentity+module_wrapper_12/dense_1/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp<^module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp>^module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp>^module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp>^module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp1^module_wrapper_12/dense_1/BiasAdd/ReadVariableOp0^module_wrapper_12/dense_1/MatMul/ReadVariableOp1^module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp1^module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp9^module_wrapper_7/batch_normalization/Cast/ReadVariableOp;^module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp;^module_wrapper_7/batch_normalization/Cast_2/ReadVariableOp;^module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp.^module_wrapper_9/dense/BiasAdd/ReadVariableOp-^module_wrapper_9/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2z
;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp;module_wrapper_10/batch_normalization_1/Cast/ReadVariableOp2~
=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp=module_wrapper_10/batch_normalization_1/Cast_1/ReadVariableOp2~
=module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp=module_wrapper_10/batch_normalization_1/Cast_2/ReadVariableOp2~
=module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp=module_wrapper_10/batch_normalization_1/Cast_3/ReadVariableOp2d
0module_wrapper_12/dense_1/BiasAdd/ReadVariableOp0module_wrapper_12/dense_1/BiasAdd/ReadVariableOp2b
/module_wrapper_12/dense_1/MatMul/ReadVariableOp/module_wrapper_12/dense_1/MatMul/ReadVariableOp2d
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2d
0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_4/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_4/conv2d_2/Conv2D/ReadVariableOp2t
8module_wrapper_7/batch_normalization/Cast/ReadVariableOp8module_wrapper_7/batch_normalization/Cast/ReadVariableOp2x
:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp:module_wrapper_7/batch_normalization/Cast_1/ReadVariableOp2x
:module_wrapper_7/batch_normalization/Cast_2/ReadVariableOp:module_wrapper_7/batch_normalization/Cast_2/ReadVariableOp2x
:module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp:module_wrapper_7/batch_normalization/Cast_3/ReadVariableOp2^
-module_wrapper_9/dense/BiasAdd/ReadVariableOp-module_wrapper_9/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_9/dense/MatMul/ReadVariableOp,module_wrapper_9/dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1389823

args_07
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1389480

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1389504

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool|
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_4_layer_call_fn_1391179

args_0!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13899702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
,__inference_sequential_layer_call_fn_1390245
module_wrapper_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_13901652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
K
/__inference_max_pooling2d_layer_call_fn_1390413

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_13904072
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
3__inference_module_wrapper_12_layer_call_fn_1391515

args_0
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_13897092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?B
?	
G__inference_sequential_layer_call_and_return_conditional_losses_1389647

inputs0
module_wrapper_1389470:$
module_wrapper_1389472:2
module_wrapper_2_1389494:&
module_wrapper_2_1389496:2
module_wrapper_4_1389518: &
module_wrapper_4_1389520: '
module_wrapper_7_1389559:	?'
module_wrapper_7_1389561:	?'
module_wrapper_7_1389563:	?'
module_wrapper_7_1389565:	?+
module_wrapper_9_1389587:	?&
module_wrapper_9_1389589:'
module_wrapper_10_1389613:'
module_wrapper_10_1389615:'
module_wrapper_10_1389617:'
module_wrapper_10_1389619:+
module_wrapper_12_1389641:'
module_wrapper_12_1389643:
identity??&module_wrapper/StatefulPartitionedCall?)module_wrapper_10/StatefulPartitionedCall?)module_wrapper_12/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_4/StatefulPartitionedCall?(module_wrapper_7/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_1389470module_wrapper_1389472*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_13894692(
&module_wrapper/StatefulPartitionedCall?
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13894802"
 module_wrapper_1/PartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_1389494module_wrapper_2_1389496*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13894932*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13895042"
 module_wrapper_3/PartitionedCall?
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_3/PartitionedCall:output:0module_wrapper_4_1389518module_wrapper_4_1389520*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13895172*
(module_wrapper_4/StatefulPartitionedCall?
 module_wrapper_5/PartitionedCallPartitionedCall1module_wrapper_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13895282"
 module_wrapper_5/PartitionedCall?
 module_wrapper_6/PartitionedCallPartitionedCall)module_wrapper_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_13895362"
 module_wrapper_6/PartitionedCall?
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_6/PartitionedCall:output:0module_wrapper_7_1389559module_wrapper_7_1389561module_wrapper_7_1389563module_wrapper_7_1389565*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_13895582*
(module_wrapper_7/StatefulPartitionedCall?
 module_wrapper_8/PartitionedCallPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_13895732"
 module_wrapper_8/PartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_8/PartitionedCall:output:0module_wrapper_9_1389587module_wrapper_9_1389589*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_13895862*
(module_wrapper_9/StatefulPartitionedCall?
)module_wrapper_10/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0module_wrapper_10_1389613module_wrapper_10_1389615module_wrapper_10_1389617module_wrapper_10_1389619*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_13896122+
)module_wrapper_10/StatefulPartitionedCall?
!module_wrapper_11/PartitionedCallPartitionedCall2module_wrapper_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_13896272#
!module_wrapper_11/PartitionedCall?
)module_wrapper_12/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_11/PartitionedCall:output:0module_wrapper_12_1389641module_wrapper_12_1389643*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_13896402+
)module_wrapper_12/StatefulPartitionedCall?
IdentityIdentity2module_wrapper_12/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall*^module_wrapper_10/StatefulPartitionedCall*^module_wrapper_12/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2V
)module_wrapper_10/StatefulPartitionedCall)module_wrapper_10/StatefulPartitionedCall2V
)module_wrapper_12/StatefulPartitionedCall)module_wrapper_12/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
3__inference_module_wrapper_10_layer_call_fn_1391416

args_0
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_13897892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1389493

args_0A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
l
3__inference_module_wrapper_11_layer_call_fn_1391480

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_13897362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1391390

args_07
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1389612

args_0@
2batch_normalization_1_cast_readvariableop_resource:B
4batch_normalization_1_cast_1_readvariableop_resource:B
4batch_normalization_1_cast_2_readvariableop_resource:B
4batch_normalization_1_cast_3_readvariableop_resource:
identity??)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOp?+batch_normalization_1/Cast_2/ReadVariableOp?+batch_normalization_1/Cast_3/ReadVariableOp?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
+batch_normalization_1/Cast_2/ReadVariableOpReadVariableOp4batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype02-
+batch_normalization_1/Cast_2/ReadVariableOp?
+batch_normalization_1/Cast_3/ReadVariableOpReadVariableOp4batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype02-
+batch_normalization_1/Cast_3/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV23batch_normalization_1/Cast_1/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1Mulargs_0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul1batch_normalization_1/Cast/ReadVariableOp:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub3batch_normalization_1/Cast_2/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_1/batchnorm/add_1?
IdentityIdentity)batch_normalization_1/batchnorm/add_1:z:0*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp,^batch_normalization_1/Cast_2/ReadVariableOp,^batch_normalization_1/Cast_3/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp2Z
+batch_normalization_1/Cast_2/ReadVariableOp+batch_normalization_1/Cast_2/ReadVariableOp2Z
+batch_normalization_1/Cast_3/ReadVariableOp+batch_normalization_1/Cast_3/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1389558

args_0?
0batch_normalization_cast_readvariableop_resource:	?A
2batch_normalization_cast_1_readvariableop_resource:	?A
2batch_normalization_cast_2_readvariableop_resource:	?A
2batch_normalization_cast_3_readvariableop_resource:	?
identity??'batch_normalization/Cast/ReadVariableOp?)batch_normalization/Cast_1/ReadVariableOp?)batch_normalization/Cast_2/ReadVariableOp?)batch_normalization/Cast_3/ReadVariableOp?
'batch_normalization/Cast/ReadVariableOpReadVariableOp0batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization/Cast/ReadVariableOp?
)batch_normalization/Cast_1/ReadVariableOpReadVariableOp2batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_1/ReadVariableOp?
)batch_normalization/Cast_2/ReadVariableOpReadVariableOp2batch_normalization_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_2/ReadVariableOp?
)batch_normalization/Cast_3/ReadVariableOpReadVariableOp2batch_normalization_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_3/ReadVariableOp?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV21batch_normalization/Cast_1/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/Rsqrt?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:01batch_normalization/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1Mulargs_0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/mul_1?
#batch_normalization/batchnorm/mul_2Mul/batch_normalization/Cast/ReadVariableOp:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/mul_2?
!batch_normalization/batchnorm/subSub1batch_normalization/Cast_2/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/add_1?
IdentityIdentity'batch_normalization/batchnorm/add_1:z:0(^batch_normalization/Cast/ReadVariableOp*^batch_normalization/Cast_1/ReadVariableOp*^batch_normalization/Cast_2/ReadVariableOp*^batch_normalization/Cast_3/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2R
'batch_normalization/Cast/ReadVariableOp'batch_normalization/Cast/ReadVariableOp2V
)batch_normalization/Cast_1/ReadVariableOp)batch_normalization/Cast_1/ReadVariableOp2V
)batch_normalization/Cast_2/ReadVariableOp)batch_normalization/Cast_2/ReadVariableOp2V
)batch_normalization/Cast_3/ReadVariableOp)batch_normalization/Cast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_8_layer_call_fn_1391328

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_13895732
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_2_layer_call_fn_1391110

args_0!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13894932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1391216

args_0
identity?
max_pooling2d_2/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool|
IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
7__inference_batch_normalization_1_layer_call_fn_1391630

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_13906232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1391470

args_0K
=batch_normalization_1_assignmovingavg_readvariableop_resource:M
?batch_normalization_1_assignmovingavg_1_readvariableop_resource:@
2batch_normalization_1_cast_readvariableop_resource:B
4batch_normalization_1_cast_1_readvariableop_resource:
identity??%batch_normalization_1/AssignMovingAvg?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?'batch_normalization_1/AssignMovingAvg_1?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOp?
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_1/moments/mean/reduction_indices?
"batch_normalization_1/moments/meanMeanargs_0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2$
"batch_normalization_1/moments/mean?
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes

:2,
*batch_normalization_1/moments/StopGradient?
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferenceargs_03batch_normalization_1/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????21
/batch_normalization_1/moments/SquaredDifference?
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_1/moments/variance/reduction_indices?
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2(
&batch_normalization_1/moments/variance?
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2'
%batch_normalization_1/moments/Squeeze?
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1?
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_1/AssignMovingAvg/decay?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOp?
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes
:2+
)batch_normalization_1/AssignMovingAvg/sub?
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2+
)batch_normalization_1/AssignMovingAvg/mul?
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_1/AssignMovingAvg?
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_1/AssignMovingAvg_1/decay?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2-
+batch_normalization_1/AssignMovingAvg_1/sub?
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2-
+batch_normalization_1/AssignMovingAvg_1/mul?
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_1?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1Mulargs_0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub1batch_normalization_1/Cast/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_1/batchnorm/add_1?
IdentityIdentity)batch_normalization_1/batchnorm/add_1:z:0&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1391379

args_07
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1389944

args_0
identity?
max_pooling2d_2/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool|
IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_5_layer_call_fn_1391206

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13895282
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
7__inference_batch_normalization_1_layer_call_fn_1391643

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_13906832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
0__inference_module_wrapper_layer_call_fn_1391050

args_0!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_13894692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
%__inference_signature_wrapper_1390400
module_wrapper_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_13894512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
2__inference_module_wrapper_9_layer_call_fn_1391368

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_13898232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?B
?	
G__inference_sequential_layer_call_and_return_conditional_losses_1390298
module_wrapper_input0
module_wrapper_1390248:$
module_wrapper_1390250:2
module_wrapper_2_1390254:&
module_wrapper_2_1390256:2
module_wrapper_4_1390260: &
module_wrapper_4_1390262: '
module_wrapper_7_1390267:	?'
module_wrapper_7_1390269:	?'
module_wrapper_7_1390271:	?'
module_wrapper_7_1390273:	?+
module_wrapper_9_1390277:	?&
module_wrapper_9_1390279:'
module_wrapper_10_1390282:'
module_wrapper_10_1390284:'
module_wrapper_10_1390286:'
module_wrapper_10_1390288:+
module_wrapper_12_1390292:'
module_wrapper_12_1390294:
identity??&module_wrapper/StatefulPartitionedCall?)module_wrapper_10/StatefulPartitionedCall?)module_wrapper_12/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_4/StatefulPartitionedCall?(module_wrapper_7/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_1390248module_wrapper_1390250*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_13894692(
&module_wrapper/StatefulPartitionedCall?
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13894802"
 module_wrapper_1/PartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_1390254module_wrapper_2_1390256*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13894932*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13895042"
 module_wrapper_3/PartitionedCall?
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_3/PartitionedCall:output:0module_wrapper_4_1390260module_wrapper_4_1390262*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13895172*
(module_wrapper_4/StatefulPartitionedCall?
 module_wrapper_5/PartitionedCallPartitionedCall1module_wrapper_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13895282"
 module_wrapper_5/PartitionedCall?
 module_wrapper_6/PartitionedCallPartitionedCall)module_wrapper_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_13895362"
 module_wrapper_6/PartitionedCall?
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_6/PartitionedCall:output:0module_wrapper_7_1390267module_wrapper_7_1390269module_wrapper_7_1390271module_wrapper_7_1390273*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_13895582*
(module_wrapper_7/StatefulPartitionedCall?
 module_wrapper_8/PartitionedCallPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_13895732"
 module_wrapper_8/PartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_8/PartitionedCall:output:0module_wrapper_9_1390277module_wrapper_9_1390279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_13895862*
(module_wrapper_9/StatefulPartitionedCall?
)module_wrapper_10/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0module_wrapper_10_1390282module_wrapper_10_1390284module_wrapper_10_1390286module_wrapper_10_1390288*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_13896122+
)module_wrapper_10/StatefulPartitionedCall?
!module_wrapper_11/PartitionedCallPartitionedCall2module_wrapper_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_13896272#
!module_wrapper_11/PartitionedCall?
)module_wrapper_12/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_11/PartitionedCall:output:0module_wrapper_12_1390292module_wrapper_12_1390294*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_13896402+
)module_wrapper_12/StatefulPartitionedCall?
IdentityIdentity2module_wrapper_12/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall*^module_wrapper_10/StatefulPartitionedCall*^module_wrapper_12/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2V
)module_wrapper_10/StatefulPartitionedCall)module_wrapper_10/StatefulPartitionedCall2V
)module_wrapper_12/StatefulPartitionedCall)module_wrapper_12/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?w
?
 __inference__traced_save_1391885
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop;
7savev2_module_wrapper_conv2d_kernel_read_readvariableop9
5savev2_module_wrapper_conv2d_bias_read_readvariableop?
;savev2_module_wrapper_2_conv2d_1_kernel_read_readvariableop=
9savev2_module_wrapper_2_conv2d_1_bias_read_readvariableop?
;savev2_module_wrapper_4_conv2d_2_kernel_read_readvariableop=
9savev2_module_wrapper_4_conv2d_2_bias_read_readvariableopI
Esavev2_module_wrapper_7_batch_normalization_gamma_read_readvariableopH
Dsavev2_module_wrapper_7_batch_normalization_beta_read_readvariableopO
Ksavev2_module_wrapper_7_batch_normalization_moving_mean_read_readvariableopS
Osavev2_module_wrapper_7_batch_normalization_moving_variance_read_readvariableop<
8savev2_module_wrapper_9_dense_kernel_read_readvariableop:
6savev2_module_wrapper_9_dense_bias_read_readvariableopL
Hsavev2_module_wrapper_10_batch_normalization_1_gamma_read_readvariableopK
Gsavev2_module_wrapper_10_batch_normalization_1_beta_read_readvariableopR
Nsavev2_module_wrapper_10_batch_normalization_1_moving_mean_read_readvariableopV
Rsavev2_module_wrapper_10_batch_normalization_1_moving_variance_read_readvariableop?
;savev2_module_wrapper_12_dense_1_kernel_read_readvariableop=
9savev2_module_wrapper_12_dense_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_2_conv2d_1_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_2_conv2d_1_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_4_conv2d_2_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_4_conv2d_2_bias_m_read_readvariableopP
Lsavev2_adam_module_wrapper_7_batch_normalization_gamma_m_read_readvariableopO
Ksavev2_adam_module_wrapper_7_batch_normalization_beta_m_read_readvariableopC
?savev2_adam_module_wrapper_9_dense_kernel_m_read_readvariableopA
=savev2_adam_module_wrapper_9_dense_bias_m_read_readvariableopS
Osavev2_adam_module_wrapper_10_batch_normalization_1_gamma_m_read_readvariableopR
Nsavev2_adam_module_wrapper_10_batch_normalization_1_beta_m_read_readvariableopF
Bsavev2_adam_module_wrapper_12_dense_1_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_12_dense_1_bias_m_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_2_conv2d_1_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_2_conv2d_1_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_4_conv2d_2_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_4_conv2d_2_bias_v_read_readvariableopP
Lsavev2_adam_module_wrapper_7_batch_normalization_gamma_v_read_readvariableopO
Ksavev2_adam_module_wrapper_7_batch_normalization_beta_v_read_readvariableopC
?savev2_adam_module_wrapper_9_dense_kernel_v_read_readvariableopA
=savev2_adam_module_wrapper_9_dense_bias_v_read_readvariableopS
Osavev2_adam_module_wrapper_10_batch_normalization_1_gamma_v_read_readvariableopR
Nsavev2_adam_module_wrapper_10_batch_normalization_1_beta_v_read_readvariableopF
Bsavev2_adam_module_wrapper_12_dense_1_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_12_dense_1_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
value?B?8B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop7savev2_module_wrapper_conv2d_kernel_read_readvariableop5savev2_module_wrapper_conv2d_bias_read_readvariableop;savev2_module_wrapper_2_conv2d_1_kernel_read_readvariableop9savev2_module_wrapper_2_conv2d_1_bias_read_readvariableop;savev2_module_wrapper_4_conv2d_2_kernel_read_readvariableop9savev2_module_wrapper_4_conv2d_2_bias_read_readvariableopEsavev2_module_wrapper_7_batch_normalization_gamma_read_readvariableopDsavev2_module_wrapper_7_batch_normalization_beta_read_readvariableopKsavev2_module_wrapper_7_batch_normalization_moving_mean_read_readvariableopOsavev2_module_wrapper_7_batch_normalization_moving_variance_read_readvariableop8savev2_module_wrapper_9_dense_kernel_read_readvariableop6savev2_module_wrapper_9_dense_bias_read_readvariableopHsavev2_module_wrapper_10_batch_normalization_1_gamma_read_readvariableopGsavev2_module_wrapper_10_batch_normalization_1_beta_read_readvariableopNsavev2_module_wrapper_10_batch_normalization_1_moving_mean_read_readvariableopRsavev2_module_wrapper_10_batch_normalization_1_moving_variance_read_readvariableop;savev2_module_wrapper_12_dense_1_kernel_read_readvariableop9savev2_module_wrapper_12_dense_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopBsavev2_adam_module_wrapper_2_conv2d_1_kernel_m_read_readvariableop@savev2_adam_module_wrapper_2_conv2d_1_bias_m_read_readvariableopBsavev2_adam_module_wrapper_4_conv2d_2_kernel_m_read_readvariableop@savev2_adam_module_wrapper_4_conv2d_2_bias_m_read_readvariableopLsavev2_adam_module_wrapper_7_batch_normalization_gamma_m_read_readvariableopKsavev2_adam_module_wrapper_7_batch_normalization_beta_m_read_readvariableop?savev2_adam_module_wrapper_9_dense_kernel_m_read_readvariableop=savev2_adam_module_wrapper_9_dense_bias_m_read_readvariableopOsavev2_adam_module_wrapper_10_batch_normalization_1_gamma_m_read_readvariableopNsavev2_adam_module_wrapper_10_batch_normalization_1_beta_m_read_readvariableopBsavev2_adam_module_wrapper_12_dense_1_kernel_m_read_readvariableop@savev2_adam_module_wrapper_12_dense_1_bias_m_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopBsavev2_adam_module_wrapper_2_conv2d_1_kernel_v_read_readvariableop@savev2_adam_module_wrapper_2_conv2d_1_bias_v_read_readvariableopBsavev2_adam_module_wrapper_4_conv2d_2_kernel_v_read_readvariableop@savev2_adam_module_wrapper_4_conv2d_2_bias_v_read_readvariableopLsavev2_adam_module_wrapper_7_batch_normalization_gamma_v_read_readvariableopKsavev2_adam_module_wrapper_7_batch_normalization_beta_v_read_readvariableop?savev2_adam_module_wrapper_9_dense_kernel_v_read_readvariableop=savev2_adam_module_wrapper_9_dense_bias_v_read_readvariableopOsavev2_adam_module_wrapper_10_batch_normalization_1_gamma_v_read_readvariableopNsavev2_adam_module_wrapper_10_batch_normalization_1_beta_v_read_readvariableopBsavev2_adam_module_wrapper_12_dense_1_kernel_v_read_readvariableop@savev2_adam_module_wrapper_12_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *F
dtypes<
:28	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : ::::: : :?:?:?:?:	?:::::::: : : : ::::: : :?:?:	?:::::::::: : :?:?:	?:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 	

_output_shapes
::,
(
&
_output_shapes
: : 

_output_shapes
: :!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
: : !

_output_shapes
: :!"

_output_shapes	
:?:!#

_output_shapes	
:?:%$!

_output_shapes
:	?: %

_output_shapes
:: &

_output_shapes
:: '

_output_shapes
::$( 

_output_shapes

:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
: : /

_output_shapes
: :!0

_output_shapes	
:?:!1

_output_shapes	
:?:%2!

_output_shapes
:	?: 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
::$6 

_output_shapes

:: 7

_output_shapes
::8

_output_shapes
: 
?
?
2__inference_module_wrapper_9_layer_call_fn_1391359

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_13895862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1391338

args_0
identityk
dropout/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout/Identityn
IdentityIdentitydropout/Identity:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_layer_call_fn_1391059

args_0!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_13900622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1391436

args_0@
2batch_normalization_1_cast_readvariableop_resource:B
4batch_normalization_1_cast_1_readvariableop_resource:B
4batch_normalization_1_cast_2_readvariableop_resource:B
4batch_normalization_1_cast_3_readvariableop_resource:
identity??)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOp?+batch_normalization_1/Cast_2/ReadVariableOp?+batch_normalization_1/Cast_3/ReadVariableOp?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
+batch_normalization_1/Cast_2/ReadVariableOpReadVariableOp4batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype02-
+batch_normalization_1/Cast_2/ReadVariableOp?
+batch_normalization_1/Cast_3/ReadVariableOpReadVariableOp4batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype02-
+batch_normalization_1/Cast_3/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV23batch_normalization_1/Cast_1/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1Mulargs_0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul1batch_normalization_1/Cast/ReadVariableOp:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub3batch_normalization_1/Cast_2/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_1/batchnorm/add_1?
IdentityIdentity)batch_normalization_1/batchnorm/add_1:z:0*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp,^batch_normalization_1/Cast_2/ReadVariableOp,^batch_normalization_1/Cast_3/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp2Z
+batch_normalization_1/Cast_2/ReadVariableOp+batch_normalization_1/Cast_2/ReadVariableOp2Z
+batch_normalization_1/Cast_3/ReadVariableOp+batch_normalization_1/Cast_3/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_7_layer_call_fn_1391269

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_13899032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_3_layer_call_fn_1391151

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13899902
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1390036

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_1_layer_call_fn_1391086

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13894802
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?F
?	
G__inference_sequential_layer_call_and_return_conditional_losses_1390351
module_wrapper_input0
module_wrapper_1390301:$
module_wrapper_1390303:2
module_wrapper_2_1390307:&
module_wrapper_2_1390309:2
module_wrapper_4_1390313: &
module_wrapper_4_1390315: '
module_wrapper_7_1390320:	?'
module_wrapper_7_1390322:	?'
module_wrapper_7_1390324:	?'
module_wrapper_7_1390326:	?+
module_wrapper_9_1390330:	?&
module_wrapper_9_1390332:'
module_wrapper_10_1390335:'
module_wrapper_10_1390337:'
module_wrapper_10_1390339:'
module_wrapper_10_1390341:+
module_wrapper_12_1390345:'
module_wrapper_12_1390347:
identity??&module_wrapper/StatefulPartitionedCall?)module_wrapper_10/StatefulPartitionedCall?)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_12/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_4/StatefulPartitionedCall?(module_wrapper_7/StatefulPartitionedCall?(module_wrapper_8/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_1390301module_wrapper_1390303*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_13900622(
&module_wrapper/StatefulPartitionedCall?
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13900362"
 module_wrapper_1/PartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_1390307module_wrapper_2_1390309*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13900162*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13899902"
 module_wrapper_3/PartitionedCall?
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_3/PartitionedCall:output:0module_wrapper_4_1390313module_wrapper_4_1390315*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13899702*
(module_wrapper_4/StatefulPartitionedCall?
 module_wrapper_5/PartitionedCallPartitionedCall1module_wrapper_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13899442"
 module_wrapper_5/PartitionedCall?
 module_wrapper_6/PartitionedCallPartitionedCall)module_wrapper_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_13899282"
 module_wrapper_6/PartitionedCall?
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_6/PartitionedCall:output:0module_wrapper_7_1390320module_wrapper_7_1390322module_wrapper_7_1390324module_wrapper_7_1390326*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_13899032*
(module_wrapper_7/StatefulPartitionedCall?
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_13898502*
(module_wrapper_8/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_8/StatefulPartitionedCall:output:0module_wrapper_9_1390330module_wrapper_9_1390332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_13898232*
(module_wrapper_9/StatefulPartitionedCall?
)module_wrapper_10/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0module_wrapper_10_1390335module_wrapper_10_1390337module_wrapper_10_1390339module_wrapper_10_1390341*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_13897892+
)module_wrapper_10/StatefulPartitionedCall?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_10/StatefulPartitionedCall:output:0)^module_wrapper_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_13897362+
)module_wrapper_11/StatefulPartitionedCall?
)module_wrapper_12/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0module_wrapper_12_1390345module_wrapper_12_1390347*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_13897092+
)module_wrapper_12/StatefulPartitionedCall?
IdentityIdentity2module_wrapper_12/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall*^module_wrapper_10/StatefulPartitionedCall*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_12/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2V
)module_wrapper_10/StatefulPartitionedCall)module_wrapper_10/StatefulPartitionedCall2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_12/StatefulPartitionedCall)module_wrapper_12/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
h
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1390419

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?)
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1391617

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2}
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?<
?
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1391323

args_0J
;batch_normalization_assignmovingavg_readvariableop_resource:	?L
=batch_normalization_assignmovingavg_1_readvariableop_resource:	??
0batch_normalization_cast_readvariableop_resource:	?A
2batch_normalization_cast_1_readvariableop_resource:	?
identity??#batch_normalization/AssignMovingAvg?2batch_normalization/AssignMovingAvg/ReadVariableOp?%batch_normalization/AssignMovingAvg_1?4batch_normalization/AssignMovingAvg_1/ReadVariableOp?'batch_normalization/Cast/ReadVariableOp?)batch_normalization/Cast_1/ReadVariableOp?
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 24
2batch_normalization/moments/mean/reduction_indices?
 batch_normalization/moments/meanMeanargs_0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2"
 batch_normalization/moments/mean?
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	?2*
(batch_normalization/moments/StopGradient?
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceargs_01batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2/
-batch_normalization/moments/SquaredDifference?
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization/moments/variance/reduction_indices?
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2&
$batch_normalization/moments/variance?
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2%
#batch_normalization/moments/Squeeze?
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1?
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)batch_normalization/AssignMovingAvg/decay?
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOp?
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2)
'batch_normalization/AssignMovingAvg/sub?
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2)
'batch_normalization/AssignMovingAvg/mul?
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvg?
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization/AssignMovingAvg_1/decay?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOp?
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization/AssignMovingAvg_1/sub?
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization/AssignMovingAvg_1/mul?
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1?
'batch_normalization/Cast/ReadVariableOpReadVariableOp0batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization/Cast/ReadVariableOp?
)batch_normalization/Cast_1/ReadVariableOpReadVariableOp2batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_1/ReadVariableOp?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/Rsqrt?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:01batch_normalization/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1Mulargs_0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/mul_1?
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/mul_2?
!batch_normalization/batchnorm/subSub/batch_normalization/Cast/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/add_1?
IdentityIdentity'batch_normalization/batchnorm/add_1:z:0$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp(^batch_normalization/Cast/ReadVariableOp*^batch_normalization/Cast_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization/Cast/ReadVariableOp'batch_normalization/Cast/ReadVariableOp2V
)batch_normalization/Cast_1/ReadVariableOp)batch_normalization/Cast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1391096

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
m
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_1389736

args_0
identity?w
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulargs_0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mulh
dropout_1/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2*20
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mul_1o
IdentityIdentitydropout_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
f
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1390407

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1391190

args_0A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: 
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1390062

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1391663

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1~
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2~
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_2_layer_call_fn_1390437

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_13904312
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1390431

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_module_wrapper_5_layer_call_fn_1391211

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13899442
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1391081

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
]
module_wrapper_inputE
&serving_default_module_wrapper_input:0?????????E
module_wrapper_120
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?
_tf_keras_sequential?{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "module_wrapper_input"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}]}, "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "float32", "module_wrapper_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 2}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 3}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
_module
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
#_module
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
(_module
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
-_module
.	variables
/trainable_variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
2_module
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
7_module
8	variables
9trainable_variables
:regularization_losses
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
<_module
=	variables
>trainable_variables
?regularization_losses
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
A_module
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
F_module
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
K_module
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
P_module
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
Uiter

Vbeta_1

Wbeta_2
	Xdecay
Ylearning_rateZm?[m?\m?]m?^m?_m?`m?am?dm?em?fm?gm?jm?km?Zv?[v?\v?]v?^v?_v?`v?av?dv?ev?fv?gv?jv?kv?"
	optimizer
?
Z0
[1
\2
]3
^4
_5
`6
a7
b8
c9
d10
e11
f12
g13
h14
i15
j16
k17"
trackable_list_wrapper
?
Z0
[1
\2
]3
^4
_5
`6
a7
d8
e9
f10
g11
j12
k13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
onon_trainable_variables
regularization_losses

players
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?


Zkernel
[bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
xnon_trainable_variables
regularization_losses

ylayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
z	variables
{trainable_variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~metrics
layer_regularization_losses
?layer_metrics
	variables
trainable_variables
?non_trainable_variables
regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

\kernel
]bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 8]}}
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
?non_trainable_variables
!regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
$	variables
%trainable_variables
?non_trainable_variables
&regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

^kernel
_bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 16]}}
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
?non_trainable_variables
+regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
?non_trainable_variables
0regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
?non_trainable_variables
5regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis
	`gamma
abeta
bmoving_mean
cmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 288}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 288]}}
<
`0
a1
b2
c3"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
?non_trainable_variables
:regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": 42}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

dkernel
ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 30, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 288}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 288]}}
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
?non_trainable_variables
Dregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis
	fgamma
gbeta
hmoving_mean
imoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 30}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30]}}
<
f0
g1
h2
i3"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
?non_trainable_variables
Iregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": 42}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
?non_trainable_variables
Nregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

jkernel
kbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 20, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 30}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30]}}
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
?non_trainable_variables
Sregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
6:42module_wrapper/conv2d/kernel
(:&2module_wrapper/conv2d/bias
::82 module_wrapper_2/conv2d_1/kernel
,:*2module_wrapper_2/conv2d_1/bias
::8 2 module_wrapper_4/conv2d_2/kernel
,:* 2module_wrapper_4/conv2d_2/bias
9:7?2*module_wrapper_7/batch_normalization/gamma
8:6?2)module_wrapper_7/batch_normalization/beta
A:?? (20module_wrapper_7/batch_normalization/moving_mean
E:C? (24module_wrapper_7/batch_normalization/moving_variance
0:.	?2module_wrapper_9/dense/kernel
):'2module_wrapper_9/dense/bias
;:92-module_wrapper_10/batch_normalization_1/gamma
::82,module_wrapper_10/batch_normalization_1/beta
C:A (23module_wrapper_10/batch_normalization_1/moving_mean
G:E (27module_wrapper_10/batch_normalization_1/moving_variance
2:02 module_wrapper_12/dense_1/kernel
,:*2module_wrapper_12/dense_1/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
b0
c1
h2
i3"
trackable_list_wrapper
~
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
10
11
12"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
q	variables
rtrainable_variables
?non_trainable_variables
sregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
?non_trainable_variables
|regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
<
`0
a1
b2
c3"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
<
f0
g1
h2
i3"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 4}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 3}
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
.
b0
c1"
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
.
h0
i1"
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
;:92#Adam/module_wrapper/conv2d/kernel/m
-:+2!Adam/module_wrapper/conv2d/bias/m
?:=2'Adam/module_wrapper_2/conv2d_1/kernel/m
1:/2%Adam/module_wrapper_2/conv2d_1/bias/m
?:= 2'Adam/module_wrapper_4/conv2d_2/kernel/m
1:/ 2%Adam/module_wrapper_4/conv2d_2/bias/m
>:<?21Adam/module_wrapper_7/batch_normalization/gamma/m
=:;?20Adam/module_wrapper_7/batch_normalization/beta/m
5:3	?2$Adam/module_wrapper_9/dense/kernel/m
.:,2"Adam/module_wrapper_9/dense/bias/m
@:>24Adam/module_wrapper_10/batch_normalization_1/gamma/m
?:=23Adam/module_wrapper_10/batch_normalization_1/beta/m
7:52'Adam/module_wrapper_12/dense_1/kernel/m
1:/2%Adam/module_wrapper_12/dense_1/bias/m
;:92#Adam/module_wrapper/conv2d/kernel/v
-:+2!Adam/module_wrapper/conv2d/bias/v
?:=2'Adam/module_wrapper_2/conv2d_1/kernel/v
1:/2%Adam/module_wrapper_2/conv2d_1/bias/v
?:= 2'Adam/module_wrapper_4/conv2d_2/kernel/v
1:/ 2%Adam/module_wrapper_4/conv2d_2/bias/v
>:<?21Adam/module_wrapper_7/batch_normalization/gamma/v
=:;?20Adam/module_wrapper_7/batch_normalization/beta/v
5:3	?2$Adam/module_wrapper_9/dense/kernel/v
.:,2"Adam/module_wrapper_9/dense/bias/v
@:>24Adam/module_wrapper_10/batch_normalization_1/gamma/v
?:=23Adam/module_wrapper_10/batch_normalization_1/beta/v
7:52'Adam/module_wrapper_12/dense_1/kernel/v
1:/2%Adam/module_wrapper_12/dense_1/bias/v
?2?
,__inference_sequential_layer_call_fn_1389686
,__inference_sequential_layer_call_fn_1390802
,__inference_sequential_layer_call_fn_1390843
,__inference_sequential_layer_call_fn_1390245?
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
?2?
G__inference_sequential_layer_call_and_return_conditional_losses_1390921
G__inference_sequential_layer_call_and_return_conditional_losses_1391041
G__inference_sequential_layer_call_and_return_conditional_losses_1390298
G__inference_sequential_layer_call_and_return_conditional_losses_1390351?
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
"__inference__wrapped_model_1389451?
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
annotations? *;?8
6?3
module_wrapper_input?????????
?2?
0__inference_module_wrapper_layer_call_fn_1391050
0__inference_module_wrapper_layer_call_fn_1391059?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1391070
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1391081?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
2__inference_module_wrapper_1_layer_call_fn_1391086
2__inference_module_wrapper_1_layer_call_fn_1391091?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1391096
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1391101?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
2__inference_module_wrapper_2_layer_call_fn_1391110
2__inference_module_wrapper_2_layer_call_fn_1391119?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1391130
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1391141?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
2__inference_module_wrapper_3_layer_call_fn_1391146
2__inference_module_wrapper_3_layer_call_fn_1391151?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1391156
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1391161?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
2__inference_module_wrapper_4_layer_call_fn_1391170
2__inference_module_wrapper_4_layer_call_fn_1391179?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1391190
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1391201?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
2__inference_module_wrapper_5_layer_call_fn_1391206
2__inference_module_wrapper_5_layer_call_fn_1391211?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1391216
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1391221?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
2__inference_module_wrapper_6_layer_call_fn_1391226
2__inference_module_wrapper_6_layer_call_fn_1391231?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1391237
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1391243?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
2__inference_module_wrapper_7_layer_call_fn_1391256
2__inference_module_wrapper_7_layer_call_fn_1391269?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1391289
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1391323?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
2__inference_module_wrapper_8_layer_call_fn_1391328
2__inference_module_wrapper_8_layer_call_fn_1391333?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1391338
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1391350?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
2__inference_module_wrapper_9_layer_call_fn_1391359
2__inference_module_wrapper_9_layer_call_fn_1391368?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1391379
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1391390?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
3__inference_module_wrapper_10_layer_call_fn_1391403
3__inference_module_wrapper_10_layer_call_fn_1391416?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1391436
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1391470?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
3__inference_module_wrapper_11_layer_call_fn_1391475
3__inference_module_wrapper_11_layer_call_fn_1391480?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_1391485
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_1391497?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
3__inference_module_wrapper_12_layer_call_fn_1391506
3__inference_module_wrapper_12_layer_call_fn_1391515?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_1391526
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_1391537?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
%__inference_signature_wrapper_1390400module_wrapper_input"?
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
 
?2??
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
?2??
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
/__inference_max_pooling2d_layer_call_fn_1390413?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1390407?
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
annotations? *@?=
;?84????????????????????????????????????
?2??
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
?2??
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
1__inference_max_pooling2d_1_layer_call_fn_1390425?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1390419?
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
annotations? *@?=
;?84????????????????????????????????????
?2??
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
?2??
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
1__inference_max_pooling2d_2_layer_call_fn_1390437?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1390431?
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
annotations? *@?=
;?84????????????????????????????????????
?2??
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
?2??
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
5__inference_batch_normalization_layer_call_fn_1391550
5__inference_batch_normalization_layer_call_fn_1391563?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1391583
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1391617?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
7__inference_batch_normalization_1_layer_call_fn_1391630
7__inference_batch_normalization_1_layer_call_fn_1391643?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1391663
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1391697?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
 ?
"__inference__wrapped_model_1389451?Z[\]^_bca`dehigfjkE?B
;?8
6?3
module_wrapper_input?????????
? "E?B
@
module_wrapper_12+?(
module_wrapper_12??????????
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1391663bhigf3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1391697bhigf3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
7__inference_batch_normalization_1_layer_call_fn_1391630Uhigf3?0
)?&
 ?
inputs?????????
p 
? "???????????
7__inference_batch_normalization_1_layer_call_fn_1391643Uhigf3?0
)?&
 ?
inputs?????????
p
? "???????????
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1391583dbca`4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1391617dbca`4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
5__inference_batch_normalization_layer_call_fn_1391550Wbca`4?1
*?'
!?
inputs??????????
p 
? "????????????
5__inference_batch_normalization_layer_call_fn_1391563Wbca`4?1
*?'
!?
inputs??????????
p
? "????????????
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1390419?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_1_layer_call_fn_1390425?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1390431?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_2_layer_call_fn_1390437?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1390407?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_layer_call_fn_1390413?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1391436nhigf??<
%?"
 ?
args_0?????????
?

trainingp "%?"
?
0?????????
? ?
N__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1391470nhigf??<
%?"
 ?
args_0?????????
?

trainingp"%?"
?
0?????????
? ?
3__inference_module_wrapper_10_layer_call_fn_1391403ahigf??<
%?"
 ?
args_0?????????
?

trainingp "???????????
3__inference_module_wrapper_10_layer_call_fn_1391416ahigf??<
%?"
 ?
args_0?????????
?

trainingp"???????????
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_1391485h??<
%?"
 ?
args_0?????????
?

trainingp "%?"
?
0?????????
? ?
N__inference_module_wrapper_11_layer_call_and_return_conditional_losses_1391497h??<
%?"
 ?
args_0?????????
?

trainingp"%?"
?
0?????????
? ?
3__inference_module_wrapper_11_layer_call_fn_1391475[??<
%?"
 ?
args_0?????????
?

trainingp "???????????
3__inference_module_wrapper_11_layer_call_fn_1391480[??<
%?"
 ?
args_0?????????
?

trainingp"???????????
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_1391526ljk??<
%?"
 ?
args_0?????????
?

trainingp "%?"
?
0?????????
? ?
N__inference_module_wrapper_12_layer_call_and_return_conditional_losses_1391537ljk??<
%?"
 ?
args_0?????????
?

trainingp"%?"
?
0?????????
? ?
3__inference_module_wrapper_12_layer_call_fn_1391506_jk??<
%?"
 ?
args_0?????????
?

trainingp "???????????
3__inference_module_wrapper_12_layer_call_fn_1391515_jk??<
%?"
 ?
args_0?????????
?

trainingp"???????????
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1391096xG?D
-?*
(?%
args_0?????????
?

trainingp "-?*
#? 
0?????????
? ?
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1391101xG?D
-?*
(?%
args_0?????????
?

trainingp"-?*
#? 
0?????????
? ?
2__inference_module_wrapper_1_layer_call_fn_1391086kG?D
-?*
(?%
args_0?????????
?

trainingp " ???????????
2__inference_module_wrapper_1_layer_call_fn_1391091kG?D
-?*
(?%
args_0?????????
?

trainingp" ???????????
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1391130|\]G?D
-?*
(?%
args_0?????????
?

trainingp "-?*
#? 
0?????????
? ?
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1391141|\]G?D
-?*
(?%
args_0?????????
?

trainingp"-?*
#? 
0?????????
? ?
2__inference_module_wrapper_2_layer_call_fn_1391110o\]G?D
-?*
(?%
args_0?????????
?

trainingp " ???????????
2__inference_module_wrapper_2_layer_call_fn_1391119o\]G?D
-?*
(?%
args_0?????????
?

trainingp" ???????????
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1391156xG?D
-?*
(?%
args_0?????????
?

trainingp "-?*
#? 
0?????????
? ?
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1391161xG?D
-?*
(?%
args_0?????????
?

trainingp"-?*
#? 
0?????????
? ?
2__inference_module_wrapper_3_layer_call_fn_1391146kG?D
-?*
(?%
args_0?????????
?

trainingp " ???????????
2__inference_module_wrapper_3_layer_call_fn_1391151kG?D
-?*
(?%
args_0?????????
?

trainingp" ???????????
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1391190|^_G?D
-?*
(?%
args_0?????????
?

trainingp "-?*
#? 
0????????? 
? ?
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1391201|^_G?D
-?*
(?%
args_0?????????
?

trainingp"-?*
#? 
0????????? 
? ?
2__inference_module_wrapper_4_layer_call_fn_1391170o^_G?D
-?*
(?%
args_0?????????
?

trainingp " ?????????? ?
2__inference_module_wrapper_4_layer_call_fn_1391179o^_G?D
-?*
(?%
args_0?????????
?

trainingp" ?????????? ?
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1391216xG?D
-?*
(?%
args_0????????? 
?

trainingp "-?*
#? 
0????????? 
? ?
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1391221xG?D
-?*
(?%
args_0????????? 
?

trainingp"-?*
#? 
0????????? 
? ?
2__inference_module_wrapper_5_layer_call_fn_1391206kG?D
-?*
(?%
args_0????????? 
?

trainingp " ?????????? ?
2__inference_module_wrapper_5_layer_call_fn_1391211kG?D
-?*
(?%
args_0????????? 
?

trainingp" ?????????? ?
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1391237qG?D
-?*
(?%
args_0????????? 
?

trainingp "&?#
?
0??????????
? ?
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1391243qG?D
-?*
(?%
args_0????????? 
?

trainingp"&?#
?
0??????????
? ?
2__inference_module_wrapper_6_layer_call_fn_1391226dG?D
-?*
(?%
args_0????????? 
?

trainingp "????????????
2__inference_module_wrapper_6_layer_call_fn_1391231dG?D
-?*
(?%
args_0????????? 
?

trainingp"????????????
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1391289pbca`@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1391323pbca`@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
2__inference_module_wrapper_7_layer_call_fn_1391256cbca`@?=
&?#
!?
args_0??????????
?

trainingp "????????????
2__inference_module_wrapper_7_layer_call_fn_1391269cbca`@?=
&?#
!?
args_0??????????
?

trainingp"????????????
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1391338j@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1391350j@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
2__inference_module_wrapper_8_layer_call_fn_1391328]@?=
&?#
!?
args_0??????????
?

trainingp "????????????
2__inference_module_wrapper_8_layer_call_fn_1391333]@?=
&?#
!?
args_0??????????
?

trainingp"????????????
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1391379mde@?=
&?#
!?
args_0??????????
?

trainingp "%?"
?
0?????????
? ?
M__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1391390mde@?=
&?#
!?
args_0??????????
?

trainingp"%?"
?
0?????????
? ?
2__inference_module_wrapper_9_layer_call_fn_1391359`de@?=
&?#
!?
args_0??????????
?

trainingp "???????????
2__inference_module_wrapper_9_layer_call_fn_1391368`de@?=
&?#
!?
args_0??????????
?

trainingp"???????????
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1391070|Z[G?D
-?*
(?%
args_0?????????
?

trainingp "-?*
#? 
0?????????
? ?
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1391081|Z[G?D
-?*
(?%
args_0?????????
?

trainingp"-?*
#? 
0?????????
? ?
0__inference_module_wrapper_layer_call_fn_1391050oZ[G?D
-?*
(?%
args_0?????????
?

trainingp " ???????????
0__inference_module_wrapper_layer_call_fn_1391059oZ[G?D
-?*
(?%
args_0?????????
?

trainingp" ???????????
G__inference_sequential_layer_call_and_return_conditional_losses_1390298?Z[\]^_bca`dehigfjkM?J
C?@
6?3
module_wrapper_input?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1390351?Z[\]^_bca`dehigfjkM?J
C?@
6?3
module_wrapper_input?????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1390921|Z[\]^_bca`dehigfjk??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1391041|Z[\]^_bca`dehigfjk??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????
? ?
,__inference_sequential_layer_call_fn_1389686}Z[\]^_bca`dehigfjkM?J
C?@
6?3
module_wrapper_input?????????
p 

 
? "???????????
,__inference_sequential_layer_call_fn_1390245}Z[\]^_bca`dehigfjkM?J
C?@
6?3
module_wrapper_input?????????
p

 
? "???????????
,__inference_sequential_layer_call_fn_1390802oZ[\]^_bca`dehigfjk??<
5?2
(?%
inputs?????????
p 

 
? "???????????
,__inference_sequential_layer_call_fn_1390843oZ[\]^_bca`dehigfjk??<
5?2
(?%
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1390400?Z[\]^_bca`dehigfjk]?Z
? 
S?P
N
module_wrapper_input6?3
module_wrapper_input?????????"E?B
@
module_wrapper_12+?(
module_wrapper_12?????????