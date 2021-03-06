̙
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
conv2d_258/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_258/kernel

%conv2d_258/kernel/Read/ReadVariableOpReadVariableOpconv2d_258/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_258/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_258/bias
o
#conv2d_258/bias/Read/ReadVariableOpReadVariableOpconv2d_258/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_200/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_200/gamma
?
1batch_normalization_200/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_200/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_200/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_200/beta
?
0batch_normalization_200/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_200/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_200/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_200/moving_mean
?
7batch_normalization_200/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_200/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_200/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_200/moving_variance
?
;batch_normalization_200/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_200/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_259/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_259/kernel
?
%conv2d_259/kernel/Read/ReadVariableOpReadVariableOpconv2d_259/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_259/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_259/bias
p
#conv2d_259/bias/Read/ReadVariableOpReadVariableOpconv2d_259/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_201/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_201/gamma
?
1batch_normalization_201/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_201/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_201/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_201/beta
?
0batch_normalization_201/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_201/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_201/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_201/moving_mean
?
7batch_normalization_201/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_201/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_201/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_201/moving_variance
?
;batch_normalization_201/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_201/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_260/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_260/kernel
?
%conv2d_260/kernel/Read/ReadVariableOpReadVariableOpconv2d_260/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_260/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_260/bias
p
#conv2d_260/bias/Read/ReadVariableOpReadVariableOpconv2d_260/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_202/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_202/gamma
?
1batch_normalization_202/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_202/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_202/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_202/beta
?
0batch_normalization_202/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_202/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_202/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_202/moving_mean
?
7batch_normalization_202/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_202/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_202/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_202/moving_variance
?
;batch_normalization_202/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_202/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_261/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_261/kernel
?
%conv2d_261/kernel/Read/ReadVariableOpReadVariableOpconv2d_261/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_261/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_261/bias
p
#conv2d_261/bias/Read/ReadVariableOpReadVariableOpconv2d_261/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_203/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_203/gamma
?
1batch_normalization_203/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_203/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_203/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_203/beta
?
0batch_normalization_203/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_203/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_203/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_203/moving_mean
?
7batch_normalization_203/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_203/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_203/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_203/moving_variance
?
;batch_normalization_203/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_203/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_262/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_262/kernel
?
%conv2d_262/kernel/Read/ReadVariableOpReadVariableOpconv2d_262/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_262/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_262/bias
p
#conv2d_262/bias/Read/ReadVariableOpReadVariableOpconv2d_262/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_204/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_204/gamma
?
1batch_normalization_204/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_204/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_204/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_204/beta
?
0batch_normalization_204/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_204/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_204/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_204/moving_mean
?
7batch_normalization_204/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_204/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_204/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_204/moving_variance
?
;batch_normalization_204/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_204/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_44/kernel
t
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes
:	?(*
dtype0
r
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_44/bias
k
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
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
VARIABLE_VALUEconv2d_258/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_258/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_200/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_200/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_200/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_200/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_259/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_259/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_201/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_201/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_201/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_201/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_260/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_260/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_202/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_202/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_202/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_202/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_261/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_261/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_203/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_203/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_203/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_203/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_262/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_262/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_204/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_204/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_204/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_204/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_44/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_44/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_258_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_258_inputconv2d_258/kernelconv2d_258/biasbatch_normalization_200/gammabatch_normalization_200/beta#batch_normalization_200/moving_mean'batch_normalization_200/moving_varianceconv2d_259/kernelconv2d_259/biasbatch_normalization_201/gammabatch_normalization_201/beta#batch_normalization_201/moving_mean'batch_normalization_201/moving_varianceconv2d_260/kernelconv2d_260/biasbatch_normalization_202/gammabatch_normalization_202/beta#batch_normalization_202/moving_mean'batch_normalization_202/moving_varianceconv2d_261/kernelconv2d_261/biasbatch_normalization_203/gammabatch_normalization_203/beta#batch_normalization_203/moving_mean'batch_normalization_203/moving_varianceconv2d_262/kernelconv2d_262/biasbatch_normalization_204/gammabatch_normalization_204/beta#batch_normalization_204/moving_mean'batch_normalization_204/moving_variancedense_44/kerneldense_44/bias*,
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
%__inference_signature_wrapper_2311538
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_258/kernel/Read/ReadVariableOp#conv2d_258/bias/Read/ReadVariableOp1batch_normalization_200/gamma/Read/ReadVariableOp0batch_normalization_200/beta/Read/ReadVariableOp7batch_normalization_200/moving_mean/Read/ReadVariableOp;batch_normalization_200/moving_variance/Read/ReadVariableOp%conv2d_259/kernel/Read/ReadVariableOp#conv2d_259/bias/Read/ReadVariableOp1batch_normalization_201/gamma/Read/ReadVariableOp0batch_normalization_201/beta/Read/ReadVariableOp7batch_normalization_201/moving_mean/Read/ReadVariableOp;batch_normalization_201/moving_variance/Read/ReadVariableOp%conv2d_260/kernel/Read/ReadVariableOp#conv2d_260/bias/Read/ReadVariableOp1batch_normalization_202/gamma/Read/ReadVariableOp0batch_normalization_202/beta/Read/ReadVariableOp7batch_normalization_202/moving_mean/Read/ReadVariableOp;batch_normalization_202/moving_variance/Read/ReadVariableOp%conv2d_261/kernel/Read/ReadVariableOp#conv2d_261/bias/Read/ReadVariableOp1batch_normalization_203/gamma/Read/ReadVariableOp0batch_normalization_203/beta/Read/ReadVariableOp7batch_normalization_203/moving_mean/Read/ReadVariableOp;batch_normalization_203/moving_variance/Read/ReadVariableOp%conv2d_262/kernel/Read/ReadVariableOp#conv2d_262/bias/Read/ReadVariableOp1batch_normalization_204/gamma/Read/ReadVariableOp0batch_normalization_204/beta/Read/ReadVariableOp7batch_normalization_204/moving_mean/Read/ReadVariableOp;batch_normalization_204/moving_variance/Read/ReadVariableOp#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2312872
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_258/kernelconv2d_258/biasbatch_normalization_200/gammabatch_normalization_200/beta#batch_normalization_200/moving_mean'batch_normalization_200/moving_varianceconv2d_259/kernelconv2d_259/biasbatch_normalization_201/gammabatch_normalization_201/beta#batch_normalization_201/moving_mean'batch_normalization_201/moving_varianceconv2d_260/kernelconv2d_260/biasbatch_normalization_202/gammabatch_normalization_202/beta#batch_normalization_202/moving_mean'batch_normalization_202/moving_varianceconv2d_261/kernelconv2d_261/biasbatch_normalization_203/gammabatch_normalization_203/beta#batch_normalization_203/moving_mean'batch_normalization_203/moving_varianceconv2d_262/kernelconv2d_262/biasbatch_normalization_204/gammabatch_normalization_204/beta#batch_normalization_204/moving_mean'batch_normalization_204/moving_variancedense_44/kerneldense_44/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_2313002??
?
?
G__inference_conv2d_258_layer_call_and_return_conditional_losses_2311929

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
?
?
%__inference_signature_wrapper_2311538
conv2d_258_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_258_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_23096722
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
_user_specified_nameconv2d_258_input
?
?
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312138

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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_2312236

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
?
?
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312572

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
?X
?
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2310639

inputs,
conv2d_258_2310387:` 
conv2d_258_2310389:`-
batch_normalization_200_2310410:`-
batch_normalization_200_2310412:`-
batch_normalization_200_2310414:`-
batch_normalization_200_2310416:`-
conv2d_259_2310437:`?!
conv2d_259_2310439:	?.
batch_normalization_201_2310460:	?.
batch_normalization_201_2310462:	?.
batch_normalization_201_2310464:	?.
batch_normalization_201_2310466:	?.
conv2d_260_2310487:??!
conv2d_260_2310489:	?.
batch_normalization_202_2310510:	?.
batch_normalization_202_2310512:	?.
batch_normalization_202_2310514:	?.
batch_normalization_202_2310516:	?.
conv2d_261_2310531:??!
conv2d_261_2310533:	?.
batch_normalization_203_2310554:	?.
batch_normalization_203_2310556:	?.
batch_normalization_203_2310558:	?.
batch_normalization_203_2310560:	?.
conv2d_262_2310575:??!
conv2d_262_2310577:	?.
batch_normalization_204_2310598:	?.
batch_normalization_204_2310600:	?.
batch_normalization_204_2310602:	?.
batch_normalization_204_2310604:	?#
dense_44_2310633:	?(
dense_44_2310635:
identity??/batch_normalization_200/StatefulPartitionedCall?/batch_normalization_201/StatefulPartitionedCall?/batch_normalization_202/StatefulPartitionedCall?/batch_normalization_203/StatefulPartitionedCall?/batch_normalization_204/StatefulPartitionedCall?"conv2d_258/StatefulPartitionedCall?"conv2d_259/StatefulPartitionedCall?"conv2d_260/StatefulPartitionedCall?"conv2d_261/StatefulPartitionedCall?"conv2d_262/StatefulPartitionedCall? dense_44/StatefulPartitionedCall?
"conv2d_258/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_258_2310387conv2d_258_2310389*
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
G__inference_conv2d_258_layer_call_and_return_conditional_losses_23103862$
"conv2d_258/StatefulPartitionedCall?
/batch_normalization_200/StatefulPartitionedCallStatefulPartitionedCall+conv2d_258/StatefulPartitionedCall:output:0batch_normalization_200_2310410batch_normalization_200_2310412batch_normalization_200_2310414batch_normalization_200_2310416*
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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_231040921
/batch_normalization_200/StatefulPartitionedCall?
 max_pooling2d_42/PartitionedCallPartitionedCall8batch_normalization_200/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_23104232"
 max_pooling2d_42/PartitionedCall?
"conv2d_259/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_42/PartitionedCall:output:0conv2d_259_2310437conv2d_259_2310439*
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
G__inference_conv2d_259_layer_call_and_return_conditional_losses_23104362$
"conv2d_259/StatefulPartitionedCall?
/batch_normalization_201/StatefulPartitionedCallStatefulPartitionedCall+conv2d_259/StatefulPartitionedCall:output:0batch_normalization_201_2310460batch_normalization_201_2310462batch_normalization_201_2310464batch_normalization_201_2310466*
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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_231045921
/batch_normalization_201/StatefulPartitionedCall?
 max_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_201/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_23104732"
 max_pooling2d_43/PartitionedCall?
"conv2d_260/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_43/PartitionedCall:output:0conv2d_260_2310487conv2d_260_2310489*
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
G__inference_conv2d_260_layer_call_and_return_conditional_losses_23104862$
"conv2d_260/StatefulPartitionedCall?
/batch_normalization_202/StatefulPartitionedCallStatefulPartitionedCall+conv2d_260/StatefulPartitionedCall:output:0batch_normalization_202_2310510batch_normalization_202_2310512batch_normalization_202_2310514batch_normalization_202_2310516*
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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_231050921
/batch_normalization_202/StatefulPartitionedCall?
"conv2d_261/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_202/StatefulPartitionedCall:output:0conv2d_261_2310531conv2d_261_2310533*
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
G__inference_conv2d_261_layer_call_and_return_conditional_losses_23105302$
"conv2d_261/StatefulPartitionedCall?
/batch_normalization_203/StatefulPartitionedCallStatefulPartitionedCall+conv2d_261/StatefulPartitionedCall:output:0batch_normalization_203_2310554batch_normalization_203_2310556batch_normalization_203_2310558batch_normalization_203_2310560*
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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_231055321
/batch_normalization_203/StatefulPartitionedCall?
"conv2d_262/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_203/StatefulPartitionedCall:output:0conv2d_262_2310575conv2d_262_2310577*
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
G__inference_conv2d_262_layer_call_and_return_conditional_losses_23105742$
"conv2d_262/StatefulPartitionedCall?
/batch_normalization_204/StatefulPartitionedCallStatefulPartitionedCall+conv2d_262/StatefulPartitionedCall:output:0batch_normalization_204_2310598batch_normalization_204_2310600batch_normalization_204_2310602batch_normalization_204_2310604*
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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_231059721
/batch_normalization_204/StatefulPartitionedCall?
 max_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_204/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_23106112"
 max_pooling2d_44/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
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
G__inference_flatten_20_layer_call_and_return_conditional_losses_23106192
flatten_20/PartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_44_2310633dense_44_2310635*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_23106322"
 dense_44/StatefulPartitionedCall?
IdentityIdentity)dense_44/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_200/StatefulPartitionedCall0^batch_normalization_201/StatefulPartitionedCall0^batch_normalization_202/StatefulPartitionedCall0^batch_normalization_203/StatefulPartitionedCall0^batch_normalization_204/StatefulPartitionedCall#^conv2d_258/StatefulPartitionedCall#^conv2d_259/StatefulPartitionedCall#^conv2d_260/StatefulPartitionedCall#^conv2d_261/StatefulPartitionedCall#^conv2d_262/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_200/StatefulPartitionedCall/batch_normalization_200/StatefulPartitionedCall2b
/batch_normalization_201/StatefulPartitionedCall/batch_normalization_201/StatefulPartitionedCall2b
/batch_normalization_202/StatefulPartitionedCall/batch_normalization_202/StatefulPartitionedCall2b
/batch_normalization_203/StatefulPartitionedCall/batch_normalization_203/StatefulPartitionedCall2b
/batch_normalization_204/StatefulPartitionedCall/batch_normalization_204/StatefulPartitionedCall2H
"conv2d_258/StatefulPartitionedCall"conv2d_258/StatefulPartitionedCall2H
"conv2d_259/StatefulPartitionedCall"conv2d_259/StatefulPartitionedCall2H
"conv2d_260/StatefulPartitionedCall"conv2d_260/StatefulPartitionedCall2H
"conv2d_261/StatefulPartitionedCall"conv2d_261/StatefulPartitionedCall2H
"conv2d_262/StatefulPartitionedCall"conv2d_262/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_203_layer_call_fn_2312521

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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_23105532
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
?
?
*__inference_dense_44_layer_call_fn_2312729

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
E__inference_dense_44_layer_call_and_return_conditional_losses_23106322
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
?
?
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312284

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
?
i
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_2310473

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
G__inference_conv2d_261_layer_call_and_return_conditional_losses_2312401

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
?
?
,__inference_alex_net_6_layer_call_fn_2310706
conv2d_258_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_258_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *P
fKRI
G__inference_alex_net_6_layer_call_and_return_conditional_losses_23106392
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
_user_specified_nameconv2d_258_input
?	
?
9__inference_batch_normalization_200_layer_call_fn_2312049

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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_23104092
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
?
?
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2310814

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
G__inference_conv2d_261_layer_call_and_return_conditional_losses_2310530

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
9__inference_batch_normalization_200_layer_call_fn_2312023

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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_23096942
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
9__inference_batch_normalization_201_layer_call_fn_2312187

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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_23098422
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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312302

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
?Y
?
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311463
conv2d_258_input,
conv2d_258_2311383:` 
conv2d_258_2311385:`-
batch_normalization_200_2311388:`-
batch_normalization_200_2311390:`-
batch_normalization_200_2311392:`-
batch_normalization_200_2311394:`-
conv2d_259_2311398:`?!
conv2d_259_2311400:	?.
batch_normalization_201_2311403:	?.
batch_normalization_201_2311405:	?.
batch_normalization_201_2311407:	?.
batch_normalization_201_2311409:	?.
conv2d_260_2311413:??!
conv2d_260_2311415:	?.
batch_normalization_202_2311418:	?.
batch_normalization_202_2311420:	?.
batch_normalization_202_2311422:	?.
batch_normalization_202_2311424:	?.
conv2d_261_2311427:??!
conv2d_261_2311429:	?.
batch_normalization_203_2311432:	?.
batch_normalization_203_2311434:	?.
batch_normalization_203_2311436:	?.
batch_normalization_203_2311438:	?.
conv2d_262_2311441:??!
conv2d_262_2311443:	?.
batch_normalization_204_2311446:	?.
batch_normalization_204_2311448:	?.
batch_normalization_204_2311450:	?.
batch_normalization_204_2311452:	?#
dense_44_2311457:	?(
dense_44_2311459:
identity??/batch_normalization_200/StatefulPartitionedCall?/batch_normalization_201/StatefulPartitionedCall?/batch_normalization_202/StatefulPartitionedCall?/batch_normalization_203/StatefulPartitionedCall?/batch_normalization_204/StatefulPartitionedCall?"conv2d_258/StatefulPartitionedCall?"conv2d_259/StatefulPartitionedCall?"conv2d_260/StatefulPartitionedCall?"conv2d_261/StatefulPartitionedCall?"conv2d_262/StatefulPartitionedCall? dense_44/StatefulPartitionedCall?
"conv2d_258/StatefulPartitionedCallStatefulPartitionedCallconv2d_258_inputconv2d_258_2311383conv2d_258_2311385*
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
G__inference_conv2d_258_layer_call_and_return_conditional_losses_23103862$
"conv2d_258/StatefulPartitionedCall?
/batch_normalization_200/StatefulPartitionedCallStatefulPartitionedCall+conv2d_258/StatefulPartitionedCall:output:0batch_normalization_200_2311388batch_normalization_200_2311390batch_normalization_200_2311392batch_normalization_200_2311394*
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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_231098621
/batch_normalization_200/StatefulPartitionedCall?
 max_pooling2d_42/PartitionedCallPartitionedCall8batch_normalization_200/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_23104232"
 max_pooling2d_42/PartitionedCall?
"conv2d_259/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_42/PartitionedCall:output:0conv2d_259_2311398conv2d_259_2311400*
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
G__inference_conv2d_259_layer_call_and_return_conditional_losses_23104362$
"conv2d_259/StatefulPartitionedCall?
/batch_normalization_201/StatefulPartitionedCallStatefulPartitionedCall+conv2d_259/StatefulPartitionedCall:output:0batch_normalization_201_2311403batch_normalization_201_2311405batch_normalization_201_2311407batch_normalization_201_2311409*
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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_231092721
/batch_normalization_201/StatefulPartitionedCall?
 max_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_201/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_23104732"
 max_pooling2d_43/PartitionedCall?
"conv2d_260/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_43/PartitionedCall:output:0conv2d_260_2311413conv2d_260_2311415*
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
G__inference_conv2d_260_layer_call_and_return_conditional_losses_23104862$
"conv2d_260/StatefulPartitionedCall?
/batch_normalization_202/StatefulPartitionedCallStatefulPartitionedCall+conv2d_260/StatefulPartitionedCall:output:0batch_normalization_202_2311418batch_normalization_202_2311420batch_normalization_202_2311422batch_normalization_202_2311424*
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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_231086821
/batch_normalization_202/StatefulPartitionedCall?
"conv2d_261/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_202/StatefulPartitionedCall:output:0conv2d_261_2311427conv2d_261_2311429*
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
G__inference_conv2d_261_layer_call_and_return_conditional_losses_23105302$
"conv2d_261/StatefulPartitionedCall?
/batch_normalization_203/StatefulPartitionedCallStatefulPartitionedCall+conv2d_261/StatefulPartitionedCall:output:0batch_normalization_203_2311432batch_normalization_203_2311434batch_normalization_203_2311436batch_normalization_203_2311438*
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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_231081421
/batch_normalization_203/StatefulPartitionedCall?
"conv2d_262/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_203/StatefulPartitionedCall:output:0conv2d_262_2311441conv2d_262_2311443*
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
G__inference_conv2d_262_layer_call_and_return_conditional_losses_23105742$
"conv2d_262/StatefulPartitionedCall?
/batch_normalization_204/StatefulPartitionedCallStatefulPartitionedCall+conv2d_262/StatefulPartitionedCall:output:0batch_normalization_204_2311446batch_normalization_204_2311448batch_normalization_204_2311450batch_normalization_204_2311452*
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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_231076021
/batch_normalization_204/StatefulPartitionedCall?
 max_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_204/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_23106112"
 max_pooling2d_44/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
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
G__inference_flatten_20_layer_call_and_return_conditional_losses_23106192
flatten_20/PartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_44_2311457dense_44_2311459*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_23106322"
 dense_44/StatefulPartitionedCall?
IdentityIdentity)dense_44/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_200/StatefulPartitionedCall0^batch_normalization_201/StatefulPartitionedCall0^batch_normalization_202/StatefulPartitionedCall0^batch_normalization_203/StatefulPartitionedCall0^batch_normalization_204/StatefulPartitionedCall#^conv2d_258/StatefulPartitionedCall#^conv2d_259/StatefulPartitionedCall#^conv2d_260/StatefulPartitionedCall#^conv2d_261/StatefulPartitionedCall#^conv2d_262/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_200/StatefulPartitionedCall/batch_normalization_200/StatefulPartitionedCall2b
/batch_normalization_201/StatefulPartitionedCall/batch_normalization_201/StatefulPartitionedCall2b
/batch_normalization_202/StatefulPartitionedCall/batch_normalization_202/StatefulPartitionedCall2b
/batch_normalization_203/StatefulPartitionedCall/batch_normalization_203/StatefulPartitionedCall2b
/batch_normalization_204/StatefulPartitionedCall/batch_normalization_204/StatefulPartitionedCall2H
"conv2d_258/StatefulPartitionedCall"conv2d_258/StatefulPartitionedCall2H
"conv2d_259/StatefulPartitionedCall"conv2d_259/StatefulPartitionedCall2H
"conv2d_260/StatefulPartitionedCall"conv2d_260/StatefulPartitionedCall2H
"conv2d_261/StatefulPartitionedCall"conv2d_261/StatefulPartitionedCall2H
"conv2d_262/StatefulPartitionedCall"conv2d_262/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_258_input
?
?
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2310160

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
??
?
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311659

inputsC
)conv2d_258_conv2d_readvariableop_resource:`8
*conv2d_258_biasadd_readvariableop_resource:`=
/batch_normalization_200_readvariableop_resource:`?
1batch_normalization_200_readvariableop_1_resource:`N
@batch_normalization_200_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_200_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_259_conv2d_readvariableop_resource:`?9
*conv2d_259_biasadd_readvariableop_resource:	?>
/batch_normalization_201_readvariableop_resource:	?@
1batch_normalization_201_readvariableop_1_resource:	?O
@batch_normalization_201_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_201_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_260_conv2d_readvariableop_resource:??9
*conv2d_260_biasadd_readvariableop_resource:	?>
/batch_normalization_202_readvariableop_resource:	?@
1batch_normalization_202_readvariableop_1_resource:	?O
@batch_normalization_202_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_202_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_261_conv2d_readvariableop_resource:??9
*conv2d_261_biasadd_readvariableop_resource:	?>
/batch_normalization_203_readvariableop_resource:	?@
1batch_normalization_203_readvariableop_1_resource:	?O
@batch_normalization_203_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_203_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_262_conv2d_readvariableop_resource:??9
*conv2d_262_biasadd_readvariableop_resource:	?>
/batch_normalization_204_readvariableop_resource:	?@
1batch_normalization_204_readvariableop_1_resource:	?O
@batch_normalization_204_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_204_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_44_matmul_readvariableop_resource:	?(6
(dense_44_biasadd_readvariableop_resource:
identity??7batch_normalization_200/FusedBatchNormV3/ReadVariableOp?9batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_200/ReadVariableOp?(batch_normalization_200/ReadVariableOp_1?7batch_normalization_201/FusedBatchNormV3/ReadVariableOp?9batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_201/ReadVariableOp?(batch_normalization_201/ReadVariableOp_1?7batch_normalization_202/FusedBatchNormV3/ReadVariableOp?9batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_202/ReadVariableOp?(batch_normalization_202/ReadVariableOp_1?7batch_normalization_203/FusedBatchNormV3/ReadVariableOp?9batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_203/ReadVariableOp?(batch_normalization_203/ReadVariableOp_1?7batch_normalization_204/FusedBatchNormV3/ReadVariableOp?9batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_204/ReadVariableOp?(batch_normalization_204/ReadVariableOp_1?!conv2d_258/BiasAdd/ReadVariableOp? conv2d_258/Conv2D/ReadVariableOp?!conv2d_259/BiasAdd/ReadVariableOp? conv2d_259/Conv2D/ReadVariableOp?!conv2d_260/BiasAdd/ReadVariableOp? conv2d_260/Conv2D/ReadVariableOp?!conv2d_261/BiasAdd/ReadVariableOp? conv2d_261/Conv2D/ReadVariableOp?!conv2d_262/BiasAdd/ReadVariableOp? conv2d_262/Conv2D/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?
 conv2d_258/Conv2D/ReadVariableOpReadVariableOp)conv2d_258_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_258/Conv2D/ReadVariableOp?
conv2d_258/Conv2DConv2Dinputs(conv2d_258/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_258/Conv2D?
!conv2d_258/BiasAdd/ReadVariableOpReadVariableOp*conv2d_258_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_258/BiasAdd/ReadVariableOp?
conv2d_258/BiasAddBiasAddconv2d_258/Conv2D:output:0)conv2d_258/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_258/BiasAdd?
conv2d_258/ReluReluconv2d_258/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_258/Relu?
&batch_normalization_200/ReadVariableOpReadVariableOp/batch_normalization_200_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_200/ReadVariableOp?
(batch_normalization_200/ReadVariableOp_1ReadVariableOp1batch_normalization_200_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_200/ReadVariableOp_1?
7batch_normalization_200/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_200_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_200/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_200_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_200/FusedBatchNormV3FusedBatchNormV3conv2d_258/Relu:activations:0.batch_normalization_200/ReadVariableOp:value:00batch_normalization_200/ReadVariableOp_1:value:0?batch_normalization_200/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_200/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_200/FusedBatchNormV3?
max_pooling2d_42/MaxPoolMaxPool,batch_normalization_200/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_42/MaxPool?
 conv2d_259/Conv2D/ReadVariableOpReadVariableOp)conv2d_259_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_259/Conv2D/ReadVariableOp?
conv2d_259/Conv2DConv2D!max_pooling2d_42/MaxPool:output:0(conv2d_259/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_259/Conv2D?
!conv2d_259/BiasAdd/ReadVariableOpReadVariableOp*conv2d_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_259/BiasAdd/ReadVariableOp?
conv2d_259/BiasAddBiasAddconv2d_259/Conv2D:output:0)conv2d_259/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_259/BiasAdd?
conv2d_259/ReluReluconv2d_259/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_259/Relu?
&batch_normalization_201/ReadVariableOpReadVariableOp/batch_normalization_201_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_201/ReadVariableOp?
(batch_normalization_201/ReadVariableOp_1ReadVariableOp1batch_normalization_201_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_201/ReadVariableOp_1?
7batch_normalization_201/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_201_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_201/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_201_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_201/FusedBatchNormV3FusedBatchNormV3conv2d_259/Relu:activations:0.batch_normalization_201/ReadVariableOp:value:00batch_normalization_201/ReadVariableOp_1:value:0?batch_normalization_201/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_201/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_201/FusedBatchNormV3?
max_pooling2d_43/MaxPoolMaxPool,batch_normalization_201/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_43/MaxPool?
 conv2d_260/Conv2D/ReadVariableOpReadVariableOp)conv2d_260_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_260/Conv2D/ReadVariableOp?
conv2d_260/Conv2DConv2D!max_pooling2d_43/MaxPool:output:0(conv2d_260/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_260/Conv2D?
!conv2d_260/BiasAdd/ReadVariableOpReadVariableOp*conv2d_260_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_260/BiasAdd/ReadVariableOp?
conv2d_260/BiasAddBiasAddconv2d_260/Conv2D:output:0)conv2d_260/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_260/BiasAdd?
conv2d_260/ReluReluconv2d_260/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_260/Relu?
&batch_normalization_202/ReadVariableOpReadVariableOp/batch_normalization_202_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_202/ReadVariableOp?
(batch_normalization_202/ReadVariableOp_1ReadVariableOp1batch_normalization_202_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_202/ReadVariableOp_1?
7batch_normalization_202/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_202_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_202/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_202_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_202/FusedBatchNormV3FusedBatchNormV3conv2d_260/Relu:activations:0.batch_normalization_202/ReadVariableOp:value:00batch_normalization_202/ReadVariableOp_1:value:0?batch_normalization_202/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_202/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_202/FusedBatchNormV3?
 conv2d_261/Conv2D/ReadVariableOpReadVariableOp)conv2d_261_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_261/Conv2D/ReadVariableOp?
conv2d_261/Conv2DConv2D,batch_normalization_202/FusedBatchNormV3:y:0(conv2d_261/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_261/Conv2D?
!conv2d_261/BiasAdd/ReadVariableOpReadVariableOp*conv2d_261_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_261/BiasAdd/ReadVariableOp?
conv2d_261/BiasAddBiasAddconv2d_261/Conv2D:output:0)conv2d_261/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_261/BiasAdd?
conv2d_261/ReluReluconv2d_261/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_261/Relu?
&batch_normalization_203/ReadVariableOpReadVariableOp/batch_normalization_203_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_203/ReadVariableOp?
(batch_normalization_203/ReadVariableOp_1ReadVariableOp1batch_normalization_203_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_203/ReadVariableOp_1?
7batch_normalization_203/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_203_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_203/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_203_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_203/FusedBatchNormV3FusedBatchNormV3conv2d_261/Relu:activations:0.batch_normalization_203/ReadVariableOp:value:00batch_normalization_203/ReadVariableOp_1:value:0?batch_normalization_203/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_203/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_203/FusedBatchNormV3?
 conv2d_262/Conv2D/ReadVariableOpReadVariableOp)conv2d_262_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_262/Conv2D/ReadVariableOp?
conv2d_262/Conv2DConv2D,batch_normalization_203/FusedBatchNormV3:y:0(conv2d_262/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_262/Conv2D?
!conv2d_262/BiasAdd/ReadVariableOpReadVariableOp*conv2d_262_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_262/BiasAdd/ReadVariableOp?
conv2d_262/BiasAddBiasAddconv2d_262/Conv2D:output:0)conv2d_262/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_262/BiasAdd?
conv2d_262/ReluReluconv2d_262/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_262/Relu?
&batch_normalization_204/ReadVariableOpReadVariableOp/batch_normalization_204_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_204/ReadVariableOp?
(batch_normalization_204/ReadVariableOp_1ReadVariableOp1batch_normalization_204_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_204/ReadVariableOp_1?
7batch_normalization_204/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_204_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_204/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_204_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_204/FusedBatchNormV3FusedBatchNormV3conv2d_262/Relu:activations:0.batch_normalization_204/ReadVariableOp:value:00batch_normalization_204/ReadVariableOp_1:value:0?batch_normalization_204/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_204/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_204/FusedBatchNormV3?
max_pooling2d_44/MaxPoolMaxPool,batch_normalization_204/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_44/MaxPoolu
flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_20/Const?
flatten_20/ReshapeReshape!max_pooling2d_44/MaxPool:output:0flatten_20/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_20/Reshape?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_44/MatMul/ReadVariableOp?
dense_44/MatMulMatMulflatten_20/Reshape:output:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_44/MatMul?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_44/BiasAdd/ReadVariableOp?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_44/BiasAdd|
dense_44/SigmoidSigmoiddense_44/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_44/Sigmoido
IdentityIdentitydense_44/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_200/FusedBatchNormV3/ReadVariableOp:^batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_200/ReadVariableOp)^batch_normalization_200/ReadVariableOp_18^batch_normalization_201/FusedBatchNormV3/ReadVariableOp:^batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_201/ReadVariableOp)^batch_normalization_201/ReadVariableOp_18^batch_normalization_202/FusedBatchNormV3/ReadVariableOp:^batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_202/ReadVariableOp)^batch_normalization_202/ReadVariableOp_18^batch_normalization_203/FusedBatchNormV3/ReadVariableOp:^batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_203/ReadVariableOp)^batch_normalization_203/ReadVariableOp_18^batch_normalization_204/FusedBatchNormV3/ReadVariableOp:^batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_204/ReadVariableOp)^batch_normalization_204/ReadVariableOp_1"^conv2d_258/BiasAdd/ReadVariableOp!^conv2d_258/Conv2D/ReadVariableOp"^conv2d_259/BiasAdd/ReadVariableOp!^conv2d_259/Conv2D/ReadVariableOp"^conv2d_260/BiasAdd/ReadVariableOp!^conv2d_260/Conv2D/ReadVariableOp"^conv2d_261/BiasAdd/ReadVariableOp!^conv2d_261/Conv2D/ReadVariableOp"^conv2d_262/BiasAdd/ReadVariableOp!^conv2d_262/Conv2D/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_200/FusedBatchNormV3/ReadVariableOp7batch_normalization_200/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_200/FusedBatchNormV3/ReadVariableOp_19batch_normalization_200/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_200/ReadVariableOp&batch_normalization_200/ReadVariableOp2T
(batch_normalization_200/ReadVariableOp_1(batch_normalization_200/ReadVariableOp_12r
7batch_normalization_201/FusedBatchNormV3/ReadVariableOp7batch_normalization_201/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_201/FusedBatchNormV3/ReadVariableOp_19batch_normalization_201/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_201/ReadVariableOp&batch_normalization_201/ReadVariableOp2T
(batch_normalization_201/ReadVariableOp_1(batch_normalization_201/ReadVariableOp_12r
7batch_normalization_202/FusedBatchNormV3/ReadVariableOp7batch_normalization_202/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_202/FusedBatchNormV3/ReadVariableOp_19batch_normalization_202/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_202/ReadVariableOp&batch_normalization_202/ReadVariableOp2T
(batch_normalization_202/ReadVariableOp_1(batch_normalization_202/ReadVariableOp_12r
7batch_normalization_203/FusedBatchNormV3/ReadVariableOp7batch_normalization_203/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_203/FusedBatchNormV3/ReadVariableOp_19batch_normalization_203/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_203/ReadVariableOp&batch_normalization_203/ReadVariableOp2T
(batch_normalization_203/ReadVariableOp_1(batch_normalization_203/ReadVariableOp_12r
7batch_normalization_204/FusedBatchNormV3/ReadVariableOp7batch_normalization_204/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_204/FusedBatchNormV3/ReadVariableOp_19batch_normalization_204/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_204/ReadVariableOp&batch_normalization_204/ReadVariableOp2T
(batch_normalization_204/ReadVariableOp_1(batch_normalization_204/ReadVariableOp_12F
!conv2d_258/BiasAdd/ReadVariableOp!conv2d_258/BiasAdd/ReadVariableOp2D
 conv2d_258/Conv2D/ReadVariableOp conv2d_258/Conv2D/ReadVariableOp2F
!conv2d_259/BiasAdd/ReadVariableOp!conv2d_259/BiasAdd/ReadVariableOp2D
 conv2d_259/Conv2D/ReadVariableOp conv2d_259/Conv2D/ReadVariableOp2F
!conv2d_260/BiasAdd/ReadVariableOp!conv2d_260/BiasAdd/ReadVariableOp2D
 conv2d_260/Conv2D/ReadVariableOp conv2d_260/Conv2D/ReadVariableOp2F
!conv2d_261/BiasAdd/ReadVariableOp!conv2d_261/BiasAdd/ReadVariableOp2D
 conv2d_261/Conv2D/ReadVariableOp conv2d_261/Conv2D/ReadVariableOp2F
!conv2d_262/BiasAdd/ReadVariableOp!conv2d_262/BiasAdd/ReadVariableOp2D
 conv2d_262/Conv2D/ReadVariableOp conv2d_262/Conv2D/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312590

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
,__inference_conv2d_260_layer_call_fn_2312266

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
G__inference_conv2d_260_layer_call_and_return_conditional_losses_23104862
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
?
?
,__inference_alex_net_6_layer_call_fn_2311297
conv2d_258_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_258_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *P
fKRI
G__inference_alex_net_6_layer_call_and_return_conditional_losses_23111612
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
_user_specified_nameconv2d_258_input
?	
?
9__inference_batch_normalization_200_layer_call_fn_2312036

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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_23097382
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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2310459

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
?	
?
9__inference_batch_normalization_204_layer_call_fn_2312639

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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_23102422
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
i
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_2312067

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
,__inference_conv2d_259_layer_call_fn_2312102

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
G__inference_conv2d_259_layer_call_and_return_conditional_losses_23104362
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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2309990

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
?Y
?
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311380
conv2d_258_input,
conv2d_258_2311300:` 
conv2d_258_2311302:`-
batch_normalization_200_2311305:`-
batch_normalization_200_2311307:`-
batch_normalization_200_2311309:`-
batch_normalization_200_2311311:`-
conv2d_259_2311315:`?!
conv2d_259_2311317:	?.
batch_normalization_201_2311320:	?.
batch_normalization_201_2311322:	?.
batch_normalization_201_2311324:	?.
batch_normalization_201_2311326:	?.
conv2d_260_2311330:??!
conv2d_260_2311332:	?.
batch_normalization_202_2311335:	?.
batch_normalization_202_2311337:	?.
batch_normalization_202_2311339:	?.
batch_normalization_202_2311341:	?.
conv2d_261_2311344:??!
conv2d_261_2311346:	?.
batch_normalization_203_2311349:	?.
batch_normalization_203_2311351:	?.
batch_normalization_203_2311353:	?.
batch_normalization_203_2311355:	?.
conv2d_262_2311358:??!
conv2d_262_2311360:	?.
batch_normalization_204_2311363:	?.
batch_normalization_204_2311365:	?.
batch_normalization_204_2311367:	?.
batch_normalization_204_2311369:	?#
dense_44_2311374:	?(
dense_44_2311376:
identity??/batch_normalization_200/StatefulPartitionedCall?/batch_normalization_201/StatefulPartitionedCall?/batch_normalization_202/StatefulPartitionedCall?/batch_normalization_203/StatefulPartitionedCall?/batch_normalization_204/StatefulPartitionedCall?"conv2d_258/StatefulPartitionedCall?"conv2d_259/StatefulPartitionedCall?"conv2d_260/StatefulPartitionedCall?"conv2d_261/StatefulPartitionedCall?"conv2d_262/StatefulPartitionedCall? dense_44/StatefulPartitionedCall?
"conv2d_258/StatefulPartitionedCallStatefulPartitionedCallconv2d_258_inputconv2d_258_2311300conv2d_258_2311302*
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
G__inference_conv2d_258_layer_call_and_return_conditional_losses_23103862$
"conv2d_258/StatefulPartitionedCall?
/batch_normalization_200/StatefulPartitionedCallStatefulPartitionedCall+conv2d_258/StatefulPartitionedCall:output:0batch_normalization_200_2311305batch_normalization_200_2311307batch_normalization_200_2311309batch_normalization_200_2311311*
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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_231040921
/batch_normalization_200/StatefulPartitionedCall?
 max_pooling2d_42/PartitionedCallPartitionedCall8batch_normalization_200/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_23104232"
 max_pooling2d_42/PartitionedCall?
"conv2d_259/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_42/PartitionedCall:output:0conv2d_259_2311315conv2d_259_2311317*
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
G__inference_conv2d_259_layer_call_and_return_conditional_losses_23104362$
"conv2d_259/StatefulPartitionedCall?
/batch_normalization_201/StatefulPartitionedCallStatefulPartitionedCall+conv2d_259/StatefulPartitionedCall:output:0batch_normalization_201_2311320batch_normalization_201_2311322batch_normalization_201_2311324batch_normalization_201_2311326*
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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_231045921
/batch_normalization_201/StatefulPartitionedCall?
 max_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_201/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_23104732"
 max_pooling2d_43/PartitionedCall?
"conv2d_260/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_43/PartitionedCall:output:0conv2d_260_2311330conv2d_260_2311332*
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
G__inference_conv2d_260_layer_call_and_return_conditional_losses_23104862$
"conv2d_260/StatefulPartitionedCall?
/batch_normalization_202/StatefulPartitionedCallStatefulPartitionedCall+conv2d_260/StatefulPartitionedCall:output:0batch_normalization_202_2311335batch_normalization_202_2311337batch_normalization_202_2311339batch_normalization_202_2311341*
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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_231050921
/batch_normalization_202/StatefulPartitionedCall?
"conv2d_261/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_202/StatefulPartitionedCall:output:0conv2d_261_2311344conv2d_261_2311346*
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
G__inference_conv2d_261_layer_call_and_return_conditional_losses_23105302$
"conv2d_261/StatefulPartitionedCall?
/batch_normalization_203/StatefulPartitionedCallStatefulPartitionedCall+conv2d_261/StatefulPartitionedCall:output:0batch_normalization_203_2311349batch_normalization_203_2311351batch_normalization_203_2311353batch_normalization_203_2311355*
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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_231055321
/batch_normalization_203/StatefulPartitionedCall?
"conv2d_262/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_203/StatefulPartitionedCall:output:0conv2d_262_2311358conv2d_262_2311360*
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
G__inference_conv2d_262_layer_call_and_return_conditional_losses_23105742$
"conv2d_262/StatefulPartitionedCall?
/batch_normalization_204/StatefulPartitionedCallStatefulPartitionedCall+conv2d_262/StatefulPartitionedCall:output:0batch_normalization_204_2311363batch_normalization_204_2311365batch_normalization_204_2311367batch_normalization_204_2311369*
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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_231059721
/batch_normalization_204/StatefulPartitionedCall?
 max_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_204/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_23106112"
 max_pooling2d_44/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
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
G__inference_flatten_20_layer_call_and_return_conditional_losses_23106192
flatten_20/PartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_44_2311374dense_44_2311376*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_23106322"
 dense_44/StatefulPartitionedCall?
IdentityIdentity)dense_44/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_200/StatefulPartitionedCall0^batch_normalization_201/StatefulPartitionedCall0^batch_normalization_202/StatefulPartitionedCall0^batch_normalization_203/StatefulPartitionedCall0^batch_normalization_204/StatefulPartitionedCall#^conv2d_258/StatefulPartitionedCall#^conv2d_259/StatefulPartitionedCall#^conv2d_260/StatefulPartitionedCall#^conv2d_261/StatefulPartitionedCall#^conv2d_262/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_200/StatefulPartitionedCall/batch_normalization_200/StatefulPartitionedCall2b
/batch_normalization_201/StatefulPartitionedCall/batch_normalization_201/StatefulPartitionedCall2b
/batch_normalization_202/StatefulPartitionedCall/batch_normalization_202/StatefulPartitionedCall2b
/batch_normalization_203/StatefulPartitionedCall/batch_normalization_203/StatefulPartitionedCall2b
/batch_normalization_204/StatefulPartitionedCall/batch_normalization_204/StatefulPartitionedCall2H
"conv2d_258/StatefulPartitionedCall"conv2d_258/StatefulPartitionedCall2H
"conv2d_259/StatefulPartitionedCall"conv2d_259/StatefulPartitionedCall2H
"conv2d_260/StatefulPartitionedCall"conv2d_260/StatefulPartitionedCall2H
"conv2d_261/StatefulPartitionedCall"conv2d_261/StatefulPartitionedCall2H
"conv2d_262/StatefulPartitionedCall"conv2d_262/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_258_input
?
i
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2312683

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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2309738

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
9__inference_batch_normalization_203_layer_call_fn_2312508

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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_23101602
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
,__inference_alex_net_6_layer_call_fn_2311849

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
GPU2*0J 8? *P
fKRI
G__inference_alex_net_6_layer_call_and_return_conditional_losses_23106392
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
?
N
2__inference_max_pooling2d_43_layer_call_fn_2312246

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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_23104732
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
?
?
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312156

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
?
?
9__inference_batch_normalization_200_layer_call_fn_2312062

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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_23109862
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2310611

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
,__inference_conv2d_261_layer_call_fn_2312410

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
G__inference_conv2d_261_layer_call_and_return_conditional_losses_23105302
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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312174

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
9__inference_batch_normalization_203_layer_call_fn_2312495

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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_23101162
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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2310116

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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2310286

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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2309842

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
?
?
,__inference_conv2d_262_layer_call_fn_2312554

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
G__inference_conv2d_262_layer_call_and_return_conditional_losses_23105742
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
?
9__inference_batch_normalization_202_layer_call_fn_2312390

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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_23108682
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
?
?
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312482

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
E__inference_dense_44_layer_call_and_return_conditional_losses_2310632

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
?
c
G__inference_flatten_20_layer_call_and_return_conditional_losses_2310619

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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2310760

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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2310986

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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2310355

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
,__inference_alex_net_6_layer_call_fn_2311918

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
GPU2*0J 8? *P
fKRI
G__inference_alex_net_6_layer_call_and_return_conditional_losses_23111612
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
 __inference__traced_save_2312872
file_prefix0
,savev2_conv2d_258_kernel_read_readvariableop.
*savev2_conv2d_258_bias_read_readvariableop<
8savev2_batch_normalization_200_gamma_read_readvariableop;
7savev2_batch_normalization_200_beta_read_readvariableopB
>savev2_batch_normalization_200_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_200_moving_variance_read_readvariableop0
,savev2_conv2d_259_kernel_read_readvariableop.
*savev2_conv2d_259_bias_read_readvariableop<
8savev2_batch_normalization_201_gamma_read_readvariableop;
7savev2_batch_normalization_201_beta_read_readvariableopB
>savev2_batch_normalization_201_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_201_moving_variance_read_readvariableop0
,savev2_conv2d_260_kernel_read_readvariableop.
*savev2_conv2d_260_bias_read_readvariableop<
8savev2_batch_normalization_202_gamma_read_readvariableop;
7savev2_batch_normalization_202_beta_read_readvariableopB
>savev2_batch_normalization_202_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_202_moving_variance_read_readvariableop0
,savev2_conv2d_261_kernel_read_readvariableop.
*savev2_conv2d_261_bias_read_readvariableop<
8savev2_batch_normalization_203_gamma_read_readvariableop;
7savev2_batch_normalization_203_beta_read_readvariableopB
>savev2_batch_normalization_203_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_203_moving_variance_read_readvariableop0
,savev2_conv2d_262_kernel_read_readvariableop.
*savev2_conv2d_262_bias_read_readvariableop<
8savev2_batch_normalization_204_gamma_read_readvariableop;
7savev2_batch_normalization_204_beta_read_readvariableopB
>savev2_batch_normalization_204_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_204_moving_variance_read_readvariableop.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_258_kernel_read_readvariableop*savev2_conv2d_258_bias_read_readvariableop8savev2_batch_normalization_200_gamma_read_readvariableop7savev2_batch_normalization_200_beta_read_readvariableop>savev2_batch_normalization_200_moving_mean_read_readvariableopBsavev2_batch_normalization_200_moving_variance_read_readvariableop,savev2_conv2d_259_kernel_read_readvariableop*savev2_conv2d_259_bias_read_readvariableop8savev2_batch_normalization_201_gamma_read_readvariableop7savev2_batch_normalization_201_beta_read_readvariableop>savev2_batch_normalization_201_moving_mean_read_readvariableopBsavev2_batch_normalization_201_moving_variance_read_readvariableop,savev2_conv2d_260_kernel_read_readvariableop*savev2_conv2d_260_bias_read_readvariableop8savev2_batch_normalization_202_gamma_read_readvariableop7savev2_batch_normalization_202_beta_read_readvariableop>savev2_batch_normalization_202_moving_mean_read_readvariableopBsavev2_batch_normalization_202_moving_variance_read_readvariableop,savev2_conv2d_261_kernel_read_readvariableop*savev2_conv2d_261_bias_read_readvariableop8savev2_batch_normalization_203_gamma_read_readvariableop7savev2_batch_normalization_203_beta_read_readvariableop>savev2_batch_normalization_203_moving_mean_read_readvariableopBsavev2_batch_normalization_203_moving_variance_read_readvariableop,savev2_conv2d_262_kernel_read_readvariableop*savev2_conv2d_262_bias_read_readvariableop8savev2_batch_normalization_204_gamma_read_readvariableop7savev2_batch_normalization_204_beta_read_readvariableop>savev2_batch_normalization_204_moving_mean_read_readvariableopBsavev2_batch_normalization_204_moving_variance_read_readvariableop*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
9__inference_batch_normalization_202_layer_call_fn_2312377

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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_23105092
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
9__inference_batch_normalization_202_layer_call_fn_2312351

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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_23099902
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
G__inference_flatten_20_layer_call_and_return_conditional_losses_2312704

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
G__inference_conv2d_259_layer_call_and_return_conditional_losses_2310436

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
E__inference_dense_44_layer_call_and_return_conditional_losses_2312720

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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2310034

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
G__inference_conv2d_262_layer_call_and_return_conditional_losses_2310574

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
?
i
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_2310423

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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312338

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
?X
?
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311161

inputs,
conv2d_258_2311081:` 
conv2d_258_2311083:`-
batch_normalization_200_2311086:`-
batch_normalization_200_2311088:`-
batch_normalization_200_2311090:`-
batch_normalization_200_2311092:`-
conv2d_259_2311096:`?!
conv2d_259_2311098:	?.
batch_normalization_201_2311101:	?.
batch_normalization_201_2311103:	?.
batch_normalization_201_2311105:	?.
batch_normalization_201_2311107:	?.
conv2d_260_2311111:??!
conv2d_260_2311113:	?.
batch_normalization_202_2311116:	?.
batch_normalization_202_2311118:	?.
batch_normalization_202_2311120:	?.
batch_normalization_202_2311122:	?.
conv2d_261_2311125:??!
conv2d_261_2311127:	?.
batch_normalization_203_2311130:	?.
batch_normalization_203_2311132:	?.
batch_normalization_203_2311134:	?.
batch_normalization_203_2311136:	?.
conv2d_262_2311139:??!
conv2d_262_2311141:	?.
batch_normalization_204_2311144:	?.
batch_normalization_204_2311146:	?.
batch_normalization_204_2311148:	?.
batch_normalization_204_2311150:	?#
dense_44_2311155:	?(
dense_44_2311157:
identity??/batch_normalization_200/StatefulPartitionedCall?/batch_normalization_201/StatefulPartitionedCall?/batch_normalization_202/StatefulPartitionedCall?/batch_normalization_203/StatefulPartitionedCall?/batch_normalization_204/StatefulPartitionedCall?"conv2d_258/StatefulPartitionedCall?"conv2d_259/StatefulPartitionedCall?"conv2d_260/StatefulPartitionedCall?"conv2d_261/StatefulPartitionedCall?"conv2d_262/StatefulPartitionedCall? dense_44/StatefulPartitionedCall?
"conv2d_258/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_258_2311081conv2d_258_2311083*
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
G__inference_conv2d_258_layer_call_and_return_conditional_losses_23103862$
"conv2d_258/StatefulPartitionedCall?
/batch_normalization_200/StatefulPartitionedCallStatefulPartitionedCall+conv2d_258/StatefulPartitionedCall:output:0batch_normalization_200_2311086batch_normalization_200_2311088batch_normalization_200_2311090batch_normalization_200_2311092*
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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_231098621
/batch_normalization_200/StatefulPartitionedCall?
 max_pooling2d_42/PartitionedCallPartitionedCall8batch_normalization_200/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_23104232"
 max_pooling2d_42/PartitionedCall?
"conv2d_259/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_42/PartitionedCall:output:0conv2d_259_2311096conv2d_259_2311098*
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
G__inference_conv2d_259_layer_call_and_return_conditional_losses_23104362$
"conv2d_259/StatefulPartitionedCall?
/batch_normalization_201/StatefulPartitionedCallStatefulPartitionedCall+conv2d_259/StatefulPartitionedCall:output:0batch_normalization_201_2311101batch_normalization_201_2311103batch_normalization_201_2311105batch_normalization_201_2311107*
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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_231092721
/batch_normalization_201/StatefulPartitionedCall?
 max_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_201/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_23104732"
 max_pooling2d_43/PartitionedCall?
"conv2d_260/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_43/PartitionedCall:output:0conv2d_260_2311111conv2d_260_2311113*
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
G__inference_conv2d_260_layer_call_and_return_conditional_losses_23104862$
"conv2d_260/StatefulPartitionedCall?
/batch_normalization_202/StatefulPartitionedCallStatefulPartitionedCall+conv2d_260/StatefulPartitionedCall:output:0batch_normalization_202_2311116batch_normalization_202_2311118batch_normalization_202_2311120batch_normalization_202_2311122*
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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_231086821
/batch_normalization_202/StatefulPartitionedCall?
"conv2d_261/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_202/StatefulPartitionedCall:output:0conv2d_261_2311125conv2d_261_2311127*
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
G__inference_conv2d_261_layer_call_and_return_conditional_losses_23105302$
"conv2d_261/StatefulPartitionedCall?
/batch_normalization_203/StatefulPartitionedCallStatefulPartitionedCall+conv2d_261/StatefulPartitionedCall:output:0batch_normalization_203_2311130batch_normalization_203_2311132batch_normalization_203_2311134batch_normalization_203_2311136*
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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_231081421
/batch_normalization_203/StatefulPartitionedCall?
"conv2d_262/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_203/StatefulPartitionedCall:output:0conv2d_262_2311139conv2d_262_2311141*
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
G__inference_conv2d_262_layer_call_and_return_conditional_losses_23105742$
"conv2d_262/StatefulPartitionedCall?
/batch_normalization_204/StatefulPartitionedCallStatefulPartitionedCall+conv2d_262/StatefulPartitionedCall:output:0batch_normalization_204_2311144batch_normalization_204_2311146batch_normalization_204_2311148batch_normalization_204_2311150*
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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_231076021
/batch_normalization_204/StatefulPartitionedCall?
 max_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_204/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_23106112"
 max_pooling2d_44/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
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
G__inference_flatten_20_layer_call_and_return_conditional_losses_23106192
flatten_20/PartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_44_2311155dense_44_2311157*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_23106322"
 dense_44/StatefulPartitionedCall?
IdentityIdentity)dense_44/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_200/StatefulPartitionedCall0^batch_normalization_201/StatefulPartitionedCall0^batch_normalization_202/StatefulPartitionedCall0^batch_normalization_203/StatefulPartitionedCall0^batch_normalization_204/StatefulPartitionedCall#^conv2d_258/StatefulPartitionedCall#^conv2d_259/StatefulPartitionedCall#^conv2d_260/StatefulPartitionedCall#^conv2d_261/StatefulPartitionedCall#^conv2d_262/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_200/StatefulPartitionedCall/batch_normalization_200/StatefulPartitionedCall2b
/batch_normalization_201/StatefulPartitionedCall/batch_normalization_201/StatefulPartitionedCall2b
/batch_normalization_202/StatefulPartitionedCall/batch_normalization_202/StatefulPartitionedCall2b
/batch_normalization_203/StatefulPartitionedCall/batch_normalization_203/StatefulPartitionedCall2b
/batch_normalization_204/StatefulPartitionedCall/batch_normalization_204/StatefulPartitionedCall2H
"conv2d_258/StatefulPartitionedCall"conv2d_258/StatefulPartitionedCall2H
"conv2d_259/StatefulPartitionedCall"conv2d_259/StatefulPartitionedCall2H
"conv2d_260/StatefulPartitionedCall"conv2d_260/StatefulPartitionedCall2H
"conv2d_261/StatefulPartitionedCall"conv2d_261/StatefulPartitionedCall2H
"conv2d_262/StatefulPartitionedCall"conv2d_262/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_2309807

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
9__inference_batch_normalization_201_layer_call_fn_2312213

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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_23104592
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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2310597

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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2311956

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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2309694

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
?
N
2__inference_max_pooling2d_43_layer_call_fn_2312241

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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_23099552
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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2311974

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
??
?
#__inference__traced_restore_2313002
file_prefix<
"assignvariableop_conv2d_258_kernel:`0
"assignvariableop_1_conv2d_258_bias:`>
0assignvariableop_2_batch_normalization_200_gamma:`=
/assignvariableop_3_batch_normalization_200_beta:`D
6assignvariableop_4_batch_normalization_200_moving_mean:`H
:assignvariableop_5_batch_normalization_200_moving_variance:`?
$assignvariableop_6_conv2d_259_kernel:`?1
"assignvariableop_7_conv2d_259_bias:	??
0assignvariableop_8_batch_normalization_201_gamma:	?>
/assignvariableop_9_batch_normalization_201_beta:	?F
7assignvariableop_10_batch_normalization_201_moving_mean:	?J
;assignvariableop_11_batch_normalization_201_moving_variance:	?A
%assignvariableop_12_conv2d_260_kernel:??2
#assignvariableop_13_conv2d_260_bias:	?@
1assignvariableop_14_batch_normalization_202_gamma:	??
0assignvariableop_15_batch_normalization_202_beta:	?F
7assignvariableop_16_batch_normalization_202_moving_mean:	?J
;assignvariableop_17_batch_normalization_202_moving_variance:	?A
%assignvariableop_18_conv2d_261_kernel:??2
#assignvariableop_19_conv2d_261_bias:	?@
1assignvariableop_20_batch_normalization_203_gamma:	??
0assignvariableop_21_batch_normalization_203_beta:	?F
7assignvariableop_22_batch_normalization_203_moving_mean:	?J
;assignvariableop_23_batch_normalization_203_moving_variance:	?A
%assignvariableop_24_conv2d_262_kernel:??2
#assignvariableop_25_conv2d_262_bias:	?@
1assignvariableop_26_batch_normalization_204_gamma:	??
0assignvariableop_27_batch_normalization_204_beta:	?F
7assignvariableop_28_batch_normalization_204_moving_mean:	?J
;assignvariableop_29_batch_normalization_204_moving_variance:	?6
#assignvariableop_30_dense_44_kernel:	?(/
!assignvariableop_31_dense_44_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_258_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_258_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_200_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_200_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_200_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_200_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_259_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_259_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_201_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_201_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_201_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_201_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_260_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_260_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_202_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_202_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_202_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_202_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_261_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_261_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_203_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_203_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_203_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_203_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_262_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_262_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_204_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_204_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_204_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_204_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_44_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_44_biasIdentity_31:output:0"/device:CPU:0*
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
9__inference_batch_normalization_201_layer_call_fn_2312200

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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_23098862
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
9__inference_batch_normalization_204_layer_call_fn_2312652

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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_23102862
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
??
? 
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311780

inputsC
)conv2d_258_conv2d_readvariableop_resource:`8
*conv2d_258_biasadd_readvariableop_resource:`=
/batch_normalization_200_readvariableop_resource:`?
1batch_normalization_200_readvariableop_1_resource:`N
@batch_normalization_200_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_200_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_259_conv2d_readvariableop_resource:`?9
*conv2d_259_biasadd_readvariableop_resource:	?>
/batch_normalization_201_readvariableop_resource:	?@
1batch_normalization_201_readvariableop_1_resource:	?O
@batch_normalization_201_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_201_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_260_conv2d_readvariableop_resource:??9
*conv2d_260_biasadd_readvariableop_resource:	?>
/batch_normalization_202_readvariableop_resource:	?@
1batch_normalization_202_readvariableop_1_resource:	?O
@batch_normalization_202_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_202_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_261_conv2d_readvariableop_resource:??9
*conv2d_261_biasadd_readvariableop_resource:	?>
/batch_normalization_203_readvariableop_resource:	?@
1batch_normalization_203_readvariableop_1_resource:	?O
@batch_normalization_203_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_203_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_262_conv2d_readvariableop_resource:??9
*conv2d_262_biasadd_readvariableop_resource:	?>
/batch_normalization_204_readvariableop_resource:	?@
1batch_normalization_204_readvariableop_1_resource:	?O
@batch_normalization_204_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_204_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_44_matmul_readvariableop_resource:	?(6
(dense_44_biasadd_readvariableop_resource:
identity??&batch_normalization_200/AssignNewValue?(batch_normalization_200/AssignNewValue_1?7batch_normalization_200/FusedBatchNormV3/ReadVariableOp?9batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_200/ReadVariableOp?(batch_normalization_200/ReadVariableOp_1?&batch_normalization_201/AssignNewValue?(batch_normalization_201/AssignNewValue_1?7batch_normalization_201/FusedBatchNormV3/ReadVariableOp?9batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_201/ReadVariableOp?(batch_normalization_201/ReadVariableOp_1?&batch_normalization_202/AssignNewValue?(batch_normalization_202/AssignNewValue_1?7batch_normalization_202/FusedBatchNormV3/ReadVariableOp?9batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_202/ReadVariableOp?(batch_normalization_202/ReadVariableOp_1?&batch_normalization_203/AssignNewValue?(batch_normalization_203/AssignNewValue_1?7batch_normalization_203/FusedBatchNormV3/ReadVariableOp?9batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_203/ReadVariableOp?(batch_normalization_203/ReadVariableOp_1?&batch_normalization_204/AssignNewValue?(batch_normalization_204/AssignNewValue_1?7batch_normalization_204/FusedBatchNormV3/ReadVariableOp?9batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_204/ReadVariableOp?(batch_normalization_204/ReadVariableOp_1?!conv2d_258/BiasAdd/ReadVariableOp? conv2d_258/Conv2D/ReadVariableOp?!conv2d_259/BiasAdd/ReadVariableOp? conv2d_259/Conv2D/ReadVariableOp?!conv2d_260/BiasAdd/ReadVariableOp? conv2d_260/Conv2D/ReadVariableOp?!conv2d_261/BiasAdd/ReadVariableOp? conv2d_261/Conv2D/ReadVariableOp?!conv2d_262/BiasAdd/ReadVariableOp? conv2d_262/Conv2D/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?
 conv2d_258/Conv2D/ReadVariableOpReadVariableOp)conv2d_258_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_258/Conv2D/ReadVariableOp?
conv2d_258/Conv2DConv2Dinputs(conv2d_258/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_258/Conv2D?
!conv2d_258/BiasAdd/ReadVariableOpReadVariableOp*conv2d_258_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_258/BiasAdd/ReadVariableOp?
conv2d_258/BiasAddBiasAddconv2d_258/Conv2D:output:0)conv2d_258/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_258/BiasAdd?
conv2d_258/ReluReluconv2d_258/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_258/Relu?
&batch_normalization_200/ReadVariableOpReadVariableOp/batch_normalization_200_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_200/ReadVariableOp?
(batch_normalization_200/ReadVariableOp_1ReadVariableOp1batch_normalization_200_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_200/ReadVariableOp_1?
7batch_normalization_200/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_200_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_200/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_200_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_200/FusedBatchNormV3FusedBatchNormV3conv2d_258/Relu:activations:0.batch_normalization_200/ReadVariableOp:value:00batch_normalization_200/ReadVariableOp_1:value:0?batch_normalization_200/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_200/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_200/FusedBatchNormV3?
&batch_normalization_200/AssignNewValueAssignVariableOp@batch_normalization_200_fusedbatchnormv3_readvariableop_resource5batch_normalization_200/FusedBatchNormV3:batch_mean:08^batch_normalization_200/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_200/AssignNewValue?
(batch_normalization_200/AssignNewValue_1AssignVariableOpBbatch_normalization_200_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_200/FusedBatchNormV3:batch_variance:0:^batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_200/AssignNewValue_1?
max_pooling2d_42/MaxPoolMaxPool,batch_normalization_200/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_42/MaxPool?
 conv2d_259/Conv2D/ReadVariableOpReadVariableOp)conv2d_259_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_259/Conv2D/ReadVariableOp?
conv2d_259/Conv2DConv2D!max_pooling2d_42/MaxPool:output:0(conv2d_259/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_259/Conv2D?
!conv2d_259/BiasAdd/ReadVariableOpReadVariableOp*conv2d_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_259/BiasAdd/ReadVariableOp?
conv2d_259/BiasAddBiasAddconv2d_259/Conv2D:output:0)conv2d_259/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_259/BiasAdd?
conv2d_259/ReluReluconv2d_259/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_259/Relu?
&batch_normalization_201/ReadVariableOpReadVariableOp/batch_normalization_201_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_201/ReadVariableOp?
(batch_normalization_201/ReadVariableOp_1ReadVariableOp1batch_normalization_201_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_201/ReadVariableOp_1?
7batch_normalization_201/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_201_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_201/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_201_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_201/FusedBatchNormV3FusedBatchNormV3conv2d_259/Relu:activations:0.batch_normalization_201/ReadVariableOp:value:00batch_normalization_201/ReadVariableOp_1:value:0?batch_normalization_201/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_201/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_201/FusedBatchNormV3?
&batch_normalization_201/AssignNewValueAssignVariableOp@batch_normalization_201_fusedbatchnormv3_readvariableop_resource5batch_normalization_201/FusedBatchNormV3:batch_mean:08^batch_normalization_201/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_201/AssignNewValue?
(batch_normalization_201/AssignNewValue_1AssignVariableOpBbatch_normalization_201_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_201/FusedBatchNormV3:batch_variance:0:^batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_201/AssignNewValue_1?
max_pooling2d_43/MaxPoolMaxPool,batch_normalization_201/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_43/MaxPool?
 conv2d_260/Conv2D/ReadVariableOpReadVariableOp)conv2d_260_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_260/Conv2D/ReadVariableOp?
conv2d_260/Conv2DConv2D!max_pooling2d_43/MaxPool:output:0(conv2d_260/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_260/Conv2D?
!conv2d_260/BiasAdd/ReadVariableOpReadVariableOp*conv2d_260_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_260/BiasAdd/ReadVariableOp?
conv2d_260/BiasAddBiasAddconv2d_260/Conv2D:output:0)conv2d_260/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_260/BiasAdd?
conv2d_260/ReluReluconv2d_260/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_260/Relu?
&batch_normalization_202/ReadVariableOpReadVariableOp/batch_normalization_202_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_202/ReadVariableOp?
(batch_normalization_202/ReadVariableOp_1ReadVariableOp1batch_normalization_202_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_202/ReadVariableOp_1?
7batch_normalization_202/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_202_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_202/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_202_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_202/FusedBatchNormV3FusedBatchNormV3conv2d_260/Relu:activations:0.batch_normalization_202/ReadVariableOp:value:00batch_normalization_202/ReadVariableOp_1:value:0?batch_normalization_202/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_202/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_202/FusedBatchNormV3?
&batch_normalization_202/AssignNewValueAssignVariableOp@batch_normalization_202_fusedbatchnormv3_readvariableop_resource5batch_normalization_202/FusedBatchNormV3:batch_mean:08^batch_normalization_202/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_202/AssignNewValue?
(batch_normalization_202/AssignNewValue_1AssignVariableOpBbatch_normalization_202_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_202/FusedBatchNormV3:batch_variance:0:^batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_202/AssignNewValue_1?
 conv2d_261/Conv2D/ReadVariableOpReadVariableOp)conv2d_261_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_261/Conv2D/ReadVariableOp?
conv2d_261/Conv2DConv2D,batch_normalization_202/FusedBatchNormV3:y:0(conv2d_261/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_261/Conv2D?
!conv2d_261/BiasAdd/ReadVariableOpReadVariableOp*conv2d_261_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_261/BiasAdd/ReadVariableOp?
conv2d_261/BiasAddBiasAddconv2d_261/Conv2D:output:0)conv2d_261/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_261/BiasAdd?
conv2d_261/ReluReluconv2d_261/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_261/Relu?
&batch_normalization_203/ReadVariableOpReadVariableOp/batch_normalization_203_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_203/ReadVariableOp?
(batch_normalization_203/ReadVariableOp_1ReadVariableOp1batch_normalization_203_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_203/ReadVariableOp_1?
7batch_normalization_203/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_203_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_203/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_203_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_203/FusedBatchNormV3FusedBatchNormV3conv2d_261/Relu:activations:0.batch_normalization_203/ReadVariableOp:value:00batch_normalization_203/ReadVariableOp_1:value:0?batch_normalization_203/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_203/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_203/FusedBatchNormV3?
&batch_normalization_203/AssignNewValueAssignVariableOp@batch_normalization_203_fusedbatchnormv3_readvariableop_resource5batch_normalization_203/FusedBatchNormV3:batch_mean:08^batch_normalization_203/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_203/AssignNewValue?
(batch_normalization_203/AssignNewValue_1AssignVariableOpBbatch_normalization_203_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_203/FusedBatchNormV3:batch_variance:0:^batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_203/AssignNewValue_1?
 conv2d_262/Conv2D/ReadVariableOpReadVariableOp)conv2d_262_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_262/Conv2D/ReadVariableOp?
conv2d_262/Conv2DConv2D,batch_normalization_203/FusedBatchNormV3:y:0(conv2d_262/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_262/Conv2D?
!conv2d_262/BiasAdd/ReadVariableOpReadVariableOp*conv2d_262_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_262/BiasAdd/ReadVariableOp?
conv2d_262/BiasAddBiasAddconv2d_262/Conv2D:output:0)conv2d_262/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_262/BiasAdd?
conv2d_262/ReluReluconv2d_262/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_262/Relu?
&batch_normalization_204/ReadVariableOpReadVariableOp/batch_normalization_204_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_204/ReadVariableOp?
(batch_normalization_204/ReadVariableOp_1ReadVariableOp1batch_normalization_204_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_204/ReadVariableOp_1?
7batch_normalization_204/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_204_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_204/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_204_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_204/FusedBatchNormV3FusedBatchNormV3conv2d_262/Relu:activations:0.batch_normalization_204/ReadVariableOp:value:00batch_normalization_204/ReadVariableOp_1:value:0?batch_normalization_204/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_204/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_204/FusedBatchNormV3?
&batch_normalization_204/AssignNewValueAssignVariableOp@batch_normalization_204_fusedbatchnormv3_readvariableop_resource5batch_normalization_204/FusedBatchNormV3:batch_mean:08^batch_normalization_204/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_204/AssignNewValue?
(batch_normalization_204/AssignNewValue_1AssignVariableOpBbatch_normalization_204_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_204/FusedBatchNormV3:batch_variance:0:^batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_204/AssignNewValue_1?
max_pooling2d_44/MaxPoolMaxPool,batch_normalization_204/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_44/MaxPoolu
flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_20/Const?
flatten_20/ReshapeReshape!max_pooling2d_44/MaxPool:output:0flatten_20/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_20/Reshape?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_44/MatMul/ReadVariableOp?
dense_44/MatMulMatMulflatten_20/Reshape:output:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_44/MatMul?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_44/BiasAdd/ReadVariableOp?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_44/BiasAdd|
dense_44/SigmoidSigmoiddense_44/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_44/Sigmoido
IdentityIdentitydense_44/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_200/AssignNewValue)^batch_normalization_200/AssignNewValue_18^batch_normalization_200/FusedBatchNormV3/ReadVariableOp:^batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_200/ReadVariableOp)^batch_normalization_200/ReadVariableOp_1'^batch_normalization_201/AssignNewValue)^batch_normalization_201/AssignNewValue_18^batch_normalization_201/FusedBatchNormV3/ReadVariableOp:^batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_201/ReadVariableOp)^batch_normalization_201/ReadVariableOp_1'^batch_normalization_202/AssignNewValue)^batch_normalization_202/AssignNewValue_18^batch_normalization_202/FusedBatchNormV3/ReadVariableOp:^batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_202/ReadVariableOp)^batch_normalization_202/ReadVariableOp_1'^batch_normalization_203/AssignNewValue)^batch_normalization_203/AssignNewValue_18^batch_normalization_203/FusedBatchNormV3/ReadVariableOp:^batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_203/ReadVariableOp)^batch_normalization_203/ReadVariableOp_1'^batch_normalization_204/AssignNewValue)^batch_normalization_204/AssignNewValue_18^batch_normalization_204/FusedBatchNormV3/ReadVariableOp:^batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_204/ReadVariableOp)^batch_normalization_204/ReadVariableOp_1"^conv2d_258/BiasAdd/ReadVariableOp!^conv2d_258/Conv2D/ReadVariableOp"^conv2d_259/BiasAdd/ReadVariableOp!^conv2d_259/Conv2D/ReadVariableOp"^conv2d_260/BiasAdd/ReadVariableOp!^conv2d_260/Conv2D/ReadVariableOp"^conv2d_261/BiasAdd/ReadVariableOp!^conv2d_261/Conv2D/ReadVariableOp"^conv2d_262/BiasAdd/ReadVariableOp!^conv2d_262/Conv2D/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_200/AssignNewValue&batch_normalization_200/AssignNewValue2T
(batch_normalization_200/AssignNewValue_1(batch_normalization_200/AssignNewValue_12r
7batch_normalization_200/FusedBatchNormV3/ReadVariableOp7batch_normalization_200/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_200/FusedBatchNormV3/ReadVariableOp_19batch_normalization_200/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_200/ReadVariableOp&batch_normalization_200/ReadVariableOp2T
(batch_normalization_200/ReadVariableOp_1(batch_normalization_200/ReadVariableOp_12P
&batch_normalization_201/AssignNewValue&batch_normalization_201/AssignNewValue2T
(batch_normalization_201/AssignNewValue_1(batch_normalization_201/AssignNewValue_12r
7batch_normalization_201/FusedBatchNormV3/ReadVariableOp7batch_normalization_201/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_201/FusedBatchNormV3/ReadVariableOp_19batch_normalization_201/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_201/ReadVariableOp&batch_normalization_201/ReadVariableOp2T
(batch_normalization_201/ReadVariableOp_1(batch_normalization_201/ReadVariableOp_12P
&batch_normalization_202/AssignNewValue&batch_normalization_202/AssignNewValue2T
(batch_normalization_202/AssignNewValue_1(batch_normalization_202/AssignNewValue_12r
7batch_normalization_202/FusedBatchNormV3/ReadVariableOp7batch_normalization_202/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_202/FusedBatchNormV3/ReadVariableOp_19batch_normalization_202/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_202/ReadVariableOp&batch_normalization_202/ReadVariableOp2T
(batch_normalization_202/ReadVariableOp_1(batch_normalization_202/ReadVariableOp_12P
&batch_normalization_203/AssignNewValue&batch_normalization_203/AssignNewValue2T
(batch_normalization_203/AssignNewValue_1(batch_normalization_203/AssignNewValue_12r
7batch_normalization_203/FusedBatchNormV3/ReadVariableOp7batch_normalization_203/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_203/FusedBatchNormV3/ReadVariableOp_19batch_normalization_203/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_203/ReadVariableOp&batch_normalization_203/ReadVariableOp2T
(batch_normalization_203/ReadVariableOp_1(batch_normalization_203/ReadVariableOp_12P
&batch_normalization_204/AssignNewValue&batch_normalization_204/AssignNewValue2T
(batch_normalization_204/AssignNewValue_1(batch_normalization_204/AssignNewValue_12r
7batch_normalization_204/FusedBatchNormV3/ReadVariableOp7batch_normalization_204/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_204/FusedBatchNormV3/ReadVariableOp_19batch_normalization_204/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_204/ReadVariableOp&batch_normalization_204/ReadVariableOp2T
(batch_normalization_204/ReadVariableOp_1(batch_normalization_204/ReadVariableOp_12F
!conv2d_258/BiasAdd/ReadVariableOp!conv2d_258/BiasAdd/ReadVariableOp2D
 conv2d_258/Conv2D/ReadVariableOp conv2d_258/Conv2D/ReadVariableOp2F
!conv2d_259/BiasAdd/ReadVariableOp!conv2d_259/BiasAdd/ReadVariableOp2D
 conv2d_259/Conv2D/ReadVariableOp conv2d_259/Conv2D/ReadVariableOp2F
!conv2d_260/BiasAdd/ReadVariableOp!conv2d_260/BiasAdd/ReadVariableOp2D
 conv2d_260/Conv2D/ReadVariableOp conv2d_260/Conv2D/ReadVariableOp2F
!conv2d_261/BiasAdd/ReadVariableOp!conv2d_261/BiasAdd/ReadVariableOp2D
 conv2d_261/Conv2D/ReadVariableOp conv2d_261/Conv2D/ReadVariableOp2F
!conv2d_262/BiasAdd/ReadVariableOp!conv2d_262/BiasAdd/ReadVariableOp2D
 conv2d_262/Conv2D/ReadVariableOp conv2d_262/Conv2D/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_204_layer_call_fn_2312678

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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_23107602
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
?
N
2__inference_max_pooling2d_42_layer_call_fn_2312077

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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_23098072
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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2310242

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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2310553

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
?
?
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312464

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
9__inference_batch_normalization_203_layer_call_fn_2312534

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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_23108142
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
?
N
2__inference_max_pooling2d_44_layer_call_fn_2312693

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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_23103552
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
G__inference_conv2d_262_layer_call_and_return_conditional_losses_2312545

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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312446

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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2310868

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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312626

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
?
G__inference_conv2d_260_layer_call_and_return_conditional_losses_2312257

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
?
N
2__inference_max_pooling2d_44_layer_call_fn_2312698

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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_23106112
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
?	
?
9__inference_batch_normalization_201_layer_call_fn_2312226

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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_23109272
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
G__inference_conv2d_258_layer_call_and_return_conditional_losses_2310386

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
,__inference_conv2d_258_layer_call_fn_2311938

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
G__inference_conv2d_258_layer_call_and_return_conditional_losses_23103862
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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2312010

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
N
2__inference_max_pooling2d_42_layer_call_fn_2312082

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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_23104232
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
?
i
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_2312072

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
?
?
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2310409

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
G__inference_conv2d_259_layer_call_and_return_conditional_losses_2312093

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
i
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2312688

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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312320

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
?
?
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312428

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
H
,__inference_flatten_20_layer_call_fn_2312709

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
G__inference_flatten_20_layer_call_and_return_conditional_losses_23106192
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
?
i
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_2309955

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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2309886

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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2310927

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
??
?"
"__inference__wrapped_model_2309672
conv2d_258_inputN
4alex_net_6_conv2d_258_conv2d_readvariableop_resource:`C
5alex_net_6_conv2d_258_biasadd_readvariableop_resource:`H
:alex_net_6_batch_normalization_200_readvariableop_resource:`J
<alex_net_6_batch_normalization_200_readvariableop_1_resource:`Y
Kalex_net_6_batch_normalization_200_fusedbatchnormv3_readvariableop_resource:`[
Malex_net_6_batch_normalization_200_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_6_conv2d_259_conv2d_readvariableop_resource:`?D
5alex_net_6_conv2d_259_biasadd_readvariableop_resource:	?I
:alex_net_6_batch_normalization_201_readvariableop_resource:	?K
<alex_net_6_batch_normalization_201_readvariableop_1_resource:	?Z
Kalex_net_6_batch_normalization_201_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_6_batch_normalization_201_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_6_conv2d_260_conv2d_readvariableop_resource:??D
5alex_net_6_conv2d_260_biasadd_readvariableop_resource:	?I
:alex_net_6_batch_normalization_202_readvariableop_resource:	?K
<alex_net_6_batch_normalization_202_readvariableop_1_resource:	?Z
Kalex_net_6_batch_normalization_202_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_6_batch_normalization_202_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_6_conv2d_261_conv2d_readvariableop_resource:??D
5alex_net_6_conv2d_261_biasadd_readvariableop_resource:	?I
:alex_net_6_batch_normalization_203_readvariableop_resource:	?K
<alex_net_6_batch_normalization_203_readvariableop_1_resource:	?Z
Kalex_net_6_batch_normalization_203_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_6_batch_normalization_203_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_6_conv2d_262_conv2d_readvariableop_resource:??D
5alex_net_6_conv2d_262_biasadd_readvariableop_resource:	?I
:alex_net_6_batch_normalization_204_readvariableop_resource:	?K
<alex_net_6_batch_normalization_204_readvariableop_1_resource:	?Z
Kalex_net_6_batch_normalization_204_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_6_batch_normalization_204_fusedbatchnormv3_readvariableop_1_resource:	?E
2alex_net_6_dense_44_matmul_readvariableop_resource:	?(A
3alex_net_6_dense_44_biasadd_readvariableop_resource:
identity??Balex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp?Dalex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1?1alex_net_6/batch_normalization_200/ReadVariableOp?3alex_net_6/batch_normalization_200/ReadVariableOp_1?Balex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp?Dalex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1?1alex_net_6/batch_normalization_201/ReadVariableOp?3alex_net_6/batch_normalization_201/ReadVariableOp_1?Balex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp?Dalex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1?1alex_net_6/batch_normalization_202/ReadVariableOp?3alex_net_6/batch_normalization_202/ReadVariableOp_1?Balex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp?Dalex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1?1alex_net_6/batch_normalization_203/ReadVariableOp?3alex_net_6/batch_normalization_203/ReadVariableOp_1?Balex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp?Dalex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1?1alex_net_6/batch_normalization_204/ReadVariableOp?3alex_net_6/batch_normalization_204/ReadVariableOp_1?,alex_net_6/conv2d_258/BiasAdd/ReadVariableOp?+alex_net_6/conv2d_258/Conv2D/ReadVariableOp?,alex_net_6/conv2d_259/BiasAdd/ReadVariableOp?+alex_net_6/conv2d_259/Conv2D/ReadVariableOp?,alex_net_6/conv2d_260/BiasAdd/ReadVariableOp?+alex_net_6/conv2d_260/Conv2D/ReadVariableOp?,alex_net_6/conv2d_261/BiasAdd/ReadVariableOp?+alex_net_6/conv2d_261/Conv2D/ReadVariableOp?,alex_net_6/conv2d_262/BiasAdd/ReadVariableOp?+alex_net_6/conv2d_262/Conv2D/ReadVariableOp?*alex_net_6/dense_44/BiasAdd/ReadVariableOp?)alex_net_6/dense_44/MatMul/ReadVariableOp?
+alex_net_6/conv2d_258/Conv2D/ReadVariableOpReadVariableOp4alex_net_6_conv2d_258_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_6/conv2d_258/Conv2D/ReadVariableOp?
alex_net_6/conv2d_258/Conv2DConv2Dconv2d_258_input3alex_net_6/conv2d_258/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_6/conv2d_258/Conv2D?
,alex_net_6/conv2d_258/BiasAdd/ReadVariableOpReadVariableOp5alex_net_6_conv2d_258_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_6/conv2d_258/BiasAdd/ReadVariableOp?
alex_net_6/conv2d_258/BiasAddBiasAdd%alex_net_6/conv2d_258/Conv2D:output:04alex_net_6/conv2d_258/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
alex_net_6/conv2d_258/BiasAdd?
alex_net_6/conv2d_258/ReluRelu&alex_net_6/conv2d_258/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_6/conv2d_258/Relu?
1alex_net_6/batch_normalization_200/ReadVariableOpReadVariableOp:alex_net_6_batch_normalization_200_readvariableop_resource*
_output_shapes
:`*
dtype023
1alex_net_6/batch_normalization_200/ReadVariableOp?
3alex_net_6/batch_normalization_200/ReadVariableOp_1ReadVariableOp<alex_net_6_batch_normalization_200_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3alex_net_6/batch_normalization_200/ReadVariableOp_1?
Balex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_6_batch_normalization_200_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02D
Balex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp?
Dalex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_6_batch_normalization_200_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02F
Dalex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_6/batch_normalization_200/FusedBatchNormV3FusedBatchNormV3(alex_net_6/conv2d_258/Relu:activations:09alex_net_6/batch_normalization_200/ReadVariableOp:value:0;alex_net_6/batch_normalization_200/ReadVariableOp_1:value:0Jalex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 25
3alex_net_6/batch_normalization_200/FusedBatchNormV3?
#alex_net_6/max_pooling2d_42/MaxPoolMaxPool7alex_net_6/batch_normalization_200/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_6/max_pooling2d_42/MaxPool?
+alex_net_6/conv2d_259/Conv2D/ReadVariableOpReadVariableOp4alex_net_6_conv2d_259_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02-
+alex_net_6/conv2d_259/Conv2D/ReadVariableOp?
alex_net_6/conv2d_259/Conv2DConv2D,alex_net_6/max_pooling2d_42/MaxPool:output:03alex_net_6/conv2d_259/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_6/conv2d_259/Conv2D?
,alex_net_6/conv2d_259/BiasAdd/ReadVariableOpReadVariableOp5alex_net_6_conv2d_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_6/conv2d_259/BiasAdd/ReadVariableOp?
alex_net_6/conv2d_259/BiasAddBiasAdd%alex_net_6/conv2d_259/Conv2D:output:04alex_net_6/conv2d_259/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
alex_net_6/conv2d_259/BiasAdd?
alex_net_6/conv2d_259/ReluRelu&alex_net_6/conv2d_259/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_6/conv2d_259/Relu?
1alex_net_6/batch_normalization_201/ReadVariableOpReadVariableOp:alex_net_6_batch_normalization_201_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_6/batch_normalization_201/ReadVariableOp?
3alex_net_6/batch_normalization_201/ReadVariableOp_1ReadVariableOp<alex_net_6_batch_normalization_201_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_6/batch_normalization_201/ReadVariableOp_1?
Balex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_6_batch_normalization_201_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp?
Dalex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_6_batch_normalization_201_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_6/batch_normalization_201/FusedBatchNormV3FusedBatchNormV3(alex_net_6/conv2d_259/Relu:activations:09alex_net_6/batch_normalization_201/ReadVariableOp:value:0;alex_net_6/batch_normalization_201/ReadVariableOp_1:value:0Jalex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_6/batch_normalization_201/FusedBatchNormV3?
#alex_net_6/max_pooling2d_43/MaxPoolMaxPool7alex_net_6/batch_normalization_201/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#alex_net_6/max_pooling2d_43/MaxPool?
+alex_net_6/conv2d_260/Conv2D/ReadVariableOpReadVariableOp4alex_net_6_conv2d_260_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_6/conv2d_260/Conv2D/ReadVariableOp?
alex_net_6/conv2d_260/Conv2DConv2D,alex_net_6/max_pooling2d_43/MaxPool:output:03alex_net_6/conv2d_260/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_6/conv2d_260/Conv2D?
,alex_net_6/conv2d_260/BiasAdd/ReadVariableOpReadVariableOp5alex_net_6_conv2d_260_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_6/conv2d_260/BiasAdd/ReadVariableOp?
alex_net_6/conv2d_260/BiasAddBiasAdd%alex_net_6/conv2d_260/Conv2D:output:04alex_net_6/conv2d_260/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_6/conv2d_260/BiasAdd?
alex_net_6/conv2d_260/ReluRelu&alex_net_6/conv2d_260/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_6/conv2d_260/Relu?
1alex_net_6/batch_normalization_202/ReadVariableOpReadVariableOp:alex_net_6_batch_normalization_202_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_6/batch_normalization_202/ReadVariableOp?
3alex_net_6/batch_normalization_202/ReadVariableOp_1ReadVariableOp<alex_net_6_batch_normalization_202_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_6/batch_normalization_202/ReadVariableOp_1?
Balex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_6_batch_normalization_202_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp?
Dalex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_6_batch_normalization_202_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_6/batch_normalization_202/FusedBatchNormV3FusedBatchNormV3(alex_net_6/conv2d_260/Relu:activations:09alex_net_6/batch_normalization_202/ReadVariableOp:value:0;alex_net_6/batch_normalization_202/ReadVariableOp_1:value:0Jalex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_6/batch_normalization_202/FusedBatchNormV3?
+alex_net_6/conv2d_261/Conv2D/ReadVariableOpReadVariableOp4alex_net_6_conv2d_261_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_6/conv2d_261/Conv2D/ReadVariableOp?
alex_net_6/conv2d_261/Conv2DConv2D7alex_net_6/batch_normalization_202/FusedBatchNormV3:y:03alex_net_6/conv2d_261/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_6/conv2d_261/Conv2D?
,alex_net_6/conv2d_261/BiasAdd/ReadVariableOpReadVariableOp5alex_net_6_conv2d_261_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_6/conv2d_261/BiasAdd/ReadVariableOp?
alex_net_6/conv2d_261/BiasAddBiasAdd%alex_net_6/conv2d_261/Conv2D:output:04alex_net_6/conv2d_261/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_6/conv2d_261/BiasAdd?
alex_net_6/conv2d_261/ReluRelu&alex_net_6/conv2d_261/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_6/conv2d_261/Relu?
1alex_net_6/batch_normalization_203/ReadVariableOpReadVariableOp:alex_net_6_batch_normalization_203_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_6/batch_normalization_203/ReadVariableOp?
3alex_net_6/batch_normalization_203/ReadVariableOp_1ReadVariableOp<alex_net_6_batch_normalization_203_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_6/batch_normalization_203/ReadVariableOp_1?
Balex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_6_batch_normalization_203_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp?
Dalex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_6_batch_normalization_203_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_6/batch_normalization_203/FusedBatchNormV3FusedBatchNormV3(alex_net_6/conv2d_261/Relu:activations:09alex_net_6/batch_normalization_203/ReadVariableOp:value:0;alex_net_6/batch_normalization_203/ReadVariableOp_1:value:0Jalex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_6/batch_normalization_203/FusedBatchNormV3?
+alex_net_6/conv2d_262/Conv2D/ReadVariableOpReadVariableOp4alex_net_6_conv2d_262_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_6/conv2d_262/Conv2D/ReadVariableOp?
alex_net_6/conv2d_262/Conv2DConv2D7alex_net_6/batch_normalization_203/FusedBatchNormV3:y:03alex_net_6/conv2d_262/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_6/conv2d_262/Conv2D?
,alex_net_6/conv2d_262/BiasAdd/ReadVariableOpReadVariableOp5alex_net_6_conv2d_262_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_6/conv2d_262/BiasAdd/ReadVariableOp?
alex_net_6/conv2d_262/BiasAddBiasAdd%alex_net_6/conv2d_262/Conv2D:output:04alex_net_6/conv2d_262/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_6/conv2d_262/BiasAdd?
alex_net_6/conv2d_262/ReluRelu&alex_net_6/conv2d_262/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_6/conv2d_262/Relu?
1alex_net_6/batch_normalization_204/ReadVariableOpReadVariableOp:alex_net_6_batch_normalization_204_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_6/batch_normalization_204/ReadVariableOp?
3alex_net_6/batch_normalization_204/ReadVariableOp_1ReadVariableOp<alex_net_6_batch_normalization_204_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_6/batch_normalization_204/ReadVariableOp_1?
Balex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_6_batch_normalization_204_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp?
Dalex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_6_batch_normalization_204_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_6/batch_normalization_204/FusedBatchNormV3FusedBatchNormV3(alex_net_6/conv2d_262/Relu:activations:09alex_net_6/batch_normalization_204/ReadVariableOp:value:0;alex_net_6/batch_normalization_204/ReadVariableOp_1:value:0Jalex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_6/batch_normalization_204/FusedBatchNormV3?
#alex_net_6/max_pooling2d_44/MaxPoolMaxPool7alex_net_6/batch_normalization_204/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2%
#alex_net_6/max_pooling2d_44/MaxPool?
alex_net_6/flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_6/flatten_20/Const?
alex_net_6/flatten_20/ReshapeReshape,alex_net_6/max_pooling2d_44/MaxPool:output:0$alex_net_6/flatten_20/Const:output:0*
T0*(
_output_shapes
:??????????(2
alex_net_6/flatten_20/Reshape?
)alex_net_6/dense_44/MatMul/ReadVariableOpReadVariableOp2alex_net_6_dense_44_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02+
)alex_net_6/dense_44/MatMul/ReadVariableOp?
alex_net_6/dense_44/MatMulMatMul&alex_net_6/flatten_20/Reshape:output:01alex_net_6/dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_6/dense_44/MatMul?
*alex_net_6/dense_44/BiasAdd/ReadVariableOpReadVariableOp3alex_net_6_dense_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_6/dense_44/BiasAdd/ReadVariableOp?
alex_net_6/dense_44/BiasAddBiasAdd$alex_net_6/dense_44/MatMul:product:02alex_net_6/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_6/dense_44/BiasAdd?
alex_net_6/dense_44/SigmoidSigmoid$alex_net_6/dense_44/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_6/dense_44/Sigmoidz
IdentityIdentityalex_net_6/dense_44/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpC^alex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOpE^alex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp_12^alex_net_6/batch_normalization_200/ReadVariableOp4^alex_net_6/batch_normalization_200/ReadVariableOp_1C^alex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOpE^alex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp_12^alex_net_6/batch_normalization_201/ReadVariableOp4^alex_net_6/batch_normalization_201/ReadVariableOp_1C^alex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOpE^alex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp_12^alex_net_6/batch_normalization_202/ReadVariableOp4^alex_net_6/batch_normalization_202/ReadVariableOp_1C^alex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOpE^alex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp_12^alex_net_6/batch_normalization_203/ReadVariableOp4^alex_net_6/batch_normalization_203/ReadVariableOp_1C^alex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOpE^alex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp_12^alex_net_6/batch_normalization_204/ReadVariableOp4^alex_net_6/batch_normalization_204/ReadVariableOp_1-^alex_net_6/conv2d_258/BiasAdd/ReadVariableOp,^alex_net_6/conv2d_258/Conv2D/ReadVariableOp-^alex_net_6/conv2d_259/BiasAdd/ReadVariableOp,^alex_net_6/conv2d_259/Conv2D/ReadVariableOp-^alex_net_6/conv2d_260/BiasAdd/ReadVariableOp,^alex_net_6/conv2d_260/Conv2D/ReadVariableOp-^alex_net_6/conv2d_261/BiasAdd/ReadVariableOp,^alex_net_6/conv2d_261/Conv2D/ReadVariableOp-^alex_net_6/conv2d_262/BiasAdd/ReadVariableOp,^alex_net_6/conv2d_262/Conv2D/ReadVariableOp+^alex_net_6/dense_44/BiasAdd/ReadVariableOp*^alex_net_6/dense_44/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Balex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOpBalex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp_1Dalex_net_6/batch_normalization_200/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_6/batch_normalization_200/ReadVariableOp1alex_net_6/batch_normalization_200/ReadVariableOp2j
3alex_net_6/batch_normalization_200/ReadVariableOp_13alex_net_6/batch_normalization_200/ReadVariableOp_12?
Balex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOpBalex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp_1Dalex_net_6/batch_normalization_201/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_6/batch_normalization_201/ReadVariableOp1alex_net_6/batch_normalization_201/ReadVariableOp2j
3alex_net_6/batch_normalization_201/ReadVariableOp_13alex_net_6/batch_normalization_201/ReadVariableOp_12?
Balex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOpBalex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp_1Dalex_net_6/batch_normalization_202/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_6/batch_normalization_202/ReadVariableOp1alex_net_6/batch_normalization_202/ReadVariableOp2j
3alex_net_6/batch_normalization_202/ReadVariableOp_13alex_net_6/batch_normalization_202/ReadVariableOp_12?
Balex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOpBalex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp_1Dalex_net_6/batch_normalization_203/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_6/batch_normalization_203/ReadVariableOp1alex_net_6/batch_normalization_203/ReadVariableOp2j
3alex_net_6/batch_normalization_203/ReadVariableOp_13alex_net_6/batch_normalization_203/ReadVariableOp_12?
Balex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOpBalex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp_1Dalex_net_6/batch_normalization_204/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_6/batch_normalization_204/ReadVariableOp1alex_net_6/batch_normalization_204/ReadVariableOp2j
3alex_net_6/batch_normalization_204/ReadVariableOp_13alex_net_6/batch_normalization_204/ReadVariableOp_12\
,alex_net_6/conv2d_258/BiasAdd/ReadVariableOp,alex_net_6/conv2d_258/BiasAdd/ReadVariableOp2Z
+alex_net_6/conv2d_258/Conv2D/ReadVariableOp+alex_net_6/conv2d_258/Conv2D/ReadVariableOp2\
,alex_net_6/conv2d_259/BiasAdd/ReadVariableOp,alex_net_6/conv2d_259/BiasAdd/ReadVariableOp2Z
+alex_net_6/conv2d_259/Conv2D/ReadVariableOp+alex_net_6/conv2d_259/Conv2D/ReadVariableOp2\
,alex_net_6/conv2d_260/BiasAdd/ReadVariableOp,alex_net_6/conv2d_260/BiasAdd/ReadVariableOp2Z
+alex_net_6/conv2d_260/Conv2D/ReadVariableOp+alex_net_6/conv2d_260/Conv2D/ReadVariableOp2\
,alex_net_6/conv2d_261/BiasAdd/ReadVariableOp,alex_net_6/conv2d_261/BiasAdd/ReadVariableOp2Z
+alex_net_6/conv2d_261/Conv2D/ReadVariableOp+alex_net_6/conv2d_261/Conv2D/ReadVariableOp2\
,alex_net_6/conv2d_262/BiasAdd/ReadVariableOp,alex_net_6/conv2d_262/BiasAdd/ReadVariableOp2Z
+alex_net_6/conv2d_262/Conv2D/ReadVariableOp+alex_net_6/conv2d_262/Conv2D/ReadVariableOp2X
*alex_net_6/dense_44/BiasAdd/ReadVariableOp*alex_net_6/dense_44/BiasAdd/ReadVariableOp2V
)alex_net_6/dense_44/MatMul/ReadVariableOp)alex_net_6/dense_44/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_258_input
?
?
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2311992

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
?
?
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312608

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
?
i
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_2312231

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
9__inference_batch_normalization_202_layer_call_fn_2312364

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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_23100342
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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312120

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
9__inference_batch_normalization_204_layer_call_fn_2312665

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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_23105972
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
?
G__inference_conv2d_260_layer_call_and_return_conditional_losses_2310486

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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2310509

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
conv2d_258_inputC
"serving_default_conv2d_258_input:0???????????<
dense_440
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
+:)`2conv2d_258/kernel
:`2conv2d_258/bias
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
+:)`2batch_normalization_200/gamma
*:(`2batch_normalization_200/beta
3:1` (2#batch_normalization_200/moving_mean
7:5` (2'batch_normalization_200/moving_variance
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
,:*`?2conv2d_259/kernel
:?2conv2d_259/bias
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
,:*?2batch_normalization_201/gamma
+:)?2batch_normalization_201/beta
4:2? (2#batch_normalization_201/moving_mean
8:6? (2'batch_normalization_201/moving_variance
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
-:+??2conv2d_260/kernel
:?2conv2d_260/bias
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
,:*?2batch_normalization_202/gamma
+:)?2batch_normalization_202/beta
4:2? (2#batch_normalization_202/moving_mean
8:6? (2'batch_normalization_202/moving_variance
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
-:+??2conv2d_261/kernel
:?2conv2d_261/bias
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
,:*?2batch_normalization_203/gamma
+:)?2batch_normalization_203/beta
4:2? (2#batch_normalization_203/moving_mean
8:6? (2'batch_normalization_203/moving_variance
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
-:+??2conv2d_262/kernel
:?2conv2d_262/bias
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
,:*?2batch_normalization_204/gamma
+:)?2batch_normalization_204/beta
4:2? (2#batch_normalization_204/moving_mean
8:6? (2'batch_normalization_204/moving_variance
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
": 	?(2dense_44/kernel
:2dense_44/bias
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
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311659
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311780
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311380
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311463?
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
"__inference__wrapped_model_2309672conv2d_258_input"?
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
?2?
,__inference_alex_net_6_layer_call_fn_2310706
,__inference_alex_net_6_layer_call_fn_2311849
,__inference_alex_net_6_layer_call_fn_2311918
,__inference_alex_net_6_layer_call_fn_2311297?
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
G__inference_conv2d_258_layer_call_and_return_conditional_losses_2311929?
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
,__inference_conv2d_258_layer_call_fn_2311938?
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
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2311956
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2311974
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2311992
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2312010?
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
9__inference_batch_normalization_200_layer_call_fn_2312023
9__inference_batch_normalization_200_layer_call_fn_2312036
9__inference_batch_normalization_200_layer_call_fn_2312049
9__inference_batch_normalization_200_layer_call_fn_2312062?
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_2312067
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_2312072?
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
2__inference_max_pooling2d_42_layer_call_fn_2312077
2__inference_max_pooling2d_42_layer_call_fn_2312082?
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
G__inference_conv2d_259_layer_call_and_return_conditional_losses_2312093?
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
,__inference_conv2d_259_layer_call_fn_2312102?
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
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312120
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312138
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312156
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312174?
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
9__inference_batch_normalization_201_layer_call_fn_2312187
9__inference_batch_normalization_201_layer_call_fn_2312200
9__inference_batch_normalization_201_layer_call_fn_2312213
9__inference_batch_normalization_201_layer_call_fn_2312226?
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_2312231
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_2312236?
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
2__inference_max_pooling2d_43_layer_call_fn_2312241
2__inference_max_pooling2d_43_layer_call_fn_2312246?
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
G__inference_conv2d_260_layer_call_and_return_conditional_losses_2312257?
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
,__inference_conv2d_260_layer_call_fn_2312266?
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
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312284
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312302
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312320
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312338?
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
9__inference_batch_normalization_202_layer_call_fn_2312351
9__inference_batch_normalization_202_layer_call_fn_2312364
9__inference_batch_normalization_202_layer_call_fn_2312377
9__inference_batch_normalization_202_layer_call_fn_2312390?
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
G__inference_conv2d_261_layer_call_and_return_conditional_losses_2312401?
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
,__inference_conv2d_261_layer_call_fn_2312410?
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
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312428
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312446
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312464
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312482?
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
9__inference_batch_normalization_203_layer_call_fn_2312495
9__inference_batch_normalization_203_layer_call_fn_2312508
9__inference_batch_normalization_203_layer_call_fn_2312521
9__inference_batch_normalization_203_layer_call_fn_2312534?
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
G__inference_conv2d_262_layer_call_and_return_conditional_losses_2312545?
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
,__inference_conv2d_262_layer_call_fn_2312554?
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
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312572
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312590
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312608
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312626?
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
9__inference_batch_normalization_204_layer_call_fn_2312639
9__inference_batch_normalization_204_layer_call_fn_2312652
9__inference_batch_normalization_204_layer_call_fn_2312665
9__inference_batch_normalization_204_layer_call_fn_2312678?
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2312683
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2312688?
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
2__inference_max_pooling2d_44_layer_call_fn_2312693
2__inference_max_pooling2d_44_layer_call_fn_2312698?
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
G__inference_flatten_20_layer_call_and_return_conditional_losses_2312704?
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
,__inference_flatten_20_layer_call_fn_2312709?
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
E__inference_dense_44_layer_call_and_return_conditional_losses_2312720?
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
*__inference_dense_44_layer_call_fn_2312729?
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
%__inference_signature_wrapper_2311538conv2d_258_input"?
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
"__inference__wrapped_model_2309672?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_258_input???????????
? "3?0
.
dense_44"?
dense_44??????????
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311380?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_258_input???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311463?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_258_input???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311659?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
G__inference_alex_net_6_layer_call_and_return_conditional_losses_2311780?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
,__inference_alex_net_6_layer_call_fn_2310706?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_258_input???????????
p 

 
? "???????????
,__inference_alex_net_6_layer_call_fn_2311297?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_258_input???????????
p

 
? "???????????
,__inference_alex_net_6_layer_call_fn_2311849  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_alex_net_6_layer_call_fn_2311918  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2311956? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2311974? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2311992r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_200_layer_call_and_return_conditional_losses_2312010r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_200_layer_call_fn_2312023? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_200_layer_call_fn_2312036? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_200_layer_call_fn_2312049e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_200_layer_call_fn_2312062e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312120?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312138?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312156t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_201_layer_call_and_return_conditional_losses_2312174t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_201_layer_call_fn_2312187?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_201_layer_call_fn_2312200?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_201_layer_call_fn_2312213g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_201_layer_call_fn_2312226g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312284?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312302?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312320tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_202_layer_call_and_return_conditional_losses_2312338tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_202_layer_call_fn_2312351?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_202_layer_call_fn_2312364?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_202_layer_call_fn_2312377gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_202_layer_call_fn_2312390gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312428?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312446?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312464tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_203_layer_call_and_return_conditional_losses_2312482tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_203_layer_call_fn_2312495?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_203_layer_call_fn_2312508?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_203_layer_call_fn_2312521gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_203_layer_call_fn_2312534gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312572?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312590?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312608tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_204_layer_call_and_return_conditional_losses_2312626tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_204_layer_call_fn_2312639?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_204_layer_call_fn_2312652?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_204_layer_call_fn_2312665gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_204_layer_call_fn_2312678gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_258_layer_call_and_return_conditional_losses_2311929n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_258_layer_call_fn_2311938a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_259_layer_call_and_return_conditional_losses_2312093m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_259_layer_call_fn_2312102`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_260_layer_call_and_return_conditional_losses_2312257n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_260_layer_call_fn_2312266a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_261_layer_call_and_return_conditional_losses_2312401nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_261_layer_call_fn_2312410aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_262_layer_call_and_return_conditional_losses_2312545nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_262_layer_call_fn_2312554aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_44_layer_call_and_return_conditional_losses_2312720]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_44_layer_call_fn_2312729Pqr0?-
&?#
!?
inputs??????????(
? "???????????
G__inference_flatten_20_layer_call_and_return_conditional_losses_2312704b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
,__inference_flatten_20_layer_call_fn_2312709U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_2312067?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_2312072h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_42_layer_call_fn_2312077?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_42_layer_call_fn_2312082[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_2312231?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_2312236j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_43_layer_call_fn_2312241?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_43_layer_call_fn_2312246]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2312683?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2312688j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_44_layer_call_fn_2312693?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_44_layer_call_fn_2312698]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_2311538?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_258_input4?1
conv2d_258_input???????????"3?0
.
dense_44"?
dense_44?????????