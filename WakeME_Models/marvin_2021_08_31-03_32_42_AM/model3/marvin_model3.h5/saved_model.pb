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
conv2d_393/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_393/kernel

%conv2d_393/kernel/Read/ReadVariableOpReadVariableOpconv2d_393/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_393/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_393/bias
o
#conv2d_393/bias/Read/ReadVariableOpReadVariableOpconv2d_393/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_310/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_310/gamma
?
1batch_normalization_310/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_310/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_310/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_310/beta
?
0batch_normalization_310/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_310/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_310/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_310/moving_mean
?
7batch_normalization_310/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_310/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_310/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_310/moving_variance
?
;batch_normalization_310/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_310/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_394/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_394/kernel
?
%conv2d_394/kernel/Read/ReadVariableOpReadVariableOpconv2d_394/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_394/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_394/bias
p
#conv2d_394/bias/Read/ReadVariableOpReadVariableOpconv2d_394/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_311/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_311/gamma
?
1batch_normalization_311/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_311/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_311/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_311/beta
?
0batch_normalization_311/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_311/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_311/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_311/moving_mean
?
7batch_normalization_311/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_311/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_311/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_311/moving_variance
?
;batch_normalization_311/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_311/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_395/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_395/kernel
?
%conv2d_395/kernel/Read/ReadVariableOpReadVariableOpconv2d_395/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_395/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_395/bias
p
#conv2d_395/bias/Read/ReadVariableOpReadVariableOpconv2d_395/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_312/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_312/gamma
?
1batch_normalization_312/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_312/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_312/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_312/beta
?
0batch_normalization_312/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_312/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_312/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_312/moving_mean
?
7batch_normalization_312/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_312/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_312/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_312/moving_variance
?
;batch_normalization_312/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_312/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_396/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_396/kernel
?
%conv2d_396/kernel/Read/ReadVariableOpReadVariableOpconv2d_396/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_396/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_396/bias
p
#conv2d_396/bias/Read/ReadVariableOpReadVariableOpconv2d_396/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_313/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_313/gamma
?
1batch_normalization_313/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_313/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_313/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_313/beta
?
0batch_normalization_313/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_313/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_313/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_313/moving_mean
?
7batch_normalization_313/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_313/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_313/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_313/moving_variance
?
;batch_normalization_313/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_313/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_397/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_397/kernel
?
%conv2d_397/kernel/Read/ReadVariableOpReadVariableOpconv2d_397/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_397/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_397/bias
p
#conv2d_397/bias/Read/ReadVariableOpReadVariableOpconv2d_397/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_314/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_314/gamma
?
1batch_normalization_314/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_314/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_314/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_314/beta
?
0batch_normalization_314/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_314/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_314/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_314/moving_mean
?
7batch_normalization_314/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_314/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_314/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_314/moving_variance
?
;batch_normalization_314/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_314/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_64/kernel
t
#dense_64/kernel/Read/ReadVariableOpReadVariableOpdense_64/kernel*
_output_shapes
:	?(*
dtype0
r
dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_64/bias
k
!dense_64/bias/Read/ReadVariableOpReadVariableOpdense_64/bias*
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
VARIABLE_VALUEconv2d_393/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_393/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_310/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_310/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_310/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_310/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_394/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_394/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_311/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_311/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_311/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_311/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_395/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_395/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_312/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_312/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_312/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_312/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_396/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_396/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_313/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_313/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_313/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_313/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_397/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_397/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_314/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_314/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_314/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_314/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_64/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_64/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_393_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_393_inputconv2d_393/kernelconv2d_393/biasbatch_normalization_310/gammabatch_normalization_310/beta#batch_normalization_310/moving_mean'batch_normalization_310/moving_varianceconv2d_394/kernelconv2d_394/biasbatch_normalization_311/gammabatch_normalization_311/beta#batch_normalization_311/moving_mean'batch_normalization_311/moving_varianceconv2d_395/kernelconv2d_395/biasbatch_normalization_312/gammabatch_normalization_312/beta#batch_normalization_312/moving_mean'batch_normalization_312/moving_varianceconv2d_396/kernelconv2d_396/biasbatch_normalization_313/gammabatch_normalization_313/beta#batch_normalization_313/moving_mean'batch_normalization_313/moving_varianceconv2d_397/kernelconv2d_397/biasbatch_normalization_314/gammabatch_normalization_314/beta#batch_normalization_314/moving_mean'batch_normalization_314/moving_variancedense_64/kerneldense_64/bias*,
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
%__inference_signature_wrapper_8388971
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_393/kernel/Read/ReadVariableOp#conv2d_393/bias/Read/ReadVariableOp1batch_normalization_310/gamma/Read/ReadVariableOp0batch_normalization_310/beta/Read/ReadVariableOp7batch_normalization_310/moving_mean/Read/ReadVariableOp;batch_normalization_310/moving_variance/Read/ReadVariableOp%conv2d_394/kernel/Read/ReadVariableOp#conv2d_394/bias/Read/ReadVariableOp1batch_normalization_311/gamma/Read/ReadVariableOp0batch_normalization_311/beta/Read/ReadVariableOp7batch_normalization_311/moving_mean/Read/ReadVariableOp;batch_normalization_311/moving_variance/Read/ReadVariableOp%conv2d_395/kernel/Read/ReadVariableOp#conv2d_395/bias/Read/ReadVariableOp1batch_normalization_312/gamma/Read/ReadVariableOp0batch_normalization_312/beta/Read/ReadVariableOp7batch_normalization_312/moving_mean/Read/ReadVariableOp;batch_normalization_312/moving_variance/Read/ReadVariableOp%conv2d_396/kernel/Read/ReadVariableOp#conv2d_396/bias/Read/ReadVariableOp1batch_normalization_313/gamma/Read/ReadVariableOp0batch_normalization_313/beta/Read/ReadVariableOp7batch_normalization_313/moving_mean/Read/ReadVariableOp;batch_normalization_313/moving_variance/Read/ReadVariableOp%conv2d_397/kernel/Read/ReadVariableOp#conv2d_397/bias/Read/ReadVariableOp1batch_normalization_314/gamma/Read/ReadVariableOp0batch_normalization_314/beta/Read/ReadVariableOp7batch_normalization_314/moving_mean/Read/ReadVariableOp;batch_normalization_314/moving_variance/Read/ReadVariableOp#dense_64/kernel/Read/ReadVariableOp!dense_64/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_8390305
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_393/kernelconv2d_393/biasbatch_normalization_310/gammabatch_normalization_310/beta#batch_normalization_310/moving_mean'batch_normalization_310/moving_varianceconv2d_394/kernelconv2d_394/biasbatch_normalization_311/gammabatch_normalization_311/beta#batch_normalization_311/moving_mean'batch_normalization_311/moving_varianceconv2d_395/kernelconv2d_395/biasbatch_normalization_312/gammabatch_normalization_312/beta#batch_normalization_312/moving_mean'batch_normalization_312/moving_varianceconv2d_396/kernelconv2d_396/biasbatch_normalization_313/gammabatch_normalization_313/beta#batch_normalization_313/moving_mean'batch_normalization_313/moving_varianceconv2d_397/kernelconv2d_397/biasbatch_normalization_314/gammabatch_normalization_314/beta#batch_normalization_314/moving_mean'batch_normalization_314/moving_variancedense_64/kerneldense_64/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_8390435??
?
i
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_8387388

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
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_8389500

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
9__inference_batch_normalization_312_layer_call_fn_8389797

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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_83874672
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
c
G__inference_flatten_30_layer_call_and_return_conditional_losses_8388052

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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389553

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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389753

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
G__inference_conv2d_394_layer_call_and_return_conditional_losses_8389526

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
?
N
2__inference_max_pooling2d_69_layer_call_fn_8390131

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
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_83880442
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
?
?
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390005

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
??
?#
"__inference__wrapped_model_8387105
conv2d_393_inputO
5alex_net_11_conv2d_393_conv2d_readvariableop_resource:`D
6alex_net_11_conv2d_393_biasadd_readvariableop_resource:`I
;alex_net_11_batch_normalization_310_readvariableop_resource:`K
=alex_net_11_batch_normalization_310_readvariableop_1_resource:`Z
Lalex_net_11_batch_normalization_310_fusedbatchnormv3_readvariableop_resource:`\
Nalex_net_11_batch_normalization_310_fusedbatchnormv3_readvariableop_1_resource:`P
5alex_net_11_conv2d_394_conv2d_readvariableop_resource:`?E
6alex_net_11_conv2d_394_biasadd_readvariableop_resource:	?J
;alex_net_11_batch_normalization_311_readvariableop_resource:	?L
=alex_net_11_batch_normalization_311_readvariableop_1_resource:	?[
Lalex_net_11_batch_normalization_311_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_11_batch_normalization_311_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_11_conv2d_395_conv2d_readvariableop_resource:??E
6alex_net_11_conv2d_395_biasadd_readvariableop_resource:	?J
;alex_net_11_batch_normalization_312_readvariableop_resource:	?L
=alex_net_11_batch_normalization_312_readvariableop_1_resource:	?[
Lalex_net_11_batch_normalization_312_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_11_batch_normalization_312_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_11_conv2d_396_conv2d_readvariableop_resource:??E
6alex_net_11_conv2d_396_biasadd_readvariableop_resource:	?J
;alex_net_11_batch_normalization_313_readvariableop_resource:	?L
=alex_net_11_batch_normalization_313_readvariableop_1_resource:	?[
Lalex_net_11_batch_normalization_313_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_11_batch_normalization_313_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_11_conv2d_397_conv2d_readvariableop_resource:??E
6alex_net_11_conv2d_397_biasadd_readvariableop_resource:	?J
;alex_net_11_batch_normalization_314_readvariableop_resource:	?L
=alex_net_11_batch_normalization_314_readvariableop_1_resource:	?[
Lalex_net_11_batch_normalization_314_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_11_batch_normalization_314_fusedbatchnormv3_readvariableop_1_resource:	?F
3alex_net_11_dense_64_matmul_readvariableop_resource:	?(B
4alex_net_11_dense_64_biasadd_readvariableop_resource:
identity??Calex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp?Ealex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1?2alex_net_11/batch_normalization_310/ReadVariableOp?4alex_net_11/batch_normalization_310/ReadVariableOp_1?Calex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp?Ealex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1?2alex_net_11/batch_normalization_311/ReadVariableOp?4alex_net_11/batch_normalization_311/ReadVariableOp_1?Calex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp?Ealex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1?2alex_net_11/batch_normalization_312/ReadVariableOp?4alex_net_11/batch_normalization_312/ReadVariableOp_1?Calex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp?Ealex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1?2alex_net_11/batch_normalization_313/ReadVariableOp?4alex_net_11/batch_normalization_313/ReadVariableOp_1?Calex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp?Ealex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1?2alex_net_11/batch_normalization_314/ReadVariableOp?4alex_net_11/batch_normalization_314/ReadVariableOp_1?-alex_net_11/conv2d_393/BiasAdd/ReadVariableOp?,alex_net_11/conv2d_393/Conv2D/ReadVariableOp?-alex_net_11/conv2d_394/BiasAdd/ReadVariableOp?,alex_net_11/conv2d_394/Conv2D/ReadVariableOp?-alex_net_11/conv2d_395/BiasAdd/ReadVariableOp?,alex_net_11/conv2d_395/Conv2D/ReadVariableOp?-alex_net_11/conv2d_396/BiasAdd/ReadVariableOp?,alex_net_11/conv2d_396/Conv2D/ReadVariableOp?-alex_net_11/conv2d_397/BiasAdd/ReadVariableOp?,alex_net_11/conv2d_397/Conv2D/ReadVariableOp?+alex_net_11/dense_64/BiasAdd/ReadVariableOp?*alex_net_11/dense_64/MatMul/ReadVariableOp?
,alex_net_11/conv2d_393/Conv2D/ReadVariableOpReadVariableOp5alex_net_11_conv2d_393_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02.
,alex_net_11/conv2d_393/Conv2D/ReadVariableOp?
alex_net_11/conv2d_393/Conv2DConv2Dconv2d_393_input4alex_net_11/conv2d_393/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_11/conv2d_393/Conv2D?
-alex_net_11/conv2d_393/BiasAdd/ReadVariableOpReadVariableOp6alex_net_11_conv2d_393_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02/
-alex_net_11/conv2d_393/BiasAdd/ReadVariableOp?
alex_net_11/conv2d_393/BiasAddBiasAdd&alex_net_11/conv2d_393/Conv2D:output:05alex_net_11/conv2d_393/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2 
alex_net_11/conv2d_393/BiasAdd?
alex_net_11/conv2d_393/ReluRelu'alex_net_11/conv2d_393/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_11/conv2d_393/Relu?
2alex_net_11/batch_normalization_310/ReadVariableOpReadVariableOp;alex_net_11_batch_normalization_310_readvariableop_resource*
_output_shapes
:`*
dtype024
2alex_net_11/batch_normalization_310/ReadVariableOp?
4alex_net_11/batch_normalization_310/ReadVariableOp_1ReadVariableOp=alex_net_11_batch_normalization_310_readvariableop_1_resource*
_output_shapes
:`*
dtype026
4alex_net_11/batch_normalization_310/ReadVariableOp_1?
Calex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_11_batch_normalization_310_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02E
Calex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp?
Ealex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_11_batch_normalization_310_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02G
Ealex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_11/batch_normalization_310/FusedBatchNormV3FusedBatchNormV3)alex_net_11/conv2d_393/Relu:activations:0:alex_net_11/batch_normalization_310/ReadVariableOp:value:0<alex_net_11/batch_normalization_310/ReadVariableOp_1:value:0Kalex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 26
4alex_net_11/batch_normalization_310/FusedBatchNormV3?
$alex_net_11/max_pooling2d_67/MaxPoolMaxPool8alex_net_11/batch_normalization_310/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2&
$alex_net_11/max_pooling2d_67/MaxPool?
,alex_net_11/conv2d_394/Conv2D/ReadVariableOpReadVariableOp5alex_net_11_conv2d_394_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02.
,alex_net_11/conv2d_394/Conv2D/ReadVariableOp?
alex_net_11/conv2d_394/Conv2DConv2D-alex_net_11/max_pooling2d_67/MaxPool:output:04alex_net_11/conv2d_394/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_11/conv2d_394/Conv2D?
-alex_net_11/conv2d_394/BiasAdd/ReadVariableOpReadVariableOp6alex_net_11_conv2d_394_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_11/conv2d_394/BiasAdd/ReadVariableOp?
alex_net_11/conv2d_394/BiasAddBiasAdd&alex_net_11/conv2d_394/Conv2D:output:05alex_net_11/conv2d_394/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2 
alex_net_11/conv2d_394/BiasAdd?
alex_net_11/conv2d_394/ReluRelu'alex_net_11/conv2d_394/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_11/conv2d_394/Relu?
2alex_net_11/batch_normalization_311/ReadVariableOpReadVariableOp;alex_net_11_batch_normalization_311_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_11/batch_normalization_311/ReadVariableOp?
4alex_net_11/batch_normalization_311/ReadVariableOp_1ReadVariableOp=alex_net_11_batch_normalization_311_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_11/batch_normalization_311/ReadVariableOp_1?
Calex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_11_batch_normalization_311_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp?
Ealex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_11_batch_normalization_311_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_11/batch_normalization_311/FusedBatchNormV3FusedBatchNormV3)alex_net_11/conv2d_394/Relu:activations:0:alex_net_11/batch_normalization_311/ReadVariableOp:value:0<alex_net_11/batch_normalization_311/ReadVariableOp_1:value:0Kalex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_11/batch_normalization_311/FusedBatchNormV3?
$alex_net_11/max_pooling2d_68/MaxPoolMaxPool8alex_net_11/batch_normalization_311/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2&
$alex_net_11/max_pooling2d_68/MaxPool?
,alex_net_11/conv2d_395/Conv2D/ReadVariableOpReadVariableOp5alex_net_11_conv2d_395_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_11/conv2d_395/Conv2D/ReadVariableOp?
alex_net_11/conv2d_395/Conv2DConv2D-alex_net_11/max_pooling2d_68/MaxPool:output:04alex_net_11/conv2d_395/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_11/conv2d_395/Conv2D?
-alex_net_11/conv2d_395/BiasAdd/ReadVariableOpReadVariableOp6alex_net_11_conv2d_395_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_11/conv2d_395/BiasAdd/ReadVariableOp?
alex_net_11/conv2d_395/BiasAddBiasAdd&alex_net_11/conv2d_395/Conv2D:output:05alex_net_11/conv2d_395/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_11/conv2d_395/BiasAdd?
alex_net_11/conv2d_395/ReluRelu'alex_net_11/conv2d_395/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_11/conv2d_395/Relu?
2alex_net_11/batch_normalization_312/ReadVariableOpReadVariableOp;alex_net_11_batch_normalization_312_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_11/batch_normalization_312/ReadVariableOp?
4alex_net_11/batch_normalization_312/ReadVariableOp_1ReadVariableOp=alex_net_11_batch_normalization_312_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_11/batch_normalization_312/ReadVariableOp_1?
Calex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_11_batch_normalization_312_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp?
Ealex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_11_batch_normalization_312_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_11/batch_normalization_312/FusedBatchNormV3FusedBatchNormV3)alex_net_11/conv2d_395/Relu:activations:0:alex_net_11/batch_normalization_312/ReadVariableOp:value:0<alex_net_11/batch_normalization_312/ReadVariableOp_1:value:0Kalex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_11/batch_normalization_312/FusedBatchNormV3?
,alex_net_11/conv2d_396/Conv2D/ReadVariableOpReadVariableOp5alex_net_11_conv2d_396_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_11/conv2d_396/Conv2D/ReadVariableOp?
alex_net_11/conv2d_396/Conv2DConv2D8alex_net_11/batch_normalization_312/FusedBatchNormV3:y:04alex_net_11/conv2d_396/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_11/conv2d_396/Conv2D?
-alex_net_11/conv2d_396/BiasAdd/ReadVariableOpReadVariableOp6alex_net_11_conv2d_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_11/conv2d_396/BiasAdd/ReadVariableOp?
alex_net_11/conv2d_396/BiasAddBiasAdd&alex_net_11/conv2d_396/Conv2D:output:05alex_net_11/conv2d_396/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_11/conv2d_396/BiasAdd?
alex_net_11/conv2d_396/ReluRelu'alex_net_11/conv2d_396/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_11/conv2d_396/Relu?
2alex_net_11/batch_normalization_313/ReadVariableOpReadVariableOp;alex_net_11_batch_normalization_313_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_11/batch_normalization_313/ReadVariableOp?
4alex_net_11/batch_normalization_313/ReadVariableOp_1ReadVariableOp=alex_net_11_batch_normalization_313_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_11/batch_normalization_313/ReadVariableOp_1?
Calex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_11_batch_normalization_313_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp?
Ealex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_11_batch_normalization_313_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_11/batch_normalization_313/FusedBatchNormV3FusedBatchNormV3)alex_net_11/conv2d_396/Relu:activations:0:alex_net_11/batch_normalization_313/ReadVariableOp:value:0<alex_net_11/batch_normalization_313/ReadVariableOp_1:value:0Kalex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_11/batch_normalization_313/FusedBatchNormV3?
,alex_net_11/conv2d_397/Conv2D/ReadVariableOpReadVariableOp5alex_net_11_conv2d_397_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_11/conv2d_397/Conv2D/ReadVariableOp?
alex_net_11/conv2d_397/Conv2DConv2D8alex_net_11/batch_normalization_313/FusedBatchNormV3:y:04alex_net_11/conv2d_397/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_11/conv2d_397/Conv2D?
-alex_net_11/conv2d_397/BiasAdd/ReadVariableOpReadVariableOp6alex_net_11_conv2d_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_11/conv2d_397/BiasAdd/ReadVariableOp?
alex_net_11/conv2d_397/BiasAddBiasAdd&alex_net_11/conv2d_397/Conv2D:output:05alex_net_11/conv2d_397/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_11/conv2d_397/BiasAdd?
alex_net_11/conv2d_397/ReluRelu'alex_net_11/conv2d_397/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_11/conv2d_397/Relu?
2alex_net_11/batch_normalization_314/ReadVariableOpReadVariableOp;alex_net_11_batch_normalization_314_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_11/batch_normalization_314/ReadVariableOp?
4alex_net_11/batch_normalization_314/ReadVariableOp_1ReadVariableOp=alex_net_11_batch_normalization_314_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_11/batch_normalization_314/ReadVariableOp_1?
Calex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_11_batch_normalization_314_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp?
Ealex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_11_batch_normalization_314_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_11/batch_normalization_314/FusedBatchNormV3FusedBatchNormV3)alex_net_11/conv2d_397/Relu:activations:0:alex_net_11/batch_normalization_314/ReadVariableOp:value:0<alex_net_11/batch_normalization_314/ReadVariableOp_1:value:0Kalex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_11/batch_normalization_314/FusedBatchNormV3?
$alex_net_11/max_pooling2d_69/MaxPoolMaxPool8alex_net_11/batch_normalization_314/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2&
$alex_net_11/max_pooling2d_69/MaxPool?
alex_net_11/flatten_30/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_11/flatten_30/Const?
alex_net_11/flatten_30/ReshapeReshape-alex_net_11/max_pooling2d_69/MaxPool:output:0%alex_net_11/flatten_30/Const:output:0*
T0*(
_output_shapes
:??????????(2 
alex_net_11/flatten_30/Reshape?
*alex_net_11/dense_64/MatMul/ReadVariableOpReadVariableOp3alex_net_11_dense_64_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02,
*alex_net_11/dense_64/MatMul/ReadVariableOp?
alex_net_11/dense_64/MatMulMatMul'alex_net_11/flatten_30/Reshape:output:02alex_net_11/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_11/dense_64/MatMul?
+alex_net_11/dense_64/BiasAdd/ReadVariableOpReadVariableOp4alex_net_11_dense_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+alex_net_11/dense_64/BiasAdd/ReadVariableOp?
alex_net_11/dense_64/BiasAddBiasAdd%alex_net_11/dense_64/MatMul:product:03alex_net_11/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_11/dense_64/BiasAdd?
alex_net_11/dense_64/SigmoidSigmoid%alex_net_11/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_11/dense_64/Sigmoid{
IdentityIdentity alex_net_11/dense_64/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpD^alex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOpF^alex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp_13^alex_net_11/batch_normalization_310/ReadVariableOp5^alex_net_11/batch_normalization_310/ReadVariableOp_1D^alex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOpF^alex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp_13^alex_net_11/batch_normalization_311/ReadVariableOp5^alex_net_11/batch_normalization_311/ReadVariableOp_1D^alex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOpF^alex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp_13^alex_net_11/batch_normalization_312/ReadVariableOp5^alex_net_11/batch_normalization_312/ReadVariableOp_1D^alex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOpF^alex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp_13^alex_net_11/batch_normalization_313/ReadVariableOp5^alex_net_11/batch_normalization_313/ReadVariableOp_1D^alex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOpF^alex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp_13^alex_net_11/batch_normalization_314/ReadVariableOp5^alex_net_11/batch_normalization_314/ReadVariableOp_1.^alex_net_11/conv2d_393/BiasAdd/ReadVariableOp-^alex_net_11/conv2d_393/Conv2D/ReadVariableOp.^alex_net_11/conv2d_394/BiasAdd/ReadVariableOp-^alex_net_11/conv2d_394/Conv2D/ReadVariableOp.^alex_net_11/conv2d_395/BiasAdd/ReadVariableOp-^alex_net_11/conv2d_395/Conv2D/ReadVariableOp.^alex_net_11/conv2d_396/BiasAdd/ReadVariableOp-^alex_net_11/conv2d_396/Conv2D/ReadVariableOp.^alex_net_11/conv2d_397/BiasAdd/ReadVariableOp-^alex_net_11/conv2d_397/Conv2D/ReadVariableOp,^alex_net_11/dense_64/BiasAdd/ReadVariableOp+^alex_net_11/dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Calex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOpCalex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1Ealex_net_11/batch_normalization_310/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_11/batch_normalization_310/ReadVariableOp2alex_net_11/batch_normalization_310/ReadVariableOp2l
4alex_net_11/batch_normalization_310/ReadVariableOp_14alex_net_11/batch_normalization_310/ReadVariableOp_12?
Calex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOpCalex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1Ealex_net_11/batch_normalization_311/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_11/batch_normalization_311/ReadVariableOp2alex_net_11/batch_normalization_311/ReadVariableOp2l
4alex_net_11/batch_normalization_311/ReadVariableOp_14alex_net_11/batch_normalization_311/ReadVariableOp_12?
Calex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOpCalex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1Ealex_net_11/batch_normalization_312/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_11/batch_normalization_312/ReadVariableOp2alex_net_11/batch_normalization_312/ReadVariableOp2l
4alex_net_11/batch_normalization_312/ReadVariableOp_14alex_net_11/batch_normalization_312/ReadVariableOp_12?
Calex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOpCalex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1Ealex_net_11/batch_normalization_313/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_11/batch_normalization_313/ReadVariableOp2alex_net_11/batch_normalization_313/ReadVariableOp2l
4alex_net_11/batch_normalization_313/ReadVariableOp_14alex_net_11/batch_normalization_313/ReadVariableOp_12?
Calex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOpCalex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1Ealex_net_11/batch_normalization_314/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_11/batch_normalization_314/ReadVariableOp2alex_net_11/batch_normalization_314/ReadVariableOp2l
4alex_net_11/batch_normalization_314/ReadVariableOp_14alex_net_11/batch_normalization_314/ReadVariableOp_12^
-alex_net_11/conv2d_393/BiasAdd/ReadVariableOp-alex_net_11/conv2d_393/BiasAdd/ReadVariableOp2\
,alex_net_11/conv2d_393/Conv2D/ReadVariableOp,alex_net_11/conv2d_393/Conv2D/ReadVariableOp2^
-alex_net_11/conv2d_394/BiasAdd/ReadVariableOp-alex_net_11/conv2d_394/BiasAdd/ReadVariableOp2\
,alex_net_11/conv2d_394/Conv2D/ReadVariableOp,alex_net_11/conv2d_394/Conv2D/ReadVariableOp2^
-alex_net_11/conv2d_395/BiasAdd/ReadVariableOp-alex_net_11/conv2d_395/BiasAdd/ReadVariableOp2\
,alex_net_11/conv2d_395/Conv2D/ReadVariableOp,alex_net_11/conv2d_395/Conv2D/ReadVariableOp2^
-alex_net_11/conv2d_396/BiasAdd/ReadVariableOp-alex_net_11/conv2d_396/BiasAdd/ReadVariableOp2\
,alex_net_11/conv2d_396/Conv2D/ReadVariableOp,alex_net_11/conv2d_396/Conv2D/ReadVariableOp2^
-alex_net_11/conv2d_397/BiasAdd/ReadVariableOp-alex_net_11/conv2d_397/BiasAdd/ReadVariableOp2\
,alex_net_11/conv2d_397/Conv2D/ReadVariableOp,alex_net_11/conv2d_397/Conv2D/ReadVariableOp2Z
+alex_net_11/dense_64/BiasAdd/ReadVariableOp+alex_net_11/dense_64/BiasAdd/ReadVariableOp2X
*alex_net_11/dense_64/MatMul/ReadVariableOp*alex_net_11/dense_64/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_393_input
?	
?
9__inference_batch_normalization_314_layer_call_fn_8390072

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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_83876752
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
?
i
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_8387906

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
%__inference_signature_wrapper_8388971
conv2d_393_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_393_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_83871052
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
_user_specified_nameconv2d_393_input
?
?
*__inference_dense_64_layer_call_fn_8390162

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
E__inference_dense_64_layer_call_and_return_conditional_losses_83880652
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
?
?
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389735

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
?
?
9__inference_batch_normalization_310_layer_call_fn_8389495

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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_83884192
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
?
G__inference_conv2d_395_layer_call_and_return_conditional_losses_8389690

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
?
?
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8387675

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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389771

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
?
?
G__inference_conv2d_396_layer_call_and_return_conditional_losses_8389834

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
H
,__inference_flatten_30_layer_call_fn_8390142

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
G__inference_flatten_30_layer_call_and_return_conditional_losses_83880522
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
?
?
E__inference_dense_64_layer_call_and_return_conditional_losses_8388065

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
?	
?
9__inference_batch_normalization_310_layer_call_fn_8389469

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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_83871712
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
??
?
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8389092

inputsC
)conv2d_393_conv2d_readvariableop_resource:`8
*conv2d_393_biasadd_readvariableop_resource:`=
/batch_normalization_310_readvariableop_resource:`?
1batch_normalization_310_readvariableop_1_resource:`N
@batch_normalization_310_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_310_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_394_conv2d_readvariableop_resource:`?9
*conv2d_394_biasadd_readvariableop_resource:	?>
/batch_normalization_311_readvariableop_resource:	?@
1batch_normalization_311_readvariableop_1_resource:	?O
@batch_normalization_311_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_311_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_395_conv2d_readvariableop_resource:??9
*conv2d_395_biasadd_readvariableop_resource:	?>
/batch_normalization_312_readvariableop_resource:	?@
1batch_normalization_312_readvariableop_1_resource:	?O
@batch_normalization_312_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_312_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_396_conv2d_readvariableop_resource:??9
*conv2d_396_biasadd_readvariableop_resource:	?>
/batch_normalization_313_readvariableop_resource:	?@
1batch_normalization_313_readvariableop_1_resource:	?O
@batch_normalization_313_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_313_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_397_conv2d_readvariableop_resource:??9
*conv2d_397_biasadd_readvariableop_resource:	?>
/batch_normalization_314_readvariableop_resource:	?@
1batch_normalization_314_readvariableop_1_resource:	?O
@batch_normalization_314_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_314_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_64_matmul_readvariableop_resource:	?(6
(dense_64_biasadd_readvariableop_resource:
identity??7batch_normalization_310/FusedBatchNormV3/ReadVariableOp?9batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_310/ReadVariableOp?(batch_normalization_310/ReadVariableOp_1?7batch_normalization_311/FusedBatchNormV3/ReadVariableOp?9batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_311/ReadVariableOp?(batch_normalization_311/ReadVariableOp_1?7batch_normalization_312/FusedBatchNormV3/ReadVariableOp?9batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_312/ReadVariableOp?(batch_normalization_312/ReadVariableOp_1?7batch_normalization_313/FusedBatchNormV3/ReadVariableOp?9batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_313/ReadVariableOp?(batch_normalization_313/ReadVariableOp_1?7batch_normalization_314/FusedBatchNormV3/ReadVariableOp?9batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_314/ReadVariableOp?(batch_normalization_314/ReadVariableOp_1?!conv2d_393/BiasAdd/ReadVariableOp? conv2d_393/Conv2D/ReadVariableOp?!conv2d_394/BiasAdd/ReadVariableOp? conv2d_394/Conv2D/ReadVariableOp?!conv2d_395/BiasAdd/ReadVariableOp? conv2d_395/Conv2D/ReadVariableOp?!conv2d_396/BiasAdd/ReadVariableOp? conv2d_396/Conv2D/ReadVariableOp?!conv2d_397/BiasAdd/ReadVariableOp? conv2d_397/Conv2D/ReadVariableOp?dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?
 conv2d_393/Conv2D/ReadVariableOpReadVariableOp)conv2d_393_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_393/Conv2D/ReadVariableOp?
conv2d_393/Conv2DConv2Dinputs(conv2d_393/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_393/Conv2D?
!conv2d_393/BiasAdd/ReadVariableOpReadVariableOp*conv2d_393_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_393/BiasAdd/ReadVariableOp?
conv2d_393/BiasAddBiasAddconv2d_393/Conv2D:output:0)conv2d_393/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_393/BiasAdd?
conv2d_393/ReluReluconv2d_393/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_393/Relu?
&batch_normalization_310/ReadVariableOpReadVariableOp/batch_normalization_310_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_310/ReadVariableOp?
(batch_normalization_310/ReadVariableOp_1ReadVariableOp1batch_normalization_310_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_310/ReadVariableOp_1?
7batch_normalization_310/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_310_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_310/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_310_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_310/FusedBatchNormV3FusedBatchNormV3conv2d_393/Relu:activations:0.batch_normalization_310/ReadVariableOp:value:00batch_normalization_310/ReadVariableOp_1:value:0?batch_normalization_310/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_310/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_310/FusedBatchNormV3?
max_pooling2d_67/MaxPoolMaxPool,batch_normalization_310/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_67/MaxPool?
 conv2d_394/Conv2D/ReadVariableOpReadVariableOp)conv2d_394_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_394/Conv2D/ReadVariableOp?
conv2d_394/Conv2DConv2D!max_pooling2d_67/MaxPool:output:0(conv2d_394/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_394/Conv2D?
!conv2d_394/BiasAdd/ReadVariableOpReadVariableOp*conv2d_394_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_394/BiasAdd/ReadVariableOp?
conv2d_394/BiasAddBiasAddconv2d_394/Conv2D:output:0)conv2d_394/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_394/BiasAdd?
conv2d_394/ReluReluconv2d_394/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_394/Relu?
&batch_normalization_311/ReadVariableOpReadVariableOp/batch_normalization_311_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_311/ReadVariableOp?
(batch_normalization_311/ReadVariableOp_1ReadVariableOp1batch_normalization_311_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_311/ReadVariableOp_1?
7batch_normalization_311/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_311_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_311/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_311_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_311/FusedBatchNormV3FusedBatchNormV3conv2d_394/Relu:activations:0.batch_normalization_311/ReadVariableOp:value:00batch_normalization_311/ReadVariableOp_1:value:0?batch_normalization_311/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_311/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_311/FusedBatchNormV3?
max_pooling2d_68/MaxPoolMaxPool,batch_normalization_311/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_68/MaxPool?
 conv2d_395/Conv2D/ReadVariableOpReadVariableOp)conv2d_395_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_395/Conv2D/ReadVariableOp?
conv2d_395/Conv2DConv2D!max_pooling2d_68/MaxPool:output:0(conv2d_395/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_395/Conv2D?
!conv2d_395/BiasAdd/ReadVariableOpReadVariableOp*conv2d_395_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_395/BiasAdd/ReadVariableOp?
conv2d_395/BiasAddBiasAddconv2d_395/Conv2D:output:0)conv2d_395/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_395/BiasAdd?
conv2d_395/ReluReluconv2d_395/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_395/Relu?
&batch_normalization_312/ReadVariableOpReadVariableOp/batch_normalization_312_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_312/ReadVariableOp?
(batch_normalization_312/ReadVariableOp_1ReadVariableOp1batch_normalization_312_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_312/ReadVariableOp_1?
7batch_normalization_312/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_312_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_312/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_312_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_312/FusedBatchNormV3FusedBatchNormV3conv2d_395/Relu:activations:0.batch_normalization_312/ReadVariableOp:value:00batch_normalization_312/ReadVariableOp_1:value:0?batch_normalization_312/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_312/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_312/FusedBatchNormV3?
 conv2d_396/Conv2D/ReadVariableOpReadVariableOp)conv2d_396_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_396/Conv2D/ReadVariableOp?
conv2d_396/Conv2DConv2D,batch_normalization_312/FusedBatchNormV3:y:0(conv2d_396/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_396/Conv2D?
!conv2d_396/BiasAdd/ReadVariableOpReadVariableOp*conv2d_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_396/BiasAdd/ReadVariableOp?
conv2d_396/BiasAddBiasAddconv2d_396/Conv2D:output:0)conv2d_396/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_396/BiasAdd?
conv2d_396/ReluReluconv2d_396/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_396/Relu?
&batch_normalization_313/ReadVariableOpReadVariableOp/batch_normalization_313_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_313/ReadVariableOp?
(batch_normalization_313/ReadVariableOp_1ReadVariableOp1batch_normalization_313_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_313/ReadVariableOp_1?
7batch_normalization_313/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_313_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_313/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_313_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_313/FusedBatchNormV3FusedBatchNormV3conv2d_396/Relu:activations:0.batch_normalization_313/ReadVariableOp:value:00batch_normalization_313/ReadVariableOp_1:value:0?batch_normalization_313/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_313/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_313/FusedBatchNormV3?
 conv2d_397/Conv2D/ReadVariableOpReadVariableOp)conv2d_397_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_397/Conv2D/ReadVariableOp?
conv2d_397/Conv2DConv2D,batch_normalization_313/FusedBatchNormV3:y:0(conv2d_397/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_397/Conv2D?
!conv2d_397/BiasAdd/ReadVariableOpReadVariableOp*conv2d_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_397/BiasAdd/ReadVariableOp?
conv2d_397/BiasAddBiasAddconv2d_397/Conv2D:output:0)conv2d_397/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_397/BiasAdd?
conv2d_397/ReluReluconv2d_397/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_397/Relu?
&batch_normalization_314/ReadVariableOpReadVariableOp/batch_normalization_314_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_314/ReadVariableOp?
(batch_normalization_314/ReadVariableOp_1ReadVariableOp1batch_normalization_314_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_314/ReadVariableOp_1?
7batch_normalization_314/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_314_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_314/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_314_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_314/FusedBatchNormV3FusedBatchNormV3conv2d_397/Relu:activations:0.batch_normalization_314/ReadVariableOp:value:00batch_normalization_314/ReadVariableOp_1:value:0?batch_normalization_314/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_314/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_314/FusedBatchNormV3?
max_pooling2d_69/MaxPoolMaxPool,batch_normalization_314/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_69/MaxPoolu
flatten_30/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_30/Const?
flatten_30/ReshapeReshape!max_pooling2d_69/MaxPool:output:0flatten_30/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_30/Reshape?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMulMatMulflatten_30/Reshape:output:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_64/BiasAdd|
dense_64/SigmoidSigmoiddense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_64/Sigmoido
IdentityIdentitydense_64/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_310/FusedBatchNormV3/ReadVariableOp:^batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_310/ReadVariableOp)^batch_normalization_310/ReadVariableOp_18^batch_normalization_311/FusedBatchNormV3/ReadVariableOp:^batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_311/ReadVariableOp)^batch_normalization_311/ReadVariableOp_18^batch_normalization_312/FusedBatchNormV3/ReadVariableOp:^batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_312/ReadVariableOp)^batch_normalization_312/ReadVariableOp_18^batch_normalization_313/FusedBatchNormV3/ReadVariableOp:^batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_313/ReadVariableOp)^batch_normalization_313/ReadVariableOp_18^batch_normalization_314/FusedBatchNormV3/ReadVariableOp:^batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_314/ReadVariableOp)^batch_normalization_314/ReadVariableOp_1"^conv2d_393/BiasAdd/ReadVariableOp!^conv2d_393/Conv2D/ReadVariableOp"^conv2d_394/BiasAdd/ReadVariableOp!^conv2d_394/Conv2D/ReadVariableOp"^conv2d_395/BiasAdd/ReadVariableOp!^conv2d_395/Conv2D/ReadVariableOp"^conv2d_396/BiasAdd/ReadVariableOp!^conv2d_396/Conv2D/ReadVariableOp"^conv2d_397/BiasAdd/ReadVariableOp!^conv2d_397/Conv2D/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_310/FusedBatchNormV3/ReadVariableOp7batch_normalization_310/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_310/FusedBatchNormV3/ReadVariableOp_19batch_normalization_310/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_310/ReadVariableOp&batch_normalization_310/ReadVariableOp2T
(batch_normalization_310/ReadVariableOp_1(batch_normalization_310/ReadVariableOp_12r
7batch_normalization_311/FusedBatchNormV3/ReadVariableOp7batch_normalization_311/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_311/FusedBatchNormV3/ReadVariableOp_19batch_normalization_311/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_311/ReadVariableOp&batch_normalization_311/ReadVariableOp2T
(batch_normalization_311/ReadVariableOp_1(batch_normalization_311/ReadVariableOp_12r
7batch_normalization_312/FusedBatchNormV3/ReadVariableOp7batch_normalization_312/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_312/FusedBatchNormV3/ReadVariableOp_19batch_normalization_312/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_312/ReadVariableOp&batch_normalization_312/ReadVariableOp2T
(batch_normalization_312/ReadVariableOp_1(batch_normalization_312/ReadVariableOp_12r
7batch_normalization_313/FusedBatchNormV3/ReadVariableOp7batch_normalization_313/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_313/FusedBatchNormV3/ReadVariableOp_19batch_normalization_313/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_313/ReadVariableOp&batch_normalization_313/ReadVariableOp2T
(batch_normalization_313/ReadVariableOp_1(batch_normalization_313/ReadVariableOp_12r
7batch_normalization_314/FusedBatchNormV3/ReadVariableOp7batch_normalization_314/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_314/FusedBatchNormV3/ReadVariableOp_19batch_normalization_314/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_314/ReadVariableOp&batch_normalization_314/ReadVariableOp2T
(batch_normalization_314/ReadVariableOp_1(batch_normalization_314/ReadVariableOp_12F
!conv2d_393/BiasAdd/ReadVariableOp!conv2d_393/BiasAdd/ReadVariableOp2D
 conv2d_393/Conv2D/ReadVariableOp conv2d_393/Conv2D/ReadVariableOp2F
!conv2d_394/BiasAdd/ReadVariableOp!conv2d_394/BiasAdd/ReadVariableOp2D
 conv2d_394/Conv2D/ReadVariableOp conv2d_394/Conv2D/ReadVariableOp2F
!conv2d_395/BiasAdd/ReadVariableOp!conv2d_395/BiasAdd/ReadVariableOp2D
 conv2d_395/Conv2D/ReadVariableOp conv2d_395/Conv2D/ReadVariableOp2F
!conv2d_396/BiasAdd/ReadVariableOp!conv2d_396/BiasAdd/ReadVariableOp2D
 conv2d_396/Conv2D/ReadVariableOp conv2d_396/Conv2D/ReadVariableOp2F
!conv2d_397/BiasAdd/ReadVariableOp!conv2d_397/BiasAdd/ReadVariableOp2D
 conv2d_397/Conv2D/ReadVariableOp conv2d_397/Conv2D/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8387719

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
?
?
,__inference_conv2d_396_layer_call_fn_8389843

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
G__inference_conv2d_396_layer_call_and_return_conditional_losses_83879632
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
?
?
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8388247

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
?
?
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8388193

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
?	
?
9__inference_batch_normalization_312_layer_call_fn_8389810

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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_83879422
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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389861

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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8387593

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
N
2__inference_max_pooling2d_68_layer_call_fn_8389679

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
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_83879062
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
?X
?
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8388594

inputs,
conv2d_393_8388514:` 
conv2d_393_8388516:`-
batch_normalization_310_8388519:`-
batch_normalization_310_8388521:`-
batch_normalization_310_8388523:`-
batch_normalization_310_8388525:`-
conv2d_394_8388529:`?!
conv2d_394_8388531:	?.
batch_normalization_311_8388534:	?.
batch_normalization_311_8388536:	?.
batch_normalization_311_8388538:	?.
batch_normalization_311_8388540:	?.
conv2d_395_8388544:??!
conv2d_395_8388546:	?.
batch_normalization_312_8388549:	?.
batch_normalization_312_8388551:	?.
batch_normalization_312_8388553:	?.
batch_normalization_312_8388555:	?.
conv2d_396_8388558:??!
conv2d_396_8388560:	?.
batch_normalization_313_8388563:	?.
batch_normalization_313_8388565:	?.
batch_normalization_313_8388567:	?.
batch_normalization_313_8388569:	?.
conv2d_397_8388572:??!
conv2d_397_8388574:	?.
batch_normalization_314_8388577:	?.
batch_normalization_314_8388579:	?.
batch_normalization_314_8388581:	?.
batch_normalization_314_8388583:	?#
dense_64_8388588:	?(
dense_64_8388590:
identity??/batch_normalization_310/StatefulPartitionedCall?/batch_normalization_311/StatefulPartitionedCall?/batch_normalization_312/StatefulPartitionedCall?/batch_normalization_313/StatefulPartitionedCall?/batch_normalization_314/StatefulPartitionedCall?"conv2d_393/StatefulPartitionedCall?"conv2d_394/StatefulPartitionedCall?"conv2d_395/StatefulPartitionedCall?"conv2d_396/StatefulPartitionedCall?"conv2d_397/StatefulPartitionedCall? dense_64/StatefulPartitionedCall?
"conv2d_393/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_393_8388514conv2d_393_8388516*
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
G__inference_conv2d_393_layer_call_and_return_conditional_losses_83878192$
"conv2d_393/StatefulPartitionedCall?
/batch_normalization_310/StatefulPartitionedCallStatefulPartitionedCall+conv2d_393/StatefulPartitionedCall:output:0batch_normalization_310_8388519batch_normalization_310_8388521batch_normalization_310_8388523batch_normalization_310_8388525*
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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_838841921
/batch_normalization_310/StatefulPartitionedCall?
 max_pooling2d_67/PartitionedCallPartitionedCall8batch_normalization_310/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_83878562"
 max_pooling2d_67/PartitionedCall?
"conv2d_394/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_67/PartitionedCall:output:0conv2d_394_8388529conv2d_394_8388531*
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
G__inference_conv2d_394_layer_call_and_return_conditional_losses_83878692$
"conv2d_394/StatefulPartitionedCall?
/batch_normalization_311/StatefulPartitionedCallStatefulPartitionedCall+conv2d_394/StatefulPartitionedCall:output:0batch_normalization_311_8388534batch_normalization_311_8388536batch_normalization_311_8388538batch_normalization_311_8388540*
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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_838836021
/batch_normalization_311/StatefulPartitionedCall?
 max_pooling2d_68/PartitionedCallPartitionedCall8batch_normalization_311/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_83879062"
 max_pooling2d_68/PartitionedCall?
"conv2d_395/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_68/PartitionedCall:output:0conv2d_395_8388544conv2d_395_8388546*
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
G__inference_conv2d_395_layer_call_and_return_conditional_losses_83879192$
"conv2d_395/StatefulPartitionedCall?
/batch_normalization_312/StatefulPartitionedCallStatefulPartitionedCall+conv2d_395/StatefulPartitionedCall:output:0batch_normalization_312_8388549batch_normalization_312_8388551batch_normalization_312_8388553batch_normalization_312_8388555*
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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_838830121
/batch_normalization_312/StatefulPartitionedCall?
"conv2d_396/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_312/StatefulPartitionedCall:output:0conv2d_396_8388558conv2d_396_8388560*
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
G__inference_conv2d_396_layer_call_and_return_conditional_losses_83879632$
"conv2d_396/StatefulPartitionedCall?
/batch_normalization_313/StatefulPartitionedCallStatefulPartitionedCall+conv2d_396/StatefulPartitionedCall:output:0batch_normalization_313_8388563batch_normalization_313_8388565batch_normalization_313_8388567batch_normalization_313_8388569*
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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_838824721
/batch_normalization_313/StatefulPartitionedCall?
"conv2d_397/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_313/StatefulPartitionedCall:output:0conv2d_397_8388572conv2d_397_8388574*
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
G__inference_conv2d_397_layer_call_and_return_conditional_losses_83880072$
"conv2d_397/StatefulPartitionedCall?
/batch_normalization_314/StatefulPartitionedCallStatefulPartitionedCall+conv2d_397/StatefulPartitionedCall:output:0batch_normalization_314_8388577batch_normalization_314_8388579batch_normalization_314_8388581batch_normalization_314_8388583*
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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_838819321
/batch_normalization_314/StatefulPartitionedCall?
 max_pooling2d_69/PartitionedCallPartitionedCall8batch_normalization_314/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_83880442"
 max_pooling2d_69/PartitionedCall?
flatten_30/PartitionedCallPartitionedCall)max_pooling2d_69/PartitionedCall:output:0*
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
G__inference_flatten_30_layer_call_and_return_conditional_losses_83880522
flatten_30/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#flatten_30/PartitionedCall:output:0dense_64_8388588dense_64_8388590*
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
E__inference_dense_64_layer_call_and_return_conditional_losses_83880652"
 dense_64/StatefulPartitionedCall?
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_310/StatefulPartitionedCall0^batch_normalization_311/StatefulPartitionedCall0^batch_normalization_312/StatefulPartitionedCall0^batch_normalization_313/StatefulPartitionedCall0^batch_normalization_314/StatefulPartitionedCall#^conv2d_393/StatefulPartitionedCall#^conv2d_394/StatefulPartitionedCall#^conv2d_395/StatefulPartitionedCall#^conv2d_396/StatefulPartitionedCall#^conv2d_397/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_310/StatefulPartitionedCall/batch_normalization_310/StatefulPartitionedCall2b
/batch_normalization_311/StatefulPartitionedCall/batch_normalization_311/StatefulPartitionedCall2b
/batch_normalization_312/StatefulPartitionedCall/batch_normalization_312/StatefulPartitionedCall2b
/batch_normalization_313/StatefulPartitionedCall/batch_normalization_313/StatefulPartitionedCall2b
/batch_normalization_314/StatefulPartitionedCall/batch_normalization_314/StatefulPartitionedCall2H
"conv2d_393/StatefulPartitionedCall"conv2d_393/StatefulPartitionedCall2H
"conv2d_394/StatefulPartitionedCall"conv2d_394/StatefulPartitionedCall2H
"conv2d_395/StatefulPartitionedCall"conv2d_395/StatefulPartitionedCall2H
"conv2d_396/StatefulPartitionedCall"conv2d_396/StatefulPartitionedCall2H
"conv2d_397/StatefulPartitionedCall"conv2d_397/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_313_layer_call_fn_8389954

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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_83879862
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
E__inference_dense_64_layer_call_and_return_conditional_losses_8390153

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
?X
?
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8388072

inputs,
conv2d_393_8387820:` 
conv2d_393_8387822:`-
batch_normalization_310_8387843:`-
batch_normalization_310_8387845:`-
batch_normalization_310_8387847:`-
batch_normalization_310_8387849:`-
conv2d_394_8387870:`?!
conv2d_394_8387872:	?.
batch_normalization_311_8387893:	?.
batch_normalization_311_8387895:	?.
batch_normalization_311_8387897:	?.
batch_normalization_311_8387899:	?.
conv2d_395_8387920:??!
conv2d_395_8387922:	?.
batch_normalization_312_8387943:	?.
batch_normalization_312_8387945:	?.
batch_normalization_312_8387947:	?.
batch_normalization_312_8387949:	?.
conv2d_396_8387964:??!
conv2d_396_8387966:	?.
batch_normalization_313_8387987:	?.
batch_normalization_313_8387989:	?.
batch_normalization_313_8387991:	?.
batch_normalization_313_8387993:	?.
conv2d_397_8388008:??!
conv2d_397_8388010:	?.
batch_normalization_314_8388031:	?.
batch_normalization_314_8388033:	?.
batch_normalization_314_8388035:	?.
batch_normalization_314_8388037:	?#
dense_64_8388066:	?(
dense_64_8388068:
identity??/batch_normalization_310/StatefulPartitionedCall?/batch_normalization_311/StatefulPartitionedCall?/batch_normalization_312/StatefulPartitionedCall?/batch_normalization_313/StatefulPartitionedCall?/batch_normalization_314/StatefulPartitionedCall?"conv2d_393/StatefulPartitionedCall?"conv2d_394/StatefulPartitionedCall?"conv2d_395/StatefulPartitionedCall?"conv2d_396/StatefulPartitionedCall?"conv2d_397/StatefulPartitionedCall? dense_64/StatefulPartitionedCall?
"conv2d_393/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_393_8387820conv2d_393_8387822*
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
G__inference_conv2d_393_layer_call_and_return_conditional_losses_83878192$
"conv2d_393/StatefulPartitionedCall?
/batch_normalization_310/StatefulPartitionedCallStatefulPartitionedCall+conv2d_393/StatefulPartitionedCall:output:0batch_normalization_310_8387843batch_normalization_310_8387845batch_normalization_310_8387847batch_normalization_310_8387849*
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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_838784221
/batch_normalization_310/StatefulPartitionedCall?
 max_pooling2d_67/PartitionedCallPartitionedCall8batch_normalization_310/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_83878562"
 max_pooling2d_67/PartitionedCall?
"conv2d_394/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_67/PartitionedCall:output:0conv2d_394_8387870conv2d_394_8387872*
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
G__inference_conv2d_394_layer_call_and_return_conditional_losses_83878692$
"conv2d_394/StatefulPartitionedCall?
/batch_normalization_311/StatefulPartitionedCallStatefulPartitionedCall+conv2d_394/StatefulPartitionedCall:output:0batch_normalization_311_8387893batch_normalization_311_8387895batch_normalization_311_8387897batch_normalization_311_8387899*
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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_838789221
/batch_normalization_311/StatefulPartitionedCall?
 max_pooling2d_68/PartitionedCallPartitionedCall8batch_normalization_311/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_83879062"
 max_pooling2d_68/PartitionedCall?
"conv2d_395/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_68/PartitionedCall:output:0conv2d_395_8387920conv2d_395_8387922*
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
G__inference_conv2d_395_layer_call_and_return_conditional_losses_83879192$
"conv2d_395/StatefulPartitionedCall?
/batch_normalization_312/StatefulPartitionedCallStatefulPartitionedCall+conv2d_395/StatefulPartitionedCall:output:0batch_normalization_312_8387943batch_normalization_312_8387945batch_normalization_312_8387947batch_normalization_312_8387949*
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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_838794221
/batch_normalization_312/StatefulPartitionedCall?
"conv2d_396/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_312/StatefulPartitionedCall:output:0conv2d_396_8387964conv2d_396_8387966*
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
G__inference_conv2d_396_layer_call_and_return_conditional_losses_83879632$
"conv2d_396/StatefulPartitionedCall?
/batch_normalization_313/StatefulPartitionedCallStatefulPartitionedCall+conv2d_396/StatefulPartitionedCall:output:0batch_normalization_313_8387987batch_normalization_313_8387989batch_normalization_313_8387991batch_normalization_313_8387993*
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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_838798621
/batch_normalization_313/StatefulPartitionedCall?
"conv2d_397/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_313/StatefulPartitionedCall:output:0conv2d_397_8388008conv2d_397_8388010*
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
G__inference_conv2d_397_layer_call_and_return_conditional_losses_83880072$
"conv2d_397/StatefulPartitionedCall?
/batch_normalization_314/StatefulPartitionedCallStatefulPartitionedCall+conv2d_397/StatefulPartitionedCall:output:0batch_normalization_314_8388031batch_normalization_314_8388033batch_normalization_314_8388035batch_normalization_314_8388037*
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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_838803021
/batch_normalization_314/StatefulPartitionedCall?
 max_pooling2d_69/PartitionedCallPartitionedCall8batch_normalization_314/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_83880442"
 max_pooling2d_69/PartitionedCall?
flatten_30/PartitionedCallPartitionedCall)max_pooling2d_69/PartitionedCall:output:0*
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
G__inference_flatten_30_layer_call_and_return_conditional_losses_83880522
flatten_30/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#flatten_30/PartitionedCall:output:0dense_64_8388066dense_64_8388068*
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
E__inference_dense_64_layer_call_and_return_conditional_losses_83880652"
 dense_64/StatefulPartitionedCall?
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_310/StatefulPartitionedCall0^batch_normalization_311/StatefulPartitionedCall0^batch_normalization_312/StatefulPartitionedCall0^batch_normalization_313/StatefulPartitionedCall0^batch_normalization_314/StatefulPartitionedCall#^conv2d_393/StatefulPartitionedCall#^conv2d_394/StatefulPartitionedCall#^conv2d_395/StatefulPartitionedCall#^conv2d_396/StatefulPartitionedCall#^conv2d_397/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_310/StatefulPartitionedCall/batch_normalization_310/StatefulPartitionedCall2b
/batch_normalization_311/StatefulPartitionedCall/batch_normalization_311/StatefulPartitionedCall2b
/batch_normalization_312/StatefulPartitionedCall/batch_normalization_312/StatefulPartitionedCall2b
/batch_normalization_313/StatefulPartitionedCall/batch_normalization_313/StatefulPartitionedCall2b
/batch_normalization_314/StatefulPartitionedCall/batch_normalization_314/StatefulPartitionedCall2H
"conv2d_393/StatefulPartitionedCall"conv2d_393/StatefulPartitionedCall2H
"conv2d_394/StatefulPartitionedCall"conv2d_394/StatefulPartitionedCall2H
"conv2d_395/StatefulPartitionedCall"conv2d_395/StatefulPartitionedCall2H
"conv2d_396/StatefulPartitionedCall"conv2d_396/StatefulPartitionedCall2H
"conv2d_397/StatefulPartitionedCall"conv2d_397/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390059

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
?
?
-__inference_alex_net_11_layer_call_fn_8388730
conv2d_393_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_393_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_alex_net_11_layer_call_and_return_conditional_losses_83885942
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
_user_specified_nameconv2d_393_input
?	
?
9__inference_batch_normalization_310_layer_call_fn_8389456

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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_83871272
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
?
?
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8387549

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
9__inference_batch_normalization_311_layer_call_fn_8389659

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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_83883602
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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389407

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
9__inference_batch_normalization_311_layer_call_fn_8389646

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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_83878922
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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8387423

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
?
?
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389389

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
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_8390116

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
?
G__inference_conv2d_396_layer_call_and_return_conditional_losses_8387963

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
i
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_8387788

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
?
?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389589

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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390041

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
?
N
2__inference_max_pooling2d_68_layer_call_fn_8389674

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
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_83873882
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
9__inference_batch_normalization_311_layer_call_fn_8389633

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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_83873192
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
9__inference_batch_normalization_313_layer_call_fn_8389941

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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_83875932
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
?
?
-__inference_alex_net_11_layer_call_fn_8389282

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
H__inference_alex_net_11_layer_call_and_return_conditional_losses_83880722
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
?
?
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389717

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
??
?
#__inference__traced_restore_8390435
file_prefix<
"assignvariableop_conv2d_393_kernel:`0
"assignvariableop_1_conv2d_393_bias:`>
0assignvariableop_2_batch_normalization_310_gamma:`=
/assignvariableop_3_batch_normalization_310_beta:`D
6assignvariableop_4_batch_normalization_310_moving_mean:`H
:assignvariableop_5_batch_normalization_310_moving_variance:`?
$assignvariableop_6_conv2d_394_kernel:`?1
"assignvariableop_7_conv2d_394_bias:	??
0assignvariableop_8_batch_normalization_311_gamma:	?>
/assignvariableop_9_batch_normalization_311_beta:	?F
7assignvariableop_10_batch_normalization_311_moving_mean:	?J
;assignvariableop_11_batch_normalization_311_moving_variance:	?A
%assignvariableop_12_conv2d_395_kernel:??2
#assignvariableop_13_conv2d_395_bias:	?@
1assignvariableop_14_batch_normalization_312_gamma:	??
0assignvariableop_15_batch_normalization_312_beta:	?F
7assignvariableop_16_batch_normalization_312_moving_mean:	?J
;assignvariableop_17_batch_normalization_312_moving_variance:	?A
%assignvariableop_18_conv2d_396_kernel:??2
#assignvariableop_19_conv2d_396_bias:	?@
1assignvariableop_20_batch_normalization_313_gamma:	??
0assignvariableop_21_batch_normalization_313_beta:	?F
7assignvariableop_22_batch_normalization_313_moving_mean:	?J
;assignvariableop_23_batch_normalization_313_moving_variance:	?A
%assignvariableop_24_conv2d_397_kernel:??2
#assignvariableop_25_conv2d_397_bias:	?@
1assignvariableop_26_batch_normalization_314_gamma:	??
0assignvariableop_27_batch_normalization_314_beta:	?F
7assignvariableop_28_batch_normalization_314_moving_mean:	?J
;assignvariableop_29_batch_normalization_314_moving_variance:	?6
#assignvariableop_30_dense_64_kernel:	?(/
!assignvariableop_31_dense_64_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_393_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_393_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_310_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_310_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_310_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_310_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_394_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_394_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_311_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_311_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_311_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_311_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_395_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_395_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_312_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_312_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_312_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_312_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_396_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_396_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_313_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_313_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_313_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_313_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_397_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_397_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_314_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_314_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_314_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_314_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_64_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_64_biasIdentity_31:output:0"/device:CPU:0*
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
?	
?
9__inference_batch_normalization_311_layer_call_fn_8389620

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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_83872752
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
?
?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8388360

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
9__inference_batch_normalization_310_layer_call_fn_8389482

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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_83878422
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
?
i
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_8388044

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
?
?
,__inference_conv2d_394_layer_call_fn_8389535

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
G__inference_conv2d_394_layer_call_and_return_conditional_losses_83878692
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
?
?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389607

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
?
G__inference_conv2d_397_layer_call_and_return_conditional_losses_8389978

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
?
N
2__inference_max_pooling2d_67_layer_call_fn_8389515

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
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_83878562
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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389425

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
?
?
G__inference_conv2d_393_layer_call_and_return_conditional_losses_8387819

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
?
?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8387319

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
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_8389664

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
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8388896
conv2d_393_input,
conv2d_393_8388816:` 
conv2d_393_8388818:`-
batch_normalization_310_8388821:`-
batch_normalization_310_8388823:`-
batch_normalization_310_8388825:`-
batch_normalization_310_8388827:`-
conv2d_394_8388831:`?!
conv2d_394_8388833:	?.
batch_normalization_311_8388836:	?.
batch_normalization_311_8388838:	?.
batch_normalization_311_8388840:	?.
batch_normalization_311_8388842:	?.
conv2d_395_8388846:??!
conv2d_395_8388848:	?.
batch_normalization_312_8388851:	?.
batch_normalization_312_8388853:	?.
batch_normalization_312_8388855:	?.
batch_normalization_312_8388857:	?.
conv2d_396_8388860:??!
conv2d_396_8388862:	?.
batch_normalization_313_8388865:	?.
batch_normalization_313_8388867:	?.
batch_normalization_313_8388869:	?.
batch_normalization_313_8388871:	?.
conv2d_397_8388874:??!
conv2d_397_8388876:	?.
batch_normalization_314_8388879:	?.
batch_normalization_314_8388881:	?.
batch_normalization_314_8388883:	?.
batch_normalization_314_8388885:	?#
dense_64_8388890:	?(
dense_64_8388892:
identity??/batch_normalization_310/StatefulPartitionedCall?/batch_normalization_311/StatefulPartitionedCall?/batch_normalization_312/StatefulPartitionedCall?/batch_normalization_313/StatefulPartitionedCall?/batch_normalization_314/StatefulPartitionedCall?"conv2d_393/StatefulPartitionedCall?"conv2d_394/StatefulPartitionedCall?"conv2d_395/StatefulPartitionedCall?"conv2d_396/StatefulPartitionedCall?"conv2d_397/StatefulPartitionedCall? dense_64/StatefulPartitionedCall?
"conv2d_393/StatefulPartitionedCallStatefulPartitionedCallconv2d_393_inputconv2d_393_8388816conv2d_393_8388818*
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
G__inference_conv2d_393_layer_call_and_return_conditional_losses_83878192$
"conv2d_393/StatefulPartitionedCall?
/batch_normalization_310/StatefulPartitionedCallStatefulPartitionedCall+conv2d_393/StatefulPartitionedCall:output:0batch_normalization_310_8388821batch_normalization_310_8388823batch_normalization_310_8388825batch_normalization_310_8388827*
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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_838841921
/batch_normalization_310/StatefulPartitionedCall?
 max_pooling2d_67/PartitionedCallPartitionedCall8batch_normalization_310/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_83878562"
 max_pooling2d_67/PartitionedCall?
"conv2d_394/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_67/PartitionedCall:output:0conv2d_394_8388831conv2d_394_8388833*
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
G__inference_conv2d_394_layer_call_and_return_conditional_losses_83878692$
"conv2d_394/StatefulPartitionedCall?
/batch_normalization_311/StatefulPartitionedCallStatefulPartitionedCall+conv2d_394/StatefulPartitionedCall:output:0batch_normalization_311_8388836batch_normalization_311_8388838batch_normalization_311_8388840batch_normalization_311_8388842*
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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_838836021
/batch_normalization_311/StatefulPartitionedCall?
 max_pooling2d_68/PartitionedCallPartitionedCall8batch_normalization_311/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_83879062"
 max_pooling2d_68/PartitionedCall?
"conv2d_395/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_68/PartitionedCall:output:0conv2d_395_8388846conv2d_395_8388848*
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
G__inference_conv2d_395_layer_call_and_return_conditional_losses_83879192$
"conv2d_395/StatefulPartitionedCall?
/batch_normalization_312/StatefulPartitionedCallStatefulPartitionedCall+conv2d_395/StatefulPartitionedCall:output:0batch_normalization_312_8388851batch_normalization_312_8388853batch_normalization_312_8388855batch_normalization_312_8388857*
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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_838830121
/batch_normalization_312/StatefulPartitionedCall?
"conv2d_396/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_312/StatefulPartitionedCall:output:0conv2d_396_8388860conv2d_396_8388862*
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
G__inference_conv2d_396_layer_call_and_return_conditional_losses_83879632$
"conv2d_396/StatefulPartitionedCall?
/batch_normalization_313/StatefulPartitionedCallStatefulPartitionedCall+conv2d_396/StatefulPartitionedCall:output:0batch_normalization_313_8388865batch_normalization_313_8388867batch_normalization_313_8388869batch_normalization_313_8388871*
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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_838824721
/batch_normalization_313/StatefulPartitionedCall?
"conv2d_397/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_313/StatefulPartitionedCall:output:0conv2d_397_8388874conv2d_397_8388876*
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
G__inference_conv2d_397_layer_call_and_return_conditional_losses_83880072$
"conv2d_397/StatefulPartitionedCall?
/batch_normalization_314/StatefulPartitionedCallStatefulPartitionedCall+conv2d_397/StatefulPartitionedCall:output:0batch_normalization_314_8388879batch_normalization_314_8388881batch_normalization_314_8388883batch_normalization_314_8388885*
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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_838819321
/batch_normalization_314/StatefulPartitionedCall?
 max_pooling2d_69/PartitionedCallPartitionedCall8batch_normalization_314/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_83880442"
 max_pooling2d_69/PartitionedCall?
flatten_30/PartitionedCallPartitionedCall)max_pooling2d_69/PartitionedCall:output:0*
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
G__inference_flatten_30_layer_call_and_return_conditional_losses_83880522
flatten_30/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#flatten_30/PartitionedCall:output:0dense_64_8388890dense_64_8388892*
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
E__inference_dense_64_layer_call_and_return_conditional_losses_83880652"
 dense_64/StatefulPartitionedCall?
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_310/StatefulPartitionedCall0^batch_normalization_311/StatefulPartitionedCall0^batch_normalization_312/StatefulPartitionedCall0^batch_normalization_313/StatefulPartitionedCall0^batch_normalization_314/StatefulPartitionedCall#^conv2d_393/StatefulPartitionedCall#^conv2d_394/StatefulPartitionedCall#^conv2d_395/StatefulPartitionedCall#^conv2d_396/StatefulPartitionedCall#^conv2d_397/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_310/StatefulPartitionedCall/batch_normalization_310/StatefulPartitionedCall2b
/batch_normalization_311/StatefulPartitionedCall/batch_normalization_311/StatefulPartitionedCall2b
/batch_normalization_312/StatefulPartitionedCall/batch_normalization_312/StatefulPartitionedCall2b
/batch_normalization_313/StatefulPartitionedCall/batch_normalization_313/StatefulPartitionedCall2b
/batch_normalization_314/StatefulPartitionedCall/batch_normalization_314/StatefulPartitionedCall2H
"conv2d_393/StatefulPartitionedCall"conv2d_393/StatefulPartitionedCall2H
"conv2d_394/StatefulPartitionedCall"conv2d_394/StatefulPartitionedCall2H
"conv2d_395/StatefulPartitionedCall"conv2d_395/StatefulPartitionedCall2H
"conv2d_396/StatefulPartitionedCall"conv2d_396/StatefulPartitionedCall2H
"conv2d_397/StatefulPartitionedCall"conv2d_397/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_393_input
?
i
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_8387240

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
?
?
-__inference_alex_net_11_layer_call_fn_8388139
conv2d_393_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_393_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_alex_net_11_layer_call_and_return_conditional_losses_83880722
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
_user_specified_nameconv2d_393_input
?
c
G__inference_flatten_30_layer_call_and_return_conditional_losses_8390137

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
?
i
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_8389505

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
?
N
2__inference_max_pooling2d_69_layer_call_fn_8390126

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
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_83877882
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
G__inference_conv2d_395_layer_call_and_return_conditional_losses_8387919

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
?
?
G__inference_conv2d_397_layer_call_and_return_conditional_losses_8388007

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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390023

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
?	
?
9__inference_batch_normalization_312_layer_call_fn_8389823

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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_83883012
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
9__inference_batch_normalization_314_layer_call_fn_8390085

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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_83877192
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
?
?
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8387171

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
?
i
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_8390121

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
?
?
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389879

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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8388301

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
?	
?
9__inference_batch_normalization_314_layer_call_fn_8390111

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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_83881932
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
??
? 
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8389213

inputsC
)conv2d_393_conv2d_readvariableop_resource:`8
*conv2d_393_biasadd_readvariableop_resource:`=
/batch_normalization_310_readvariableop_resource:`?
1batch_normalization_310_readvariableop_1_resource:`N
@batch_normalization_310_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_310_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_394_conv2d_readvariableop_resource:`?9
*conv2d_394_biasadd_readvariableop_resource:	?>
/batch_normalization_311_readvariableop_resource:	?@
1batch_normalization_311_readvariableop_1_resource:	?O
@batch_normalization_311_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_311_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_395_conv2d_readvariableop_resource:??9
*conv2d_395_biasadd_readvariableop_resource:	?>
/batch_normalization_312_readvariableop_resource:	?@
1batch_normalization_312_readvariableop_1_resource:	?O
@batch_normalization_312_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_312_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_396_conv2d_readvariableop_resource:??9
*conv2d_396_biasadd_readvariableop_resource:	?>
/batch_normalization_313_readvariableop_resource:	?@
1batch_normalization_313_readvariableop_1_resource:	?O
@batch_normalization_313_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_313_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_397_conv2d_readvariableop_resource:??9
*conv2d_397_biasadd_readvariableop_resource:	?>
/batch_normalization_314_readvariableop_resource:	?@
1batch_normalization_314_readvariableop_1_resource:	?O
@batch_normalization_314_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_314_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_64_matmul_readvariableop_resource:	?(6
(dense_64_biasadd_readvariableop_resource:
identity??&batch_normalization_310/AssignNewValue?(batch_normalization_310/AssignNewValue_1?7batch_normalization_310/FusedBatchNormV3/ReadVariableOp?9batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_310/ReadVariableOp?(batch_normalization_310/ReadVariableOp_1?&batch_normalization_311/AssignNewValue?(batch_normalization_311/AssignNewValue_1?7batch_normalization_311/FusedBatchNormV3/ReadVariableOp?9batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_311/ReadVariableOp?(batch_normalization_311/ReadVariableOp_1?&batch_normalization_312/AssignNewValue?(batch_normalization_312/AssignNewValue_1?7batch_normalization_312/FusedBatchNormV3/ReadVariableOp?9batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_312/ReadVariableOp?(batch_normalization_312/ReadVariableOp_1?&batch_normalization_313/AssignNewValue?(batch_normalization_313/AssignNewValue_1?7batch_normalization_313/FusedBatchNormV3/ReadVariableOp?9batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_313/ReadVariableOp?(batch_normalization_313/ReadVariableOp_1?&batch_normalization_314/AssignNewValue?(batch_normalization_314/AssignNewValue_1?7batch_normalization_314/FusedBatchNormV3/ReadVariableOp?9batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_314/ReadVariableOp?(batch_normalization_314/ReadVariableOp_1?!conv2d_393/BiasAdd/ReadVariableOp? conv2d_393/Conv2D/ReadVariableOp?!conv2d_394/BiasAdd/ReadVariableOp? conv2d_394/Conv2D/ReadVariableOp?!conv2d_395/BiasAdd/ReadVariableOp? conv2d_395/Conv2D/ReadVariableOp?!conv2d_396/BiasAdd/ReadVariableOp? conv2d_396/Conv2D/ReadVariableOp?!conv2d_397/BiasAdd/ReadVariableOp? conv2d_397/Conv2D/ReadVariableOp?dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?
 conv2d_393/Conv2D/ReadVariableOpReadVariableOp)conv2d_393_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_393/Conv2D/ReadVariableOp?
conv2d_393/Conv2DConv2Dinputs(conv2d_393/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_393/Conv2D?
!conv2d_393/BiasAdd/ReadVariableOpReadVariableOp*conv2d_393_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_393/BiasAdd/ReadVariableOp?
conv2d_393/BiasAddBiasAddconv2d_393/Conv2D:output:0)conv2d_393/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_393/BiasAdd?
conv2d_393/ReluReluconv2d_393/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_393/Relu?
&batch_normalization_310/ReadVariableOpReadVariableOp/batch_normalization_310_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_310/ReadVariableOp?
(batch_normalization_310/ReadVariableOp_1ReadVariableOp1batch_normalization_310_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_310/ReadVariableOp_1?
7batch_normalization_310/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_310_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_310/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_310_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_310/FusedBatchNormV3FusedBatchNormV3conv2d_393/Relu:activations:0.batch_normalization_310/ReadVariableOp:value:00batch_normalization_310/ReadVariableOp_1:value:0?batch_normalization_310/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_310/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_310/FusedBatchNormV3?
&batch_normalization_310/AssignNewValueAssignVariableOp@batch_normalization_310_fusedbatchnormv3_readvariableop_resource5batch_normalization_310/FusedBatchNormV3:batch_mean:08^batch_normalization_310/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_310/AssignNewValue?
(batch_normalization_310/AssignNewValue_1AssignVariableOpBbatch_normalization_310_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_310/FusedBatchNormV3:batch_variance:0:^batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_310/AssignNewValue_1?
max_pooling2d_67/MaxPoolMaxPool,batch_normalization_310/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_67/MaxPool?
 conv2d_394/Conv2D/ReadVariableOpReadVariableOp)conv2d_394_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_394/Conv2D/ReadVariableOp?
conv2d_394/Conv2DConv2D!max_pooling2d_67/MaxPool:output:0(conv2d_394/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_394/Conv2D?
!conv2d_394/BiasAdd/ReadVariableOpReadVariableOp*conv2d_394_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_394/BiasAdd/ReadVariableOp?
conv2d_394/BiasAddBiasAddconv2d_394/Conv2D:output:0)conv2d_394/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_394/BiasAdd?
conv2d_394/ReluReluconv2d_394/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_394/Relu?
&batch_normalization_311/ReadVariableOpReadVariableOp/batch_normalization_311_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_311/ReadVariableOp?
(batch_normalization_311/ReadVariableOp_1ReadVariableOp1batch_normalization_311_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_311/ReadVariableOp_1?
7batch_normalization_311/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_311_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_311/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_311_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_311/FusedBatchNormV3FusedBatchNormV3conv2d_394/Relu:activations:0.batch_normalization_311/ReadVariableOp:value:00batch_normalization_311/ReadVariableOp_1:value:0?batch_normalization_311/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_311/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_311/FusedBatchNormV3?
&batch_normalization_311/AssignNewValueAssignVariableOp@batch_normalization_311_fusedbatchnormv3_readvariableop_resource5batch_normalization_311/FusedBatchNormV3:batch_mean:08^batch_normalization_311/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_311/AssignNewValue?
(batch_normalization_311/AssignNewValue_1AssignVariableOpBbatch_normalization_311_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_311/FusedBatchNormV3:batch_variance:0:^batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_311/AssignNewValue_1?
max_pooling2d_68/MaxPoolMaxPool,batch_normalization_311/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_68/MaxPool?
 conv2d_395/Conv2D/ReadVariableOpReadVariableOp)conv2d_395_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_395/Conv2D/ReadVariableOp?
conv2d_395/Conv2DConv2D!max_pooling2d_68/MaxPool:output:0(conv2d_395/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_395/Conv2D?
!conv2d_395/BiasAdd/ReadVariableOpReadVariableOp*conv2d_395_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_395/BiasAdd/ReadVariableOp?
conv2d_395/BiasAddBiasAddconv2d_395/Conv2D:output:0)conv2d_395/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_395/BiasAdd?
conv2d_395/ReluReluconv2d_395/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_395/Relu?
&batch_normalization_312/ReadVariableOpReadVariableOp/batch_normalization_312_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_312/ReadVariableOp?
(batch_normalization_312/ReadVariableOp_1ReadVariableOp1batch_normalization_312_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_312/ReadVariableOp_1?
7batch_normalization_312/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_312_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_312/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_312_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_312/FusedBatchNormV3FusedBatchNormV3conv2d_395/Relu:activations:0.batch_normalization_312/ReadVariableOp:value:00batch_normalization_312/ReadVariableOp_1:value:0?batch_normalization_312/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_312/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_312/FusedBatchNormV3?
&batch_normalization_312/AssignNewValueAssignVariableOp@batch_normalization_312_fusedbatchnormv3_readvariableop_resource5batch_normalization_312/FusedBatchNormV3:batch_mean:08^batch_normalization_312/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_312/AssignNewValue?
(batch_normalization_312/AssignNewValue_1AssignVariableOpBbatch_normalization_312_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_312/FusedBatchNormV3:batch_variance:0:^batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_312/AssignNewValue_1?
 conv2d_396/Conv2D/ReadVariableOpReadVariableOp)conv2d_396_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_396/Conv2D/ReadVariableOp?
conv2d_396/Conv2DConv2D,batch_normalization_312/FusedBatchNormV3:y:0(conv2d_396/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_396/Conv2D?
!conv2d_396/BiasAdd/ReadVariableOpReadVariableOp*conv2d_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_396/BiasAdd/ReadVariableOp?
conv2d_396/BiasAddBiasAddconv2d_396/Conv2D:output:0)conv2d_396/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_396/BiasAdd?
conv2d_396/ReluReluconv2d_396/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_396/Relu?
&batch_normalization_313/ReadVariableOpReadVariableOp/batch_normalization_313_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_313/ReadVariableOp?
(batch_normalization_313/ReadVariableOp_1ReadVariableOp1batch_normalization_313_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_313/ReadVariableOp_1?
7batch_normalization_313/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_313_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_313/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_313_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_313/FusedBatchNormV3FusedBatchNormV3conv2d_396/Relu:activations:0.batch_normalization_313/ReadVariableOp:value:00batch_normalization_313/ReadVariableOp_1:value:0?batch_normalization_313/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_313/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_313/FusedBatchNormV3?
&batch_normalization_313/AssignNewValueAssignVariableOp@batch_normalization_313_fusedbatchnormv3_readvariableop_resource5batch_normalization_313/FusedBatchNormV3:batch_mean:08^batch_normalization_313/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_313/AssignNewValue?
(batch_normalization_313/AssignNewValue_1AssignVariableOpBbatch_normalization_313_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_313/FusedBatchNormV3:batch_variance:0:^batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_313/AssignNewValue_1?
 conv2d_397/Conv2D/ReadVariableOpReadVariableOp)conv2d_397_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_397/Conv2D/ReadVariableOp?
conv2d_397/Conv2DConv2D,batch_normalization_313/FusedBatchNormV3:y:0(conv2d_397/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_397/Conv2D?
!conv2d_397/BiasAdd/ReadVariableOpReadVariableOp*conv2d_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_397/BiasAdd/ReadVariableOp?
conv2d_397/BiasAddBiasAddconv2d_397/Conv2D:output:0)conv2d_397/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_397/BiasAdd?
conv2d_397/ReluReluconv2d_397/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_397/Relu?
&batch_normalization_314/ReadVariableOpReadVariableOp/batch_normalization_314_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_314/ReadVariableOp?
(batch_normalization_314/ReadVariableOp_1ReadVariableOp1batch_normalization_314_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_314/ReadVariableOp_1?
7batch_normalization_314/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_314_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_314/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_314_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_314/FusedBatchNormV3FusedBatchNormV3conv2d_397/Relu:activations:0.batch_normalization_314/ReadVariableOp:value:00batch_normalization_314/ReadVariableOp_1:value:0?batch_normalization_314/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_314/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_314/FusedBatchNormV3?
&batch_normalization_314/AssignNewValueAssignVariableOp@batch_normalization_314_fusedbatchnormv3_readvariableop_resource5batch_normalization_314/FusedBatchNormV3:batch_mean:08^batch_normalization_314/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_314/AssignNewValue?
(batch_normalization_314/AssignNewValue_1AssignVariableOpBbatch_normalization_314_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_314/FusedBatchNormV3:batch_variance:0:^batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_314/AssignNewValue_1?
max_pooling2d_69/MaxPoolMaxPool,batch_normalization_314/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_69/MaxPoolu
flatten_30/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_30/Const?
flatten_30/ReshapeReshape!max_pooling2d_69/MaxPool:output:0flatten_30/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_30/Reshape?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMulMatMulflatten_30/Reshape:output:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_64/BiasAdd|
dense_64/SigmoidSigmoiddense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_64/Sigmoido
IdentityIdentitydense_64/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_310/AssignNewValue)^batch_normalization_310/AssignNewValue_18^batch_normalization_310/FusedBatchNormV3/ReadVariableOp:^batch_normalization_310/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_310/ReadVariableOp)^batch_normalization_310/ReadVariableOp_1'^batch_normalization_311/AssignNewValue)^batch_normalization_311/AssignNewValue_18^batch_normalization_311/FusedBatchNormV3/ReadVariableOp:^batch_normalization_311/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_311/ReadVariableOp)^batch_normalization_311/ReadVariableOp_1'^batch_normalization_312/AssignNewValue)^batch_normalization_312/AssignNewValue_18^batch_normalization_312/FusedBatchNormV3/ReadVariableOp:^batch_normalization_312/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_312/ReadVariableOp)^batch_normalization_312/ReadVariableOp_1'^batch_normalization_313/AssignNewValue)^batch_normalization_313/AssignNewValue_18^batch_normalization_313/FusedBatchNormV3/ReadVariableOp:^batch_normalization_313/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_313/ReadVariableOp)^batch_normalization_313/ReadVariableOp_1'^batch_normalization_314/AssignNewValue)^batch_normalization_314/AssignNewValue_18^batch_normalization_314/FusedBatchNormV3/ReadVariableOp:^batch_normalization_314/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_314/ReadVariableOp)^batch_normalization_314/ReadVariableOp_1"^conv2d_393/BiasAdd/ReadVariableOp!^conv2d_393/Conv2D/ReadVariableOp"^conv2d_394/BiasAdd/ReadVariableOp!^conv2d_394/Conv2D/ReadVariableOp"^conv2d_395/BiasAdd/ReadVariableOp!^conv2d_395/Conv2D/ReadVariableOp"^conv2d_396/BiasAdd/ReadVariableOp!^conv2d_396/Conv2D/ReadVariableOp"^conv2d_397/BiasAdd/ReadVariableOp!^conv2d_397/Conv2D/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_310/AssignNewValue&batch_normalization_310/AssignNewValue2T
(batch_normalization_310/AssignNewValue_1(batch_normalization_310/AssignNewValue_12r
7batch_normalization_310/FusedBatchNormV3/ReadVariableOp7batch_normalization_310/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_310/FusedBatchNormV3/ReadVariableOp_19batch_normalization_310/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_310/ReadVariableOp&batch_normalization_310/ReadVariableOp2T
(batch_normalization_310/ReadVariableOp_1(batch_normalization_310/ReadVariableOp_12P
&batch_normalization_311/AssignNewValue&batch_normalization_311/AssignNewValue2T
(batch_normalization_311/AssignNewValue_1(batch_normalization_311/AssignNewValue_12r
7batch_normalization_311/FusedBatchNormV3/ReadVariableOp7batch_normalization_311/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_311/FusedBatchNormV3/ReadVariableOp_19batch_normalization_311/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_311/ReadVariableOp&batch_normalization_311/ReadVariableOp2T
(batch_normalization_311/ReadVariableOp_1(batch_normalization_311/ReadVariableOp_12P
&batch_normalization_312/AssignNewValue&batch_normalization_312/AssignNewValue2T
(batch_normalization_312/AssignNewValue_1(batch_normalization_312/AssignNewValue_12r
7batch_normalization_312/FusedBatchNormV3/ReadVariableOp7batch_normalization_312/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_312/FusedBatchNormV3/ReadVariableOp_19batch_normalization_312/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_312/ReadVariableOp&batch_normalization_312/ReadVariableOp2T
(batch_normalization_312/ReadVariableOp_1(batch_normalization_312/ReadVariableOp_12P
&batch_normalization_313/AssignNewValue&batch_normalization_313/AssignNewValue2T
(batch_normalization_313/AssignNewValue_1(batch_normalization_313/AssignNewValue_12r
7batch_normalization_313/FusedBatchNormV3/ReadVariableOp7batch_normalization_313/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_313/FusedBatchNormV3/ReadVariableOp_19batch_normalization_313/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_313/ReadVariableOp&batch_normalization_313/ReadVariableOp2T
(batch_normalization_313/ReadVariableOp_1(batch_normalization_313/ReadVariableOp_12P
&batch_normalization_314/AssignNewValue&batch_normalization_314/AssignNewValue2T
(batch_normalization_314/AssignNewValue_1(batch_normalization_314/AssignNewValue_12r
7batch_normalization_314/FusedBatchNormV3/ReadVariableOp7batch_normalization_314/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_314/FusedBatchNormV3/ReadVariableOp_19batch_normalization_314/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_314/ReadVariableOp&batch_normalization_314/ReadVariableOp2T
(batch_normalization_314/ReadVariableOp_1(batch_normalization_314/ReadVariableOp_12F
!conv2d_393/BiasAdd/ReadVariableOp!conv2d_393/BiasAdd/ReadVariableOp2D
 conv2d_393/Conv2D/ReadVariableOp conv2d_393/Conv2D/ReadVariableOp2F
!conv2d_394/BiasAdd/ReadVariableOp!conv2d_394/BiasAdd/ReadVariableOp2D
 conv2d_394/Conv2D/ReadVariableOp conv2d_394/Conv2D/ReadVariableOp2F
!conv2d_395/BiasAdd/ReadVariableOp!conv2d_395/BiasAdd/ReadVariableOp2D
 conv2d_395/Conv2D/ReadVariableOp conv2d_395/Conv2D/ReadVariableOp2F
!conv2d_396/BiasAdd/ReadVariableOp!conv2d_396/BiasAdd/ReadVariableOp2D
 conv2d_396/Conv2D/ReadVariableOp conv2d_396/Conv2D/ReadVariableOp2F
!conv2d_397/BiasAdd/ReadVariableOp!conv2d_397/BiasAdd/ReadVariableOp2D
 conv2d_397/Conv2D/ReadVariableOp conv2d_397/Conv2D/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8387942

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
G__inference_conv2d_394_layer_call_and_return_conditional_losses_8387869

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
?
?
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389915

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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389897

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
9__inference_batch_normalization_312_layer_call_fn_8389784

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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_83874232
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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8387986

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
?
?
,__inference_conv2d_397_layer_call_fn_8389987

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
G__inference_conv2d_397_layer_call_and_return_conditional_losses_83880072
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
?
N
2__inference_max_pooling2d_67_layer_call_fn_8389510

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
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_83872402
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
?
?
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8387467

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
-__inference_alex_net_11_layer_call_fn_8389351

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
H__inference_alex_net_11_layer_call_and_return_conditional_losses_83885942
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
?Y
?
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8388813
conv2d_393_input,
conv2d_393_8388733:` 
conv2d_393_8388735:`-
batch_normalization_310_8388738:`-
batch_normalization_310_8388740:`-
batch_normalization_310_8388742:`-
batch_normalization_310_8388744:`-
conv2d_394_8388748:`?!
conv2d_394_8388750:	?.
batch_normalization_311_8388753:	?.
batch_normalization_311_8388755:	?.
batch_normalization_311_8388757:	?.
batch_normalization_311_8388759:	?.
conv2d_395_8388763:??!
conv2d_395_8388765:	?.
batch_normalization_312_8388768:	?.
batch_normalization_312_8388770:	?.
batch_normalization_312_8388772:	?.
batch_normalization_312_8388774:	?.
conv2d_396_8388777:??!
conv2d_396_8388779:	?.
batch_normalization_313_8388782:	?.
batch_normalization_313_8388784:	?.
batch_normalization_313_8388786:	?.
batch_normalization_313_8388788:	?.
conv2d_397_8388791:??!
conv2d_397_8388793:	?.
batch_normalization_314_8388796:	?.
batch_normalization_314_8388798:	?.
batch_normalization_314_8388800:	?.
batch_normalization_314_8388802:	?#
dense_64_8388807:	?(
dense_64_8388809:
identity??/batch_normalization_310/StatefulPartitionedCall?/batch_normalization_311/StatefulPartitionedCall?/batch_normalization_312/StatefulPartitionedCall?/batch_normalization_313/StatefulPartitionedCall?/batch_normalization_314/StatefulPartitionedCall?"conv2d_393/StatefulPartitionedCall?"conv2d_394/StatefulPartitionedCall?"conv2d_395/StatefulPartitionedCall?"conv2d_396/StatefulPartitionedCall?"conv2d_397/StatefulPartitionedCall? dense_64/StatefulPartitionedCall?
"conv2d_393/StatefulPartitionedCallStatefulPartitionedCallconv2d_393_inputconv2d_393_8388733conv2d_393_8388735*
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
G__inference_conv2d_393_layer_call_and_return_conditional_losses_83878192$
"conv2d_393/StatefulPartitionedCall?
/batch_normalization_310/StatefulPartitionedCallStatefulPartitionedCall+conv2d_393/StatefulPartitionedCall:output:0batch_normalization_310_8388738batch_normalization_310_8388740batch_normalization_310_8388742batch_normalization_310_8388744*
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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_838784221
/batch_normalization_310/StatefulPartitionedCall?
 max_pooling2d_67/PartitionedCallPartitionedCall8batch_normalization_310/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_83878562"
 max_pooling2d_67/PartitionedCall?
"conv2d_394/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_67/PartitionedCall:output:0conv2d_394_8388748conv2d_394_8388750*
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
G__inference_conv2d_394_layer_call_and_return_conditional_losses_83878692$
"conv2d_394/StatefulPartitionedCall?
/batch_normalization_311/StatefulPartitionedCallStatefulPartitionedCall+conv2d_394/StatefulPartitionedCall:output:0batch_normalization_311_8388753batch_normalization_311_8388755batch_normalization_311_8388757batch_normalization_311_8388759*
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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_838789221
/batch_normalization_311/StatefulPartitionedCall?
 max_pooling2d_68/PartitionedCallPartitionedCall8batch_normalization_311/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_83879062"
 max_pooling2d_68/PartitionedCall?
"conv2d_395/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_68/PartitionedCall:output:0conv2d_395_8388763conv2d_395_8388765*
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
G__inference_conv2d_395_layer_call_and_return_conditional_losses_83879192$
"conv2d_395/StatefulPartitionedCall?
/batch_normalization_312/StatefulPartitionedCallStatefulPartitionedCall+conv2d_395/StatefulPartitionedCall:output:0batch_normalization_312_8388768batch_normalization_312_8388770batch_normalization_312_8388772batch_normalization_312_8388774*
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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_838794221
/batch_normalization_312/StatefulPartitionedCall?
"conv2d_396/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_312/StatefulPartitionedCall:output:0conv2d_396_8388777conv2d_396_8388779*
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
G__inference_conv2d_396_layer_call_and_return_conditional_losses_83879632$
"conv2d_396/StatefulPartitionedCall?
/batch_normalization_313/StatefulPartitionedCallStatefulPartitionedCall+conv2d_396/StatefulPartitionedCall:output:0batch_normalization_313_8388782batch_normalization_313_8388784batch_normalization_313_8388786batch_normalization_313_8388788*
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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_838798621
/batch_normalization_313/StatefulPartitionedCall?
"conv2d_397/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_313/StatefulPartitionedCall:output:0conv2d_397_8388791conv2d_397_8388793*
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
G__inference_conv2d_397_layer_call_and_return_conditional_losses_83880072$
"conv2d_397/StatefulPartitionedCall?
/batch_normalization_314/StatefulPartitionedCallStatefulPartitionedCall+conv2d_397/StatefulPartitionedCall:output:0batch_normalization_314_8388796batch_normalization_314_8388798batch_normalization_314_8388800batch_normalization_314_8388802*
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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_838803021
/batch_normalization_314/StatefulPartitionedCall?
 max_pooling2d_69/PartitionedCallPartitionedCall8batch_normalization_314/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_83880442"
 max_pooling2d_69/PartitionedCall?
flatten_30/PartitionedCallPartitionedCall)max_pooling2d_69/PartitionedCall:output:0*
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
G__inference_flatten_30_layer_call_and_return_conditional_losses_83880522
flatten_30/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#flatten_30/PartitionedCall:output:0dense_64_8388807dense_64_8388809*
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
E__inference_dense_64_layer_call_and_return_conditional_losses_83880652"
 dense_64/StatefulPartitionedCall?
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_310/StatefulPartitionedCall0^batch_normalization_311/StatefulPartitionedCall0^batch_normalization_312/StatefulPartitionedCall0^batch_normalization_313/StatefulPartitionedCall0^batch_normalization_314/StatefulPartitionedCall#^conv2d_393/StatefulPartitionedCall#^conv2d_394/StatefulPartitionedCall#^conv2d_395/StatefulPartitionedCall#^conv2d_396/StatefulPartitionedCall#^conv2d_397/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_310/StatefulPartitionedCall/batch_normalization_310/StatefulPartitionedCall2b
/batch_normalization_311/StatefulPartitionedCall/batch_normalization_311/StatefulPartitionedCall2b
/batch_normalization_312/StatefulPartitionedCall/batch_normalization_312/StatefulPartitionedCall2b
/batch_normalization_313/StatefulPartitionedCall/batch_normalization_313/StatefulPartitionedCall2b
/batch_normalization_314/StatefulPartitionedCall/batch_normalization_314/StatefulPartitionedCall2H
"conv2d_393/StatefulPartitionedCall"conv2d_393/StatefulPartitionedCall2H
"conv2d_394/StatefulPartitionedCall"conv2d_394/StatefulPartitionedCall2H
"conv2d_395/StatefulPartitionedCall"conv2d_395/StatefulPartitionedCall2H
"conv2d_396/StatefulPartitionedCall"conv2d_396/StatefulPartitionedCall2H
"conv2d_397/StatefulPartitionedCall"conv2d_397/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_393_input
?
?
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8388030

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
?
?
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8387842

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
?
?
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8388419

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
?
?
,__inference_conv2d_393_layer_call_fn_8389371

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
G__inference_conv2d_393_layer_call_and_return_conditional_losses_83878192
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
?
?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8387275

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
9__inference_batch_normalization_314_layer_call_fn_8390098

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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_83880302
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
?
?
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8387127

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
?
?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8387892

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
?
?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389571

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
?
i
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_8387856

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
?
?
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389443

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
?
i
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_8389669

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
?
9__inference_batch_normalization_313_layer_call_fn_8389928

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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_83875492
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
?T
?
 __inference__traced_save_8390305
file_prefix0
,savev2_conv2d_393_kernel_read_readvariableop.
*savev2_conv2d_393_bias_read_readvariableop<
8savev2_batch_normalization_310_gamma_read_readvariableop;
7savev2_batch_normalization_310_beta_read_readvariableopB
>savev2_batch_normalization_310_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_310_moving_variance_read_readvariableop0
,savev2_conv2d_394_kernel_read_readvariableop.
*savev2_conv2d_394_bias_read_readvariableop<
8savev2_batch_normalization_311_gamma_read_readvariableop;
7savev2_batch_normalization_311_beta_read_readvariableopB
>savev2_batch_normalization_311_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_311_moving_variance_read_readvariableop0
,savev2_conv2d_395_kernel_read_readvariableop.
*savev2_conv2d_395_bias_read_readvariableop<
8savev2_batch_normalization_312_gamma_read_readvariableop;
7savev2_batch_normalization_312_beta_read_readvariableopB
>savev2_batch_normalization_312_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_312_moving_variance_read_readvariableop0
,savev2_conv2d_396_kernel_read_readvariableop.
*savev2_conv2d_396_bias_read_readvariableop<
8savev2_batch_normalization_313_gamma_read_readvariableop;
7savev2_batch_normalization_313_beta_read_readvariableopB
>savev2_batch_normalization_313_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_313_moving_variance_read_readvariableop0
,savev2_conv2d_397_kernel_read_readvariableop.
*savev2_conv2d_397_bias_read_readvariableop<
8savev2_batch_normalization_314_gamma_read_readvariableop;
7savev2_batch_normalization_314_beta_read_readvariableopB
>savev2_batch_normalization_314_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_314_moving_variance_read_readvariableop.
*savev2_dense_64_kernel_read_readvariableop,
(savev2_dense_64_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_393_kernel_read_readvariableop*savev2_conv2d_393_bias_read_readvariableop8savev2_batch_normalization_310_gamma_read_readvariableop7savev2_batch_normalization_310_beta_read_readvariableop>savev2_batch_normalization_310_moving_mean_read_readvariableopBsavev2_batch_normalization_310_moving_variance_read_readvariableop,savev2_conv2d_394_kernel_read_readvariableop*savev2_conv2d_394_bias_read_readvariableop8savev2_batch_normalization_311_gamma_read_readvariableop7savev2_batch_normalization_311_beta_read_readvariableop>savev2_batch_normalization_311_moving_mean_read_readvariableopBsavev2_batch_normalization_311_moving_variance_read_readvariableop,savev2_conv2d_395_kernel_read_readvariableop*savev2_conv2d_395_bias_read_readvariableop8savev2_batch_normalization_312_gamma_read_readvariableop7savev2_batch_normalization_312_beta_read_readvariableop>savev2_batch_normalization_312_moving_mean_read_readvariableopBsavev2_batch_normalization_312_moving_variance_read_readvariableop,savev2_conv2d_396_kernel_read_readvariableop*savev2_conv2d_396_bias_read_readvariableop8savev2_batch_normalization_313_gamma_read_readvariableop7savev2_batch_normalization_313_beta_read_readvariableop>savev2_batch_normalization_313_moving_mean_read_readvariableopBsavev2_batch_normalization_313_moving_variance_read_readvariableop,savev2_conv2d_397_kernel_read_readvariableop*savev2_conv2d_397_bias_read_readvariableop8savev2_batch_normalization_314_gamma_read_readvariableop7savev2_batch_normalization_314_beta_read_readvariableop>savev2_batch_normalization_314_moving_mean_read_readvariableopBsavev2_batch_normalization_314_moving_variance_read_readvariableop*savev2_dense_64_kernel_read_readvariableop(savev2_dense_64_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?	
?
9__inference_batch_normalization_313_layer_call_fn_8389967

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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_83882472
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
?
G__inference_conv2d_393_layer_call_and_return_conditional_losses_8389362

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
?
?
,__inference_conv2d_395_layer_call_fn_8389699

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
G__inference_conv2d_395_layer_call_and_return_conditional_losses_83879192
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
conv2d_393_inputC
"serving_default_conv2d_393_input:0???????????<
dense_640
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
+:)`2conv2d_393/kernel
:`2conv2d_393/bias
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
+:)`2batch_normalization_310/gamma
*:(`2batch_normalization_310/beta
3:1` (2#batch_normalization_310/moving_mean
7:5` (2'batch_normalization_310/moving_variance
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
,:*`?2conv2d_394/kernel
:?2conv2d_394/bias
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
,:*?2batch_normalization_311/gamma
+:)?2batch_normalization_311/beta
4:2? (2#batch_normalization_311/moving_mean
8:6? (2'batch_normalization_311/moving_variance
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
-:+??2conv2d_395/kernel
:?2conv2d_395/bias
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
,:*?2batch_normalization_312/gamma
+:)?2batch_normalization_312/beta
4:2? (2#batch_normalization_312/moving_mean
8:6? (2'batch_normalization_312/moving_variance
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
-:+??2conv2d_396/kernel
:?2conv2d_396/bias
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
,:*?2batch_normalization_313/gamma
+:)?2batch_normalization_313/beta
4:2? (2#batch_normalization_313/moving_mean
8:6? (2'batch_normalization_313/moving_variance
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
-:+??2conv2d_397/kernel
:?2conv2d_397/bias
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
,:*?2batch_normalization_314/gamma
+:)?2batch_normalization_314/beta
4:2? (2#batch_normalization_314/moving_mean
8:6? (2'batch_normalization_314/moving_variance
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
": 	?(2dense_64/kernel
:2dense_64/bias
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
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8389092
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8389213
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8388813
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8388896?
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
"__inference__wrapped_model_8387105conv2d_393_input"?
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
-__inference_alex_net_11_layer_call_fn_8388139
-__inference_alex_net_11_layer_call_fn_8389282
-__inference_alex_net_11_layer_call_fn_8389351
-__inference_alex_net_11_layer_call_fn_8388730?
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
G__inference_conv2d_393_layer_call_and_return_conditional_losses_8389362?
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
,__inference_conv2d_393_layer_call_fn_8389371?
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
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389389
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389407
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389425
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389443?
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
9__inference_batch_normalization_310_layer_call_fn_8389456
9__inference_batch_normalization_310_layer_call_fn_8389469
9__inference_batch_normalization_310_layer_call_fn_8389482
9__inference_batch_normalization_310_layer_call_fn_8389495?
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
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_8389500
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_8389505?
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
2__inference_max_pooling2d_67_layer_call_fn_8389510
2__inference_max_pooling2d_67_layer_call_fn_8389515?
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
G__inference_conv2d_394_layer_call_and_return_conditional_losses_8389526?
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
,__inference_conv2d_394_layer_call_fn_8389535?
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
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389553
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389571
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389589
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389607?
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
9__inference_batch_normalization_311_layer_call_fn_8389620
9__inference_batch_normalization_311_layer_call_fn_8389633
9__inference_batch_normalization_311_layer_call_fn_8389646
9__inference_batch_normalization_311_layer_call_fn_8389659?
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
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_8389664
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_8389669?
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
2__inference_max_pooling2d_68_layer_call_fn_8389674
2__inference_max_pooling2d_68_layer_call_fn_8389679?
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
G__inference_conv2d_395_layer_call_and_return_conditional_losses_8389690?
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
,__inference_conv2d_395_layer_call_fn_8389699?
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
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389717
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389735
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389753
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389771?
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
9__inference_batch_normalization_312_layer_call_fn_8389784
9__inference_batch_normalization_312_layer_call_fn_8389797
9__inference_batch_normalization_312_layer_call_fn_8389810
9__inference_batch_normalization_312_layer_call_fn_8389823?
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
G__inference_conv2d_396_layer_call_and_return_conditional_losses_8389834?
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
,__inference_conv2d_396_layer_call_fn_8389843?
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
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389861
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389879
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389897
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389915?
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
9__inference_batch_normalization_313_layer_call_fn_8389928
9__inference_batch_normalization_313_layer_call_fn_8389941
9__inference_batch_normalization_313_layer_call_fn_8389954
9__inference_batch_normalization_313_layer_call_fn_8389967?
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
G__inference_conv2d_397_layer_call_and_return_conditional_losses_8389978?
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
,__inference_conv2d_397_layer_call_fn_8389987?
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
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390005
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390023
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390041
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390059?
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
9__inference_batch_normalization_314_layer_call_fn_8390072
9__inference_batch_normalization_314_layer_call_fn_8390085
9__inference_batch_normalization_314_layer_call_fn_8390098
9__inference_batch_normalization_314_layer_call_fn_8390111?
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
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_8390116
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_8390121?
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
2__inference_max_pooling2d_69_layer_call_fn_8390126
2__inference_max_pooling2d_69_layer_call_fn_8390131?
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
G__inference_flatten_30_layer_call_and_return_conditional_losses_8390137?
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
,__inference_flatten_30_layer_call_fn_8390142?
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
E__inference_dense_64_layer_call_and_return_conditional_losses_8390153?
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
*__inference_dense_64_layer_call_fn_8390162?
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
%__inference_signature_wrapper_8388971conv2d_393_input"?
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
"__inference__wrapped_model_8387105?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_393_input???????????
? "3?0
.
dense_64"?
dense_64??????????
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8388813?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_393_input???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8388896?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_393_input???????????
p

 
? "%?"
?
0?????????
? ?
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8389092?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
H__inference_alex_net_11_layer_call_and_return_conditional_losses_8389213?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
-__inference_alex_net_11_layer_call_fn_8388139?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_393_input???????????
p 

 
? "???????????
-__inference_alex_net_11_layer_call_fn_8388730?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_393_input???????????
p

 
? "???????????
-__inference_alex_net_11_layer_call_fn_8389282  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
-__inference_alex_net_11_layer_call_fn_8389351  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389389? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389407? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389425r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_310_layer_call_and_return_conditional_losses_8389443r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_310_layer_call_fn_8389456? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_310_layer_call_fn_8389469? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_310_layer_call_fn_8389482e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_310_layer_call_fn_8389495e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389553?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389571?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389589t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_311_layer_call_and_return_conditional_losses_8389607t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_311_layer_call_fn_8389620?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_311_layer_call_fn_8389633?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_311_layer_call_fn_8389646g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_311_layer_call_fn_8389659g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389717?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389735?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389753tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_312_layer_call_and_return_conditional_losses_8389771tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_312_layer_call_fn_8389784?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_312_layer_call_fn_8389797?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_312_layer_call_fn_8389810gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_312_layer_call_fn_8389823gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389861?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389879?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389897tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_313_layer_call_and_return_conditional_losses_8389915tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_313_layer_call_fn_8389928?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_313_layer_call_fn_8389941?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_313_layer_call_fn_8389954gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_313_layer_call_fn_8389967gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390005?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390023?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390041tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_314_layer_call_and_return_conditional_losses_8390059tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_314_layer_call_fn_8390072?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_314_layer_call_fn_8390085?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_314_layer_call_fn_8390098gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_314_layer_call_fn_8390111gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_393_layer_call_and_return_conditional_losses_8389362n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_393_layer_call_fn_8389371a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_394_layer_call_and_return_conditional_losses_8389526m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_394_layer_call_fn_8389535`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_395_layer_call_and_return_conditional_losses_8389690n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_395_layer_call_fn_8389699a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_396_layer_call_and_return_conditional_losses_8389834nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_396_layer_call_fn_8389843aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_397_layer_call_and_return_conditional_losses_8389978nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_397_layer_call_fn_8389987aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_64_layer_call_and_return_conditional_losses_8390153]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_64_layer_call_fn_8390162Pqr0?-
&?#
!?
inputs??????????(
? "???????????
G__inference_flatten_30_layer_call_and_return_conditional_losses_8390137b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
,__inference_flatten_30_layer_call_fn_8390142U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_8389500?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_67_layer_call_and_return_conditional_losses_8389505h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_67_layer_call_fn_8389510?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_67_layer_call_fn_8389515[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_8389664?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_68_layer_call_and_return_conditional_losses_8389669j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_68_layer_call_fn_8389674?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_68_layer_call_fn_8389679]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_8390116?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_69_layer_call_and_return_conditional_losses_8390121j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_69_layer_call_fn_8390126?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_69_layer_call_fn_8390131]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_8388971?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_393_input4?1
conv2d_393_input???????????"3?0
.
dense_64"?
dense_64?????????