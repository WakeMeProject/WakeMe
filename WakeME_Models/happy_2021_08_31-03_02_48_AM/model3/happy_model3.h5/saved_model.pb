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
conv2d_366/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_366/kernel

%conv2d_366/kernel/Read/ReadVariableOpReadVariableOpconv2d_366/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_366/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_366/bias
o
#conv2d_366/bias/Read/ReadVariableOpReadVariableOpconv2d_366/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_288/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_288/gamma
?
1batch_normalization_288/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_288/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_288/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_288/beta
?
0batch_normalization_288/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_288/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_288/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_288/moving_mean
?
7batch_normalization_288/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_288/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_288/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_288/moving_variance
?
;batch_normalization_288/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_288/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_367/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_367/kernel
?
%conv2d_367/kernel/Read/ReadVariableOpReadVariableOpconv2d_367/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_367/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_367/bias
p
#conv2d_367/bias/Read/ReadVariableOpReadVariableOpconv2d_367/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_289/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_289/gamma
?
1batch_normalization_289/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_289/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_289/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_289/beta
?
0batch_normalization_289/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_289/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_289/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_289/moving_mean
?
7batch_normalization_289/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_289/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_289/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_289/moving_variance
?
;batch_normalization_289/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_289/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_368/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_368/kernel
?
%conv2d_368/kernel/Read/ReadVariableOpReadVariableOpconv2d_368/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_368/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_368/bias
p
#conv2d_368/bias/Read/ReadVariableOpReadVariableOpconv2d_368/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_290/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_290/gamma
?
1batch_normalization_290/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_290/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_290/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_290/beta
?
0batch_normalization_290/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_290/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_290/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_290/moving_mean
?
7batch_normalization_290/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_290/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_290/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_290/moving_variance
?
;batch_normalization_290/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_290/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_369/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_369/kernel
?
%conv2d_369/kernel/Read/ReadVariableOpReadVariableOpconv2d_369/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_369/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_369/bias
p
#conv2d_369/bias/Read/ReadVariableOpReadVariableOpconv2d_369/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_291/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_291/gamma
?
1batch_normalization_291/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_291/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_291/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_291/beta
?
0batch_normalization_291/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_291/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_291/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_291/moving_mean
?
7batch_normalization_291/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_291/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_291/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_291/moving_variance
?
;batch_normalization_291/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_291/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_370/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_370/kernel
?
%conv2d_370/kernel/Read/ReadVariableOpReadVariableOpconv2d_370/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_370/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_370/bias
p
#conv2d_370/bias/Read/ReadVariableOpReadVariableOpconv2d_370/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_292/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_292/gamma
?
1batch_normalization_292/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_292/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_292/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_292/beta
?
0batch_normalization_292/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_292/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_292/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_292/moving_mean
?
7batch_normalization_292/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_292/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_292/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_292/moving_variance
?
;batch_normalization_292/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_292/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_60/kernel
t
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel*
_output_shapes
:	?(*
dtype0
r
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_60/bias
k
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
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
VARIABLE_VALUEconv2d_366/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_366/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_288/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_288/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_288/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_288/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_367/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_367/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_289/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_289/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_289/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_289/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_368/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_368/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_290/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_290/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_290/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_290/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_369/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_369/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_291/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_291/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_291/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_291/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_370/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_370/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_292/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_292/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_292/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_292/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_60/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_60/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_366_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_366_inputconv2d_366/kernelconv2d_366/biasbatch_normalization_288/gammabatch_normalization_288/beta#batch_normalization_288/moving_mean'batch_normalization_288/moving_varianceconv2d_367/kernelconv2d_367/biasbatch_normalization_289/gammabatch_normalization_289/beta#batch_normalization_289/moving_mean'batch_normalization_289/moving_varianceconv2d_368/kernelconv2d_368/biasbatch_normalization_290/gammabatch_normalization_290/beta#batch_normalization_290/moving_mean'batch_normalization_290/moving_varianceconv2d_369/kernelconv2d_369/biasbatch_normalization_291/gammabatch_normalization_291/beta#batch_normalization_291/moving_mean'batch_normalization_291/moving_varianceconv2d_370/kernelconv2d_370/biasbatch_normalization_292/gammabatch_normalization_292/beta#batch_normalization_292/moving_mean'batch_normalization_292/moving_variancedense_60/kerneldense_60/bias*,
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
%__inference_signature_wrapper_7168859
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_366/kernel/Read/ReadVariableOp#conv2d_366/bias/Read/ReadVariableOp1batch_normalization_288/gamma/Read/ReadVariableOp0batch_normalization_288/beta/Read/ReadVariableOp7batch_normalization_288/moving_mean/Read/ReadVariableOp;batch_normalization_288/moving_variance/Read/ReadVariableOp%conv2d_367/kernel/Read/ReadVariableOp#conv2d_367/bias/Read/ReadVariableOp1batch_normalization_289/gamma/Read/ReadVariableOp0batch_normalization_289/beta/Read/ReadVariableOp7batch_normalization_289/moving_mean/Read/ReadVariableOp;batch_normalization_289/moving_variance/Read/ReadVariableOp%conv2d_368/kernel/Read/ReadVariableOp#conv2d_368/bias/Read/ReadVariableOp1batch_normalization_290/gamma/Read/ReadVariableOp0batch_normalization_290/beta/Read/ReadVariableOp7batch_normalization_290/moving_mean/Read/ReadVariableOp;batch_normalization_290/moving_variance/Read/ReadVariableOp%conv2d_369/kernel/Read/ReadVariableOp#conv2d_369/bias/Read/ReadVariableOp1batch_normalization_291/gamma/Read/ReadVariableOp0batch_normalization_291/beta/Read/ReadVariableOp7batch_normalization_291/moving_mean/Read/ReadVariableOp;batch_normalization_291/moving_variance/Read/ReadVariableOp%conv2d_370/kernel/Read/ReadVariableOp#conv2d_370/bias/Read/ReadVariableOp1batch_normalization_292/gamma/Read/ReadVariableOp0batch_normalization_292/beta/Read/ReadVariableOp7batch_normalization_292/moving_mean/Read/ReadVariableOp;batch_normalization_292/moving_variance/Read/ReadVariableOp#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_7170193
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_366/kernelconv2d_366/biasbatch_normalization_288/gammabatch_normalization_288/beta#batch_normalization_288/moving_mean'batch_normalization_288/moving_varianceconv2d_367/kernelconv2d_367/biasbatch_normalization_289/gammabatch_normalization_289/beta#batch_normalization_289/moving_mean'batch_normalization_289/moving_varianceconv2d_368/kernelconv2d_368/biasbatch_normalization_290/gammabatch_normalization_290/beta#batch_normalization_290/moving_mean'batch_normalization_290/moving_varianceconv2d_369/kernelconv2d_369/biasbatch_normalization_291/gammabatch_normalization_291/beta#batch_normalization_291/moving_mean'batch_normalization_291/moving_varianceconv2d_370/kernelconv2d_370/biasbatch_normalization_292/gammabatch_normalization_292/beta#batch_normalization_292/moving_mean'batch_normalization_292/moving_variancedense_60/kerneldense_60/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_7170323??
?
?
9__inference_batch_normalization_288_layer_call_fn_7169383

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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_71683072
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
?
?
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7167730

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
?
E__inference_dense_60_layer_call_and_return_conditional_losses_7170041

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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7167311

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
?
G__inference_conv2d_369_layer_call_and_return_conditional_losses_7169722

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
?
?
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7168248

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
9__inference_batch_normalization_289_layer_call_fn_7169521

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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_71672072
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
?
N
2__inference_max_pooling2d_63_layer_call_fn_7169567

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
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_71677942
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
?	
?
9__inference_batch_normalization_291_layer_call_fn_7169816

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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_71674372
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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169785

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
,__inference_conv2d_367_layer_call_fn_7169423

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
G__inference_conv2d_367_layer_call_and_return_conditional_losses_71677572
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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169477

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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169911

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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_7170009

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
9__inference_batch_normalization_291_layer_call_fn_7169829

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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_71674812
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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169313

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
?
N
2__inference_max_pooling2d_64_layer_call_fn_7170014

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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_71676762
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
?
?
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7167874

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
?
?
-__inference_alex_net_10_layer_call_fn_7169170

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
H__inference_alex_net_10_layer_call_and_return_conditional_losses_71679602
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
?	
?
9__inference_batch_normalization_288_layer_call_fn_7169370

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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_71677302
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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_7167932

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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7167207

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
?
?
-__inference_alex_net_10_layer_call_fn_7169239

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
H__inference_alex_net_10_layer_call_and_return_conditional_losses_71684822
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
?T
?
 __inference__traced_save_7170193
file_prefix0
,savev2_conv2d_366_kernel_read_readvariableop.
*savev2_conv2d_366_bias_read_readvariableop<
8savev2_batch_normalization_288_gamma_read_readvariableop;
7savev2_batch_normalization_288_beta_read_readvariableopB
>savev2_batch_normalization_288_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_288_moving_variance_read_readvariableop0
,savev2_conv2d_367_kernel_read_readvariableop.
*savev2_conv2d_367_bias_read_readvariableop<
8savev2_batch_normalization_289_gamma_read_readvariableop;
7savev2_batch_normalization_289_beta_read_readvariableopB
>savev2_batch_normalization_289_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_289_moving_variance_read_readvariableop0
,savev2_conv2d_368_kernel_read_readvariableop.
*savev2_conv2d_368_bias_read_readvariableop<
8savev2_batch_normalization_290_gamma_read_readvariableop;
7savev2_batch_normalization_290_beta_read_readvariableopB
>savev2_batch_normalization_290_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_290_moving_variance_read_readvariableop0
,savev2_conv2d_369_kernel_read_readvariableop.
*savev2_conv2d_369_bias_read_readvariableop<
8savev2_batch_normalization_291_gamma_read_readvariableop;
7savev2_batch_normalization_291_beta_read_readvariableopB
>savev2_batch_normalization_291_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_291_moving_variance_read_readvariableop0
,savev2_conv2d_370_kernel_read_readvariableop.
*savev2_conv2d_370_bias_read_readvariableop<
8savev2_batch_normalization_292_gamma_read_readvariableop;
7savev2_batch_normalization_292_beta_read_readvariableopB
>savev2_batch_normalization_292_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_292_moving_variance_read_readvariableop.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_366_kernel_read_readvariableop*savev2_conv2d_366_bias_read_readvariableop8savev2_batch_normalization_288_gamma_read_readvariableop7savev2_batch_normalization_288_beta_read_readvariableop>savev2_batch_normalization_288_moving_mean_read_readvariableopBsavev2_batch_normalization_288_moving_variance_read_readvariableop,savev2_conv2d_367_kernel_read_readvariableop*savev2_conv2d_367_bias_read_readvariableop8savev2_batch_normalization_289_gamma_read_readvariableop7savev2_batch_normalization_289_beta_read_readvariableop>savev2_batch_normalization_289_moving_mean_read_readvariableopBsavev2_batch_normalization_289_moving_variance_read_readvariableop,savev2_conv2d_368_kernel_read_readvariableop*savev2_conv2d_368_bias_read_readvariableop8savev2_batch_normalization_290_gamma_read_readvariableop7savev2_batch_normalization_290_beta_read_readvariableop>savev2_batch_normalization_290_moving_mean_read_readvariableopBsavev2_batch_normalization_290_moving_variance_read_readvariableop,savev2_conv2d_369_kernel_read_readvariableop*savev2_conv2d_369_bias_read_readvariableop8savev2_batch_normalization_291_gamma_read_readvariableop7savev2_batch_normalization_291_beta_read_readvariableop>savev2_batch_normalization_291_moving_mean_read_readvariableopBsavev2_batch_normalization_291_moving_variance_read_readvariableop,savev2_conv2d_370_kernel_read_readvariableop*savev2_conv2d_370_bias_read_readvariableop8savev2_batch_normalization_292_gamma_read_readvariableop7savev2_batch_normalization_292_beta_read_readvariableop>savev2_batch_normalization_292_moving_mean_read_readvariableopBsavev2_batch_normalization_292_moving_variance_read_readvariableop*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
9__inference_batch_normalization_289_layer_call_fn_7169547

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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_71682482
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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169749

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
?
G__inference_conv2d_366_layer_call_and_return_conditional_losses_7167707

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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169459

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
?Y
?
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168784
conv2d_366_input,
conv2d_366_7168704:` 
conv2d_366_7168706:`-
batch_normalization_288_7168709:`-
batch_normalization_288_7168711:`-
batch_normalization_288_7168713:`-
batch_normalization_288_7168715:`-
conv2d_367_7168719:`?!
conv2d_367_7168721:	?.
batch_normalization_289_7168724:	?.
batch_normalization_289_7168726:	?.
batch_normalization_289_7168728:	?.
batch_normalization_289_7168730:	?.
conv2d_368_7168734:??!
conv2d_368_7168736:	?.
batch_normalization_290_7168739:	?.
batch_normalization_290_7168741:	?.
batch_normalization_290_7168743:	?.
batch_normalization_290_7168745:	?.
conv2d_369_7168748:??!
conv2d_369_7168750:	?.
batch_normalization_291_7168753:	?.
batch_normalization_291_7168755:	?.
batch_normalization_291_7168757:	?.
batch_normalization_291_7168759:	?.
conv2d_370_7168762:??!
conv2d_370_7168764:	?.
batch_normalization_292_7168767:	?.
batch_normalization_292_7168769:	?.
batch_normalization_292_7168771:	?.
batch_normalization_292_7168773:	?#
dense_60_7168778:	?(
dense_60_7168780:
identity??/batch_normalization_288/StatefulPartitionedCall?/batch_normalization_289/StatefulPartitionedCall?/batch_normalization_290/StatefulPartitionedCall?/batch_normalization_291/StatefulPartitionedCall?/batch_normalization_292/StatefulPartitionedCall?"conv2d_366/StatefulPartitionedCall?"conv2d_367/StatefulPartitionedCall?"conv2d_368/StatefulPartitionedCall?"conv2d_369/StatefulPartitionedCall?"conv2d_370/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
"conv2d_366/StatefulPartitionedCallStatefulPartitionedCallconv2d_366_inputconv2d_366_7168704conv2d_366_7168706*
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
G__inference_conv2d_366_layer_call_and_return_conditional_losses_71677072$
"conv2d_366/StatefulPartitionedCall?
/batch_normalization_288/StatefulPartitionedCallStatefulPartitionedCall+conv2d_366/StatefulPartitionedCall:output:0batch_normalization_288_7168709batch_normalization_288_7168711batch_normalization_288_7168713batch_normalization_288_7168715*
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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_716830721
/batch_normalization_288/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall8batch_normalization_288/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_71677442"
 max_pooling2d_62/PartitionedCall?
"conv2d_367/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_62/PartitionedCall:output:0conv2d_367_7168719conv2d_367_7168721*
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
G__inference_conv2d_367_layer_call_and_return_conditional_losses_71677572$
"conv2d_367/StatefulPartitionedCall?
/batch_normalization_289/StatefulPartitionedCallStatefulPartitionedCall+conv2d_367/StatefulPartitionedCall:output:0batch_normalization_289_7168724batch_normalization_289_7168726batch_normalization_289_7168728batch_normalization_289_7168730*
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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_716824821
/batch_normalization_289/StatefulPartitionedCall?
 max_pooling2d_63/PartitionedCallPartitionedCall8batch_normalization_289/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_71677942"
 max_pooling2d_63/PartitionedCall?
"conv2d_368/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_63/PartitionedCall:output:0conv2d_368_7168734conv2d_368_7168736*
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
G__inference_conv2d_368_layer_call_and_return_conditional_losses_71678072$
"conv2d_368/StatefulPartitionedCall?
/batch_normalization_290/StatefulPartitionedCallStatefulPartitionedCall+conv2d_368/StatefulPartitionedCall:output:0batch_normalization_290_7168739batch_normalization_290_7168741batch_normalization_290_7168743batch_normalization_290_7168745*
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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_716818921
/batch_normalization_290/StatefulPartitionedCall?
"conv2d_369/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_290/StatefulPartitionedCall:output:0conv2d_369_7168748conv2d_369_7168750*
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
G__inference_conv2d_369_layer_call_and_return_conditional_losses_71678512$
"conv2d_369/StatefulPartitionedCall?
/batch_normalization_291/StatefulPartitionedCallStatefulPartitionedCall+conv2d_369/StatefulPartitionedCall:output:0batch_normalization_291_7168753batch_normalization_291_7168755batch_normalization_291_7168757batch_normalization_291_7168759*
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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_716813521
/batch_normalization_291/StatefulPartitionedCall?
"conv2d_370/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_291/StatefulPartitionedCall:output:0conv2d_370_7168762conv2d_370_7168764*
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
G__inference_conv2d_370_layer_call_and_return_conditional_losses_71678952$
"conv2d_370/StatefulPartitionedCall?
/batch_normalization_292/StatefulPartitionedCallStatefulPartitionedCall+conv2d_370/StatefulPartitionedCall:output:0batch_normalization_292_7168767batch_normalization_292_7168769batch_normalization_292_7168771batch_normalization_292_7168773*
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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_716808121
/batch_normalization_292/StatefulPartitionedCall?
 max_pooling2d_64/PartitionedCallPartitionedCall8batch_normalization_292/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_71679322"
 max_pooling2d_64/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall)max_pooling2d_64/PartitionedCall:output:0*
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_71679402
flatten_28/PartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_60_7168778dense_60_7168780*
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
E__inference_dense_60_layer_call_and_return_conditional_losses_71679532"
 dense_60/StatefulPartitionedCall?
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_288/StatefulPartitionedCall0^batch_normalization_289/StatefulPartitionedCall0^batch_normalization_290/StatefulPartitionedCall0^batch_normalization_291/StatefulPartitionedCall0^batch_normalization_292/StatefulPartitionedCall#^conv2d_366/StatefulPartitionedCall#^conv2d_367/StatefulPartitionedCall#^conv2d_368/StatefulPartitionedCall#^conv2d_369/StatefulPartitionedCall#^conv2d_370/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_288/StatefulPartitionedCall/batch_normalization_288/StatefulPartitionedCall2b
/batch_normalization_289/StatefulPartitionedCall/batch_normalization_289/StatefulPartitionedCall2b
/batch_normalization_290/StatefulPartitionedCall/batch_normalization_290/StatefulPartitionedCall2b
/batch_normalization_291/StatefulPartitionedCall/batch_normalization_291/StatefulPartitionedCall2b
/batch_normalization_292/StatefulPartitionedCall/batch_normalization_292/StatefulPartitionedCall2H
"conv2d_366/StatefulPartitionedCall"conv2d_366/StatefulPartitionedCall2H
"conv2d_367/StatefulPartitionedCall"conv2d_367/StatefulPartitionedCall2H
"conv2d_368/StatefulPartitionedCall"conv2d_368/StatefulPartitionedCall2H
"conv2d_369/StatefulPartitionedCall"conv2d_369/StatefulPartitionedCall2H
"conv2d_370/StatefulPartitionedCall"conv2d_370/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_366_input
?
?
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7167918

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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7167830

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
9__inference_batch_normalization_291_layer_call_fn_7169855

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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_71681352
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
G__inference_conv2d_370_layer_call_and_return_conditional_losses_7169866

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
H
,__inference_flatten_28_layer_call_fn_7170030

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
G__inference_flatten_28_layer_call_and_return_conditional_losses_71679402
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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169641

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
9__inference_batch_normalization_289_layer_call_fn_7169534

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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_71677802
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
?
?
G__inference_conv2d_366_layer_call_and_return_conditional_losses_7169250

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
?
N
2__inference_max_pooling2d_62_layer_call_fn_7169398

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
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_71671282
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
?X
?
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7167960

inputs,
conv2d_366_7167708:` 
conv2d_366_7167710:`-
batch_normalization_288_7167731:`-
batch_normalization_288_7167733:`-
batch_normalization_288_7167735:`-
batch_normalization_288_7167737:`-
conv2d_367_7167758:`?!
conv2d_367_7167760:	?.
batch_normalization_289_7167781:	?.
batch_normalization_289_7167783:	?.
batch_normalization_289_7167785:	?.
batch_normalization_289_7167787:	?.
conv2d_368_7167808:??!
conv2d_368_7167810:	?.
batch_normalization_290_7167831:	?.
batch_normalization_290_7167833:	?.
batch_normalization_290_7167835:	?.
batch_normalization_290_7167837:	?.
conv2d_369_7167852:??!
conv2d_369_7167854:	?.
batch_normalization_291_7167875:	?.
batch_normalization_291_7167877:	?.
batch_normalization_291_7167879:	?.
batch_normalization_291_7167881:	?.
conv2d_370_7167896:??!
conv2d_370_7167898:	?.
batch_normalization_292_7167919:	?.
batch_normalization_292_7167921:	?.
batch_normalization_292_7167923:	?.
batch_normalization_292_7167925:	?#
dense_60_7167954:	?(
dense_60_7167956:
identity??/batch_normalization_288/StatefulPartitionedCall?/batch_normalization_289/StatefulPartitionedCall?/batch_normalization_290/StatefulPartitionedCall?/batch_normalization_291/StatefulPartitionedCall?/batch_normalization_292/StatefulPartitionedCall?"conv2d_366/StatefulPartitionedCall?"conv2d_367/StatefulPartitionedCall?"conv2d_368/StatefulPartitionedCall?"conv2d_369/StatefulPartitionedCall?"conv2d_370/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
"conv2d_366/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_366_7167708conv2d_366_7167710*
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
G__inference_conv2d_366_layer_call_and_return_conditional_losses_71677072$
"conv2d_366/StatefulPartitionedCall?
/batch_normalization_288/StatefulPartitionedCallStatefulPartitionedCall+conv2d_366/StatefulPartitionedCall:output:0batch_normalization_288_7167731batch_normalization_288_7167733batch_normalization_288_7167735batch_normalization_288_7167737*
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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_716773021
/batch_normalization_288/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall8batch_normalization_288/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_71677442"
 max_pooling2d_62/PartitionedCall?
"conv2d_367/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_62/PartitionedCall:output:0conv2d_367_7167758conv2d_367_7167760*
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
G__inference_conv2d_367_layer_call_and_return_conditional_losses_71677572$
"conv2d_367/StatefulPartitionedCall?
/batch_normalization_289/StatefulPartitionedCallStatefulPartitionedCall+conv2d_367/StatefulPartitionedCall:output:0batch_normalization_289_7167781batch_normalization_289_7167783batch_normalization_289_7167785batch_normalization_289_7167787*
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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_716778021
/batch_normalization_289/StatefulPartitionedCall?
 max_pooling2d_63/PartitionedCallPartitionedCall8batch_normalization_289/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_71677942"
 max_pooling2d_63/PartitionedCall?
"conv2d_368/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_63/PartitionedCall:output:0conv2d_368_7167808conv2d_368_7167810*
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
G__inference_conv2d_368_layer_call_and_return_conditional_losses_71678072$
"conv2d_368/StatefulPartitionedCall?
/batch_normalization_290/StatefulPartitionedCallStatefulPartitionedCall+conv2d_368/StatefulPartitionedCall:output:0batch_normalization_290_7167831batch_normalization_290_7167833batch_normalization_290_7167835batch_normalization_290_7167837*
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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_716783021
/batch_normalization_290/StatefulPartitionedCall?
"conv2d_369/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_290/StatefulPartitionedCall:output:0conv2d_369_7167852conv2d_369_7167854*
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
G__inference_conv2d_369_layer_call_and_return_conditional_losses_71678512$
"conv2d_369/StatefulPartitionedCall?
/batch_normalization_291/StatefulPartitionedCallStatefulPartitionedCall+conv2d_369/StatefulPartitionedCall:output:0batch_normalization_291_7167875batch_normalization_291_7167877batch_normalization_291_7167879batch_normalization_291_7167881*
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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_716787421
/batch_normalization_291/StatefulPartitionedCall?
"conv2d_370/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_291/StatefulPartitionedCall:output:0conv2d_370_7167896conv2d_370_7167898*
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
G__inference_conv2d_370_layer_call_and_return_conditional_losses_71678952$
"conv2d_370/StatefulPartitionedCall?
/batch_normalization_292/StatefulPartitionedCallStatefulPartitionedCall+conv2d_370/StatefulPartitionedCall:output:0batch_normalization_292_7167919batch_normalization_292_7167921batch_normalization_292_7167923batch_normalization_292_7167925*
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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_716791821
/batch_normalization_292/StatefulPartitionedCall?
 max_pooling2d_64/PartitionedCallPartitionedCall8batch_normalization_292/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_71679322"
 max_pooling2d_64/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall)max_pooling2d_64/PartitionedCall:output:0*
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_71679402
flatten_28/PartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_60_7167954dense_60_7167956*
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
E__inference_dense_60_layer_call_and_return_conditional_losses_71679532"
 dense_60/StatefulPartitionedCall?
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_288/StatefulPartitionedCall0^batch_normalization_289/StatefulPartitionedCall0^batch_normalization_290/StatefulPartitionedCall0^batch_normalization_291/StatefulPartitionedCall0^batch_normalization_292/StatefulPartitionedCall#^conv2d_366/StatefulPartitionedCall#^conv2d_367/StatefulPartitionedCall#^conv2d_368/StatefulPartitionedCall#^conv2d_369/StatefulPartitionedCall#^conv2d_370/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_288/StatefulPartitionedCall/batch_normalization_288/StatefulPartitionedCall2b
/batch_normalization_289/StatefulPartitionedCall/batch_normalization_289/StatefulPartitionedCall2b
/batch_normalization_290/StatefulPartitionedCall/batch_normalization_290/StatefulPartitionedCall2b
/batch_normalization_291/StatefulPartitionedCall/batch_normalization_291/StatefulPartitionedCall2b
/batch_normalization_292/StatefulPartitionedCall/batch_normalization_292/StatefulPartitionedCall2H
"conv2d_366/StatefulPartitionedCall"conv2d_366/StatefulPartitionedCall2H
"conv2d_367/StatefulPartitionedCall"conv2d_367/StatefulPartitionedCall2H
"conv2d_368/StatefulPartitionedCall"conv2d_368/StatefulPartitionedCall2H
"conv2d_369/StatefulPartitionedCall"conv2d_369/StatefulPartitionedCall2H
"conv2d_370/StatefulPartitionedCall"conv2d_370/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_292_layer_call_fn_7169986

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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_71679182
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
?
?
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7168135

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
?
?
*__inference_dense_60_layer_call_fn_7170050

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
E__inference_dense_60_layer_call_and_return_conditional_losses_71679532
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
?
?
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169803

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
N
2__inference_max_pooling2d_64_layer_call_fn_7170019

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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_71679322
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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169495

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
?
?
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169295

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
?
?
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169767

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
G__inference_conv2d_367_layer_call_and_return_conditional_losses_7167757

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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169605

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
?
i
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_7167276

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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_7170004

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
N
2__inference_max_pooling2d_62_layer_call_fn_7169403

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
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_71677442
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
??
? 
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7169101

inputsC
)conv2d_366_conv2d_readvariableop_resource:`8
*conv2d_366_biasadd_readvariableop_resource:`=
/batch_normalization_288_readvariableop_resource:`?
1batch_normalization_288_readvariableop_1_resource:`N
@batch_normalization_288_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_288_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_367_conv2d_readvariableop_resource:`?9
*conv2d_367_biasadd_readvariableop_resource:	?>
/batch_normalization_289_readvariableop_resource:	?@
1batch_normalization_289_readvariableop_1_resource:	?O
@batch_normalization_289_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_289_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_368_conv2d_readvariableop_resource:??9
*conv2d_368_biasadd_readvariableop_resource:	?>
/batch_normalization_290_readvariableop_resource:	?@
1batch_normalization_290_readvariableop_1_resource:	?O
@batch_normalization_290_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_290_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_369_conv2d_readvariableop_resource:??9
*conv2d_369_biasadd_readvariableop_resource:	?>
/batch_normalization_291_readvariableop_resource:	?@
1batch_normalization_291_readvariableop_1_resource:	?O
@batch_normalization_291_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_291_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_370_conv2d_readvariableop_resource:??9
*conv2d_370_biasadd_readvariableop_resource:	?>
/batch_normalization_292_readvariableop_resource:	?@
1batch_normalization_292_readvariableop_1_resource:	?O
@batch_normalization_292_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_292_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_60_matmul_readvariableop_resource:	?(6
(dense_60_biasadd_readvariableop_resource:
identity??&batch_normalization_288/AssignNewValue?(batch_normalization_288/AssignNewValue_1?7batch_normalization_288/FusedBatchNormV3/ReadVariableOp?9batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_288/ReadVariableOp?(batch_normalization_288/ReadVariableOp_1?&batch_normalization_289/AssignNewValue?(batch_normalization_289/AssignNewValue_1?7batch_normalization_289/FusedBatchNormV3/ReadVariableOp?9batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_289/ReadVariableOp?(batch_normalization_289/ReadVariableOp_1?&batch_normalization_290/AssignNewValue?(batch_normalization_290/AssignNewValue_1?7batch_normalization_290/FusedBatchNormV3/ReadVariableOp?9batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_290/ReadVariableOp?(batch_normalization_290/ReadVariableOp_1?&batch_normalization_291/AssignNewValue?(batch_normalization_291/AssignNewValue_1?7batch_normalization_291/FusedBatchNormV3/ReadVariableOp?9batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_291/ReadVariableOp?(batch_normalization_291/ReadVariableOp_1?&batch_normalization_292/AssignNewValue?(batch_normalization_292/AssignNewValue_1?7batch_normalization_292/FusedBatchNormV3/ReadVariableOp?9batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_292/ReadVariableOp?(batch_normalization_292/ReadVariableOp_1?!conv2d_366/BiasAdd/ReadVariableOp? conv2d_366/Conv2D/ReadVariableOp?!conv2d_367/BiasAdd/ReadVariableOp? conv2d_367/Conv2D/ReadVariableOp?!conv2d_368/BiasAdd/ReadVariableOp? conv2d_368/Conv2D/ReadVariableOp?!conv2d_369/BiasAdd/ReadVariableOp? conv2d_369/Conv2D/ReadVariableOp?!conv2d_370/BiasAdd/ReadVariableOp? conv2d_370/Conv2D/ReadVariableOp?dense_60/BiasAdd/ReadVariableOp?dense_60/MatMul/ReadVariableOp?
 conv2d_366/Conv2D/ReadVariableOpReadVariableOp)conv2d_366_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_366/Conv2D/ReadVariableOp?
conv2d_366/Conv2DConv2Dinputs(conv2d_366/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_366/Conv2D?
!conv2d_366/BiasAdd/ReadVariableOpReadVariableOp*conv2d_366_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_366/BiasAdd/ReadVariableOp?
conv2d_366/BiasAddBiasAddconv2d_366/Conv2D:output:0)conv2d_366/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_366/BiasAdd?
conv2d_366/ReluReluconv2d_366/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_366/Relu?
&batch_normalization_288/ReadVariableOpReadVariableOp/batch_normalization_288_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_288/ReadVariableOp?
(batch_normalization_288/ReadVariableOp_1ReadVariableOp1batch_normalization_288_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_288/ReadVariableOp_1?
7batch_normalization_288/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_288_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_288/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_288_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_288/FusedBatchNormV3FusedBatchNormV3conv2d_366/Relu:activations:0.batch_normalization_288/ReadVariableOp:value:00batch_normalization_288/ReadVariableOp_1:value:0?batch_normalization_288/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_288/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_288/FusedBatchNormV3?
&batch_normalization_288/AssignNewValueAssignVariableOp@batch_normalization_288_fusedbatchnormv3_readvariableop_resource5batch_normalization_288/FusedBatchNormV3:batch_mean:08^batch_normalization_288/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_288/AssignNewValue?
(batch_normalization_288/AssignNewValue_1AssignVariableOpBbatch_normalization_288_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_288/FusedBatchNormV3:batch_variance:0:^batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_288/AssignNewValue_1?
max_pooling2d_62/MaxPoolMaxPool,batch_normalization_288/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_62/MaxPool?
 conv2d_367/Conv2D/ReadVariableOpReadVariableOp)conv2d_367_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_367/Conv2D/ReadVariableOp?
conv2d_367/Conv2DConv2D!max_pooling2d_62/MaxPool:output:0(conv2d_367/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_367/Conv2D?
!conv2d_367/BiasAdd/ReadVariableOpReadVariableOp*conv2d_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_367/BiasAdd/ReadVariableOp?
conv2d_367/BiasAddBiasAddconv2d_367/Conv2D:output:0)conv2d_367/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_367/BiasAdd?
conv2d_367/ReluReluconv2d_367/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_367/Relu?
&batch_normalization_289/ReadVariableOpReadVariableOp/batch_normalization_289_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_289/ReadVariableOp?
(batch_normalization_289/ReadVariableOp_1ReadVariableOp1batch_normalization_289_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_289/ReadVariableOp_1?
7batch_normalization_289/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_289_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_289/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_289_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_289/FusedBatchNormV3FusedBatchNormV3conv2d_367/Relu:activations:0.batch_normalization_289/ReadVariableOp:value:00batch_normalization_289/ReadVariableOp_1:value:0?batch_normalization_289/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_289/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_289/FusedBatchNormV3?
&batch_normalization_289/AssignNewValueAssignVariableOp@batch_normalization_289_fusedbatchnormv3_readvariableop_resource5batch_normalization_289/FusedBatchNormV3:batch_mean:08^batch_normalization_289/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_289/AssignNewValue?
(batch_normalization_289/AssignNewValue_1AssignVariableOpBbatch_normalization_289_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_289/FusedBatchNormV3:batch_variance:0:^batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_289/AssignNewValue_1?
max_pooling2d_63/MaxPoolMaxPool,batch_normalization_289/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_63/MaxPool?
 conv2d_368/Conv2D/ReadVariableOpReadVariableOp)conv2d_368_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_368/Conv2D/ReadVariableOp?
conv2d_368/Conv2DConv2D!max_pooling2d_63/MaxPool:output:0(conv2d_368/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_368/Conv2D?
!conv2d_368/BiasAdd/ReadVariableOpReadVariableOp*conv2d_368_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_368/BiasAdd/ReadVariableOp?
conv2d_368/BiasAddBiasAddconv2d_368/Conv2D:output:0)conv2d_368/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_368/BiasAdd?
conv2d_368/ReluReluconv2d_368/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_368/Relu?
&batch_normalization_290/ReadVariableOpReadVariableOp/batch_normalization_290_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_290/ReadVariableOp?
(batch_normalization_290/ReadVariableOp_1ReadVariableOp1batch_normalization_290_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_290/ReadVariableOp_1?
7batch_normalization_290/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_290_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_290/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_290_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_290/FusedBatchNormV3FusedBatchNormV3conv2d_368/Relu:activations:0.batch_normalization_290/ReadVariableOp:value:00batch_normalization_290/ReadVariableOp_1:value:0?batch_normalization_290/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_290/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_290/FusedBatchNormV3?
&batch_normalization_290/AssignNewValueAssignVariableOp@batch_normalization_290_fusedbatchnormv3_readvariableop_resource5batch_normalization_290/FusedBatchNormV3:batch_mean:08^batch_normalization_290/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_290/AssignNewValue?
(batch_normalization_290/AssignNewValue_1AssignVariableOpBbatch_normalization_290_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_290/FusedBatchNormV3:batch_variance:0:^batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_290/AssignNewValue_1?
 conv2d_369/Conv2D/ReadVariableOpReadVariableOp)conv2d_369_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_369/Conv2D/ReadVariableOp?
conv2d_369/Conv2DConv2D,batch_normalization_290/FusedBatchNormV3:y:0(conv2d_369/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_369/Conv2D?
!conv2d_369/BiasAdd/ReadVariableOpReadVariableOp*conv2d_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_369/BiasAdd/ReadVariableOp?
conv2d_369/BiasAddBiasAddconv2d_369/Conv2D:output:0)conv2d_369/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_369/BiasAdd?
conv2d_369/ReluReluconv2d_369/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_369/Relu?
&batch_normalization_291/ReadVariableOpReadVariableOp/batch_normalization_291_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_291/ReadVariableOp?
(batch_normalization_291/ReadVariableOp_1ReadVariableOp1batch_normalization_291_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_291/ReadVariableOp_1?
7batch_normalization_291/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_291_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_291/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_291_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_291/FusedBatchNormV3FusedBatchNormV3conv2d_369/Relu:activations:0.batch_normalization_291/ReadVariableOp:value:00batch_normalization_291/ReadVariableOp_1:value:0?batch_normalization_291/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_291/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_291/FusedBatchNormV3?
&batch_normalization_291/AssignNewValueAssignVariableOp@batch_normalization_291_fusedbatchnormv3_readvariableop_resource5batch_normalization_291/FusedBatchNormV3:batch_mean:08^batch_normalization_291/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_291/AssignNewValue?
(batch_normalization_291/AssignNewValue_1AssignVariableOpBbatch_normalization_291_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_291/FusedBatchNormV3:batch_variance:0:^batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_291/AssignNewValue_1?
 conv2d_370/Conv2D/ReadVariableOpReadVariableOp)conv2d_370_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_370/Conv2D/ReadVariableOp?
conv2d_370/Conv2DConv2D,batch_normalization_291/FusedBatchNormV3:y:0(conv2d_370/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_370/Conv2D?
!conv2d_370/BiasAdd/ReadVariableOpReadVariableOp*conv2d_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_370/BiasAdd/ReadVariableOp?
conv2d_370/BiasAddBiasAddconv2d_370/Conv2D:output:0)conv2d_370/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_370/BiasAdd?
conv2d_370/ReluReluconv2d_370/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_370/Relu?
&batch_normalization_292/ReadVariableOpReadVariableOp/batch_normalization_292_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_292/ReadVariableOp?
(batch_normalization_292/ReadVariableOp_1ReadVariableOp1batch_normalization_292_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_292/ReadVariableOp_1?
7batch_normalization_292/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_292_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_292/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_292_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_292/FusedBatchNormV3FusedBatchNormV3conv2d_370/Relu:activations:0.batch_normalization_292/ReadVariableOp:value:00batch_normalization_292/ReadVariableOp_1:value:0?batch_normalization_292/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_292/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_292/FusedBatchNormV3?
&batch_normalization_292/AssignNewValueAssignVariableOp@batch_normalization_292_fusedbatchnormv3_readvariableop_resource5batch_normalization_292/FusedBatchNormV3:batch_mean:08^batch_normalization_292/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_292/AssignNewValue?
(batch_normalization_292/AssignNewValue_1AssignVariableOpBbatch_normalization_292_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_292/FusedBatchNormV3:batch_variance:0:^batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_292/AssignNewValue_1?
max_pooling2d_64/MaxPoolMaxPool,batch_normalization_292/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_64/MaxPoolu
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_28/Const?
flatten_28/ReshapeReshape!max_pooling2d_64/MaxPool:output:0flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_28/Reshape?
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_60/MatMul/ReadVariableOp?
dense_60/MatMulMatMulflatten_28/Reshape:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/MatMul?
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp?
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/BiasAdd|
dense_60/SigmoidSigmoiddense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_60/Sigmoido
IdentityIdentitydense_60/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_288/AssignNewValue)^batch_normalization_288/AssignNewValue_18^batch_normalization_288/FusedBatchNormV3/ReadVariableOp:^batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_288/ReadVariableOp)^batch_normalization_288/ReadVariableOp_1'^batch_normalization_289/AssignNewValue)^batch_normalization_289/AssignNewValue_18^batch_normalization_289/FusedBatchNormV3/ReadVariableOp:^batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_289/ReadVariableOp)^batch_normalization_289/ReadVariableOp_1'^batch_normalization_290/AssignNewValue)^batch_normalization_290/AssignNewValue_18^batch_normalization_290/FusedBatchNormV3/ReadVariableOp:^batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_290/ReadVariableOp)^batch_normalization_290/ReadVariableOp_1'^batch_normalization_291/AssignNewValue)^batch_normalization_291/AssignNewValue_18^batch_normalization_291/FusedBatchNormV3/ReadVariableOp:^batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_291/ReadVariableOp)^batch_normalization_291/ReadVariableOp_1'^batch_normalization_292/AssignNewValue)^batch_normalization_292/AssignNewValue_18^batch_normalization_292/FusedBatchNormV3/ReadVariableOp:^batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_292/ReadVariableOp)^batch_normalization_292/ReadVariableOp_1"^conv2d_366/BiasAdd/ReadVariableOp!^conv2d_366/Conv2D/ReadVariableOp"^conv2d_367/BiasAdd/ReadVariableOp!^conv2d_367/Conv2D/ReadVariableOp"^conv2d_368/BiasAdd/ReadVariableOp!^conv2d_368/Conv2D/ReadVariableOp"^conv2d_369/BiasAdd/ReadVariableOp!^conv2d_369/Conv2D/ReadVariableOp"^conv2d_370/BiasAdd/ReadVariableOp!^conv2d_370/Conv2D/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_288/AssignNewValue&batch_normalization_288/AssignNewValue2T
(batch_normalization_288/AssignNewValue_1(batch_normalization_288/AssignNewValue_12r
7batch_normalization_288/FusedBatchNormV3/ReadVariableOp7batch_normalization_288/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_288/FusedBatchNormV3/ReadVariableOp_19batch_normalization_288/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_288/ReadVariableOp&batch_normalization_288/ReadVariableOp2T
(batch_normalization_288/ReadVariableOp_1(batch_normalization_288/ReadVariableOp_12P
&batch_normalization_289/AssignNewValue&batch_normalization_289/AssignNewValue2T
(batch_normalization_289/AssignNewValue_1(batch_normalization_289/AssignNewValue_12r
7batch_normalization_289/FusedBatchNormV3/ReadVariableOp7batch_normalization_289/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_289/FusedBatchNormV3/ReadVariableOp_19batch_normalization_289/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_289/ReadVariableOp&batch_normalization_289/ReadVariableOp2T
(batch_normalization_289/ReadVariableOp_1(batch_normalization_289/ReadVariableOp_12P
&batch_normalization_290/AssignNewValue&batch_normalization_290/AssignNewValue2T
(batch_normalization_290/AssignNewValue_1(batch_normalization_290/AssignNewValue_12r
7batch_normalization_290/FusedBatchNormV3/ReadVariableOp7batch_normalization_290/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_290/FusedBatchNormV3/ReadVariableOp_19batch_normalization_290/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_290/ReadVariableOp&batch_normalization_290/ReadVariableOp2T
(batch_normalization_290/ReadVariableOp_1(batch_normalization_290/ReadVariableOp_12P
&batch_normalization_291/AssignNewValue&batch_normalization_291/AssignNewValue2T
(batch_normalization_291/AssignNewValue_1(batch_normalization_291/AssignNewValue_12r
7batch_normalization_291/FusedBatchNormV3/ReadVariableOp7batch_normalization_291/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_291/FusedBatchNormV3/ReadVariableOp_19batch_normalization_291/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_291/ReadVariableOp&batch_normalization_291/ReadVariableOp2T
(batch_normalization_291/ReadVariableOp_1(batch_normalization_291/ReadVariableOp_12P
&batch_normalization_292/AssignNewValue&batch_normalization_292/AssignNewValue2T
(batch_normalization_292/AssignNewValue_1(batch_normalization_292/AssignNewValue_12r
7batch_normalization_292/FusedBatchNormV3/ReadVariableOp7batch_normalization_292/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_292/FusedBatchNormV3/ReadVariableOp_19batch_normalization_292/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_292/ReadVariableOp&batch_normalization_292/ReadVariableOp2T
(batch_normalization_292/ReadVariableOp_1(batch_normalization_292/ReadVariableOp_12F
!conv2d_366/BiasAdd/ReadVariableOp!conv2d_366/BiasAdd/ReadVariableOp2D
 conv2d_366/Conv2D/ReadVariableOp conv2d_366/Conv2D/ReadVariableOp2F
!conv2d_367/BiasAdd/ReadVariableOp!conv2d_367/BiasAdd/ReadVariableOp2D
 conv2d_367/Conv2D/ReadVariableOp conv2d_367/Conv2D/ReadVariableOp2F
!conv2d_368/BiasAdd/ReadVariableOp!conv2d_368/BiasAdd/ReadVariableOp2D
 conv2d_368/Conv2D/ReadVariableOp conv2d_368/Conv2D/ReadVariableOp2F
!conv2d_369/BiasAdd/ReadVariableOp!conv2d_369/BiasAdd/ReadVariableOp2D
 conv2d_369/Conv2D/ReadVariableOp conv2d_369/Conv2D/ReadVariableOp2F
!conv2d_370/BiasAdd/ReadVariableOp!conv2d_370/BiasAdd/ReadVariableOp2D
 conv2d_370/Conv2D/ReadVariableOp conv2d_370/Conv2D/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_370_layer_call_fn_7169875

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
G__inference_conv2d_370_layer_call_and_return_conditional_losses_71678952
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
?
i
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_7169552

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
9__inference_batch_normalization_292_layer_call_fn_7169960

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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_71675632
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
?
?
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7167163

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
E__inference_dense_60_layer_call_and_return_conditional_losses_7167953

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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169277

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
?
?
-__inference_alex_net_10_layer_call_fn_7168027
conv2d_366_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_366_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_alex_net_10_layer_call_and_return_conditional_losses_71679602
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
_user_specified_nameconv2d_366_input
?
?
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169441

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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169893

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
"__inference__wrapped_model_7166993
conv2d_366_inputO
5alex_net_10_conv2d_366_conv2d_readvariableop_resource:`D
6alex_net_10_conv2d_366_biasadd_readvariableop_resource:`I
;alex_net_10_batch_normalization_288_readvariableop_resource:`K
=alex_net_10_batch_normalization_288_readvariableop_1_resource:`Z
Lalex_net_10_batch_normalization_288_fusedbatchnormv3_readvariableop_resource:`\
Nalex_net_10_batch_normalization_288_fusedbatchnormv3_readvariableop_1_resource:`P
5alex_net_10_conv2d_367_conv2d_readvariableop_resource:`?E
6alex_net_10_conv2d_367_biasadd_readvariableop_resource:	?J
;alex_net_10_batch_normalization_289_readvariableop_resource:	?L
=alex_net_10_batch_normalization_289_readvariableop_1_resource:	?[
Lalex_net_10_batch_normalization_289_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_10_batch_normalization_289_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_10_conv2d_368_conv2d_readvariableop_resource:??E
6alex_net_10_conv2d_368_biasadd_readvariableop_resource:	?J
;alex_net_10_batch_normalization_290_readvariableop_resource:	?L
=alex_net_10_batch_normalization_290_readvariableop_1_resource:	?[
Lalex_net_10_batch_normalization_290_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_10_batch_normalization_290_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_10_conv2d_369_conv2d_readvariableop_resource:??E
6alex_net_10_conv2d_369_biasadd_readvariableop_resource:	?J
;alex_net_10_batch_normalization_291_readvariableop_resource:	?L
=alex_net_10_batch_normalization_291_readvariableop_1_resource:	?[
Lalex_net_10_batch_normalization_291_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_10_batch_normalization_291_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_10_conv2d_370_conv2d_readvariableop_resource:??E
6alex_net_10_conv2d_370_biasadd_readvariableop_resource:	?J
;alex_net_10_batch_normalization_292_readvariableop_resource:	?L
=alex_net_10_batch_normalization_292_readvariableop_1_resource:	?[
Lalex_net_10_batch_normalization_292_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_10_batch_normalization_292_fusedbatchnormv3_readvariableop_1_resource:	?F
3alex_net_10_dense_60_matmul_readvariableop_resource:	?(B
4alex_net_10_dense_60_biasadd_readvariableop_resource:
identity??Calex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp?Ealex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1?2alex_net_10/batch_normalization_288/ReadVariableOp?4alex_net_10/batch_normalization_288/ReadVariableOp_1?Calex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp?Ealex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1?2alex_net_10/batch_normalization_289/ReadVariableOp?4alex_net_10/batch_normalization_289/ReadVariableOp_1?Calex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp?Ealex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1?2alex_net_10/batch_normalization_290/ReadVariableOp?4alex_net_10/batch_normalization_290/ReadVariableOp_1?Calex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp?Ealex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1?2alex_net_10/batch_normalization_291/ReadVariableOp?4alex_net_10/batch_normalization_291/ReadVariableOp_1?Calex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp?Ealex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1?2alex_net_10/batch_normalization_292/ReadVariableOp?4alex_net_10/batch_normalization_292/ReadVariableOp_1?-alex_net_10/conv2d_366/BiasAdd/ReadVariableOp?,alex_net_10/conv2d_366/Conv2D/ReadVariableOp?-alex_net_10/conv2d_367/BiasAdd/ReadVariableOp?,alex_net_10/conv2d_367/Conv2D/ReadVariableOp?-alex_net_10/conv2d_368/BiasAdd/ReadVariableOp?,alex_net_10/conv2d_368/Conv2D/ReadVariableOp?-alex_net_10/conv2d_369/BiasAdd/ReadVariableOp?,alex_net_10/conv2d_369/Conv2D/ReadVariableOp?-alex_net_10/conv2d_370/BiasAdd/ReadVariableOp?,alex_net_10/conv2d_370/Conv2D/ReadVariableOp?+alex_net_10/dense_60/BiasAdd/ReadVariableOp?*alex_net_10/dense_60/MatMul/ReadVariableOp?
,alex_net_10/conv2d_366/Conv2D/ReadVariableOpReadVariableOp5alex_net_10_conv2d_366_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02.
,alex_net_10/conv2d_366/Conv2D/ReadVariableOp?
alex_net_10/conv2d_366/Conv2DConv2Dconv2d_366_input4alex_net_10/conv2d_366/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_10/conv2d_366/Conv2D?
-alex_net_10/conv2d_366/BiasAdd/ReadVariableOpReadVariableOp6alex_net_10_conv2d_366_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02/
-alex_net_10/conv2d_366/BiasAdd/ReadVariableOp?
alex_net_10/conv2d_366/BiasAddBiasAdd&alex_net_10/conv2d_366/Conv2D:output:05alex_net_10/conv2d_366/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2 
alex_net_10/conv2d_366/BiasAdd?
alex_net_10/conv2d_366/ReluRelu'alex_net_10/conv2d_366/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_10/conv2d_366/Relu?
2alex_net_10/batch_normalization_288/ReadVariableOpReadVariableOp;alex_net_10_batch_normalization_288_readvariableop_resource*
_output_shapes
:`*
dtype024
2alex_net_10/batch_normalization_288/ReadVariableOp?
4alex_net_10/batch_normalization_288/ReadVariableOp_1ReadVariableOp=alex_net_10_batch_normalization_288_readvariableop_1_resource*
_output_shapes
:`*
dtype026
4alex_net_10/batch_normalization_288/ReadVariableOp_1?
Calex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_10_batch_normalization_288_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02E
Calex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp?
Ealex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_10_batch_normalization_288_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02G
Ealex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_10/batch_normalization_288/FusedBatchNormV3FusedBatchNormV3)alex_net_10/conv2d_366/Relu:activations:0:alex_net_10/batch_normalization_288/ReadVariableOp:value:0<alex_net_10/batch_normalization_288/ReadVariableOp_1:value:0Kalex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 26
4alex_net_10/batch_normalization_288/FusedBatchNormV3?
$alex_net_10/max_pooling2d_62/MaxPoolMaxPool8alex_net_10/batch_normalization_288/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2&
$alex_net_10/max_pooling2d_62/MaxPool?
,alex_net_10/conv2d_367/Conv2D/ReadVariableOpReadVariableOp5alex_net_10_conv2d_367_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02.
,alex_net_10/conv2d_367/Conv2D/ReadVariableOp?
alex_net_10/conv2d_367/Conv2DConv2D-alex_net_10/max_pooling2d_62/MaxPool:output:04alex_net_10/conv2d_367/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_10/conv2d_367/Conv2D?
-alex_net_10/conv2d_367/BiasAdd/ReadVariableOpReadVariableOp6alex_net_10_conv2d_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_10/conv2d_367/BiasAdd/ReadVariableOp?
alex_net_10/conv2d_367/BiasAddBiasAdd&alex_net_10/conv2d_367/Conv2D:output:05alex_net_10/conv2d_367/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2 
alex_net_10/conv2d_367/BiasAdd?
alex_net_10/conv2d_367/ReluRelu'alex_net_10/conv2d_367/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_10/conv2d_367/Relu?
2alex_net_10/batch_normalization_289/ReadVariableOpReadVariableOp;alex_net_10_batch_normalization_289_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_10/batch_normalization_289/ReadVariableOp?
4alex_net_10/batch_normalization_289/ReadVariableOp_1ReadVariableOp=alex_net_10_batch_normalization_289_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_10/batch_normalization_289/ReadVariableOp_1?
Calex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_10_batch_normalization_289_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp?
Ealex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_10_batch_normalization_289_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_10/batch_normalization_289/FusedBatchNormV3FusedBatchNormV3)alex_net_10/conv2d_367/Relu:activations:0:alex_net_10/batch_normalization_289/ReadVariableOp:value:0<alex_net_10/batch_normalization_289/ReadVariableOp_1:value:0Kalex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_10/batch_normalization_289/FusedBatchNormV3?
$alex_net_10/max_pooling2d_63/MaxPoolMaxPool8alex_net_10/batch_normalization_289/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2&
$alex_net_10/max_pooling2d_63/MaxPool?
,alex_net_10/conv2d_368/Conv2D/ReadVariableOpReadVariableOp5alex_net_10_conv2d_368_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_10/conv2d_368/Conv2D/ReadVariableOp?
alex_net_10/conv2d_368/Conv2DConv2D-alex_net_10/max_pooling2d_63/MaxPool:output:04alex_net_10/conv2d_368/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_10/conv2d_368/Conv2D?
-alex_net_10/conv2d_368/BiasAdd/ReadVariableOpReadVariableOp6alex_net_10_conv2d_368_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_10/conv2d_368/BiasAdd/ReadVariableOp?
alex_net_10/conv2d_368/BiasAddBiasAdd&alex_net_10/conv2d_368/Conv2D:output:05alex_net_10/conv2d_368/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_10/conv2d_368/BiasAdd?
alex_net_10/conv2d_368/ReluRelu'alex_net_10/conv2d_368/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_10/conv2d_368/Relu?
2alex_net_10/batch_normalization_290/ReadVariableOpReadVariableOp;alex_net_10_batch_normalization_290_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_10/batch_normalization_290/ReadVariableOp?
4alex_net_10/batch_normalization_290/ReadVariableOp_1ReadVariableOp=alex_net_10_batch_normalization_290_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_10/batch_normalization_290/ReadVariableOp_1?
Calex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_10_batch_normalization_290_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp?
Ealex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_10_batch_normalization_290_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_10/batch_normalization_290/FusedBatchNormV3FusedBatchNormV3)alex_net_10/conv2d_368/Relu:activations:0:alex_net_10/batch_normalization_290/ReadVariableOp:value:0<alex_net_10/batch_normalization_290/ReadVariableOp_1:value:0Kalex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_10/batch_normalization_290/FusedBatchNormV3?
,alex_net_10/conv2d_369/Conv2D/ReadVariableOpReadVariableOp5alex_net_10_conv2d_369_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_10/conv2d_369/Conv2D/ReadVariableOp?
alex_net_10/conv2d_369/Conv2DConv2D8alex_net_10/batch_normalization_290/FusedBatchNormV3:y:04alex_net_10/conv2d_369/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_10/conv2d_369/Conv2D?
-alex_net_10/conv2d_369/BiasAdd/ReadVariableOpReadVariableOp6alex_net_10_conv2d_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_10/conv2d_369/BiasAdd/ReadVariableOp?
alex_net_10/conv2d_369/BiasAddBiasAdd&alex_net_10/conv2d_369/Conv2D:output:05alex_net_10/conv2d_369/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_10/conv2d_369/BiasAdd?
alex_net_10/conv2d_369/ReluRelu'alex_net_10/conv2d_369/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_10/conv2d_369/Relu?
2alex_net_10/batch_normalization_291/ReadVariableOpReadVariableOp;alex_net_10_batch_normalization_291_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_10/batch_normalization_291/ReadVariableOp?
4alex_net_10/batch_normalization_291/ReadVariableOp_1ReadVariableOp=alex_net_10_batch_normalization_291_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_10/batch_normalization_291/ReadVariableOp_1?
Calex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_10_batch_normalization_291_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp?
Ealex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_10_batch_normalization_291_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_10/batch_normalization_291/FusedBatchNormV3FusedBatchNormV3)alex_net_10/conv2d_369/Relu:activations:0:alex_net_10/batch_normalization_291/ReadVariableOp:value:0<alex_net_10/batch_normalization_291/ReadVariableOp_1:value:0Kalex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_10/batch_normalization_291/FusedBatchNormV3?
,alex_net_10/conv2d_370/Conv2D/ReadVariableOpReadVariableOp5alex_net_10_conv2d_370_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_10/conv2d_370/Conv2D/ReadVariableOp?
alex_net_10/conv2d_370/Conv2DConv2D8alex_net_10/batch_normalization_291/FusedBatchNormV3:y:04alex_net_10/conv2d_370/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_10/conv2d_370/Conv2D?
-alex_net_10/conv2d_370/BiasAdd/ReadVariableOpReadVariableOp6alex_net_10_conv2d_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_10/conv2d_370/BiasAdd/ReadVariableOp?
alex_net_10/conv2d_370/BiasAddBiasAdd&alex_net_10/conv2d_370/Conv2D:output:05alex_net_10/conv2d_370/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_10/conv2d_370/BiasAdd?
alex_net_10/conv2d_370/ReluRelu'alex_net_10/conv2d_370/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_10/conv2d_370/Relu?
2alex_net_10/batch_normalization_292/ReadVariableOpReadVariableOp;alex_net_10_batch_normalization_292_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_10/batch_normalization_292/ReadVariableOp?
4alex_net_10/batch_normalization_292/ReadVariableOp_1ReadVariableOp=alex_net_10_batch_normalization_292_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_10/batch_normalization_292/ReadVariableOp_1?
Calex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_10_batch_normalization_292_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp?
Ealex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_10_batch_normalization_292_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_10/batch_normalization_292/FusedBatchNormV3FusedBatchNormV3)alex_net_10/conv2d_370/Relu:activations:0:alex_net_10/batch_normalization_292/ReadVariableOp:value:0<alex_net_10/batch_normalization_292/ReadVariableOp_1:value:0Kalex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_10/batch_normalization_292/FusedBatchNormV3?
$alex_net_10/max_pooling2d_64/MaxPoolMaxPool8alex_net_10/batch_normalization_292/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2&
$alex_net_10/max_pooling2d_64/MaxPool?
alex_net_10/flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_10/flatten_28/Const?
alex_net_10/flatten_28/ReshapeReshape-alex_net_10/max_pooling2d_64/MaxPool:output:0%alex_net_10/flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????(2 
alex_net_10/flatten_28/Reshape?
*alex_net_10/dense_60/MatMul/ReadVariableOpReadVariableOp3alex_net_10_dense_60_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02,
*alex_net_10/dense_60/MatMul/ReadVariableOp?
alex_net_10/dense_60/MatMulMatMul'alex_net_10/flatten_28/Reshape:output:02alex_net_10/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_10/dense_60/MatMul?
+alex_net_10/dense_60/BiasAdd/ReadVariableOpReadVariableOp4alex_net_10_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+alex_net_10/dense_60/BiasAdd/ReadVariableOp?
alex_net_10/dense_60/BiasAddBiasAdd%alex_net_10/dense_60/MatMul:product:03alex_net_10/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_10/dense_60/BiasAdd?
alex_net_10/dense_60/SigmoidSigmoid%alex_net_10/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_10/dense_60/Sigmoid{
IdentityIdentity alex_net_10/dense_60/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpD^alex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOpF^alex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp_13^alex_net_10/batch_normalization_288/ReadVariableOp5^alex_net_10/batch_normalization_288/ReadVariableOp_1D^alex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOpF^alex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp_13^alex_net_10/batch_normalization_289/ReadVariableOp5^alex_net_10/batch_normalization_289/ReadVariableOp_1D^alex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOpF^alex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp_13^alex_net_10/batch_normalization_290/ReadVariableOp5^alex_net_10/batch_normalization_290/ReadVariableOp_1D^alex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOpF^alex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp_13^alex_net_10/batch_normalization_291/ReadVariableOp5^alex_net_10/batch_normalization_291/ReadVariableOp_1D^alex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOpF^alex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp_13^alex_net_10/batch_normalization_292/ReadVariableOp5^alex_net_10/batch_normalization_292/ReadVariableOp_1.^alex_net_10/conv2d_366/BiasAdd/ReadVariableOp-^alex_net_10/conv2d_366/Conv2D/ReadVariableOp.^alex_net_10/conv2d_367/BiasAdd/ReadVariableOp-^alex_net_10/conv2d_367/Conv2D/ReadVariableOp.^alex_net_10/conv2d_368/BiasAdd/ReadVariableOp-^alex_net_10/conv2d_368/Conv2D/ReadVariableOp.^alex_net_10/conv2d_369/BiasAdd/ReadVariableOp-^alex_net_10/conv2d_369/Conv2D/ReadVariableOp.^alex_net_10/conv2d_370/BiasAdd/ReadVariableOp-^alex_net_10/conv2d_370/Conv2D/ReadVariableOp,^alex_net_10/dense_60/BiasAdd/ReadVariableOp+^alex_net_10/dense_60/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Calex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOpCalex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1Ealex_net_10/batch_normalization_288/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_10/batch_normalization_288/ReadVariableOp2alex_net_10/batch_normalization_288/ReadVariableOp2l
4alex_net_10/batch_normalization_288/ReadVariableOp_14alex_net_10/batch_normalization_288/ReadVariableOp_12?
Calex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOpCalex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1Ealex_net_10/batch_normalization_289/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_10/batch_normalization_289/ReadVariableOp2alex_net_10/batch_normalization_289/ReadVariableOp2l
4alex_net_10/batch_normalization_289/ReadVariableOp_14alex_net_10/batch_normalization_289/ReadVariableOp_12?
Calex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOpCalex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1Ealex_net_10/batch_normalization_290/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_10/batch_normalization_290/ReadVariableOp2alex_net_10/batch_normalization_290/ReadVariableOp2l
4alex_net_10/batch_normalization_290/ReadVariableOp_14alex_net_10/batch_normalization_290/ReadVariableOp_12?
Calex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOpCalex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1Ealex_net_10/batch_normalization_291/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_10/batch_normalization_291/ReadVariableOp2alex_net_10/batch_normalization_291/ReadVariableOp2l
4alex_net_10/batch_normalization_291/ReadVariableOp_14alex_net_10/batch_normalization_291/ReadVariableOp_12?
Calex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOpCalex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1Ealex_net_10/batch_normalization_292/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_10/batch_normalization_292/ReadVariableOp2alex_net_10/batch_normalization_292/ReadVariableOp2l
4alex_net_10/batch_normalization_292/ReadVariableOp_14alex_net_10/batch_normalization_292/ReadVariableOp_12^
-alex_net_10/conv2d_366/BiasAdd/ReadVariableOp-alex_net_10/conv2d_366/BiasAdd/ReadVariableOp2\
,alex_net_10/conv2d_366/Conv2D/ReadVariableOp,alex_net_10/conv2d_366/Conv2D/ReadVariableOp2^
-alex_net_10/conv2d_367/BiasAdd/ReadVariableOp-alex_net_10/conv2d_367/BiasAdd/ReadVariableOp2\
,alex_net_10/conv2d_367/Conv2D/ReadVariableOp,alex_net_10/conv2d_367/Conv2D/ReadVariableOp2^
-alex_net_10/conv2d_368/BiasAdd/ReadVariableOp-alex_net_10/conv2d_368/BiasAdd/ReadVariableOp2\
,alex_net_10/conv2d_368/Conv2D/ReadVariableOp,alex_net_10/conv2d_368/Conv2D/ReadVariableOp2^
-alex_net_10/conv2d_369/BiasAdd/ReadVariableOp-alex_net_10/conv2d_369/BiasAdd/ReadVariableOp2\
,alex_net_10/conv2d_369/Conv2D/ReadVariableOp,alex_net_10/conv2d_369/Conv2D/ReadVariableOp2^
-alex_net_10/conv2d_370/BiasAdd/ReadVariableOp-alex_net_10/conv2d_370/BiasAdd/ReadVariableOp2\
,alex_net_10/conv2d_370/Conv2D/ReadVariableOp,alex_net_10/conv2d_370/Conv2D/ReadVariableOp2Z
+alex_net_10/dense_60/BiasAdd/ReadVariableOp+alex_net_10/dense_60/BiasAdd/ReadVariableOp2X
*alex_net_10/dense_60/MatMul/ReadVariableOp*alex_net_10/dense_60/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_366_input
?	
?
9__inference_batch_normalization_291_layer_call_fn_7169842

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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_71678742
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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169623

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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7168307

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
?X
?
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168482

inputs,
conv2d_366_7168402:` 
conv2d_366_7168404:`-
batch_normalization_288_7168407:`-
batch_normalization_288_7168409:`-
batch_normalization_288_7168411:`-
batch_normalization_288_7168413:`-
conv2d_367_7168417:`?!
conv2d_367_7168419:	?.
batch_normalization_289_7168422:	?.
batch_normalization_289_7168424:	?.
batch_normalization_289_7168426:	?.
batch_normalization_289_7168428:	?.
conv2d_368_7168432:??!
conv2d_368_7168434:	?.
batch_normalization_290_7168437:	?.
batch_normalization_290_7168439:	?.
batch_normalization_290_7168441:	?.
batch_normalization_290_7168443:	?.
conv2d_369_7168446:??!
conv2d_369_7168448:	?.
batch_normalization_291_7168451:	?.
batch_normalization_291_7168453:	?.
batch_normalization_291_7168455:	?.
batch_normalization_291_7168457:	?.
conv2d_370_7168460:??!
conv2d_370_7168462:	?.
batch_normalization_292_7168465:	?.
batch_normalization_292_7168467:	?.
batch_normalization_292_7168469:	?.
batch_normalization_292_7168471:	?#
dense_60_7168476:	?(
dense_60_7168478:
identity??/batch_normalization_288/StatefulPartitionedCall?/batch_normalization_289/StatefulPartitionedCall?/batch_normalization_290/StatefulPartitionedCall?/batch_normalization_291/StatefulPartitionedCall?/batch_normalization_292/StatefulPartitionedCall?"conv2d_366/StatefulPartitionedCall?"conv2d_367/StatefulPartitionedCall?"conv2d_368/StatefulPartitionedCall?"conv2d_369/StatefulPartitionedCall?"conv2d_370/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
"conv2d_366/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_366_7168402conv2d_366_7168404*
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
G__inference_conv2d_366_layer_call_and_return_conditional_losses_71677072$
"conv2d_366/StatefulPartitionedCall?
/batch_normalization_288/StatefulPartitionedCallStatefulPartitionedCall+conv2d_366/StatefulPartitionedCall:output:0batch_normalization_288_7168407batch_normalization_288_7168409batch_normalization_288_7168411batch_normalization_288_7168413*
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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_716830721
/batch_normalization_288/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall8batch_normalization_288/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_71677442"
 max_pooling2d_62/PartitionedCall?
"conv2d_367/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_62/PartitionedCall:output:0conv2d_367_7168417conv2d_367_7168419*
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
G__inference_conv2d_367_layer_call_and_return_conditional_losses_71677572$
"conv2d_367/StatefulPartitionedCall?
/batch_normalization_289/StatefulPartitionedCallStatefulPartitionedCall+conv2d_367/StatefulPartitionedCall:output:0batch_normalization_289_7168422batch_normalization_289_7168424batch_normalization_289_7168426batch_normalization_289_7168428*
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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_716824821
/batch_normalization_289/StatefulPartitionedCall?
 max_pooling2d_63/PartitionedCallPartitionedCall8batch_normalization_289/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_71677942"
 max_pooling2d_63/PartitionedCall?
"conv2d_368/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_63/PartitionedCall:output:0conv2d_368_7168432conv2d_368_7168434*
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
G__inference_conv2d_368_layer_call_and_return_conditional_losses_71678072$
"conv2d_368/StatefulPartitionedCall?
/batch_normalization_290/StatefulPartitionedCallStatefulPartitionedCall+conv2d_368/StatefulPartitionedCall:output:0batch_normalization_290_7168437batch_normalization_290_7168439batch_normalization_290_7168441batch_normalization_290_7168443*
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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_716818921
/batch_normalization_290/StatefulPartitionedCall?
"conv2d_369/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_290/StatefulPartitionedCall:output:0conv2d_369_7168446conv2d_369_7168448*
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
G__inference_conv2d_369_layer_call_and_return_conditional_losses_71678512$
"conv2d_369/StatefulPartitionedCall?
/batch_normalization_291/StatefulPartitionedCallStatefulPartitionedCall+conv2d_369/StatefulPartitionedCall:output:0batch_normalization_291_7168451batch_normalization_291_7168453batch_normalization_291_7168455batch_normalization_291_7168457*
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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_716813521
/batch_normalization_291/StatefulPartitionedCall?
"conv2d_370/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_291/StatefulPartitionedCall:output:0conv2d_370_7168460conv2d_370_7168462*
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
G__inference_conv2d_370_layer_call_and_return_conditional_losses_71678952$
"conv2d_370/StatefulPartitionedCall?
/batch_normalization_292/StatefulPartitionedCallStatefulPartitionedCall+conv2d_370/StatefulPartitionedCall:output:0batch_normalization_292_7168465batch_normalization_292_7168467batch_normalization_292_7168469batch_normalization_292_7168471*
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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_716808121
/batch_normalization_292/StatefulPartitionedCall?
 max_pooling2d_64/PartitionedCallPartitionedCall8batch_normalization_292/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_71679322"
 max_pooling2d_64/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall)max_pooling2d_64/PartitionedCall:output:0*
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_71679402
flatten_28/PartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_60_7168476dense_60_7168478*
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
E__inference_dense_60_layer_call_and_return_conditional_losses_71679532"
 dense_60/StatefulPartitionedCall?
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_288/StatefulPartitionedCall0^batch_normalization_289/StatefulPartitionedCall0^batch_normalization_290/StatefulPartitionedCall0^batch_normalization_291/StatefulPartitionedCall0^batch_normalization_292/StatefulPartitionedCall#^conv2d_366/StatefulPartitionedCall#^conv2d_367/StatefulPartitionedCall#^conv2d_368/StatefulPartitionedCall#^conv2d_369/StatefulPartitionedCall#^conv2d_370/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_288/StatefulPartitionedCall/batch_normalization_288/StatefulPartitionedCall2b
/batch_normalization_289/StatefulPartitionedCall/batch_normalization_289/StatefulPartitionedCall2b
/batch_normalization_290/StatefulPartitionedCall/batch_normalization_290/StatefulPartitionedCall2b
/batch_normalization_291/StatefulPartitionedCall/batch_normalization_291/StatefulPartitionedCall2b
/batch_normalization_292/StatefulPartitionedCall/batch_normalization_292/StatefulPartitionedCall2H
"conv2d_366/StatefulPartitionedCall"conv2d_366/StatefulPartitionedCall2H
"conv2d_367/StatefulPartitionedCall"conv2d_367/StatefulPartitionedCall2H
"conv2d_368/StatefulPartitionedCall"conv2d_368/StatefulPartitionedCall2H
"conv2d_369/StatefulPartitionedCall"conv2d_369/StatefulPartitionedCall2H
"conv2d_370/StatefulPartitionedCall"conv2d_370/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?Y
?
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168701
conv2d_366_input,
conv2d_366_7168621:` 
conv2d_366_7168623:`-
batch_normalization_288_7168626:`-
batch_normalization_288_7168628:`-
batch_normalization_288_7168630:`-
batch_normalization_288_7168632:`-
conv2d_367_7168636:`?!
conv2d_367_7168638:	?.
batch_normalization_289_7168641:	?.
batch_normalization_289_7168643:	?.
batch_normalization_289_7168645:	?.
batch_normalization_289_7168647:	?.
conv2d_368_7168651:??!
conv2d_368_7168653:	?.
batch_normalization_290_7168656:	?.
batch_normalization_290_7168658:	?.
batch_normalization_290_7168660:	?.
batch_normalization_290_7168662:	?.
conv2d_369_7168665:??!
conv2d_369_7168667:	?.
batch_normalization_291_7168670:	?.
batch_normalization_291_7168672:	?.
batch_normalization_291_7168674:	?.
batch_normalization_291_7168676:	?.
conv2d_370_7168679:??!
conv2d_370_7168681:	?.
batch_normalization_292_7168684:	?.
batch_normalization_292_7168686:	?.
batch_normalization_292_7168688:	?.
batch_normalization_292_7168690:	?#
dense_60_7168695:	?(
dense_60_7168697:
identity??/batch_normalization_288/StatefulPartitionedCall?/batch_normalization_289/StatefulPartitionedCall?/batch_normalization_290/StatefulPartitionedCall?/batch_normalization_291/StatefulPartitionedCall?/batch_normalization_292/StatefulPartitionedCall?"conv2d_366/StatefulPartitionedCall?"conv2d_367/StatefulPartitionedCall?"conv2d_368/StatefulPartitionedCall?"conv2d_369/StatefulPartitionedCall?"conv2d_370/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
"conv2d_366/StatefulPartitionedCallStatefulPartitionedCallconv2d_366_inputconv2d_366_7168621conv2d_366_7168623*
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
G__inference_conv2d_366_layer_call_and_return_conditional_losses_71677072$
"conv2d_366/StatefulPartitionedCall?
/batch_normalization_288/StatefulPartitionedCallStatefulPartitionedCall+conv2d_366/StatefulPartitionedCall:output:0batch_normalization_288_7168626batch_normalization_288_7168628batch_normalization_288_7168630batch_normalization_288_7168632*
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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_716773021
/batch_normalization_288/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall8batch_normalization_288/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_71677442"
 max_pooling2d_62/PartitionedCall?
"conv2d_367/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_62/PartitionedCall:output:0conv2d_367_7168636conv2d_367_7168638*
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
G__inference_conv2d_367_layer_call_and_return_conditional_losses_71677572$
"conv2d_367/StatefulPartitionedCall?
/batch_normalization_289/StatefulPartitionedCallStatefulPartitionedCall+conv2d_367/StatefulPartitionedCall:output:0batch_normalization_289_7168641batch_normalization_289_7168643batch_normalization_289_7168645batch_normalization_289_7168647*
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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_716778021
/batch_normalization_289/StatefulPartitionedCall?
 max_pooling2d_63/PartitionedCallPartitionedCall8batch_normalization_289/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_71677942"
 max_pooling2d_63/PartitionedCall?
"conv2d_368/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_63/PartitionedCall:output:0conv2d_368_7168651conv2d_368_7168653*
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
G__inference_conv2d_368_layer_call_and_return_conditional_losses_71678072$
"conv2d_368/StatefulPartitionedCall?
/batch_normalization_290/StatefulPartitionedCallStatefulPartitionedCall+conv2d_368/StatefulPartitionedCall:output:0batch_normalization_290_7168656batch_normalization_290_7168658batch_normalization_290_7168660batch_normalization_290_7168662*
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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_716783021
/batch_normalization_290/StatefulPartitionedCall?
"conv2d_369/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_290/StatefulPartitionedCall:output:0conv2d_369_7168665conv2d_369_7168667*
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
G__inference_conv2d_369_layer_call_and_return_conditional_losses_71678512$
"conv2d_369/StatefulPartitionedCall?
/batch_normalization_291/StatefulPartitionedCallStatefulPartitionedCall+conv2d_369/StatefulPartitionedCall:output:0batch_normalization_291_7168670batch_normalization_291_7168672batch_normalization_291_7168674batch_normalization_291_7168676*
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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_716787421
/batch_normalization_291/StatefulPartitionedCall?
"conv2d_370/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_291/StatefulPartitionedCall:output:0conv2d_370_7168679conv2d_370_7168681*
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
G__inference_conv2d_370_layer_call_and_return_conditional_losses_71678952$
"conv2d_370/StatefulPartitionedCall?
/batch_normalization_292/StatefulPartitionedCallStatefulPartitionedCall+conv2d_370/StatefulPartitionedCall:output:0batch_normalization_292_7168684batch_normalization_292_7168686batch_normalization_292_7168688batch_normalization_292_7168690*
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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_716791821
/batch_normalization_292/StatefulPartitionedCall?
 max_pooling2d_64/PartitionedCallPartitionedCall8batch_normalization_292/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_71679322"
 max_pooling2d_64/PartitionedCall?
flatten_28/PartitionedCallPartitionedCall)max_pooling2d_64/PartitionedCall:output:0*
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_71679402
flatten_28/PartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_60_7168695dense_60_7168697*
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
E__inference_dense_60_layer_call_and_return_conditional_losses_71679532"
 dense_60/StatefulPartitionedCall?
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_288/StatefulPartitionedCall0^batch_normalization_289/StatefulPartitionedCall0^batch_normalization_290/StatefulPartitionedCall0^batch_normalization_291/StatefulPartitionedCall0^batch_normalization_292/StatefulPartitionedCall#^conv2d_366/StatefulPartitionedCall#^conv2d_367/StatefulPartitionedCall#^conv2d_368/StatefulPartitionedCall#^conv2d_369/StatefulPartitionedCall#^conv2d_370/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_288/StatefulPartitionedCall/batch_normalization_288/StatefulPartitionedCall2b
/batch_normalization_289/StatefulPartitionedCall/batch_normalization_289/StatefulPartitionedCall2b
/batch_normalization_290/StatefulPartitionedCall/batch_normalization_290/StatefulPartitionedCall2b
/batch_normalization_291/StatefulPartitionedCall/batch_normalization_291/StatefulPartitionedCall2b
/batch_normalization_292/StatefulPartitionedCall/batch_normalization_292/StatefulPartitionedCall2H
"conv2d_366/StatefulPartitionedCall"conv2d_366/StatefulPartitionedCall2H
"conv2d_367/StatefulPartitionedCall"conv2d_367/StatefulPartitionedCall2H
"conv2d_368/StatefulPartitionedCall"conv2d_368/StatefulPartitionedCall2H
"conv2d_369/StatefulPartitionedCall"conv2d_369/StatefulPartitionedCall2H
"conv2d_370/StatefulPartitionedCall"conv2d_370/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_366_input
?
?
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7167059

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
?
?
%__inference_signature_wrapper_7168859
conv2d_366_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_366_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_71669932
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
_user_specified_nameconv2d_366_input
?
N
2__inference_max_pooling2d_63_layer_call_fn_7169562

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
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_71672762
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
G__inference_conv2d_367_layer_call_and_return_conditional_losses_7169414

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
?	
?
9__inference_batch_normalization_290_layer_call_fn_7169685

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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_71673552
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
?
i
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_7167676

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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7167437

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
?
G__inference_conv2d_368_layer_call_and_return_conditional_losses_7169578

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
?
?
,__inference_conv2d_366_layer_call_fn_7169259

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
G__inference_conv2d_366_layer_call_and_return_conditional_losses_71677072
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
?	
?
9__inference_batch_normalization_289_layer_call_fn_7169508

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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_71671632
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
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_7169557

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
??
?
#__inference__traced_restore_7170323
file_prefix<
"assignvariableop_conv2d_366_kernel:`0
"assignvariableop_1_conv2d_366_bias:`>
0assignvariableop_2_batch_normalization_288_gamma:`=
/assignvariableop_3_batch_normalization_288_beta:`D
6assignvariableop_4_batch_normalization_288_moving_mean:`H
:assignvariableop_5_batch_normalization_288_moving_variance:`?
$assignvariableop_6_conv2d_367_kernel:`?1
"assignvariableop_7_conv2d_367_bias:	??
0assignvariableop_8_batch_normalization_289_gamma:	?>
/assignvariableop_9_batch_normalization_289_beta:	?F
7assignvariableop_10_batch_normalization_289_moving_mean:	?J
;assignvariableop_11_batch_normalization_289_moving_variance:	?A
%assignvariableop_12_conv2d_368_kernel:??2
#assignvariableop_13_conv2d_368_bias:	?@
1assignvariableop_14_batch_normalization_290_gamma:	??
0assignvariableop_15_batch_normalization_290_beta:	?F
7assignvariableop_16_batch_normalization_290_moving_mean:	?J
;assignvariableop_17_batch_normalization_290_moving_variance:	?A
%assignvariableop_18_conv2d_369_kernel:??2
#assignvariableop_19_conv2d_369_bias:	?@
1assignvariableop_20_batch_normalization_291_gamma:	??
0assignvariableop_21_batch_normalization_291_beta:	?F
7assignvariableop_22_batch_normalization_291_moving_mean:	?J
;assignvariableop_23_batch_normalization_291_moving_variance:	?A
%assignvariableop_24_conv2d_370_kernel:??2
#assignvariableop_25_conv2d_370_bias:	?@
1assignvariableop_26_batch_normalization_292_gamma:	??
0assignvariableop_27_batch_normalization_292_beta:	?F
7assignvariableop_28_batch_normalization_292_moving_mean:	?J
;assignvariableop_29_batch_normalization_292_moving_variance:	?6
#assignvariableop_30_dense_60_kernel:	?(/
!assignvariableop_31_dense_60_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_366_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_366_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_288_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_288_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_288_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_288_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_367_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_367_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_289_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_289_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_289_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_289_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_368_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_368_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_290_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_290_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_290_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_290_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_369_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_369_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_291_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_291_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_291_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_291_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_370_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_370_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_292_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_292_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_292_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_292_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_60_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_60_biasIdentity_31:output:0"/device:CPU:0*
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
?
?
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7167481

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
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_7169388

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
?
?
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7168189

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
?
?
-__inference_alex_net_10_layer_call_fn_7168618
conv2d_366_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_366_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_alex_net_10_layer_call_and_return_conditional_losses_71684822
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
_user_specified_nameconv2d_366_input
?
?
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7167563

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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7167015

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
?
?
,__inference_conv2d_369_layer_call_fn_7169731

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
G__inference_conv2d_369_layer_call_and_return_conditional_losses_71678512
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
9__inference_batch_normalization_290_layer_call_fn_7169698

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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_71678302
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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7167607

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
?
G__inference_conv2d_370_layer_call_and_return_conditional_losses_7167895

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
?
?
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7167780

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
?
?
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169947

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
?
?
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169659

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
?
?
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7167355

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
?
i
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_7167744

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
i
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_7167128

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
?
?
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7168081

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
9__inference_batch_normalization_292_layer_call_fn_7169973

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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_71676072
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
9__inference_batch_normalization_290_layer_call_fn_7169672

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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_71673112
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
??
?
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168980

inputsC
)conv2d_366_conv2d_readvariableop_resource:`8
*conv2d_366_biasadd_readvariableop_resource:`=
/batch_normalization_288_readvariableop_resource:`?
1batch_normalization_288_readvariableop_1_resource:`N
@batch_normalization_288_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_288_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_367_conv2d_readvariableop_resource:`?9
*conv2d_367_biasadd_readvariableop_resource:	?>
/batch_normalization_289_readvariableop_resource:	?@
1batch_normalization_289_readvariableop_1_resource:	?O
@batch_normalization_289_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_289_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_368_conv2d_readvariableop_resource:??9
*conv2d_368_biasadd_readvariableop_resource:	?>
/batch_normalization_290_readvariableop_resource:	?@
1batch_normalization_290_readvariableop_1_resource:	?O
@batch_normalization_290_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_290_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_369_conv2d_readvariableop_resource:??9
*conv2d_369_biasadd_readvariableop_resource:	?>
/batch_normalization_291_readvariableop_resource:	?@
1batch_normalization_291_readvariableop_1_resource:	?O
@batch_normalization_291_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_291_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_370_conv2d_readvariableop_resource:??9
*conv2d_370_biasadd_readvariableop_resource:	?>
/batch_normalization_292_readvariableop_resource:	?@
1batch_normalization_292_readvariableop_1_resource:	?O
@batch_normalization_292_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_292_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_60_matmul_readvariableop_resource:	?(6
(dense_60_biasadd_readvariableop_resource:
identity??7batch_normalization_288/FusedBatchNormV3/ReadVariableOp?9batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_288/ReadVariableOp?(batch_normalization_288/ReadVariableOp_1?7batch_normalization_289/FusedBatchNormV3/ReadVariableOp?9batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_289/ReadVariableOp?(batch_normalization_289/ReadVariableOp_1?7batch_normalization_290/FusedBatchNormV3/ReadVariableOp?9batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_290/ReadVariableOp?(batch_normalization_290/ReadVariableOp_1?7batch_normalization_291/FusedBatchNormV3/ReadVariableOp?9batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_291/ReadVariableOp?(batch_normalization_291/ReadVariableOp_1?7batch_normalization_292/FusedBatchNormV3/ReadVariableOp?9batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_292/ReadVariableOp?(batch_normalization_292/ReadVariableOp_1?!conv2d_366/BiasAdd/ReadVariableOp? conv2d_366/Conv2D/ReadVariableOp?!conv2d_367/BiasAdd/ReadVariableOp? conv2d_367/Conv2D/ReadVariableOp?!conv2d_368/BiasAdd/ReadVariableOp? conv2d_368/Conv2D/ReadVariableOp?!conv2d_369/BiasAdd/ReadVariableOp? conv2d_369/Conv2D/ReadVariableOp?!conv2d_370/BiasAdd/ReadVariableOp? conv2d_370/Conv2D/ReadVariableOp?dense_60/BiasAdd/ReadVariableOp?dense_60/MatMul/ReadVariableOp?
 conv2d_366/Conv2D/ReadVariableOpReadVariableOp)conv2d_366_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_366/Conv2D/ReadVariableOp?
conv2d_366/Conv2DConv2Dinputs(conv2d_366/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_366/Conv2D?
!conv2d_366/BiasAdd/ReadVariableOpReadVariableOp*conv2d_366_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_366/BiasAdd/ReadVariableOp?
conv2d_366/BiasAddBiasAddconv2d_366/Conv2D:output:0)conv2d_366/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_366/BiasAdd?
conv2d_366/ReluReluconv2d_366/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_366/Relu?
&batch_normalization_288/ReadVariableOpReadVariableOp/batch_normalization_288_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_288/ReadVariableOp?
(batch_normalization_288/ReadVariableOp_1ReadVariableOp1batch_normalization_288_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_288/ReadVariableOp_1?
7batch_normalization_288/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_288_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_288/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_288_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_288/FusedBatchNormV3FusedBatchNormV3conv2d_366/Relu:activations:0.batch_normalization_288/ReadVariableOp:value:00batch_normalization_288/ReadVariableOp_1:value:0?batch_normalization_288/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_288/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_288/FusedBatchNormV3?
max_pooling2d_62/MaxPoolMaxPool,batch_normalization_288/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_62/MaxPool?
 conv2d_367/Conv2D/ReadVariableOpReadVariableOp)conv2d_367_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_367/Conv2D/ReadVariableOp?
conv2d_367/Conv2DConv2D!max_pooling2d_62/MaxPool:output:0(conv2d_367/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_367/Conv2D?
!conv2d_367/BiasAdd/ReadVariableOpReadVariableOp*conv2d_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_367/BiasAdd/ReadVariableOp?
conv2d_367/BiasAddBiasAddconv2d_367/Conv2D:output:0)conv2d_367/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_367/BiasAdd?
conv2d_367/ReluReluconv2d_367/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_367/Relu?
&batch_normalization_289/ReadVariableOpReadVariableOp/batch_normalization_289_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_289/ReadVariableOp?
(batch_normalization_289/ReadVariableOp_1ReadVariableOp1batch_normalization_289_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_289/ReadVariableOp_1?
7batch_normalization_289/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_289_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_289/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_289_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_289/FusedBatchNormV3FusedBatchNormV3conv2d_367/Relu:activations:0.batch_normalization_289/ReadVariableOp:value:00batch_normalization_289/ReadVariableOp_1:value:0?batch_normalization_289/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_289/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_289/FusedBatchNormV3?
max_pooling2d_63/MaxPoolMaxPool,batch_normalization_289/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_63/MaxPool?
 conv2d_368/Conv2D/ReadVariableOpReadVariableOp)conv2d_368_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_368/Conv2D/ReadVariableOp?
conv2d_368/Conv2DConv2D!max_pooling2d_63/MaxPool:output:0(conv2d_368/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_368/Conv2D?
!conv2d_368/BiasAdd/ReadVariableOpReadVariableOp*conv2d_368_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_368/BiasAdd/ReadVariableOp?
conv2d_368/BiasAddBiasAddconv2d_368/Conv2D:output:0)conv2d_368/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_368/BiasAdd?
conv2d_368/ReluReluconv2d_368/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_368/Relu?
&batch_normalization_290/ReadVariableOpReadVariableOp/batch_normalization_290_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_290/ReadVariableOp?
(batch_normalization_290/ReadVariableOp_1ReadVariableOp1batch_normalization_290_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_290/ReadVariableOp_1?
7batch_normalization_290/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_290_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_290/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_290_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_290/FusedBatchNormV3FusedBatchNormV3conv2d_368/Relu:activations:0.batch_normalization_290/ReadVariableOp:value:00batch_normalization_290/ReadVariableOp_1:value:0?batch_normalization_290/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_290/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_290/FusedBatchNormV3?
 conv2d_369/Conv2D/ReadVariableOpReadVariableOp)conv2d_369_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_369/Conv2D/ReadVariableOp?
conv2d_369/Conv2DConv2D,batch_normalization_290/FusedBatchNormV3:y:0(conv2d_369/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_369/Conv2D?
!conv2d_369/BiasAdd/ReadVariableOpReadVariableOp*conv2d_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_369/BiasAdd/ReadVariableOp?
conv2d_369/BiasAddBiasAddconv2d_369/Conv2D:output:0)conv2d_369/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_369/BiasAdd?
conv2d_369/ReluReluconv2d_369/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_369/Relu?
&batch_normalization_291/ReadVariableOpReadVariableOp/batch_normalization_291_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_291/ReadVariableOp?
(batch_normalization_291/ReadVariableOp_1ReadVariableOp1batch_normalization_291_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_291/ReadVariableOp_1?
7batch_normalization_291/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_291_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_291/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_291_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_291/FusedBatchNormV3FusedBatchNormV3conv2d_369/Relu:activations:0.batch_normalization_291/ReadVariableOp:value:00batch_normalization_291/ReadVariableOp_1:value:0?batch_normalization_291/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_291/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_291/FusedBatchNormV3?
 conv2d_370/Conv2D/ReadVariableOpReadVariableOp)conv2d_370_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_370/Conv2D/ReadVariableOp?
conv2d_370/Conv2DConv2D,batch_normalization_291/FusedBatchNormV3:y:0(conv2d_370/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_370/Conv2D?
!conv2d_370/BiasAdd/ReadVariableOpReadVariableOp*conv2d_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_370/BiasAdd/ReadVariableOp?
conv2d_370/BiasAddBiasAddconv2d_370/Conv2D:output:0)conv2d_370/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_370/BiasAdd?
conv2d_370/ReluReluconv2d_370/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_370/Relu?
&batch_normalization_292/ReadVariableOpReadVariableOp/batch_normalization_292_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_292/ReadVariableOp?
(batch_normalization_292/ReadVariableOp_1ReadVariableOp1batch_normalization_292_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_292/ReadVariableOp_1?
7batch_normalization_292/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_292_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_292/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_292_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_292/FusedBatchNormV3FusedBatchNormV3conv2d_370/Relu:activations:0.batch_normalization_292/ReadVariableOp:value:00batch_normalization_292/ReadVariableOp_1:value:0?batch_normalization_292/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_292/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_292/FusedBatchNormV3?
max_pooling2d_64/MaxPoolMaxPool,batch_normalization_292/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_64/MaxPoolu
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_28/Const?
flatten_28/ReshapeReshape!max_pooling2d_64/MaxPool:output:0flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_28/Reshape?
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_60/MatMul/ReadVariableOp?
dense_60/MatMulMatMulflatten_28/Reshape:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/MatMul?
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp?
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/BiasAdd|
dense_60/SigmoidSigmoiddense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_60/Sigmoido
IdentityIdentitydense_60/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_288/FusedBatchNormV3/ReadVariableOp:^batch_normalization_288/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_288/ReadVariableOp)^batch_normalization_288/ReadVariableOp_18^batch_normalization_289/FusedBatchNormV3/ReadVariableOp:^batch_normalization_289/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_289/ReadVariableOp)^batch_normalization_289/ReadVariableOp_18^batch_normalization_290/FusedBatchNormV3/ReadVariableOp:^batch_normalization_290/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_290/ReadVariableOp)^batch_normalization_290/ReadVariableOp_18^batch_normalization_291/FusedBatchNormV3/ReadVariableOp:^batch_normalization_291/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_291/ReadVariableOp)^batch_normalization_291/ReadVariableOp_18^batch_normalization_292/FusedBatchNormV3/ReadVariableOp:^batch_normalization_292/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_292/ReadVariableOp)^batch_normalization_292/ReadVariableOp_1"^conv2d_366/BiasAdd/ReadVariableOp!^conv2d_366/Conv2D/ReadVariableOp"^conv2d_367/BiasAdd/ReadVariableOp!^conv2d_367/Conv2D/ReadVariableOp"^conv2d_368/BiasAdd/ReadVariableOp!^conv2d_368/Conv2D/ReadVariableOp"^conv2d_369/BiasAdd/ReadVariableOp!^conv2d_369/Conv2D/ReadVariableOp"^conv2d_370/BiasAdd/ReadVariableOp!^conv2d_370/Conv2D/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_288/FusedBatchNormV3/ReadVariableOp7batch_normalization_288/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_288/FusedBatchNormV3/ReadVariableOp_19batch_normalization_288/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_288/ReadVariableOp&batch_normalization_288/ReadVariableOp2T
(batch_normalization_288/ReadVariableOp_1(batch_normalization_288/ReadVariableOp_12r
7batch_normalization_289/FusedBatchNormV3/ReadVariableOp7batch_normalization_289/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_289/FusedBatchNormV3/ReadVariableOp_19batch_normalization_289/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_289/ReadVariableOp&batch_normalization_289/ReadVariableOp2T
(batch_normalization_289/ReadVariableOp_1(batch_normalization_289/ReadVariableOp_12r
7batch_normalization_290/FusedBatchNormV3/ReadVariableOp7batch_normalization_290/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_290/FusedBatchNormV3/ReadVariableOp_19batch_normalization_290/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_290/ReadVariableOp&batch_normalization_290/ReadVariableOp2T
(batch_normalization_290/ReadVariableOp_1(batch_normalization_290/ReadVariableOp_12r
7batch_normalization_291/FusedBatchNormV3/ReadVariableOp7batch_normalization_291/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_291/FusedBatchNormV3/ReadVariableOp_19batch_normalization_291/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_291/ReadVariableOp&batch_normalization_291/ReadVariableOp2T
(batch_normalization_291/ReadVariableOp_1(batch_normalization_291/ReadVariableOp_12r
7batch_normalization_292/FusedBatchNormV3/ReadVariableOp7batch_normalization_292/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_292/FusedBatchNormV3/ReadVariableOp_19batch_normalization_292/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_292/ReadVariableOp&batch_normalization_292/ReadVariableOp2T
(batch_normalization_292/ReadVariableOp_1(batch_normalization_292/ReadVariableOp_12F
!conv2d_366/BiasAdd/ReadVariableOp!conv2d_366/BiasAdd/ReadVariableOp2D
 conv2d_366/Conv2D/ReadVariableOp conv2d_366/Conv2D/ReadVariableOp2F
!conv2d_367/BiasAdd/ReadVariableOp!conv2d_367/BiasAdd/ReadVariableOp2D
 conv2d_367/Conv2D/ReadVariableOp conv2d_367/Conv2D/ReadVariableOp2F
!conv2d_368/BiasAdd/ReadVariableOp!conv2d_368/BiasAdd/ReadVariableOp2D
 conv2d_368/Conv2D/ReadVariableOp conv2d_368/Conv2D/ReadVariableOp2F
!conv2d_369/BiasAdd/ReadVariableOp!conv2d_369/BiasAdd/ReadVariableOp2D
 conv2d_369/Conv2D/ReadVariableOp conv2d_369/Conv2D/ReadVariableOp2F
!conv2d_370/BiasAdd/ReadVariableOp!conv2d_370/BiasAdd/ReadVariableOp2D
 conv2d_370/Conv2D/ReadVariableOp conv2d_370/Conv2D/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_7169393

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
?
?
,__inference_conv2d_368_layer_call_fn_7169587

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
G__inference_conv2d_368_layer_call_and_return_conditional_losses_71678072
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
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_7167794

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
9__inference_batch_normalization_292_layer_call_fn_7169999

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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_71680812
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
?
c
G__inference_flatten_28_layer_call_and_return_conditional_losses_7167940

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
?
?
G__inference_conv2d_369_layer_call_and_return_conditional_losses_7167851

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
?	
?
9__inference_batch_normalization_288_layer_call_fn_7169344

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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_71670152
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
9__inference_batch_normalization_288_layer_call_fn_7169357

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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_71670592
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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169929

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
9__inference_batch_normalization_290_layer_call_fn_7169711

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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_71681892
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
G__inference_conv2d_368_layer_call_and_return_conditional_losses_7167807

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
c
G__inference_flatten_28_layer_call_and_return_conditional_losses_7170025

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
?
?
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169331

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
conv2d_366_inputC
"serving_default_conv2d_366_input:0???????????<
dense_600
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
+:)`2conv2d_366/kernel
:`2conv2d_366/bias
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
+:)`2batch_normalization_288/gamma
*:(`2batch_normalization_288/beta
3:1` (2#batch_normalization_288/moving_mean
7:5` (2'batch_normalization_288/moving_variance
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
,:*`?2conv2d_367/kernel
:?2conv2d_367/bias
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
,:*?2batch_normalization_289/gamma
+:)?2batch_normalization_289/beta
4:2? (2#batch_normalization_289/moving_mean
8:6? (2'batch_normalization_289/moving_variance
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
-:+??2conv2d_368/kernel
:?2conv2d_368/bias
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
,:*?2batch_normalization_290/gamma
+:)?2batch_normalization_290/beta
4:2? (2#batch_normalization_290/moving_mean
8:6? (2'batch_normalization_290/moving_variance
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
-:+??2conv2d_369/kernel
:?2conv2d_369/bias
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
,:*?2batch_normalization_291/gamma
+:)?2batch_normalization_291/beta
4:2? (2#batch_normalization_291/moving_mean
8:6? (2'batch_normalization_291/moving_variance
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
-:+??2conv2d_370/kernel
:?2conv2d_370/bias
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
,:*?2batch_normalization_292/gamma
+:)?2batch_normalization_292/beta
4:2? (2#batch_normalization_292/moving_mean
8:6? (2'batch_normalization_292/moving_variance
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
": 	?(2dense_60/kernel
:2dense_60/bias
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
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168980
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7169101
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168701
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168784?
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
"__inference__wrapped_model_7166993conv2d_366_input"?
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
-__inference_alex_net_10_layer_call_fn_7168027
-__inference_alex_net_10_layer_call_fn_7169170
-__inference_alex_net_10_layer_call_fn_7169239
-__inference_alex_net_10_layer_call_fn_7168618?
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
G__inference_conv2d_366_layer_call_and_return_conditional_losses_7169250?
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
,__inference_conv2d_366_layer_call_fn_7169259?
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
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169277
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169295
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169313
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169331?
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
9__inference_batch_normalization_288_layer_call_fn_7169344
9__inference_batch_normalization_288_layer_call_fn_7169357
9__inference_batch_normalization_288_layer_call_fn_7169370
9__inference_batch_normalization_288_layer_call_fn_7169383?
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
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_7169388
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_7169393?
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
2__inference_max_pooling2d_62_layer_call_fn_7169398
2__inference_max_pooling2d_62_layer_call_fn_7169403?
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
G__inference_conv2d_367_layer_call_and_return_conditional_losses_7169414?
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
,__inference_conv2d_367_layer_call_fn_7169423?
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
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169441
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169459
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169477
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169495?
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
9__inference_batch_normalization_289_layer_call_fn_7169508
9__inference_batch_normalization_289_layer_call_fn_7169521
9__inference_batch_normalization_289_layer_call_fn_7169534
9__inference_batch_normalization_289_layer_call_fn_7169547?
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
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_7169552
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_7169557?
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
2__inference_max_pooling2d_63_layer_call_fn_7169562
2__inference_max_pooling2d_63_layer_call_fn_7169567?
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
G__inference_conv2d_368_layer_call_and_return_conditional_losses_7169578?
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
,__inference_conv2d_368_layer_call_fn_7169587?
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
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169605
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169623
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169641
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169659?
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
9__inference_batch_normalization_290_layer_call_fn_7169672
9__inference_batch_normalization_290_layer_call_fn_7169685
9__inference_batch_normalization_290_layer_call_fn_7169698
9__inference_batch_normalization_290_layer_call_fn_7169711?
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
G__inference_conv2d_369_layer_call_and_return_conditional_losses_7169722?
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
,__inference_conv2d_369_layer_call_fn_7169731?
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
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169749
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169767
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169785
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169803?
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
9__inference_batch_normalization_291_layer_call_fn_7169816
9__inference_batch_normalization_291_layer_call_fn_7169829
9__inference_batch_normalization_291_layer_call_fn_7169842
9__inference_batch_normalization_291_layer_call_fn_7169855?
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
G__inference_conv2d_370_layer_call_and_return_conditional_losses_7169866?
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
,__inference_conv2d_370_layer_call_fn_7169875?
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
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169893
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169911
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169929
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169947?
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
9__inference_batch_normalization_292_layer_call_fn_7169960
9__inference_batch_normalization_292_layer_call_fn_7169973
9__inference_batch_normalization_292_layer_call_fn_7169986
9__inference_batch_normalization_292_layer_call_fn_7169999?
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
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_7170004
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_7170009?
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
2__inference_max_pooling2d_64_layer_call_fn_7170014
2__inference_max_pooling2d_64_layer_call_fn_7170019?
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
G__inference_flatten_28_layer_call_and_return_conditional_losses_7170025?
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
,__inference_flatten_28_layer_call_fn_7170030?
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
E__inference_dense_60_layer_call_and_return_conditional_losses_7170041?
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
*__inference_dense_60_layer_call_fn_7170050?
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
%__inference_signature_wrapper_7168859conv2d_366_input"?
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
"__inference__wrapped_model_7166993?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_366_input???????????
? "3?0
.
dense_60"?
dense_60??????????
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168701?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_366_input???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168784?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_366_input???????????
p

 
? "%?"
?
0?????????
? ?
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7168980?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
H__inference_alex_net_10_layer_call_and_return_conditional_losses_7169101?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
-__inference_alex_net_10_layer_call_fn_7168027?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_366_input???????????
p 

 
? "???????????
-__inference_alex_net_10_layer_call_fn_7168618?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_366_input???????????
p

 
? "???????????
-__inference_alex_net_10_layer_call_fn_7169170  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
-__inference_alex_net_10_layer_call_fn_7169239  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169277? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169295? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169313r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_288_layer_call_and_return_conditional_losses_7169331r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_288_layer_call_fn_7169344? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_288_layer_call_fn_7169357? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_288_layer_call_fn_7169370e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_288_layer_call_fn_7169383e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169441?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169459?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169477t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_289_layer_call_and_return_conditional_losses_7169495t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_289_layer_call_fn_7169508?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_289_layer_call_fn_7169521?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_289_layer_call_fn_7169534g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_289_layer_call_fn_7169547g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169605?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169623?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169641tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_290_layer_call_and_return_conditional_losses_7169659tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_290_layer_call_fn_7169672?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_290_layer_call_fn_7169685?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_290_layer_call_fn_7169698gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_290_layer_call_fn_7169711gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169749?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169767?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169785tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_291_layer_call_and_return_conditional_losses_7169803tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_291_layer_call_fn_7169816?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_291_layer_call_fn_7169829?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_291_layer_call_fn_7169842gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_291_layer_call_fn_7169855gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169893?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169911?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169929tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_292_layer_call_and_return_conditional_losses_7169947tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_292_layer_call_fn_7169960?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_292_layer_call_fn_7169973?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_292_layer_call_fn_7169986gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_292_layer_call_fn_7169999gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_366_layer_call_and_return_conditional_losses_7169250n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_366_layer_call_fn_7169259a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_367_layer_call_and_return_conditional_losses_7169414m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_367_layer_call_fn_7169423`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_368_layer_call_and_return_conditional_losses_7169578n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_368_layer_call_fn_7169587a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_369_layer_call_and_return_conditional_losses_7169722nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_369_layer_call_fn_7169731aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_370_layer_call_and_return_conditional_losses_7169866nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_370_layer_call_fn_7169875aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_60_layer_call_and_return_conditional_losses_7170041]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_60_layer_call_fn_7170050Pqr0?-
&?#
!?
inputs??????????(
? "???????????
G__inference_flatten_28_layer_call_and_return_conditional_losses_7170025b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
,__inference_flatten_28_layer_call_fn_7170030U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_7169388?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_7169393h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_62_layer_call_fn_7169398?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_62_layer_call_fn_7169403[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_7169552?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_7169557j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_63_layer_call_fn_7169562?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_63_layer_call_fn_7169567]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_7170004?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_64_layer_call_and_return_conditional_losses_7170009j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_64_layer_call_fn_7170014?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_64_layer_call_fn_7170019]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_7168859?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_366_input4?1
conv2d_366_input???????????"3?0
.
dense_60"?
dense_60?????????