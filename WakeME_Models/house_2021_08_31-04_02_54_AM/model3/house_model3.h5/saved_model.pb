ޜ
??
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-0-g919f693420e8??
?
conv2d_420/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_420/kernel

%conv2d_420/kernel/Read/ReadVariableOpReadVariableOpconv2d_420/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_420/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_420/bias
o
#conv2d_420/bias/Read/ReadVariableOpReadVariableOpconv2d_420/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_332/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_332/gamma
?
1batch_normalization_332/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_332/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_332/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_332/beta
?
0batch_normalization_332/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_332/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_332/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_332/moving_mean
?
7batch_normalization_332/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_332/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_332/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_332/moving_variance
?
;batch_normalization_332/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_332/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_421/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_421/kernel
?
%conv2d_421/kernel/Read/ReadVariableOpReadVariableOpconv2d_421/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_421/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_421/bias
p
#conv2d_421/bias/Read/ReadVariableOpReadVariableOpconv2d_421/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_333/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_333/gamma
?
1batch_normalization_333/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_333/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_333/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_333/beta
?
0batch_normalization_333/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_333/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_333/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_333/moving_mean
?
7batch_normalization_333/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_333/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_333/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_333/moving_variance
?
;batch_normalization_333/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_333/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_422/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_422/kernel
?
%conv2d_422/kernel/Read/ReadVariableOpReadVariableOpconv2d_422/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_422/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_422/bias
p
#conv2d_422/bias/Read/ReadVariableOpReadVariableOpconv2d_422/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_334/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_334/gamma
?
1batch_normalization_334/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_334/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_334/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_334/beta
?
0batch_normalization_334/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_334/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_334/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_334/moving_mean
?
7batch_normalization_334/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_334/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_334/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_334/moving_variance
?
;batch_normalization_334/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_334/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_423/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_423/kernel
?
%conv2d_423/kernel/Read/ReadVariableOpReadVariableOpconv2d_423/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_423/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_423/bias
p
#conv2d_423/bias/Read/ReadVariableOpReadVariableOpconv2d_423/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_335/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_335/gamma
?
1batch_normalization_335/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_335/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_335/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_335/beta
?
0batch_normalization_335/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_335/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_335/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_335/moving_mean
?
7batch_normalization_335/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_335/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_335/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_335/moving_variance
?
;batch_normalization_335/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_335/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_424/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_424/kernel
?
%conv2d_424/kernel/Read/ReadVariableOpReadVariableOpconv2d_424/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_424/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_424/bias
p
#conv2d_424/bias/Read/ReadVariableOpReadVariableOpconv2d_424/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_336/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_336/gamma
?
1batch_normalization_336/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_336/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_336/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_336/beta
?
0batch_normalization_336/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_336/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_336/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_336/moving_mean
?
7batch_normalization_336/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_336/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_336/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_336/moving_variance
?
;batch_normalization_336/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_336/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_68/kernel
t
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel*
_output_shapes
:	?(*
dtype0
r
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_68/bias
k
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
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

NoOpNoOp
?U
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?T
value?TB?T B?T
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer_with_weights-9
layer-11
layer-12
layer-13
layer_with_weights-10
layer-14
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
?
axis
	gamma
beta
moving_mean
 moving_variance
!regularization_losses
"	variables
#trainable_variables
$	keras_api
R
%regularization_losses
&	variables
'trainable_variables
(	keras_api
h

)kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
?
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4regularization_losses
5	variables
6trainable_variables
7	keras_api
R
8regularization_losses
9	variables
:trainable_variables
;	keras_api
h

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
?
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
h

Kkernel
Lbias
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
?
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
h

Zkernel
[bias
\regularization_losses
]	variables
^trainable_variables
_	keras_api
?
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
eregularization_losses
f	variables
gtrainable_variables
h	keras_api
R
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
R
mregularization_losses
n	variables
otrainable_variables
p	keras_api
h

qkernel
rbias
sregularization_losses
t	variables
utrainable_variables
v	keras_api
6
witer
	xdecay
ylearning_rate
zmomentum
 
?
0
1
2
3
4
 5
)6
*7
08
19
210
311
<12
=13
C14
D15
E16
F17
K18
L19
R20
S21
T22
U23
Z24
[25
a26
b27
c28
d29
q30
r31
?
0
1
2
3
)4
*5
06
17
<8
=9
C10
D11
K12
L13
R14
S15
Z16
[17
a18
b19
q20
r21
?
{non_trainable_variables
|metrics
}layer_regularization_losses
regularization_losses
	variables
trainable_variables

~layers
layer_metrics
 
][
VARIABLE_VALUEconv2d_420/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_420/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
regularization_losses
	variables
trainable_variables
?layers
?layer_metrics
 
hf
VARIABLE_VALUEbatch_normalization_332/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_332/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_332/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_332/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 3

0
1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
!regularization_losses
"	variables
#trainable_variables
?layers
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
%regularization_losses
&	variables
'trainable_variables
?layers
?layer_metrics
][
VARIABLE_VALUEconv2d_421/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_421/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
+regularization_losses
,	variables
-trainable_variables
?layers
?layer_metrics
 
hf
VARIABLE_VALUEbatch_normalization_333/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_333/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_333/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_333/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

00
11
22
33

00
11
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
4regularization_losses
5	variables
6trainable_variables
?layers
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
8regularization_losses
9	variables
:trainable_variables
?layers
?layer_metrics
][
VARIABLE_VALUEconv2d_422/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_422/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
>regularization_losses
?	variables
@trainable_variables
?layers
?layer_metrics
 
hf
VARIABLE_VALUEbatch_normalization_334/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_334/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_334/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_334/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1
E2
F3

C0
D1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
Gregularization_losses
H	variables
Itrainable_variables
?layers
?layer_metrics
][
VARIABLE_VALUEconv2d_423/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_423/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1

K0
L1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
Mregularization_losses
N	variables
Otrainable_variables
?layers
?layer_metrics
 
hf
VARIABLE_VALUEbatch_normalization_335/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_335/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_335/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_335/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1
T2
U3

R0
S1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
Vregularization_losses
W	variables
Xtrainable_variables
?layers
?layer_metrics
][
VARIABLE_VALUEconv2d_424/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_424/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Z0
[1

Z0
[1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
\regularization_losses
]	variables
^trainable_variables
?layers
?layer_metrics
 
hf
VARIABLE_VALUEbatch_normalization_336/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_336/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_336/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_336/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

a0
b1
c2
d3

a0
b1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
eregularization_losses
f	variables
gtrainable_variables
?layers
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
iregularization_losses
j	variables
ktrainable_variables
?layers
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
mregularization_losses
n	variables
otrainable_variables
?layers
?layer_metrics
\Z
VARIABLE_VALUEdense_68/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_68/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

q0
r1

q0
r1
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
sregularization_losses
t	variables
utrainable_variables
?layers
?layer_metrics
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
F
0
 1
22
33
E4
F5
T6
U7
c8
d9

?0
?1
 
n
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
13
14
 
 
 
 
 
 

0
 1
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
20
31
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
E0
F1
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
T0
U1
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
c0
d1
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
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?
 serving_default_conv2d_420_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_420_inputconv2d_420/kernelconv2d_420/biasbatch_normalization_332/gammabatch_normalization_332/beta#batch_normalization_332/moving_mean'batch_normalization_332/moving_varianceconv2d_421/kernelconv2d_421/biasbatch_normalization_333/gammabatch_normalization_333/beta#batch_normalization_333/moving_mean'batch_normalization_333/moving_varianceconv2d_422/kernelconv2d_422/biasbatch_normalization_334/gammabatch_normalization_334/beta#batch_normalization_334/moving_mean'batch_normalization_334/moving_varianceconv2d_423/kernelconv2d_423/biasbatch_normalization_335/gammabatch_normalization_335/beta#batch_normalization_335/moving_mean'batch_normalization_335/moving_varianceconv2d_424/kernelconv2d_424/biasbatch_normalization_336/gammabatch_normalization_336/beta#batch_normalization_336/moving_mean'batch_normalization_336/moving_variancedense_68/kerneldense_68/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_9609083
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_420/kernel/Read/ReadVariableOp#conv2d_420/bias/Read/ReadVariableOp1batch_normalization_332/gamma/Read/ReadVariableOp0batch_normalization_332/beta/Read/ReadVariableOp7batch_normalization_332/moving_mean/Read/ReadVariableOp;batch_normalization_332/moving_variance/Read/ReadVariableOp%conv2d_421/kernel/Read/ReadVariableOp#conv2d_421/bias/Read/ReadVariableOp1batch_normalization_333/gamma/Read/ReadVariableOp0batch_normalization_333/beta/Read/ReadVariableOp7batch_normalization_333/moving_mean/Read/ReadVariableOp;batch_normalization_333/moving_variance/Read/ReadVariableOp%conv2d_422/kernel/Read/ReadVariableOp#conv2d_422/bias/Read/ReadVariableOp1batch_normalization_334/gamma/Read/ReadVariableOp0batch_normalization_334/beta/Read/ReadVariableOp7batch_normalization_334/moving_mean/Read/ReadVariableOp;batch_normalization_334/moving_variance/Read/ReadVariableOp%conv2d_423/kernel/Read/ReadVariableOp#conv2d_423/bias/Read/ReadVariableOp1batch_normalization_335/gamma/Read/ReadVariableOp0batch_normalization_335/beta/Read/ReadVariableOp7batch_normalization_335/moving_mean/Read/ReadVariableOp;batch_normalization_335/moving_variance/Read/ReadVariableOp%conv2d_424/kernel/Read/ReadVariableOp#conv2d_424/bias/Read/ReadVariableOp1batch_normalization_336/gamma/Read/ReadVariableOp0batch_normalization_336/beta/Read/ReadVariableOp7batch_normalization_336/moving_mean/Read/ReadVariableOp;batch_normalization_336/moving_variance/Read/ReadVariableOp#dense_68/kernel/Read/ReadVariableOp!dense_68/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
Tin.
,2*	*
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
 __inference__traced_save_9610417
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_420/kernelconv2d_420/biasbatch_normalization_332/gammabatch_normalization_332/beta#batch_normalization_332/moving_mean'batch_normalization_332/moving_varianceconv2d_421/kernelconv2d_421/biasbatch_normalization_333/gammabatch_normalization_333/beta#batch_normalization_333/moving_mean'batch_normalization_333/moving_varianceconv2d_422/kernelconv2d_422/biasbatch_normalization_334/gammabatch_normalization_334/beta#batch_normalization_334/moving_mean'batch_normalization_334/moving_varianceconv2d_423/kernelconv2d_423/biasbatch_normalization_335/gammabatch_normalization_335/beta#batch_normalization_335/moving_mean'batch_normalization_335/moving_varianceconv2d_424/kernelconv2d_424/biasbatch_normalization_336/gammabatch_normalization_336/beta#batch_normalization_336/moving_mean'batch_normalization_336/moving_variancedense_68/kerneldense_68/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
Tin-
+2)*
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
#__inference__traced_restore_9610547??
?
?
G__inference_conv2d_421_layer_call_and_return_conditional_losses_9609638

inputs9
conv2d_readvariableop_resource:`?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????-?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????-`
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9607661

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_dense_68_layer_call_and_return_conditional_losses_9608177

inputs1
matmul_readvariableop_resource:	?(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9607387

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9607535

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_335_layer_call_fn_9610066

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_96080982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_alex_net_12_layer_call_fn_9608842
conv2d_420_input!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?&

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?(

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_alex_net_12_layer_call_and_return_conditional_losses_96087062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_420_input
?
?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9610009

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
? 
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9609325

inputsC
)conv2d_420_conv2d_readvariableop_resource:`8
*conv2d_420_biasadd_readvariableop_resource:`=
/batch_normalization_332_readvariableop_resource:`?
1batch_normalization_332_readvariableop_1_resource:`N
@batch_normalization_332_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_332_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_421_conv2d_readvariableop_resource:`?9
*conv2d_421_biasadd_readvariableop_resource:	?>
/batch_normalization_333_readvariableop_resource:	?@
1batch_normalization_333_readvariableop_1_resource:	?O
@batch_normalization_333_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_333_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_422_conv2d_readvariableop_resource:??9
*conv2d_422_biasadd_readvariableop_resource:	?>
/batch_normalization_334_readvariableop_resource:	?@
1batch_normalization_334_readvariableop_1_resource:	?O
@batch_normalization_334_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_334_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_423_conv2d_readvariableop_resource:??9
*conv2d_423_biasadd_readvariableop_resource:	?>
/batch_normalization_335_readvariableop_resource:	?@
1batch_normalization_335_readvariableop_1_resource:	?O
@batch_normalization_335_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_335_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_424_conv2d_readvariableop_resource:??9
*conv2d_424_biasadd_readvariableop_resource:	?>
/batch_normalization_336_readvariableop_resource:	?@
1batch_normalization_336_readvariableop_1_resource:	?O
@batch_normalization_336_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_336_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_68_matmul_readvariableop_resource:	?(6
(dense_68_biasadd_readvariableop_resource:
identity??&batch_normalization_332/AssignNewValue?(batch_normalization_332/AssignNewValue_1?7batch_normalization_332/FusedBatchNormV3/ReadVariableOp?9batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_332/ReadVariableOp?(batch_normalization_332/ReadVariableOp_1?&batch_normalization_333/AssignNewValue?(batch_normalization_333/AssignNewValue_1?7batch_normalization_333/FusedBatchNormV3/ReadVariableOp?9batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_333/ReadVariableOp?(batch_normalization_333/ReadVariableOp_1?&batch_normalization_334/AssignNewValue?(batch_normalization_334/AssignNewValue_1?7batch_normalization_334/FusedBatchNormV3/ReadVariableOp?9batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_334/ReadVariableOp?(batch_normalization_334/ReadVariableOp_1?&batch_normalization_335/AssignNewValue?(batch_normalization_335/AssignNewValue_1?7batch_normalization_335/FusedBatchNormV3/ReadVariableOp?9batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_335/ReadVariableOp?(batch_normalization_335/ReadVariableOp_1?&batch_normalization_336/AssignNewValue?(batch_normalization_336/AssignNewValue_1?7batch_normalization_336/FusedBatchNormV3/ReadVariableOp?9batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_336/ReadVariableOp?(batch_normalization_336/ReadVariableOp_1?!conv2d_420/BiasAdd/ReadVariableOp? conv2d_420/Conv2D/ReadVariableOp?!conv2d_421/BiasAdd/ReadVariableOp? conv2d_421/Conv2D/ReadVariableOp?!conv2d_422/BiasAdd/ReadVariableOp? conv2d_422/Conv2D/ReadVariableOp?!conv2d_423/BiasAdd/ReadVariableOp? conv2d_423/Conv2D/ReadVariableOp?!conv2d_424/BiasAdd/ReadVariableOp? conv2d_424/Conv2D/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?
 conv2d_420/Conv2D/ReadVariableOpReadVariableOp)conv2d_420_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_420/Conv2D/ReadVariableOp?
conv2d_420/Conv2DConv2Dinputs(conv2d_420/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_420/Conv2D?
!conv2d_420/BiasAdd/ReadVariableOpReadVariableOp*conv2d_420_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_420/BiasAdd/ReadVariableOp?
conv2d_420/BiasAddBiasAddconv2d_420/Conv2D:output:0)conv2d_420/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_420/BiasAdd?
conv2d_420/ReluReluconv2d_420/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_420/Relu?
&batch_normalization_332/ReadVariableOpReadVariableOp/batch_normalization_332_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_332/ReadVariableOp?
(batch_normalization_332/ReadVariableOp_1ReadVariableOp1batch_normalization_332_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_332/ReadVariableOp_1?
7batch_normalization_332/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_332_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_332/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_332_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_332/FusedBatchNormV3FusedBatchNormV3conv2d_420/Relu:activations:0.batch_normalization_332/ReadVariableOp:value:00batch_normalization_332/ReadVariableOp_1:value:0?batch_normalization_332/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_332/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_332/FusedBatchNormV3?
&batch_normalization_332/AssignNewValueAssignVariableOp@batch_normalization_332_fusedbatchnormv3_readvariableop_resource5batch_normalization_332/FusedBatchNormV3:batch_mean:08^batch_normalization_332/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_332/AssignNewValue?
(batch_normalization_332/AssignNewValue_1AssignVariableOpBbatch_normalization_332_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_332/FusedBatchNormV3:batch_variance:0:^batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_332/AssignNewValue_1?
max_pooling2d_72/MaxPoolMaxPool,batch_normalization_332/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_72/MaxPool?
 conv2d_421/Conv2D/ReadVariableOpReadVariableOp)conv2d_421_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_421/Conv2D/ReadVariableOp?
conv2d_421/Conv2DConv2D!max_pooling2d_72/MaxPool:output:0(conv2d_421/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_421/Conv2D?
!conv2d_421/BiasAdd/ReadVariableOpReadVariableOp*conv2d_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_421/BiasAdd/ReadVariableOp?
conv2d_421/BiasAddBiasAddconv2d_421/Conv2D:output:0)conv2d_421/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_421/BiasAdd?
conv2d_421/ReluReluconv2d_421/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_421/Relu?
&batch_normalization_333/ReadVariableOpReadVariableOp/batch_normalization_333_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_333/ReadVariableOp?
(batch_normalization_333/ReadVariableOp_1ReadVariableOp1batch_normalization_333_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_333/ReadVariableOp_1?
7batch_normalization_333/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_333_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_333/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_333_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_333/FusedBatchNormV3FusedBatchNormV3conv2d_421/Relu:activations:0.batch_normalization_333/ReadVariableOp:value:00batch_normalization_333/ReadVariableOp_1:value:0?batch_normalization_333/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_333/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_333/FusedBatchNormV3?
&batch_normalization_333/AssignNewValueAssignVariableOp@batch_normalization_333_fusedbatchnormv3_readvariableop_resource5batch_normalization_333/FusedBatchNormV3:batch_mean:08^batch_normalization_333/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_333/AssignNewValue?
(batch_normalization_333/AssignNewValue_1AssignVariableOpBbatch_normalization_333_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_333/FusedBatchNormV3:batch_variance:0:^batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_333/AssignNewValue_1?
max_pooling2d_73/MaxPoolMaxPool,batch_normalization_333/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_73/MaxPool?
 conv2d_422/Conv2D/ReadVariableOpReadVariableOp)conv2d_422_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_422/Conv2D/ReadVariableOp?
conv2d_422/Conv2DConv2D!max_pooling2d_73/MaxPool:output:0(conv2d_422/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_422/Conv2D?
!conv2d_422/BiasAdd/ReadVariableOpReadVariableOp*conv2d_422_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_422/BiasAdd/ReadVariableOp?
conv2d_422/BiasAddBiasAddconv2d_422/Conv2D:output:0)conv2d_422/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_422/BiasAdd?
conv2d_422/ReluReluconv2d_422/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_422/Relu?
&batch_normalization_334/ReadVariableOpReadVariableOp/batch_normalization_334_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_334/ReadVariableOp?
(batch_normalization_334/ReadVariableOp_1ReadVariableOp1batch_normalization_334_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_334/ReadVariableOp_1?
7batch_normalization_334/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_334_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_334/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_334_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_334/FusedBatchNormV3FusedBatchNormV3conv2d_422/Relu:activations:0.batch_normalization_334/ReadVariableOp:value:00batch_normalization_334/ReadVariableOp_1:value:0?batch_normalization_334/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_334/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_334/FusedBatchNormV3?
&batch_normalization_334/AssignNewValueAssignVariableOp@batch_normalization_334_fusedbatchnormv3_readvariableop_resource5batch_normalization_334/FusedBatchNormV3:batch_mean:08^batch_normalization_334/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_334/AssignNewValue?
(batch_normalization_334/AssignNewValue_1AssignVariableOpBbatch_normalization_334_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_334/FusedBatchNormV3:batch_variance:0:^batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_334/AssignNewValue_1?
 conv2d_423/Conv2D/ReadVariableOpReadVariableOp)conv2d_423_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_423/Conv2D/ReadVariableOp?
conv2d_423/Conv2DConv2D,batch_normalization_334/FusedBatchNormV3:y:0(conv2d_423/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_423/Conv2D?
!conv2d_423/BiasAdd/ReadVariableOpReadVariableOp*conv2d_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_423/BiasAdd/ReadVariableOp?
conv2d_423/BiasAddBiasAddconv2d_423/Conv2D:output:0)conv2d_423/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_423/BiasAdd?
conv2d_423/ReluReluconv2d_423/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_423/Relu?
&batch_normalization_335/ReadVariableOpReadVariableOp/batch_normalization_335_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_335/ReadVariableOp?
(batch_normalization_335/ReadVariableOp_1ReadVariableOp1batch_normalization_335_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_335/ReadVariableOp_1?
7batch_normalization_335/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_335_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_335/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_335_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_335/FusedBatchNormV3FusedBatchNormV3conv2d_423/Relu:activations:0.batch_normalization_335/ReadVariableOp:value:00batch_normalization_335/ReadVariableOp_1:value:0?batch_normalization_335/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_335/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_335/FusedBatchNormV3?
&batch_normalization_335/AssignNewValueAssignVariableOp@batch_normalization_335_fusedbatchnormv3_readvariableop_resource5batch_normalization_335/FusedBatchNormV3:batch_mean:08^batch_normalization_335/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_335/AssignNewValue?
(batch_normalization_335/AssignNewValue_1AssignVariableOpBbatch_normalization_335_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_335/FusedBatchNormV3:batch_variance:0:^batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_335/AssignNewValue_1?
 conv2d_424/Conv2D/ReadVariableOpReadVariableOp)conv2d_424_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_424/Conv2D/ReadVariableOp?
conv2d_424/Conv2DConv2D,batch_normalization_335/FusedBatchNormV3:y:0(conv2d_424/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_424/Conv2D?
!conv2d_424/BiasAdd/ReadVariableOpReadVariableOp*conv2d_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_424/BiasAdd/ReadVariableOp?
conv2d_424/BiasAddBiasAddconv2d_424/Conv2D:output:0)conv2d_424/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_424/BiasAdd?
conv2d_424/ReluReluconv2d_424/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_424/Relu?
&batch_normalization_336/ReadVariableOpReadVariableOp/batch_normalization_336_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_336/ReadVariableOp?
(batch_normalization_336/ReadVariableOp_1ReadVariableOp1batch_normalization_336_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_336/ReadVariableOp_1?
7batch_normalization_336/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_336_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_336/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_336_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_336/FusedBatchNormV3FusedBatchNormV3conv2d_424/Relu:activations:0.batch_normalization_336/ReadVariableOp:value:00batch_normalization_336/ReadVariableOp_1:value:0?batch_normalization_336/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_336/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_336/FusedBatchNormV3?
&batch_normalization_336/AssignNewValueAssignVariableOp@batch_normalization_336_fusedbatchnormv3_readvariableop_resource5batch_normalization_336/FusedBatchNormV3:batch_mean:08^batch_normalization_336/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_336/AssignNewValue?
(batch_normalization_336/AssignNewValue_1AssignVariableOpBbatch_normalization_336_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_336/FusedBatchNormV3:batch_variance:0:^batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_336/AssignNewValue_1?
max_pooling2d_74/MaxPoolMaxPool,batch_normalization_336/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_74/MaxPoolu
flatten_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_32/Const?
flatten_32/ReshapeReshape!max_pooling2d_74/MaxPool:output:0flatten_32/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_32/Reshape?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMulflatten_32/Reshape:output:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/BiasAdd|
dense_68/SigmoidSigmoiddense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_68/Sigmoido
IdentityIdentitydense_68/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_332/AssignNewValue)^batch_normalization_332/AssignNewValue_18^batch_normalization_332/FusedBatchNormV3/ReadVariableOp:^batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_332/ReadVariableOp)^batch_normalization_332/ReadVariableOp_1'^batch_normalization_333/AssignNewValue)^batch_normalization_333/AssignNewValue_18^batch_normalization_333/FusedBatchNormV3/ReadVariableOp:^batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_333/ReadVariableOp)^batch_normalization_333/ReadVariableOp_1'^batch_normalization_334/AssignNewValue)^batch_normalization_334/AssignNewValue_18^batch_normalization_334/FusedBatchNormV3/ReadVariableOp:^batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_334/ReadVariableOp)^batch_normalization_334/ReadVariableOp_1'^batch_normalization_335/AssignNewValue)^batch_normalization_335/AssignNewValue_18^batch_normalization_335/FusedBatchNormV3/ReadVariableOp:^batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_335/ReadVariableOp)^batch_normalization_335/ReadVariableOp_1'^batch_normalization_336/AssignNewValue)^batch_normalization_336/AssignNewValue_18^batch_normalization_336/FusedBatchNormV3/ReadVariableOp:^batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_336/ReadVariableOp)^batch_normalization_336/ReadVariableOp_1"^conv2d_420/BiasAdd/ReadVariableOp!^conv2d_420/Conv2D/ReadVariableOp"^conv2d_421/BiasAdd/ReadVariableOp!^conv2d_421/Conv2D/ReadVariableOp"^conv2d_422/BiasAdd/ReadVariableOp!^conv2d_422/Conv2D/ReadVariableOp"^conv2d_423/BiasAdd/ReadVariableOp!^conv2d_423/Conv2D/ReadVariableOp"^conv2d_424/BiasAdd/ReadVariableOp!^conv2d_424/Conv2D/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_332/AssignNewValue&batch_normalization_332/AssignNewValue2T
(batch_normalization_332/AssignNewValue_1(batch_normalization_332/AssignNewValue_12r
7batch_normalization_332/FusedBatchNormV3/ReadVariableOp7batch_normalization_332/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_332/FusedBatchNormV3/ReadVariableOp_19batch_normalization_332/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_332/ReadVariableOp&batch_normalization_332/ReadVariableOp2T
(batch_normalization_332/ReadVariableOp_1(batch_normalization_332/ReadVariableOp_12P
&batch_normalization_333/AssignNewValue&batch_normalization_333/AssignNewValue2T
(batch_normalization_333/AssignNewValue_1(batch_normalization_333/AssignNewValue_12r
7batch_normalization_333/FusedBatchNormV3/ReadVariableOp7batch_normalization_333/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_333/FusedBatchNormV3/ReadVariableOp_19batch_normalization_333/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_333/ReadVariableOp&batch_normalization_333/ReadVariableOp2T
(batch_normalization_333/ReadVariableOp_1(batch_normalization_333/ReadVariableOp_12P
&batch_normalization_334/AssignNewValue&batch_normalization_334/AssignNewValue2T
(batch_normalization_334/AssignNewValue_1(batch_normalization_334/AssignNewValue_12r
7batch_normalization_334/FusedBatchNormV3/ReadVariableOp7batch_normalization_334/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_334/FusedBatchNormV3/ReadVariableOp_19batch_normalization_334/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_334/ReadVariableOp&batch_normalization_334/ReadVariableOp2T
(batch_normalization_334/ReadVariableOp_1(batch_normalization_334/ReadVariableOp_12P
&batch_normalization_335/AssignNewValue&batch_normalization_335/AssignNewValue2T
(batch_normalization_335/AssignNewValue_1(batch_normalization_335/AssignNewValue_12r
7batch_normalization_335/FusedBatchNormV3/ReadVariableOp7batch_normalization_335/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_335/FusedBatchNormV3/ReadVariableOp_19batch_normalization_335/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_335/ReadVariableOp&batch_normalization_335/ReadVariableOp2T
(batch_normalization_335/ReadVariableOp_1(batch_normalization_335/ReadVariableOp_12P
&batch_normalization_336/AssignNewValue&batch_normalization_336/AssignNewValue2T
(batch_normalization_336/AssignNewValue_1(batch_normalization_336/AssignNewValue_12r
7batch_normalization_336/FusedBatchNormV3/ReadVariableOp7batch_normalization_336/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_336/FusedBatchNormV3/ReadVariableOp_19batch_normalization_336/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_336/ReadVariableOp&batch_normalization_336/ReadVariableOp2T
(batch_normalization_336/ReadVariableOp_1(batch_normalization_336/ReadVariableOp_12F
!conv2d_420/BiasAdd/ReadVariableOp!conv2d_420/BiasAdd/ReadVariableOp2D
 conv2d_420/Conv2D/ReadVariableOp conv2d_420/Conv2D/ReadVariableOp2F
!conv2d_421/BiasAdd/ReadVariableOp!conv2d_421/BiasAdd/ReadVariableOp2D
 conv2d_421/Conv2D/ReadVariableOp conv2d_421/Conv2D/ReadVariableOp2F
!conv2d_422/BiasAdd/ReadVariableOp!conv2d_422/BiasAdd/ReadVariableOp2D
 conv2d_422/Conv2D/ReadVariableOp conv2d_422/Conv2D/ReadVariableOp2F
!conv2d_423/BiasAdd/ReadVariableOp!conv2d_423/BiasAdd/ReadVariableOp2D
 conv2d_423/Conv2D/ReadVariableOp conv2d_423/Conv2D/ReadVariableOp2F
!conv2d_424/BiasAdd/ReadVariableOp!conv2d_424/BiasAdd/ReadVariableOp2D
 conv2d_424/Conv2D/ReadVariableOp conv2d_424/Conv2D/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609883

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9607954

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????[`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????[`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????[`
 
_user_specified_nameinputs
?
?
,__inference_conv2d_423_layer_call_fn_9609955

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_423_layer_call_and_return_conditional_losses_96080752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_335_layer_call_fn_9610053

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_96077052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_334_layer_call_fn_9609909

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_96075792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_9608018

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????-?:X T
0
_output_shapes
:?????????-?
 
_user_specified_nameinputs
?
?
-__inference_alex_net_12_layer_call_fn_9608251
conv2d_420_input!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?&

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?(

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_alex_net_12_layer_call_and_return_conditional_losses_96081842
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_420_input
?X
?
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9608184

inputs,
conv2d_420_9607932:` 
conv2d_420_9607934:`-
batch_normalization_332_9607955:`-
batch_normalization_332_9607957:`-
batch_normalization_332_9607959:`-
batch_normalization_332_9607961:`-
conv2d_421_9607982:`?!
conv2d_421_9607984:	?.
batch_normalization_333_9608005:	?.
batch_normalization_333_9608007:	?.
batch_normalization_333_9608009:	?.
batch_normalization_333_9608011:	?.
conv2d_422_9608032:??!
conv2d_422_9608034:	?.
batch_normalization_334_9608055:	?.
batch_normalization_334_9608057:	?.
batch_normalization_334_9608059:	?.
batch_normalization_334_9608061:	?.
conv2d_423_9608076:??!
conv2d_423_9608078:	?.
batch_normalization_335_9608099:	?.
batch_normalization_335_9608101:	?.
batch_normalization_335_9608103:	?.
batch_normalization_335_9608105:	?.
conv2d_424_9608120:??!
conv2d_424_9608122:	?.
batch_normalization_336_9608143:	?.
batch_normalization_336_9608145:	?.
batch_normalization_336_9608147:	?.
batch_normalization_336_9608149:	?#
dense_68_9608178:	?(
dense_68_9608180:
identity??/batch_normalization_332/StatefulPartitionedCall?/batch_normalization_333/StatefulPartitionedCall?/batch_normalization_334/StatefulPartitionedCall?/batch_normalization_335/StatefulPartitionedCall?/batch_normalization_336/StatefulPartitionedCall?"conv2d_420/StatefulPartitionedCall?"conv2d_421/StatefulPartitionedCall?"conv2d_422/StatefulPartitionedCall?"conv2d_423/StatefulPartitionedCall?"conv2d_424/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
"conv2d_420/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_420_9607932conv2d_420_9607934*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_420_layer_call_and_return_conditional_losses_96079312$
"conv2d_420/StatefulPartitionedCall?
/batch_normalization_332/StatefulPartitionedCallStatefulPartitionedCall+conv2d_420/StatefulPartitionedCall:output:0batch_normalization_332_9607955batch_normalization_332_9607957batch_normalization_332_9607959batch_normalization_332_9607961*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_960795421
/batch_normalization_332/StatefulPartitionedCall?
 max_pooling2d_72/PartitionedCallPartitionedCall8batch_normalization_332/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_96079682"
 max_pooling2d_72/PartitionedCall?
"conv2d_421/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_72/PartitionedCall:output:0conv2d_421_9607982conv2d_421_9607984*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????-?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_421_layer_call_and_return_conditional_losses_96079812$
"conv2d_421/StatefulPartitionedCall?
/batch_normalization_333/StatefulPartitionedCallStatefulPartitionedCall+conv2d_421/StatefulPartitionedCall:output:0batch_normalization_333_9608005batch_normalization_333_9608007batch_normalization_333_9608009batch_normalization_333_9608011*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????-?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_960800421
/batch_normalization_333/StatefulPartitionedCall?
 max_pooling2d_73/PartitionedCallPartitionedCall8batch_normalization_333/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_96080182"
 max_pooling2d_73/PartitionedCall?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_73/PartitionedCall:output:0conv2d_422_9608032conv2d_422_9608034*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_422_layer_call_and_return_conditional_losses_96080312$
"conv2d_422/StatefulPartitionedCall?
/batch_normalization_334/StatefulPartitionedCallStatefulPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0batch_normalization_334_9608055batch_normalization_334_9608057batch_normalization_334_9608059batch_normalization_334_9608061*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_960805421
/batch_normalization_334/StatefulPartitionedCall?
"conv2d_423/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_334/StatefulPartitionedCall:output:0conv2d_423_9608076conv2d_423_9608078*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_423_layer_call_and_return_conditional_losses_96080752$
"conv2d_423/StatefulPartitionedCall?
/batch_normalization_335/StatefulPartitionedCallStatefulPartitionedCall+conv2d_423/StatefulPartitionedCall:output:0batch_normalization_335_9608099batch_normalization_335_9608101batch_normalization_335_9608103batch_normalization_335_9608105*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_960809821
/batch_normalization_335/StatefulPartitionedCall?
"conv2d_424/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_335/StatefulPartitionedCall:output:0conv2d_424_9608120conv2d_424_9608122*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_424_layer_call_and_return_conditional_losses_96081192$
"conv2d_424/StatefulPartitionedCall?
/batch_normalization_336/StatefulPartitionedCallStatefulPartitionedCall+conv2d_424/StatefulPartitionedCall:output:0batch_normalization_336_9608143batch_normalization_336_9608145batch_normalization_336_9608147batch_normalization_336_9608149*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_960814221
/batch_normalization_336/StatefulPartitionedCall?
 max_pooling2d_74/PartitionedCallPartitionedCall8batch_normalization_336/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_96081562"
 max_pooling2d_74/PartitionedCall?
flatten_32/PartitionedCallPartitionedCall)max_pooling2d_74/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_32_layer_call_and_return_conditional_losses_96081642
flatten_32/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_32/PartitionedCall:output:0dense_68_9608178dense_68_9608180*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_96081772"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_332/StatefulPartitionedCall0^batch_normalization_333/StatefulPartitionedCall0^batch_normalization_334/StatefulPartitionedCall0^batch_normalization_335/StatefulPartitionedCall0^batch_normalization_336/StatefulPartitionedCall#^conv2d_420/StatefulPartitionedCall#^conv2d_421/StatefulPartitionedCall#^conv2d_422/StatefulPartitionedCall#^conv2d_423/StatefulPartitionedCall#^conv2d_424/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_332/StatefulPartitionedCall/batch_normalization_332/StatefulPartitionedCall2b
/batch_normalization_333/StatefulPartitionedCall/batch_normalization_333/StatefulPartitionedCall2b
/batch_normalization_334/StatefulPartitionedCall/batch_normalization_334/StatefulPartitionedCall2b
/batch_normalization_335/StatefulPartitionedCall/batch_normalization_335/StatefulPartitionedCall2b
/batch_normalization_336/StatefulPartitionedCall/batch_normalization_336/StatefulPartitionedCall2H
"conv2d_420/StatefulPartitionedCall"conv2d_420/StatefulPartitionedCall2H
"conv2d_421/StatefulPartitionedCall"conv2d_421/StatefulPartitionedCall2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2H
"conv2d_423/StatefulPartitionedCall"conv2d_423/StatefulPartitionedCall2H
"conv2d_424/StatefulPartitionedCall"conv2d_424/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_alex_net_12_layer_call_fn_9609463

inputs!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?&

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?(

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_alex_net_12_layer_call_and_return_conditional_losses_96087062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9608472

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????-?2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????-?: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????-?
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_335_layer_call_fn_9610040

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_96076612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9607239

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_333_layer_call_fn_9609771

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
 *0
_output_shapes
:?????????-?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_96084722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????-?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????-?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????-?
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609665

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_74_layer_call_fn_9610238

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_96079002
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
?
c
G__inference_flatten_32_layer_call_and_return_conditional_losses_9608164

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????(2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610153

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_333_layer_call_fn_9609745

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
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_96074312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_73_layer_call_fn_9609786

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_96075002
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
?
9__inference_batch_normalization_332_layer_call_fn_9609568

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_96072392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_9610233

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609865

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_332_layer_call_fn_9609594

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_96079542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????[`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????[`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????[`
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609519

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_73_layer_call_fn_9609791

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_96080182
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????-?:X T
0
_output_shapes
:?????????-?
 
_user_specified_nameinputs
?Y
?
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9609008
conv2d_420_input,
conv2d_420_9608928:` 
conv2d_420_9608930:`-
batch_normalization_332_9608933:`-
batch_normalization_332_9608935:`-
batch_normalization_332_9608937:`-
batch_normalization_332_9608939:`-
conv2d_421_9608943:`?!
conv2d_421_9608945:	?.
batch_normalization_333_9608948:	?.
batch_normalization_333_9608950:	?.
batch_normalization_333_9608952:	?.
batch_normalization_333_9608954:	?.
conv2d_422_9608958:??!
conv2d_422_9608960:	?.
batch_normalization_334_9608963:	?.
batch_normalization_334_9608965:	?.
batch_normalization_334_9608967:	?.
batch_normalization_334_9608969:	?.
conv2d_423_9608972:??!
conv2d_423_9608974:	?.
batch_normalization_335_9608977:	?.
batch_normalization_335_9608979:	?.
batch_normalization_335_9608981:	?.
batch_normalization_335_9608983:	?.
conv2d_424_9608986:??!
conv2d_424_9608988:	?.
batch_normalization_336_9608991:	?.
batch_normalization_336_9608993:	?.
batch_normalization_336_9608995:	?.
batch_normalization_336_9608997:	?#
dense_68_9609002:	?(
dense_68_9609004:
identity??/batch_normalization_332/StatefulPartitionedCall?/batch_normalization_333/StatefulPartitionedCall?/batch_normalization_334/StatefulPartitionedCall?/batch_normalization_335/StatefulPartitionedCall?/batch_normalization_336/StatefulPartitionedCall?"conv2d_420/StatefulPartitionedCall?"conv2d_421/StatefulPartitionedCall?"conv2d_422/StatefulPartitionedCall?"conv2d_423/StatefulPartitionedCall?"conv2d_424/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
"conv2d_420/StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputconv2d_420_9608928conv2d_420_9608930*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_420_layer_call_and_return_conditional_losses_96079312$
"conv2d_420/StatefulPartitionedCall?
/batch_normalization_332/StatefulPartitionedCallStatefulPartitionedCall+conv2d_420/StatefulPartitionedCall:output:0batch_normalization_332_9608933batch_normalization_332_9608935batch_normalization_332_9608937batch_normalization_332_9608939*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_960853121
/batch_normalization_332/StatefulPartitionedCall?
 max_pooling2d_72/PartitionedCallPartitionedCall8batch_normalization_332/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_96079682"
 max_pooling2d_72/PartitionedCall?
"conv2d_421/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_72/PartitionedCall:output:0conv2d_421_9608943conv2d_421_9608945*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????-?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_421_layer_call_and_return_conditional_losses_96079812$
"conv2d_421/StatefulPartitionedCall?
/batch_normalization_333/StatefulPartitionedCallStatefulPartitionedCall+conv2d_421/StatefulPartitionedCall:output:0batch_normalization_333_9608948batch_normalization_333_9608950batch_normalization_333_9608952batch_normalization_333_9608954*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????-?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_960847221
/batch_normalization_333/StatefulPartitionedCall?
 max_pooling2d_73/PartitionedCallPartitionedCall8batch_normalization_333/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_96080182"
 max_pooling2d_73/PartitionedCall?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_73/PartitionedCall:output:0conv2d_422_9608958conv2d_422_9608960*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_422_layer_call_and_return_conditional_losses_96080312$
"conv2d_422/StatefulPartitionedCall?
/batch_normalization_334/StatefulPartitionedCallStatefulPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0batch_normalization_334_9608963batch_normalization_334_9608965batch_normalization_334_9608967batch_normalization_334_9608969*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_960841321
/batch_normalization_334/StatefulPartitionedCall?
"conv2d_423/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_334/StatefulPartitionedCall:output:0conv2d_423_9608972conv2d_423_9608974*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_423_layer_call_and_return_conditional_losses_96080752$
"conv2d_423/StatefulPartitionedCall?
/batch_normalization_335/StatefulPartitionedCallStatefulPartitionedCall+conv2d_423/StatefulPartitionedCall:output:0batch_normalization_335_9608977batch_normalization_335_9608979batch_normalization_335_9608981batch_normalization_335_9608983*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_960835921
/batch_normalization_335/StatefulPartitionedCall?
"conv2d_424/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_335/StatefulPartitionedCall:output:0conv2d_424_9608986conv2d_424_9608988*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_424_layer_call_and_return_conditional_losses_96081192$
"conv2d_424/StatefulPartitionedCall?
/batch_normalization_336/StatefulPartitionedCallStatefulPartitionedCall+conv2d_424/StatefulPartitionedCall:output:0batch_normalization_336_9608991batch_normalization_336_9608993batch_normalization_336_9608995batch_normalization_336_9608997*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_960830521
/batch_normalization_336/StatefulPartitionedCall?
 max_pooling2d_74/PartitionedCallPartitionedCall8batch_normalization_336/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_96081562"
 max_pooling2d_74/PartitionedCall?
flatten_32/PartitionedCallPartitionedCall)max_pooling2d_74/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_32_layer_call_and_return_conditional_losses_96081642
flatten_32/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_32/PartitionedCall:output:0dense_68_9609002dense_68_9609004*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_96081772"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_332/StatefulPartitionedCall0^batch_normalization_333/StatefulPartitionedCall0^batch_normalization_334/StatefulPartitionedCall0^batch_normalization_335/StatefulPartitionedCall0^batch_normalization_336/StatefulPartitionedCall#^conv2d_420/StatefulPartitionedCall#^conv2d_421/StatefulPartitionedCall#^conv2d_422/StatefulPartitionedCall#^conv2d_423/StatefulPartitionedCall#^conv2d_424/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_332/StatefulPartitionedCall/batch_normalization_332/StatefulPartitionedCall2b
/batch_normalization_333/StatefulPartitionedCall/batch_normalization_333/StatefulPartitionedCall2b
/batch_normalization_334/StatefulPartitionedCall/batch_normalization_334/StatefulPartitionedCall2b
/batch_normalization_335/StatefulPartitionedCall/batch_normalization_335/StatefulPartitionedCall2b
/batch_normalization_336/StatefulPartitionedCall/batch_normalization_336/StatefulPartitionedCall2H
"conv2d_420/StatefulPartitionedCall"conv2d_420/StatefulPartitionedCall2H
"conv2d_421/StatefulPartitionedCall"conv2d_421/StatefulPartitionedCall2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2H
"conv2d_423/StatefulPartitionedCall"conv2d_423/StatefulPartitionedCall2H
"conv2d_424/StatefulPartitionedCall"conv2d_424/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_420_input
?
?
G__inference_conv2d_423_layer_call_and_return_conditional_losses_9609946

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_74_layer_call_fn_9610243

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_96081562
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9608305

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9608142

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_333_layer_call_fn_9609758

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
 *0
_output_shapes
:?????????-?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_96080042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????-?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????-?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????-?
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9607831

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9608359

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610117

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609555

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????[`2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????[`: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????[`
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_9607900

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
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
?
i
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_9609781

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????-?:X T
0
_output_shapes
:?????????-?
 
_user_specified_nameinputs
?
?
G__inference_conv2d_424_layer_call_and_return_conditional_losses_9608119

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609683

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_9609776

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
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
i
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_9610228

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
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
?
?
,__inference_conv2d_421_layer_call_fn_9609647

inputs"
unknown:`?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????-?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_421_layer_call_and_return_conditional_losses_96079812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????-?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-`: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????-`
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609701

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????-?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????-?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????-?
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609829

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9607579

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9608413

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_9609612

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
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
?
9__inference_batch_normalization_334_layer_call_fn_9609935

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_96084132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_333_layer_call_fn_9609732

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
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_96073872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_424_layer_call_fn_9610099

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_424_layer_call_and_return_conditional_losses_96081192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_420_layer_call_and_return_conditional_losses_9609474

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????[`2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?#
"__inference__wrapped_model_9607217
conv2d_420_inputO
5alex_net_12_conv2d_420_conv2d_readvariableop_resource:`D
6alex_net_12_conv2d_420_biasadd_readvariableop_resource:`I
;alex_net_12_batch_normalization_332_readvariableop_resource:`K
=alex_net_12_batch_normalization_332_readvariableop_1_resource:`Z
Lalex_net_12_batch_normalization_332_fusedbatchnormv3_readvariableop_resource:`\
Nalex_net_12_batch_normalization_332_fusedbatchnormv3_readvariableop_1_resource:`P
5alex_net_12_conv2d_421_conv2d_readvariableop_resource:`?E
6alex_net_12_conv2d_421_biasadd_readvariableop_resource:	?J
;alex_net_12_batch_normalization_333_readvariableop_resource:	?L
=alex_net_12_batch_normalization_333_readvariableop_1_resource:	?[
Lalex_net_12_batch_normalization_333_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_12_batch_normalization_333_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_12_conv2d_422_conv2d_readvariableop_resource:??E
6alex_net_12_conv2d_422_biasadd_readvariableop_resource:	?J
;alex_net_12_batch_normalization_334_readvariableop_resource:	?L
=alex_net_12_batch_normalization_334_readvariableop_1_resource:	?[
Lalex_net_12_batch_normalization_334_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_12_batch_normalization_334_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_12_conv2d_423_conv2d_readvariableop_resource:??E
6alex_net_12_conv2d_423_biasadd_readvariableop_resource:	?J
;alex_net_12_batch_normalization_335_readvariableop_resource:	?L
=alex_net_12_batch_normalization_335_readvariableop_1_resource:	?[
Lalex_net_12_batch_normalization_335_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_12_batch_normalization_335_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_12_conv2d_424_conv2d_readvariableop_resource:??E
6alex_net_12_conv2d_424_biasadd_readvariableop_resource:	?J
;alex_net_12_batch_normalization_336_readvariableop_resource:	?L
=alex_net_12_batch_normalization_336_readvariableop_1_resource:	?[
Lalex_net_12_batch_normalization_336_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_12_batch_normalization_336_fusedbatchnormv3_readvariableop_1_resource:	?F
3alex_net_12_dense_68_matmul_readvariableop_resource:	?(B
4alex_net_12_dense_68_biasadd_readvariableop_resource:
identity??Calex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp?Ealex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1?2alex_net_12/batch_normalization_332/ReadVariableOp?4alex_net_12/batch_normalization_332/ReadVariableOp_1?Calex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp?Ealex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1?2alex_net_12/batch_normalization_333/ReadVariableOp?4alex_net_12/batch_normalization_333/ReadVariableOp_1?Calex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp?Ealex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1?2alex_net_12/batch_normalization_334/ReadVariableOp?4alex_net_12/batch_normalization_334/ReadVariableOp_1?Calex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp?Ealex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1?2alex_net_12/batch_normalization_335/ReadVariableOp?4alex_net_12/batch_normalization_335/ReadVariableOp_1?Calex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp?Ealex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1?2alex_net_12/batch_normalization_336/ReadVariableOp?4alex_net_12/batch_normalization_336/ReadVariableOp_1?-alex_net_12/conv2d_420/BiasAdd/ReadVariableOp?,alex_net_12/conv2d_420/Conv2D/ReadVariableOp?-alex_net_12/conv2d_421/BiasAdd/ReadVariableOp?,alex_net_12/conv2d_421/Conv2D/ReadVariableOp?-alex_net_12/conv2d_422/BiasAdd/ReadVariableOp?,alex_net_12/conv2d_422/Conv2D/ReadVariableOp?-alex_net_12/conv2d_423/BiasAdd/ReadVariableOp?,alex_net_12/conv2d_423/Conv2D/ReadVariableOp?-alex_net_12/conv2d_424/BiasAdd/ReadVariableOp?,alex_net_12/conv2d_424/Conv2D/ReadVariableOp?+alex_net_12/dense_68/BiasAdd/ReadVariableOp?*alex_net_12/dense_68/MatMul/ReadVariableOp?
,alex_net_12/conv2d_420/Conv2D/ReadVariableOpReadVariableOp5alex_net_12_conv2d_420_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02.
,alex_net_12/conv2d_420/Conv2D/ReadVariableOp?
alex_net_12/conv2d_420/Conv2DConv2Dconv2d_420_input4alex_net_12/conv2d_420/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_12/conv2d_420/Conv2D?
-alex_net_12/conv2d_420/BiasAdd/ReadVariableOpReadVariableOp6alex_net_12_conv2d_420_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02/
-alex_net_12/conv2d_420/BiasAdd/ReadVariableOp?
alex_net_12/conv2d_420/BiasAddBiasAdd&alex_net_12/conv2d_420/Conv2D:output:05alex_net_12/conv2d_420/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2 
alex_net_12/conv2d_420/BiasAdd?
alex_net_12/conv2d_420/ReluRelu'alex_net_12/conv2d_420/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_12/conv2d_420/Relu?
2alex_net_12/batch_normalization_332/ReadVariableOpReadVariableOp;alex_net_12_batch_normalization_332_readvariableop_resource*
_output_shapes
:`*
dtype024
2alex_net_12/batch_normalization_332/ReadVariableOp?
4alex_net_12/batch_normalization_332/ReadVariableOp_1ReadVariableOp=alex_net_12_batch_normalization_332_readvariableop_1_resource*
_output_shapes
:`*
dtype026
4alex_net_12/batch_normalization_332/ReadVariableOp_1?
Calex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_12_batch_normalization_332_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02E
Calex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp?
Ealex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_12_batch_normalization_332_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02G
Ealex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_12/batch_normalization_332/FusedBatchNormV3FusedBatchNormV3)alex_net_12/conv2d_420/Relu:activations:0:alex_net_12/batch_normalization_332/ReadVariableOp:value:0<alex_net_12/batch_normalization_332/ReadVariableOp_1:value:0Kalex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 26
4alex_net_12/batch_normalization_332/FusedBatchNormV3?
$alex_net_12/max_pooling2d_72/MaxPoolMaxPool8alex_net_12/batch_normalization_332/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2&
$alex_net_12/max_pooling2d_72/MaxPool?
,alex_net_12/conv2d_421/Conv2D/ReadVariableOpReadVariableOp5alex_net_12_conv2d_421_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02.
,alex_net_12/conv2d_421/Conv2D/ReadVariableOp?
alex_net_12/conv2d_421/Conv2DConv2D-alex_net_12/max_pooling2d_72/MaxPool:output:04alex_net_12/conv2d_421/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_12/conv2d_421/Conv2D?
-alex_net_12/conv2d_421/BiasAdd/ReadVariableOpReadVariableOp6alex_net_12_conv2d_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_12/conv2d_421/BiasAdd/ReadVariableOp?
alex_net_12/conv2d_421/BiasAddBiasAdd&alex_net_12/conv2d_421/Conv2D:output:05alex_net_12/conv2d_421/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2 
alex_net_12/conv2d_421/BiasAdd?
alex_net_12/conv2d_421/ReluRelu'alex_net_12/conv2d_421/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_12/conv2d_421/Relu?
2alex_net_12/batch_normalization_333/ReadVariableOpReadVariableOp;alex_net_12_batch_normalization_333_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_12/batch_normalization_333/ReadVariableOp?
4alex_net_12/batch_normalization_333/ReadVariableOp_1ReadVariableOp=alex_net_12_batch_normalization_333_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_12/batch_normalization_333/ReadVariableOp_1?
Calex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_12_batch_normalization_333_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp?
Ealex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_12_batch_normalization_333_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_12/batch_normalization_333/FusedBatchNormV3FusedBatchNormV3)alex_net_12/conv2d_421/Relu:activations:0:alex_net_12/batch_normalization_333/ReadVariableOp:value:0<alex_net_12/batch_normalization_333/ReadVariableOp_1:value:0Kalex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_12/batch_normalization_333/FusedBatchNormV3?
$alex_net_12/max_pooling2d_73/MaxPoolMaxPool8alex_net_12/batch_normalization_333/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2&
$alex_net_12/max_pooling2d_73/MaxPool?
,alex_net_12/conv2d_422/Conv2D/ReadVariableOpReadVariableOp5alex_net_12_conv2d_422_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_12/conv2d_422/Conv2D/ReadVariableOp?
alex_net_12/conv2d_422/Conv2DConv2D-alex_net_12/max_pooling2d_73/MaxPool:output:04alex_net_12/conv2d_422/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_12/conv2d_422/Conv2D?
-alex_net_12/conv2d_422/BiasAdd/ReadVariableOpReadVariableOp6alex_net_12_conv2d_422_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_12/conv2d_422/BiasAdd/ReadVariableOp?
alex_net_12/conv2d_422/BiasAddBiasAdd&alex_net_12/conv2d_422/Conv2D:output:05alex_net_12/conv2d_422/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_12/conv2d_422/BiasAdd?
alex_net_12/conv2d_422/ReluRelu'alex_net_12/conv2d_422/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_12/conv2d_422/Relu?
2alex_net_12/batch_normalization_334/ReadVariableOpReadVariableOp;alex_net_12_batch_normalization_334_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_12/batch_normalization_334/ReadVariableOp?
4alex_net_12/batch_normalization_334/ReadVariableOp_1ReadVariableOp=alex_net_12_batch_normalization_334_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_12/batch_normalization_334/ReadVariableOp_1?
Calex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_12_batch_normalization_334_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp?
Ealex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_12_batch_normalization_334_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_12/batch_normalization_334/FusedBatchNormV3FusedBatchNormV3)alex_net_12/conv2d_422/Relu:activations:0:alex_net_12/batch_normalization_334/ReadVariableOp:value:0<alex_net_12/batch_normalization_334/ReadVariableOp_1:value:0Kalex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_12/batch_normalization_334/FusedBatchNormV3?
,alex_net_12/conv2d_423/Conv2D/ReadVariableOpReadVariableOp5alex_net_12_conv2d_423_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_12/conv2d_423/Conv2D/ReadVariableOp?
alex_net_12/conv2d_423/Conv2DConv2D8alex_net_12/batch_normalization_334/FusedBatchNormV3:y:04alex_net_12/conv2d_423/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_12/conv2d_423/Conv2D?
-alex_net_12/conv2d_423/BiasAdd/ReadVariableOpReadVariableOp6alex_net_12_conv2d_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_12/conv2d_423/BiasAdd/ReadVariableOp?
alex_net_12/conv2d_423/BiasAddBiasAdd&alex_net_12/conv2d_423/Conv2D:output:05alex_net_12/conv2d_423/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_12/conv2d_423/BiasAdd?
alex_net_12/conv2d_423/ReluRelu'alex_net_12/conv2d_423/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_12/conv2d_423/Relu?
2alex_net_12/batch_normalization_335/ReadVariableOpReadVariableOp;alex_net_12_batch_normalization_335_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_12/batch_normalization_335/ReadVariableOp?
4alex_net_12/batch_normalization_335/ReadVariableOp_1ReadVariableOp=alex_net_12_batch_normalization_335_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_12/batch_normalization_335/ReadVariableOp_1?
Calex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_12_batch_normalization_335_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp?
Ealex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_12_batch_normalization_335_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_12/batch_normalization_335/FusedBatchNormV3FusedBatchNormV3)alex_net_12/conv2d_423/Relu:activations:0:alex_net_12/batch_normalization_335/ReadVariableOp:value:0<alex_net_12/batch_normalization_335/ReadVariableOp_1:value:0Kalex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_12/batch_normalization_335/FusedBatchNormV3?
,alex_net_12/conv2d_424/Conv2D/ReadVariableOpReadVariableOp5alex_net_12_conv2d_424_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_12/conv2d_424/Conv2D/ReadVariableOp?
alex_net_12/conv2d_424/Conv2DConv2D8alex_net_12/batch_normalization_335/FusedBatchNormV3:y:04alex_net_12/conv2d_424/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_12/conv2d_424/Conv2D?
-alex_net_12/conv2d_424/BiasAdd/ReadVariableOpReadVariableOp6alex_net_12_conv2d_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_12/conv2d_424/BiasAdd/ReadVariableOp?
alex_net_12/conv2d_424/BiasAddBiasAdd&alex_net_12/conv2d_424/Conv2D:output:05alex_net_12/conv2d_424/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_12/conv2d_424/BiasAdd?
alex_net_12/conv2d_424/ReluRelu'alex_net_12/conv2d_424/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_12/conv2d_424/Relu?
2alex_net_12/batch_normalization_336/ReadVariableOpReadVariableOp;alex_net_12_batch_normalization_336_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_12/batch_normalization_336/ReadVariableOp?
4alex_net_12/batch_normalization_336/ReadVariableOp_1ReadVariableOp=alex_net_12_batch_normalization_336_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_12/batch_normalization_336/ReadVariableOp_1?
Calex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_12_batch_normalization_336_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp?
Ealex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_12_batch_normalization_336_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_12/batch_normalization_336/FusedBatchNormV3FusedBatchNormV3)alex_net_12/conv2d_424/Relu:activations:0:alex_net_12/batch_normalization_336/ReadVariableOp:value:0<alex_net_12/batch_normalization_336/ReadVariableOp_1:value:0Kalex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_12/batch_normalization_336/FusedBatchNormV3?
$alex_net_12/max_pooling2d_74/MaxPoolMaxPool8alex_net_12/batch_normalization_336/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2&
$alex_net_12/max_pooling2d_74/MaxPool?
alex_net_12/flatten_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_12/flatten_32/Const?
alex_net_12/flatten_32/ReshapeReshape-alex_net_12/max_pooling2d_74/MaxPool:output:0%alex_net_12/flatten_32/Const:output:0*
T0*(
_output_shapes
:??????????(2 
alex_net_12/flatten_32/Reshape?
*alex_net_12/dense_68/MatMul/ReadVariableOpReadVariableOp3alex_net_12_dense_68_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02,
*alex_net_12/dense_68/MatMul/ReadVariableOp?
alex_net_12/dense_68/MatMulMatMul'alex_net_12/flatten_32/Reshape:output:02alex_net_12/dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_12/dense_68/MatMul?
+alex_net_12/dense_68/BiasAdd/ReadVariableOpReadVariableOp4alex_net_12_dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+alex_net_12/dense_68/BiasAdd/ReadVariableOp?
alex_net_12/dense_68/BiasAddBiasAdd%alex_net_12/dense_68/MatMul:product:03alex_net_12/dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_12/dense_68/BiasAdd?
alex_net_12/dense_68/SigmoidSigmoid%alex_net_12/dense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_12/dense_68/Sigmoid{
IdentityIdentity alex_net_12/dense_68/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpD^alex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOpF^alex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp_13^alex_net_12/batch_normalization_332/ReadVariableOp5^alex_net_12/batch_normalization_332/ReadVariableOp_1D^alex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOpF^alex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp_13^alex_net_12/batch_normalization_333/ReadVariableOp5^alex_net_12/batch_normalization_333/ReadVariableOp_1D^alex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOpF^alex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp_13^alex_net_12/batch_normalization_334/ReadVariableOp5^alex_net_12/batch_normalization_334/ReadVariableOp_1D^alex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOpF^alex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp_13^alex_net_12/batch_normalization_335/ReadVariableOp5^alex_net_12/batch_normalization_335/ReadVariableOp_1D^alex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOpF^alex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp_13^alex_net_12/batch_normalization_336/ReadVariableOp5^alex_net_12/batch_normalization_336/ReadVariableOp_1.^alex_net_12/conv2d_420/BiasAdd/ReadVariableOp-^alex_net_12/conv2d_420/Conv2D/ReadVariableOp.^alex_net_12/conv2d_421/BiasAdd/ReadVariableOp-^alex_net_12/conv2d_421/Conv2D/ReadVariableOp.^alex_net_12/conv2d_422/BiasAdd/ReadVariableOp-^alex_net_12/conv2d_422/Conv2D/ReadVariableOp.^alex_net_12/conv2d_423/BiasAdd/ReadVariableOp-^alex_net_12/conv2d_423/Conv2D/ReadVariableOp.^alex_net_12/conv2d_424/BiasAdd/ReadVariableOp-^alex_net_12/conv2d_424/Conv2D/ReadVariableOp,^alex_net_12/dense_68/BiasAdd/ReadVariableOp+^alex_net_12/dense_68/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Calex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOpCalex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1Ealex_net_12/batch_normalization_332/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_12/batch_normalization_332/ReadVariableOp2alex_net_12/batch_normalization_332/ReadVariableOp2l
4alex_net_12/batch_normalization_332/ReadVariableOp_14alex_net_12/batch_normalization_332/ReadVariableOp_12?
Calex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOpCalex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1Ealex_net_12/batch_normalization_333/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_12/batch_normalization_333/ReadVariableOp2alex_net_12/batch_normalization_333/ReadVariableOp2l
4alex_net_12/batch_normalization_333/ReadVariableOp_14alex_net_12/batch_normalization_333/ReadVariableOp_12?
Calex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOpCalex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1Ealex_net_12/batch_normalization_334/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_12/batch_normalization_334/ReadVariableOp2alex_net_12/batch_normalization_334/ReadVariableOp2l
4alex_net_12/batch_normalization_334/ReadVariableOp_14alex_net_12/batch_normalization_334/ReadVariableOp_12?
Calex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOpCalex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1Ealex_net_12/batch_normalization_335/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_12/batch_normalization_335/ReadVariableOp2alex_net_12/batch_normalization_335/ReadVariableOp2l
4alex_net_12/batch_normalization_335/ReadVariableOp_14alex_net_12/batch_normalization_335/ReadVariableOp_12?
Calex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOpCalex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1Ealex_net_12/batch_normalization_336/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_12/batch_normalization_336/ReadVariableOp2alex_net_12/batch_normalization_336/ReadVariableOp2l
4alex_net_12/batch_normalization_336/ReadVariableOp_14alex_net_12/batch_normalization_336/ReadVariableOp_12^
-alex_net_12/conv2d_420/BiasAdd/ReadVariableOp-alex_net_12/conv2d_420/BiasAdd/ReadVariableOp2\
,alex_net_12/conv2d_420/Conv2D/ReadVariableOp,alex_net_12/conv2d_420/Conv2D/ReadVariableOp2^
-alex_net_12/conv2d_421/BiasAdd/ReadVariableOp-alex_net_12/conv2d_421/BiasAdd/ReadVariableOp2\
,alex_net_12/conv2d_421/Conv2D/ReadVariableOp,alex_net_12/conv2d_421/Conv2D/ReadVariableOp2^
-alex_net_12/conv2d_422/BiasAdd/ReadVariableOp-alex_net_12/conv2d_422/BiasAdd/ReadVariableOp2\
,alex_net_12/conv2d_422/Conv2D/ReadVariableOp,alex_net_12/conv2d_422/Conv2D/ReadVariableOp2^
-alex_net_12/conv2d_423/BiasAdd/ReadVariableOp-alex_net_12/conv2d_423/BiasAdd/ReadVariableOp2\
,alex_net_12/conv2d_423/Conv2D/ReadVariableOp,alex_net_12/conv2d_423/Conv2D/ReadVariableOp2^
-alex_net_12/conv2d_424/BiasAdd/ReadVariableOp-alex_net_12/conv2d_424/BiasAdd/ReadVariableOp2\
,alex_net_12/conv2d_424/Conv2D/ReadVariableOp,alex_net_12/conv2d_424/Conv2D/ReadVariableOp2Z
+alex_net_12/dense_68/BiasAdd/ReadVariableOp+alex_net_12/dense_68/BiasAdd/ReadVariableOp2X
*alex_net_12/dense_68/MatMul/ReadVariableOp*alex_net_12/dense_68/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_420_input
?
N
2__inference_max_pooling2d_72_layer_call_fn_9609622

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_96073522
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
G__inference_conv2d_422_layer_call_and_return_conditional_losses_9609802

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9609204

inputsC
)conv2d_420_conv2d_readvariableop_resource:`8
*conv2d_420_biasadd_readvariableop_resource:`=
/batch_normalization_332_readvariableop_resource:`?
1batch_normalization_332_readvariableop_1_resource:`N
@batch_normalization_332_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_332_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_421_conv2d_readvariableop_resource:`?9
*conv2d_421_biasadd_readvariableop_resource:	?>
/batch_normalization_333_readvariableop_resource:	?@
1batch_normalization_333_readvariableop_1_resource:	?O
@batch_normalization_333_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_333_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_422_conv2d_readvariableop_resource:??9
*conv2d_422_biasadd_readvariableop_resource:	?>
/batch_normalization_334_readvariableop_resource:	?@
1batch_normalization_334_readvariableop_1_resource:	?O
@batch_normalization_334_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_334_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_423_conv2d_readvariableop_resource:??9
*conv2d_423_biasadd_readvariableop_resource:	?>
/batch_normalization_335_readvariableop_resource:	?@
1batch_normalization_335_readvariableop_1_resource:	?O
@batch_normalization_335_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_335_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_424_conv2d_readvariableop_resource:??9
*conv2d_424_biasadd_readvariableop_resource:	?>
/batch_normalization_336_readvariableop_resource:	?@
1batch_normalization_336_readvariableop_1_resource:	?O
@batch_normalization_336_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_336_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_68_matmul_readvariableop_resource:	?(6
(dense_68_biasadd_readvariableop_resource:
identity??7batch_normalization_332/FusedBatchNormV3/ReadVariableOp?9batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_332/ReadVariableOp?(batch_normalization_332/ReadVariableOp_1?7batch_normalization_333/FusedBatchNormV3/ReadVariableOp?9batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_333/ReadVariableOp?(batch_normalization_333/ReadVariableOp_1?7batch_normalization_334/FusedBatchNormV3/ReadVariableOp?9batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_334/ReadVariableOp?(batch_normalization_334/ReadVariableOp_1?7batch_normalization_335/FusedBatchNormV3/ReadVariableOp?9batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_335/ReadVariableOp?(batch_normalization_335/ReadVariableOp_1?7batch_normalization_336/FusedBatchNormV3/ReadVariableOp?9batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_336/ReadVariableOp?(batch_normalization_336/ReadVariableOp_1?!conv2d_420/BiasAdd/ReadVariableOp? conv2d_420/Conv2D/ReadVariableOp?!conv2d_421/BiasAdd/ReadVariableOp? conv2d_421/Conv2D/ReadVariableOp?!conv2d_422/BiasAdd/ReadVariableOp? conv2d_422/Conv2D/ReadVariableOp?!conv2d_423/BiasAdd/ReadVariableOp? conv2d_423/Conv2D/ReadVariableOp?!conv2d_424/BiasAdd/ReadVariableOp? conv2d_424/Conv2D/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?
 conv2d_420/Conv2D/ReadVariableOpReadVariableOp)conv2d_420_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_420/Conv2D/ReadVariableOp?
conv2d_420/Conv2DConv2Dinputs(conv2d_420/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_420/Conv2D?
!conv2d_420/BiasAdd/ReadVariableOpReadVariableOp*conv2d_420_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_420/BiasAdd/ReadVariableOp?
conv2d_420/BiasAddBiasAddconv2d_420/Conv2D:output:0)conv2d_420/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_420/BiasAdd?
conv2d_420/ReluReluconv2d_420/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_420/Relu?
&batch_normalization_332/ReadVariableOpReadVariableOp/batch_normalization_332_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_332/ReadVariableOp?
(batch_normalization_332/ReadVariableOp_1ReadVariableOp1batch_normalization_332_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_332/ReadVariableOp_1?
7batch_normalization_332/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_332_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_332/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_332_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_332/FusedBatchNormV3FusedBatchNormV3conv2d_420/Relu:activations:0.batch_normalization_332/ReadVariableOp:value:00batch_normalization_332/ReadVariableOp_1:value:0?batch_normalization_332/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_332/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_332/FusedBatchNormV3?
max_pooling2d_72/MaxPoolMaxPool,batch_normalization_332/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_72/MaxPool?
 conv2d_421/Conv2D/ReadVariableOpReadVariableOp)conv2d_421_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_421/Conv2D/ReadVariableOp?
conv2d_421/Conv2DConv2D!max_pooling2d_72/MaxPool:output:0(conv2d_421/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_421/Conv2D?
!conv2d_421/BiasAdd/ReadVariableOpReadVariableOp*conv2d_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_421/BiasAdd/ReadVariableOp?
conv2d_421/BiasAddBiasAddconv2d_421/Conv2D:output:0)conv2d_421/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_421/BiasAdd?
conv2d_421/ReluReluconv2d_421/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_421/Relu?
&batch_normalization_333/ReadVariableOpReadVariableOp/batch_normalization_333_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_333/ReadVariableOp?
(batch_normalization_333/ReadVariableOp_1ReadVariableOp1batch_normalization_333_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_333/ReadVariableOp_1?
7batch_normalization_333/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_333_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_333/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_333_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_333/FusedBatchNormV3FusedBatchNormV3conv2d_421/Relu:activations:0.batch_normalization_333/ReadVariableOp:value:00batch_normalization_333/ReadVariableOp_1:value:0?batch_normalization_333/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_333/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_333/FusedBatchNormV3?
max_pooling2d_73/MaxPoolMaxPool,batch_normalization_333/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_73/MaxPool?
 conv2d_422/Conv2D/ReadVariableOpReadVariableOp)conv2d_422_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_422/Conv2D/ReadVariableOp?
conv2d_422/Conv2DConv2D!max_pooling2d_73/MaxPool:output:0(conv2d_422/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_422/Conv2D?
!conv2d_422/BiasAdd/ReadVariableOpReadVariableOp*conv2d_422_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_422/BiasAdd/ReadVariableOp?
conv2d_422/BiasAddBiasAddconv2d_422/Conv2D:output:0)conv2d_422/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_422/BiasAdd?
conv2d_422/ReluReluconv2d_422/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_422/Relu?
&batch_normalization_334/ReadVariableOpReadVariableOp/batch_normalization_334_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_334/ReadVariableOp?
(batch_normalization_334/ReadVariableOp_1ReadVariableOp1batch_normalization_334_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_334/ReadVariableOp_1?
7batch_normalization_334/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_334_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_334/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_334_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_334/FusedBatchNormV3FusedBatchNormV3conv2d_422/Relu:activations:0.batch_normalization_334/ReadVariableOp:value:00batch_normalization_334/ReadVariableOp_1:value:0?batch_normalization_334/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_334/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_334/FusedBatchNormV3?
 conv2d_423/Conv2D/ReadVariableOpReadVariableOp)conv2d_423_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_423/Conv2D/ReadVariableOp?
conv2d_423/Conv2DConv2D,batch_normalization_334/FusedBatchNormV3:y:0(conv2d_423/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_423/Conv2D?
!conv2d_423/BiasAdd/ReadVariableOpReadVariableOp*conv2d_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_423/BiasAdd/ReadVariableOp?
conv2d_423/BiasAddBiasAddconv2d_423/Conv2D:output:0)conv2d_423/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_423/BiasAdd?
conv2d_423/ReluReluconv2d_423/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_423/Relu?
&batch_normalization_335/ReadVariableOpReadVariableOp/batch_normalization_335_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_335/ReadVariableOp?
(batch_normalization_335/ReadVariableOp_1ReadVariableOp1batch_normalization_335_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_335/ReadVariableOp_1?
7batch_normalization_335/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_335_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_335/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_335_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_335/FusedBatchNormV3FusedBatchNormV3conv2d_423/Relu:activations:0.batch_normalization_335/ReadVariableOp:value:00batch_normalization_335/ReadVariableOp_1:value:0?batch_normalization_335/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_335/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_335/FusedBatchNormV3?
 conv2d_424/Conv2D/ReadVariableOpReadVariableOp)conv2d_424_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_424/Conv2D/ReadVariableOp?
conv2d_424/Conv2DConv2D,batch_normalization_335/FusedBatchNormV3:y:0(conv2d_424/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_424/Conv2D?
!conv2d_424/BiasAdd/ReadVariableOpReadVariableOp*conv2d_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_424/BiasAdd/ReadVariableOp?
conv2d_424/BiasAddBiasAddconv2d_424/Conv2D:output:0)conv2d_424/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_424/BiasAdd?
conv2d_424/ReluReluconv2d_424/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_424/Relu?
&batch_normalization_336/ReadVariableOpReadVariableOp/batch_normalization_336_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_336/ReadVariableOp?
(batch_normalization_336/ReadVariableOp_1ReadVariableOp1batch_normalization_336_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_336/ReadVariableOp_1?
7batch_normalization_336/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_336_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_336/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_336_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_336/FusedBatchNormV3FusedBatchNormV3conv2d_424/Relu:activations:0.batch_normalization_336/ReadVariableOp:value:00batch_normalization_336/ReadVariableOp_1:value:0?batch_normalization_336/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_336/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_336/FusedBatchNormV3?
max_pooling2d_74/MaxPoolMaxPool,batch_normalization_336/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_74/MaxPoolu
flatten_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_32/Const?
flatten_32/ReshapeReshape!max_pooling2d_74/MaxPool:output:0flatten_32/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_32/Reshape?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMulflatten_32/Reshape:output:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/BiasAdd|
dense_68/SigmoidSigmoiddense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_68/Sigmoido
IdentityIdentitydense_68/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_332/FusedBatchNormV3/ReadVariableOp:^batch_normalization_332/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_332/ReadVariableOp)^batch_normalization_332/ReadVariableOp_18^batch_normalization_333/FusedBatchNormV3/ReadVariableOp:^batch_normalization_333/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_333/ReadVariableOp)^batch_normalization_333/ReadVariableOp_18^batch_normalization_334/FusedBatchNormV3/ReadVariableOp:^batch_normalization_334/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_334/ReadVariableOp)^batch_normalization_334/ReadVariableOp_18^batch_normalization_335/FusedBatchNormV3/ReadVariableOp:^batch_normalization_335/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_335/ReadVariableOp)^batch_normalization_335/ReadVariableOp_18^batch_normalization_336/FusedBatchNormV3/ReadVariableOp:^batch_normalization_336/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_336/ReadVariableOp)^batch_normalization_336/ReadVariableOp_1"^conv2d_420/BiasAdd/ReadVariableOp!^conv2d_420/Conv2D/ReadVariableOp"^conv2d_421/BiasAdd/ReadVariableOp!^conv2d_421/Conv2D/ReadVariableOp"^conv2d_422/BiasAdd/ReadVariableOp!^conv2d_422/Conv2D/ReadVariableOp"^conv2d_423/BiasAdd/ReadVariableOp!^conv2d_423/Conv2D/ReadVariableOp"^conv2d_424/BiasAdd/ReadVariableOp!^conv2d_424/Conv2D/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_332/FusedBatchNormV3/ReadVariableOp7batch_normalization_332/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_332/FusedBatchNormV3/ReadVariableOp_19batch_normalization_332/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_332/ReadVariableOp&batch_normalization_332/ReadVariableOp2T
(batch_normalization_332/ReadVariableOp_1(batch_normalization_332/ReadVariableOp_12r
7batch_normalization_333/FusedBatchNormV3/ReadVariableOp7batch_normalization_333/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_333/FusedBatchNormV3/ReadVariableOp_19batch_normalization_333/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_333/ReadVariableOp&batch_normalization_333/ReadVariableOp2T
(batch_normalization_333/ReadVariableOp_1(batch_normalization_333/ReadVariableOp_12r
7batch_normalization_334/FusedBatchNormV3/ReadVariableOp7batch_normalization_334/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_334/FusedBatchNormV3/ReadVariableOp_19batch_normalization_334/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_334/ReadVariableOp&batch_normalization_334/ReadVariableOp2T
(batch_normalization_334/ReadVariableOp_1(batch_normalization_334/ReadVariableOp_12r
7batch_normalization_335/FusedBatchNormV3/ReadVariableOp7batch_normalization_335/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_335/FusedBatchNormV3/ReadVariableOp_19batch_normalization_335/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_335/ReadVariableOp&batch_normalization_335/ReadVariableOp2T
(batch_normalization_335/ReadVariableOp_1(batch_normalization_335/ReadVariableOp_12r
7batch_normalization_336/FusedBatchNormV3/ReadVariableOp7batch_normalization_336/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_336/FusedBatchNormV3/ReadVariableOp_19batch_normalization_336/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_336/ReadVariableOp&batch_normalization_336/ReadVariableOp2T
(batch_normalization_336/ReadVariableOp_1(batch_normalization_336/ReadVariableOp_12F
!conv2d_420/BiasAdd/ReadVariableOp!conv2d_420/BiasAdd/ReadVariableOp2D
 conv2d_420/Conv2D/ReadVariableOp conv2d_420/Conv2D/ReadVariableOp2F
!conv2d_421/BiasAdd/ReadVariableOp!conv2d_421/BiasAdd/ReadVariableOp2D
 conv2d_421/Conv2D/ReadVariableOp conv2d_421/Conv2D/ReadVariableOp2F
!conv2d_422/BiasAdd/ReadVariableOp!conv2d_422/BiasAdd/ReadVariableOp2D
 conv2d_422/Conv2D/ReadVariableOp conv2d_422/Conv2D/ReadVariableOp2F
!conv2d_423/BiasAdd/ReadVariableOp!conv2d_423/BiasAdd/ReadVariableOp2D
 conv2d_423/Conv2D/ReadVariableOp conv2d_423/Conv2D/ReadVariableOp2F
!conv2d_424/BiasAdd/ReadVariableOp!conv2d_424/BiasAdd/ReadVariableOp2D
 conv2d_424/Conv2D/ReadVariableOp conv2d_424/Conv2D/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609501

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_9607500

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
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
?
?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9607705

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_alex_net_12_layer_call_fn_9609394

inputs!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?&

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?(

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_alex_net_12_layer_call_and_return_conditional_losses_96081842
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609719

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????-?2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????-?: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????-?
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_9609617

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????[`:W S
/
_output_shapes
:?????????[`
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_9608156

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_68_layer_call_and_return_conditional_losses_9610265

inputs1
matmul_readvariableop_resource:	?(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9609991

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_420_layer_call_and_return_conditional_losses_9607931

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????[`2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_421_layer_call_and_return_conditional_losses_9607981

inputs9
conv2d_readvariableop_resource:`?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????-?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????-`
 
_user_specified_nameinputs
?
c
G__inference_flatten_32_layer_call_and_return_conditional_losses_9610249

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????(2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
H
,__inference_flatten_32_layer_call_fn_9610254

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_32_layer_call_and_return_conditional_losses_96081642
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9608004

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????-?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????-?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????-?
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_9610547
file_prefix<
"assignvariableop_conv2d_420_kernel:`0
"assignvariableop_1_conv2d_420_bias:`>
0assignvariableop_2_batch_normalization_332_gamma:`=
/assignvariableop_3_batch_normalization_332_beta:`D
6assignvariableop_4_batch_normalization_332_moving_mean:`H
:assignvariableop_5_batch_normalization_332_moving_variance:`?
$assignvariableop_6_conv2d_421_kernel:`?1
"assignvariableop_7_conv2d_421_bias:	??
0assignvariableop_8_batch_normalization_333_gamma:	?>
/assignvariableop_9_batch_normalization_333_beta:	?F
7assignvariableop_10_batch_normalization_333_moving_mean:	?J
;assignvariableop_11_batch_normalization_333_moving_variance:	?A
%assignvariableop_12_conv2d_422_kernel:??2
#assignvariableop_13_conv2d_422_bias:	?@
1assignvariableop_14_batch_normalization_334_gamma:	??
0assignvariableop_15_batch_normalization_334_beta:	?F
7assignvariableop_16_batch_normalization_334_moving_mean:	?J
;assignvariableop_17_batch_normalization_334_moving_variance:	?A
%assignvariableop_18_conv2d_423_kernel:??2
#assignvariableop_19_conv2d_423_bias:	?@
1assignvariableop_20_batch_normalization_335_gamma:	??
0assignvariableop_21_batch_normalization_335_beta:	?F
7assignvariableop_22_batch_normalization_335_moving_mean:	?J
;assignvariableop_23_batch_normalization_335_moving_variance:	?A
%assignvariableop_24_conv2d_424_kernel:??2
#assignvariableop_25_conv2d_424_bias:	?@
1assignvariableop_26_batch_normalization_336_gamma:	??
0assignvariableop_27_batch_normalization_336_beta:	?F
7assignvariableop_28_batch_normalization_336_moving_mean:	?J
;assignvariableop_29_batch_normalization_336_moving_variance:	?6
#assignvariableop_30_dense_68_kernel:	?(/
!assignvariableop_31_dense_68_bias:&
assignvariableop_32_sgd_iter:	 '
assignvariableop_33_sgd_decay: /
%assignvariableop_34_sgd_learning_rate: *
 assignvariableop_35_sgd_momentum: #
assignvariableop_36_total: #
assignvariableop_37_count: %
assignvariableop_38_total_1: %
assignvariableop_39_count_1: 
identity_41??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_420_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_420_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_332_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_332_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_332_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_332_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_421_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_421_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_333_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_333_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_333_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_333_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_422_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_422_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_334_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_334_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_334_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_334_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_423_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_423_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_335_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_335_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_335_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_335_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_424_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_424_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_336_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_336_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_336_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_336_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_68_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_68_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_sgd_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_sgd_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp%assignvariableop_34_sgd_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp assignvariableop_35_sgd_momentumIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpassignvariableop_36_totalIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_countIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_399
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_40f
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_41?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
?
?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9610027

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9608098

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_dense_68_layer_call_fn_9610274

inputs
unknown:	?(
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_96081772
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????(: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
G__inference_conv2d_422_layer_call_and_return_conditional_losses_9608031

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_9607968

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????[`:W S
/
_output_shapes
:?????????[`
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_72_layer_call_fn_9609627

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_96079682
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????-`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????[`:W S
/
_output_shapes
:?????????[`
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9607787

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_336_layer_call_fn_9610210

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
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_96081422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_334_layer_call_fn_9609896

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_96075352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_424_layer_call_and_return_conditional_losses_9610090

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610171

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?T
?
 __inference__traced_save_9610417
file_prefix0
,savev2_conv2d_420_kernel_read_readvariableop.
*savev2_conv2d_420_bias_read_readvariableop<
8savev2_batch_normalization_332_gamma_read_readvariableop;
7savev2_batch_normalization_332_beta_read_readvariableopB
>savev2_batch_normalization_332_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_332_moving_variance_read_readvariableop0
,savev2_conv2d_421_kernel_read_readvariableop.
*savev2_conv2d_421_bias_read_readvariableop<
8savev2_batch_normalization_333_gamma_read_readvariableop;
7savev2_batch_normalization_333_beta_read_readvariableopB
>savev2_batch_normalization_333_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_333_moving_variance_read_readvariableop0
,savev2_conv2d_422_kernel_read_readvariableop.
*savev2_conv2d_422_bias_read_readvariableop<
8savev2_batch_normalization_334_gamma_read_readvariableop;
7savev2_batch_normalization_334_beta_read_readvariableopB
>savev2_batch_normalization_334_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_334_moving_variance_read_readvariableop0
,savev2_conv2d_423_kernel_read_readvariableop.
*savev2_conv2d_423_bias_read_readvariableop<
8savev2_batch_normalization_335_gamma_read_readvariableop;
7savev2_batch_normalization_335_beta_read_readvariableopB
>savev2_batch_normalization_335_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_335_moving_variance_read_readvariableop0
,savev2_conv2d_424_kernel_read_readvariableop.
*savev2_conv2d_424_bias_read_readvariableop<
8savev2_batch_normalization_336_gamma_read_readvariableop;
7savev2_batch_normalization_336_beta_read_readvariableopB
>savev2_batch_normalization_336_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_336_moving_variance_read_readvariableop.
*savev2_dense_68_kernel_read_readvariableop,
(savev2_dense_68_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_420_kernel_read_readvariableop*savev2_conv2d_420_bias_read_readvariableop8savev2_batch_normalization_332_gamma_read_readvariableop7savev2_batch_normalization_332_beta_read_readvariableop>savev2_batch_normalization_332_moving_mean_read_readvariableopBsavev2_batch_normalization_332_moving_variance_read_readvariableop,savev2_conv2d_421_kernel_read_readvariableop*savev2_conv2d_421_bias_read_readvariableop8savev2_batch_normalization_333_gamma_read_readvariableop7savev2_batch_normalization_333_beta_read_readvariableop>savev2_batch_normalization_333_moving_mean_read_readvariableopBsavev2_batch_normalization_333_moving_variance_read_readvariableop,savev2_conv2d_422_kernel_read_readvariableop*savev2_conv2d_422_bias_read_readvariableop8savev2_batch_normalization_334_gamma_read_readvariableop7savev2_batch_normalization_334_beta_read_readvariableop>savev2_batch_normalization_334_moving_mean_read_readvariableopBsavev2_batch_normalization_334_moving_variance_read_readvariableop,savev2_conv2d_423_kernel_read_readvariableop*savev2_conv2d_423_bias_read_readvariableop8savev2_batch_normalization_335_gamma_read_readvariableop7savev2_batch_normalization_335_beta_read_readvariableop>savev2_batch_normalization_335_moving_mean_read_readvariableopBsavev2_batch_normalization_335_moving_variance_read_readvariableop,savev2_conv2d_424_kernel_read_readvariableop*savev2_conv2d_424_bias_read_readvariableop8savev2_batch_normalization_336_gamma_read_readvariableop7savev2_batch_normalization_336_beta_read_readvariableop>savev2_batch_normalization_336_moving_mean_read_readvariableopBsavev2_batch_normalization_336_moving_variance_read_readvariableop*savev2_dense_68_kernel_read_readvariableop(savev2_dense_68_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	2
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

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :`:`:`:`:`:`:`?:?:?:?:?:?:??:?:?:?:?:?:??:?:?:?:?:?:??:?:?:?:?:?:	?(:: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`:-)
'
_output_shapes
:`?:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?(:  

_output_shapes
::!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: 
?X
?
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9608706

inputs,
conv2d_420_9608626:` 
conv2d_420_9608628:`-
batch_normalization_332_9608631:`-
batch_normalization_332_9608633:`-
batch_normalization_332_9608635:`-
batch_normalization_332_9608637:`-
conv2d_421_9608641:`?!
conv2d_421_9608643:	?.
batch_normalization_333_9608646:	?.
batch_normalization_333_9608648:	?.
batch_normalization_333_9608650:	?.
batch_normalization_333_9608652:	?.
conv2d_422_9608656:??!
conv2d_422_9608658:	?.
batch_normalization_334_9608661:	?.
batch_normalization_334_9608663:	?.
batch_normalization_334_9608665:	?.
batch_normalization_334_9608667:	?.
conv2d_423_9608670:??!
conv2d_423_9608672:	?.
batch_normalization_335_9608675:	?.
batch_normalization_335_9608677:	?.
batch_normalization_335_9608679:	?.
batch_normalization_335_9608681:	?.
conv2d_424_9608684:??!
conv2d_424_9608686:	?.
batch_normalization_336_9608689:	?.
batch_normalization_336_9608691:	?.
batch_normalization_336_9608693:	?.
batch_normalization_336_9608695:	?#
dense_68_9608700:	?(
dense_68_9608702:
identity??/batch_normalization_332/StatefulPartitionedCall?/batch_normalization_333/StatefulPartitionedCall?/batch_normalization_334/StatefulPartitionedCall?/batch_normalization_335/StatefulPartitionedCall?/batch_normalization_336/StatefulPartitionedCall?"conv2d_420/StatefulPartitionedCall?"conv2d_421/StatefulPartitionedCall?"conv2d_422/StatefulPartitionedCall?"conv2d_423/StatefulPartitionedCall?"conv2d_424/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
"conv2d_420/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_420_9608626conv2d_420_9608628*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_420_layer_call_and_return_conditional_losses_96079312$
"conv2d_420/StatefulPartitionedCall?
/batch_normalization_332/StatefulPartitionedCallStatefulPartitionedCall+conv2d_420/StatefulPartitionedCall:output:0batch_normalization_332_9608631batch_normalization_332_9608633batch_normalization_332_9608635batch_normalization_332_9608637*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_960853121
/batch_normalization_332/StatefulPartitionedCall?
 max_pooling2d_72/PartitionedCallPartitionedCall8batch_normalization_332/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_96079682"
 max_pooling2d_72/PartitionedCall?
"conv2d_421/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_72/PartitionedCall:output:0conv2d_421_9608641conv2d_421_9608643*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????-?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_421_layer_call_and_return_conditional_losses_96079812$
"conv2d_421/StatefulPartitionedCall?
/batch_normalization_333/StatefulPartitionedCallStatefulPartitionedCall+conv2d_421/StatefulPartitionedCall:output:0batch_normalization_333_9608646batch_normalization_333_9608648batch_normalization_333_9608650batch_normalization_333_9608652*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????-?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_960847221
/batch_normalization_333/StatefulPartitionedCall?
 max_pooling2d_73/PartitionedCallPartitionedCall8batch_normalization_333/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_96080182"
 max_pooling2d_73/PartitionedCall?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_73/PartitionedCall:output:0conv2d_422_9608656conv2d_422_9608658*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_422_layer_call_and_return_conditional_losses_96080312$
"conv2d_422/StatefulPartitionedCall?
/batch_normalization_334/StatefulPartitionedCallStatefulPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0batch_normalization_334_9608661batch_normalization_334_9608663batch_normalization_334_9608665batch_normalization_334_9608667*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_960841321
/batch_normalization_334/StatefulPartitionedCall?
"conv2d_423/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_334/StatefulPartitionedCall:output:0conv2d_423_9608670conv2d_423_9608672*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_423_layer_call_and_return_conditional_losses_96080752$
"conv2d_423/StatefulPartitionedCall?
/batch_normalization_335/StatefulPartitionedCallStatefulPartitionedCall+conv2d_423/StatefulPartitionedCall:output:0batch_normalization_335_9608675batch_normalization_335_9608677batch_normalization_335_9608679batch_normalization_335_9608681*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_960835921
/batch_normalization_335/StatefulPartitionedCall?
"conv2d_424/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_335/StatefulPartitionedCall:output:0conv2d_424_9608684conv2d_424_9608686*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_424_layer_call_and_return_conditional_losses_96081192$
"conv2d_424/StatefulPartitionedCall?
/batch_normalization_336/StatefulPartitionedCallStatefulPartitionedCall+conv2d_424/StatefulPartitionedCall:output:0batch_normalization_336_9608689batch_normalization_336_9608691batch_normalization_336_9608693batch_normalization_336_9608695*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_960830521
/batch_normalization_336/StatefulPartitionedCall?
 max_pooling2d_74/PartitionedCallPartitionedCall8batch_normalization_336/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_96081562"
 max_pooling2d_74/PartitionedCall?
flatten_32/PartitionedCallPartitionedCall)max_pooling2d_74/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_32_layer_call_and_return_conditional_losses_96081642
flatten_32/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_32/PartitionedCall:output:0dense_68_9608700dense_68_9608702*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_96081772"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_332/StatefulPartitionedCall0^batch_normalization_333/StatefulPartitionedCall0^batch_normalization_334/StatefulPartitionedCall0^batch_normalization_335/StatefulPartitionedCall0^batch_normalization_336/StatefulPartitionedCall#^conv2d_420/StatefulPartitionedCall#^conv2d_421/StatefulPartitionedCall#^conv2d_422/StatefulPartitionedCall#^conv2d_423/StatefulPartitionedCall#^conv2d_424/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_332/StatefulPartitionedCall/batch_normalization_332/StatefulPartitionedCall2b
/batch_normalization_333/StatefulPartitionedCall/batch_normalization_333/StatefulPartitionedCall2b
/batch_normalization_334/StatefulPartitionedCall/batch_normalization_334/StatefulPartitionedCall2b
/batch_normalization_335/StatefulPartitionedCall/batch_normalization_335/StatefulPartitionedCall2b
/batch_normalization_336/StatefulPartitionedCall/batch_normalization_336/StatefulPartitionedCall2H
"conv2d_420/StatefulPartitionedCall"conv2d_420/StatefulPartitionedCall2H
"conv2d_421/StatefulPartitionedCall"conv2d_421/StatefulPartitionedCall2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2H
"conv2d_423/StatefulPartitionedCall"conv2d_423/StatefulPartitionedCall2H
"conv2d_424/StatefulPartitionedCall"conv2d_424/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609537

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????[`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????[`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????[`
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9607431

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9609973

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_9609083
conv2d_420_input!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?&

unknown_11:??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?(

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_96072172
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_420_input
?
?
9__inference_batch_normalization_332_layer_call_fn_9609607

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_96085312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????[`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????[`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????[`
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_336_layer_call_fn_9610223

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
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_96083052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_335_layer_call_fn_9610079

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_96083592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610135

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609847

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_9607352

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
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
?Y
?
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9608925
conv2d_420_input,
conv2d_420_9608845:` 
conv2d_420_9608847:`-
batch_normalization_332_9608850:`-
batch_normalization_332_9608852:`-
batch_normalization_332_9608854:`-
batch_normalization_332_9608856:`-
conv2d_421_9608860:`?!
conv2d_421_9608862:	?.
batch_normalization_333_9608865:	?.
batch_normalization_333_9608867:	?.
batch_normalization_333_9608869:	?.
batch_normalization_333_9608871:	?.
conv2d_422_9608875:??!
conv2d_422_9608877:	?.
batch_normalization_334_9608880:	?.
batch_normalization_334_9608882:	?.
batch_normalization_334_9608884:	?.
batch_normalization_334_9608886:	?.
conv2d_423_9608889:??!
conv2d_423_9608891:	?.
batch_normalization_335_9608894:	?.
batch_normalization_335_9608896:	?.
batch_normalization_335_9608898:	?.
batch_normalization_335_9608900:	?.
conv2d_424_9608903:??!
conv2d_424_9608905:	?.
batch_normalization_336_9608908:	?.
batch_normalization_336_9608910:	?.
batch_normalization_336_9608912:	?.
batch_normalization_336_9608914:	?#
dense_68_9608919:	?(
dense_68_9608921:
identity??/batch_normalization_332/StatefulPartitionedCall?/batch_normalization_333/StatefulPartitionedCall?/batch_normalization_334/StatefulPartitionedCall?/batch_normalization_335/StatefulPartitionedCall?/batch_normalization_336/StatefulPartitionedCall?"conv2d_420/StatefulPartitionedCall?"conv2d_421/StatefulPartitionedCall?"conv2d_422/StatefulPartitionedCall?"conv2d_423/StatefulPartitionedCall?"conv2d_424/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
"conv2d_420/StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputconv2d_420_9608845conv2d_420_9608847*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_420_layer_call_and_return_conditional_losses_96079312$
"conv2d_420/StatefulPartitionedCall?
/batch_normalization_332/StatefulPartitionedCallStatefulPartitionedCall+conv2d_420/StatefulPartitionedCall:output:0batch_normalization_332_9608850batch_normalization_332_9608852batch_normalization_332_9608854batch_normalization_332_9608856*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_960795421
/batch_normalization_332/StatefulPartitionedCall?
 max_pooling2d_72/PartitionedCallPartitionedCall8batch_normalization_332/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_96079682"
 max_pooling2d_72/PartitionedCall?
"conv2d_421/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_72/PartitionedCall:output:0conv2d_421_9608860conv2d_421_9608862*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????-?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_421_layer_call_and_return_conditional_losses_96079812$
"conv2d_421/StatefulPartitionedCall?
/batch_normalization_333/StatefulPartitionedCallStatefulPartitionedCall+conv2d_421/StatefulPartitionedCall:output:0batch_normalization_333_9608865batch_normalization_333_9608867batch_normalization_333_9608869batch_normalization_333_9608871*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????-?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_960800421
/batch_normalization_333/StatefulPartitionedCall?
 max_pooling2d_73/PartitionedCallPartitionedCall8batch_normalization_333/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_96080182"
 max_pooling2d_73/PartitionedCall?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_73/PartitionedCall:output:0conv2d_422_9608875conv2d_422_9608877*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_422_layer_call_and_return_conditional_losses_96080312$
"conv2d_422/StatefulPartitionedCall?
/batch_normalization_334/StatefulPartitionedCallStatefulPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0batch_normalization_334_9608880batch_normalization_334_9608882batch_normalization_334_9608884batch_normalization_334_9608886*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_960805421
/batch_normalization_334/StatefulPartitionedCall?
"conv2d_423/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_334/StatefulPartitionedCall:output:0conv2d_423_9608889conv2d_423_9608891*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_423_layer_call_and_return_conditional_losses_96080752$
"conv2d_423/StatefulPartitionedCall?
/batch_normalization_335/StatefulPartitionedCallStatefulPartitionedCall+conv2d_423/StatefulPartitionedCall:output:0batch_normalization_335_9608894batch_normalization_335_9608896batch_normalization_335_9608898batch_normalization_335_9608900*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_960809821
/batch_normalization_335/StatefulPartitionedCall?
"conv2d_424/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_335/StatefulPartitionedCall:output:0conv2d_424_9608903conv2d_424_9608905*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_424_layer_call_and_return_conditional_losses_96081192$
"conv2d_424/StatefulPartitionedCall?
/batch_normalization_336/StatefulPartitionedCallStatefulPartitionedCall+conv2d_424/StatefulPartitionedCall:output:0batch_normalization_336_9608908batch_normalization_336_9608910batch_normalization_336_9608912batch_normalization_336_9608914*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_960814221
/batch_normalization_336/StatefulPartitionedCall?
 max_pooling2d_74/PartitionedCallPartitionedCall8batch_normalization_336/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_96081562"
 max_pooling2d_74/PartitionedCall?
flatten_32/PartitionedCallPartitionedCall)max_pooling2d_74/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_32_layer_call_and_return_conditional_losses_96081642
flatten_32/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_32/PartitionedCall:output:0dense_68_9608919dense_68_9608921*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_96081772"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_332/StatefulPartitionedCall0^batch_normalization_333/StatefulPartitionedCall0^batch_normalization_334/StatefulPartitionedCall0^batch_normalization_335/StatefulPartitionedCall0^batch_normalization_336/StatefulPartitionedCall#^conv2d_420/StatefulPartitionedCall#^conv2d_421/StatefulPartitionedCall#^conv2d_422/StatefulPartitionedCall#^conv2d_423/StatefulPartitionedCall#^conv2d_424/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_332/StatefulPartitionedCall/batch_normalization_332/StatefulPartitionedCall2b
/batch_normalization_333/StatefulPartitionedCall/batch_normalization_333/StatefulPartitionedCall2b
/batch_normalization_334/StatefulPartitionedCall/batch_normalization_334/StatefulPartitionedCall2b
/batch_normalization_335/StatefulPartitionedCall/batch_normalization_335/StatefulPartitionedCall2b
/batch_normalization_336/StatefulPartitionedCall/batch_normalization_336/StatefulPartitionedCall2H
"conv2d_420/StatefulPartitionedCall"conv2d_420/StatefulPartitionedCall2H
"conv2d_421/StatefulPartitionedCall"conv2d_421/StatefulPartitionedCall2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2H
"conv2d_423/StatefulPartitionedCall"conv2d_423/StatefulPartitionedCall2H
"conv2d_424/StatefulPartitionedCall"conv2d_424/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_420_input
?	
?
9__inference_batch_normalization_332_layer_call_fn_9609581

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_96072832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_336_layer_call_fn_9610197

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
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_96078312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_334_layer_call_fn_9609922

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_96080542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9608054

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_423_layer_call_and_return_conditional_losses_9608075

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_420_layer_call_fn_9609483

inputs!
unknown:`
	unknown_0:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_420_layer_call_and_return_conditional_losses_96079312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????[`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9608531

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????[`2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????[`: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????[`
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9607283

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_336_layer_call_fn_9610184

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
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_96077872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_422_layer_call_fn_9609811

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_422_layer_call_and_return_conditional_losses_96080312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv2d_420_inputC
"serving_default_conv2d_420_input:0???????????<
dense_680
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer_with_weights-9
layer-11
layer-12
layer-13
layer_with_weights-10
layer-14
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_sequential
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
axis
	gamma
beta
moving_mean
 moving_variance
!regularization_losses
"	variables
#trainable_variables
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
%regularization_losses
&	variables
'trainable_variables
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

)kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4regularization_losses
5	variables
6trainable_variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
8regularization_losses
9	variables
:trainable_variables
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Kkernel
Lbias
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Zkernel
[bias
\regularization_losses
]	variables
^trainable_variables
_	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
eregularization_losses
f	variables
gtrainable_variables
h	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
mregularization_losses
n	variables
otrainable_variables
p	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

qkernel
rbias
sregularization_losses
t	variables
utrainable_variables
v	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
I
witer
	xdecay
ylearning_rate
zmomentum"
	optimizer
 "
trackable_list_wrapper
?
0
1
2
3
4
 5
)6
*7
08
19
210
311
<12
=13
C14
D15
E16
F17
K18
L19
R20
S21
T22
U23
Z24
[25
a26
b27
c28
d29
q30
r31"
trackable_list_wrapper
?
0
1
2
3
)4
*5
06
17
<8
=9
C10
D11
K12
L13
R14
S15
Z16
[17
a18
b19
q20
r21"
trackable_list_wrapper
?
{non_trainable_variables
|metrics
}layer_regularization_losses
regularization_losses
	variables
trainable_variables

~layers
layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)`2conv2d_420/kernel
:`2conv2d_420/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
regularization_losses
	variables
trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)`2batch_normalization_332/gamma
*:(`2batch_normalization_332/beta
3:1` (2#batch_normalization_332/moving_mean
7:5` (2'batch_normalization_332/moving_variance
 "
trackable_list_wrapper
<
0
1
2
 3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
!regularization_losses
"	variables
#trainable_variables
?layers
?layer_metrics
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
?non_trainable_variables
?metrics
 ?layer_regularization_losses
%regularization_losses
&	variables
'trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*`?2conv2d_421/kernel
:?2conv2d_421/bias
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
+regularization_losses
,	variables
-trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_333/gamma
+:)?2batch_normalization_333/beta
4:2? (2#batch_normalization_333/moving_mean
8:6? (2'batch_normalization_333/moving_variance
 "
trackable_list_wrapper
<
00
11
22
33"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
4regularization_losses
5	variables
6trainable_variables
?layers
?layer_metrics
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
?non_trainable_variables
?metrics
 ?layer_regularization_losses
8regularization_losses
9	variables
:trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_422/kernel
:?2conv2d_422/bias
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
>regularization_losses
?	variables
@trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_334/gamma
+:)?2batch_normalization_334/beta
4:2? (2#batch_normalization_334/moving_mean
8:6? (2'batch_normalization_334/moving_variance
 "
trackable_list_wrapper
<
C0
D1
E2
F3"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
Gregularization_losses
H	variables
Itrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_423/kernel
:?2conv2d_423/bias
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
Mregularization_losses
N	variables
Otrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_335/gamma
+:)?2batch_normalization_335/beta
4:2? (2#batch_normalization_335/moving_mean
8:6? (2'batch_normalization_335/moving_variance
 "
trackable_list_wrapper
<
R0
S1
T2
U3"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
Vregularization_losses
W	variables
Xtrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_424/kernel
:?2conv2d_424/bias
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
\regularization_losses
]	variables
^trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_336/gamma
+:)?2batch_normalization_336/beta
4:2? (2#batch_normalization_336/moving_mean
8:6? (2'batch_normalization_336/moving_variance
 "
trackable_list_wrapper
<
a0
b1
c2
d3"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
eregularization_losses
f	variables
gtrainable_variables
?layers
?layer_metrics
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
?non_trainable_variables
?metrics
 ?layer_regularization_losses
iregularization_losses
j	variables
ktrainable_variables
?layers
?layer_metrics
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
?non_trainable_variables
?metrics
 ?layer_regularization_losses
mregularization_losses
n	variables
otrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?(2dense_68/kernel
:2dense_68/bias
 "
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
 ?layer_regularization_losses
sregularization_losses
t	variables
utrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
f
0
 1
22
33
E4
F5
T6
U7
c8
d9"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
13
14"
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
0
 1"
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
20
31"
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
E0
F1"
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
T0
U1"
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
c0
d1"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9609204
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9609325
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9608925
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9609008?
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
?B?
"__inference__wrapped_model_9607217conv2d_420_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_alex_net_12_layer_call_fn_9608251
-__inference_alex_net_12_layer_call_fn_9609394
-__inference_alex_net_12_layer_call_fn_9609463
-__inference_alex_net_12_layer_call_fn_9608842?
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
G__inference_conv2d_420_layer_call_and_return_conditional_losses_9609474?
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
,__inference_conv2d_420_layer_call_fn_9609483?
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
?2?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609501
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609519
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609537
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609555?
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
?2?
9__inference_batch_normalization_332_layer_call_fn_9609568
9__inference_batch_normalization_332_layer_call_fn_9609581
9__inference_batch_normalization_332_layer_call_fn_9609594
9__inference_batch_normalization_332_layer_call_fn_9609607?
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
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_9609612
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_9609617?
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
2__inference_max_pooling2d_72_layer_call_fn_9609622
2__inference_max_pooling2d_72_layer_call_fn_9609627?
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
G__inference_conv2d_421_layer_call_and_return_conditional_losses_9609638?
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
,__inference_conv2d_421_layer_call_fn_9609647?
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
?2?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609665
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609683
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609701
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609719?
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
?2?
9__inference_batch_normalization_333_layer_call_fn_9609732
9__inference_batch_normalization_333_layer_call_fn_9609745
9__inference_batch_normalization_333_layer_call_fn_9609758
9__inference_batch_normalization_333_layer_call_fn_9609771?
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
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_9609776
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_9609781?
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
2__inference_max_pooling2d_73_layer_call_fn_9609786
2__inference_max_pooling2d_73_layer_call_fn_9609791?
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
G__inference_conv2d_422_layer_call_and_return_conditional_losses_9609802?
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
,__inference_conv2d_422_layer_call_fn_9609811?
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
?2?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609829
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609847
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609865
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609883?
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
?2?
9__inference_batch_normalization_334_layer_call_fn_9609896
9__inference_batch_normalization_334_layer_call_fn_9609909
9__inference_batch_normalization_334_layer_call_fn_9609922
9__inference_batch_normalization_334_layer_call_fn_9609935?
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
?2?
G__inference_conv2d_423_layer_call_and_return_conditional_losses_9609946?
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
,__inference_conv2d_423_layer_call_fn_9609955?
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
?2?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9609973
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9609991
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9610009
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9610027?
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
?2?
9__inference_batch_normalization_335_layer_call_fn_9610040
9__inference_batch_normalization_335_layer_call_fn_9610053
9__inference_batch_normalization_335_layer_call_fn_9610066
9__inference_batch_normalization_335_layer_call_fn_9610079?
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
?2?
G__inference_conv2d_424_layer_call_and_return_conditional_losses_9610090?
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
,__inference_conv2d_424_layer_call_fn_9610099?
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
?2?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610117
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610135
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610153
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610171?
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
?2?
9__inference_batch_normalization_336_layer_call_fn_9610184
9__inference_batch_normalization_336_layer_call_fn_9610197
9__inference_batch_normalization_336_layer_call_fn_9610210
9__inference_batch_normalization_336_layer_call_fn_9610223?
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
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_9610228
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_9610233?
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
2__inference_max_pooling2d_74_layer_call_fn_9610238
2__inference_max_pooling2d_74_layer_call_fn_9610243?
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
G__inference_flatten_32_layer_call_and_return_conditional_losses_9610249?
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
,__inference_flatten_32_layer_call_fn_9610254?
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
E__inference_dense_68_layer_call_and_return_conditional_losses_9610265?
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
*__inference_dense_68_layer_call_fn_9610274?
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
?B?
%__inference_signature_wrapper_9609083conv2d_420_input"?
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
"__inference__wrapped_model_9607217?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_420_input???????????
? "3?0
.
dense_68"?
dense_68??????????
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9608925?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_420_input???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9609008?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_420_input???????????
p

 
? "%?"
?
0?????????
? ?
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9609204?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_alex_net_12_layer_call_and_return_conditional_losses_9609325?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
-__inference_alex_net_12_layer_call_fn_9608251?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_420_input???????????
p 

 
? "???????????
-__inference_alex_net_12_layer_call_fn_9608842?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_420_input???????????
p

 
? "???????????
-__inference_alex_net_12_layer_call_fn_9609394  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
-__inference_alex_net_12_layer_call_fn_9609463  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609501? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609519? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609537r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_332_layer_call_and_return_conditional_losses_9609555r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_332_layer_call_fn_9609568? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_332_layer_call_fn_9609581? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_332_layer_call_fn_9609594e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_332_layer_call_fn_9609607e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609665?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609683?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609701t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_333_layer_call_and_return_conditional_losses_9609719t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_333_layer_call_fn_9609732?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_333_layer_call_fn_9609745?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_333_layer_call_fn_9609758g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_333_layer_call_fn_9609771g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609829?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609847?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609865tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_334_layer_call_and_return_conditional_losses_9609883tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_334_layer_call_fn_9609896?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_334_layer_call_fn_9609909?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_334_layer_call_fn_9609922gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_334_layer_call_fn_9609935gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9609973?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9609991?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9610009tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_335_layer_call_and_return_conditional_losses_9610027tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_335_layer_call_fn_9610040?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_335_layer_call_fn_9610053?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_335_layer_call_fn_9610066gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_335_layer_call_fn_9610079gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610117?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610135?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610153tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_336_layer_call_and_return_conditional_losses_9610171tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_336_layer_call_fn_9610184?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_336_layer_call_fn_9610197?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_336_layer_call_fn_9610210gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_336_layer_call_fn_9610223gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_420_layer_call_and_return_conditional_losses_9609474n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_420_layer_call_fn_9609483a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_421_layer_call_and_return_conditional_losses_9609638m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_421_layer_call_fn_9609647`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_422_layer_call_and_return_conditional_losses_9609802n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_422_layer_call_fn_9609811a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_423_layer_call_and_return_conditional_losses_9609946nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_423_layer_call_fn_9609955aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_424_layer_call_and_return_conditional_losses_9610090nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_424_layer_call_fn_9610099aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_68_layer_call_and_return_conditional_losses_9610265]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_68_layer_call_fn_9610274Pqr0?-
&?#
!?
inputs??????????(
? "???????????
G__inference_flatten_32_layer_call_and_return_conditional_losses_9610249b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
,__inference_flatten_32_layer_call_fn_9610254U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_9609612?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_72_layer_call_and_return_conditional_losses_9609617h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_72_layer_call_fn_9609622?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_72_layer_call_fn_9609627[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_9609776?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_73_layer_call_and_return_conditional_losses_9609781j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_73_layer_call_fn_9609786?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_73_layer_call_fn_9609791]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_9610228?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_9610233j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_74_layer_call_fn_9610238?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_74_layer_call_fn_9610243]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_9609083?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_420_input4?1
conv2d_420_input???????????"3?0
.
dense_68"?
dense_68?????????