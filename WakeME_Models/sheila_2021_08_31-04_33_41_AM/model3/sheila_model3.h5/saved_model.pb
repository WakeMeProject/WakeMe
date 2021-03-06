̡
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
conv2d_447/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_447/kernel

%conv2d_447/kernel/Read/ReadVariableOpReadVariableOpconv2d_447/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_447/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_447/bias
o
#conv2d_447/bias/Read/ReadVariableOpReadVariableOpconv2d_447/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_354/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_354/gamma
?
1batch_normalization_354/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_354/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_354/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_354/beta
?
0batch_normalization_354/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_354/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_354/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_354/moving_mean
?
7batch_normalization_354/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_354/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_354/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_354/moving_variance
?
;batch_normalization_354/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_354/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_448/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_448/kernel
?
%conv2d_448/kernel/Read/ReadVariableOpReadVariableOpconv2d_448/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_448/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_448/bias
p
#conv2d_448/bias/Read/ReadVariableOpReadVariableOpconv2d_448/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_355/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_355/gamma
?
1batch_normalization_355/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_355/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_355/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_355/beta
?
0batch_normalization_355/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_355/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_355/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_355/moving_mean
?
7batch_normalization_355/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_355/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_355/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_355/moving_variance
?
;batch_normalization_355/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_355/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_449/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_449/kernel
?
%conv2d_449/kernel/Read/ReadVariableOpReadVariableOpconv2d_449/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_449/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_449/bias
p
#conv2d_449/bias/Read/ReadVariableOpReadVariableOpconv2d_449/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_356/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_356/gamma
?
1batch_normalization_356/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_356/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_356/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_356/beta
?
0batch_normalization_356/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_356/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_356/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_356/moving_mean
?
7batch_normalization_356/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_356/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_356/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_356/moving_variance
?
;batch_normalization_356/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_356/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_450/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_450/kernel
?
%conv2d_450/kernel/Read/ReadVariableOpReadVariableOpconv2d_450/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_450/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_450/bias
p
#conv2d_450/bias/Read/ReadVariableOpReadVariableOpconv2d_450/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_357/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_357/gamma
?
1batch_normalization_357/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_357/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_357/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_357/beta
?
0batch_normalization_357/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_357/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_357/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_357/moving_mean
?
7batch_normalization_357/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_357/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_357/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_357/moving_variance
?
;batch_normalization_357/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_357/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_451/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_451/kernel
?
%conv2d_451/kernel/Read/ReadVariableOpReadVariableOpconv2d_451/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_451/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_451/bias
p
#conv2d_451/bias/Read/ReadVariableOpReadVariableOpconv2d_451/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_358/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_358/gamma
?
1batch_normalization_358/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_358/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_358/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_358/beta
?
0batch_normalization_358/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_358/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_358/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_358/moving_mean
?
7batch_normalization_358/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_358/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_358/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_358/moving_variance
?
;batch_normalization_358/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_358/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_72/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_72/kernel
t
#dense_72/kernel/Read/ReadVariableOpReadVariableOpdense_72/kernel*
_output_shapes
:	?(*
dtype0
r
dense_72/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_72/bias
k
!dense_72/bias/Read/ReadVariableOpReadVariableOpdense_72/bias*
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
VARIABLE_VALUEconv2d_447/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_447/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_354/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_354/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_354/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_354/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_448/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_448/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_355/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_355/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_355/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_355/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_449/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_449/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_356/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_356/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_356/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_356/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_450/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_450/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_357/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_357/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_357/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_357/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_451/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_451/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_358/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_358/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_358/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_358/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_72/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_72/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_447_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_447_inputconv2d_447/kernelconv2d_447/biasbatch_normalization_354/gammabatch_normalization_354/beta#batch_normalization_354/moving_mean'batch_normalization_354/moving_varianceconv2d_448/kernelconv2d_448/biasbatch_normalization_355/gammabatch_normalization_355/beta#batch_normalization_355/moving_mean'batch_normalization_355/moving_varianceconv2d_449/kernelconv2d_449/biasbatch_normalization_356/gammabatch_normalization_356/beta#batch_normalization_356/moving_mean'batch_normalization_356/moving_varianceconv2d_450/kernelconv2d_450/biasbatch_normalization_357/gammabatch_normalization_357/beta#batch_normalization_357/moving_mean'batch_normalization_357/moving_varianceconv2d_451/kernelconv2d_451/biasbatch_normalization_358/gammabatch_normalization_358/beta#batch_normalization_358/moving_mean'batch_normalization_358/moving_variancedense_72/kerneldense_72/bias*,
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
GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_10828733
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_447/kernel/Read/ReadVariableOp#conv2d_447/bias/Read/ReadVariableOp1batch_normalization_354/gamma/Read/ReadVariableOp0batch_normalization_354/beta/Read/ReadVariableOp7batch_normalization_354/moving_mean/Read/ReadVariableOp;batch_normalization_354/moving_variance/Read/ReadVariableOp%conv2d_448/kernel/Read/ReadVariableOp#conv2d_448/bias/Read/ReadVariableOp1batch_normalization_355/gamma/Read/ReadVariableOp0batch_normalization_355/beta/Read/ReadVariableOp7batch_normalization_355/moving_mean/Read/ReadVariableOp;batch_normalization_355/moving_variance/Read/ReadVariableOp%conv2d_449/kernel/Read/ReadVariableOp#conv2d_449/bias/Read/ReadVariableOp1batch_normalization_356/gamma/Read/ReadVariableOp0batch_normalization_356/beta/Read/ReadVariableOp7batch_normalization_356/moving_mean/Read/ReadVariableOp;batch_normalization_356/moving_variance/Read/ReadVariableOp%conv2d_450/kernel/Read/ReadVariableOp#conv2d_450/bias/Read/ReadVariableOp1batch_normalization_357/gamma/Read/ReadVariableOp0batch_normalization_357/beta/Read/ReadVariableOp7batch_normalization_357/moving_mean/Read/ReadVariableOp;batch_normalization_357/moving_variance/Read/ReadVariableOp%conv2d_451/kernel/Read/ReadVariableOp#conv2d_451/bias/Read/ReadVariableOp1batch_normalization_358/gamma/Read/ReadVariableOp0batch_normalization_358/beta/Read/ReadVariableOp7batch_normalization_358/moving_mean/Read/ReadVariableOp;batch_normalization_358/moving_variance/Read/ReadVariableOp#dense_72/kernel/Read/ReadVariableOp!dense_72/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
GPU2*0J 8? **
f%R#
!__inference__traced_save_10830067
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_447/kernelconv2d_447/biasbatch_normalization_354/gammabatch_normalization_354/beta#batch_normalization_354/moving_mean'batch_normalization_354/moving_varianceconv2d_448/kernelconv2d_448/biasbatch_normalization_355/gammabatch_normalization_355/beta#batch_normalization_355/moving_mean'batch_normalization_355/moving_varianceconv2d_449/kernelconv2d_449/biasbatch_normalization_356/gammabatch_normalization_356/beta#batch_normalization_356/moving_mean'batch_normalization_356/moving_varianceconv2d_450/kernelconv2d_450/biasbatch_normalization_357/gammabatch_normalization_357/beta#batch_normalization_357/moving_mean'batch_normalization_357/moving_varianceconv2d_451/kernelconv2d_451/biasbatch_normalization_358/gammabatch_normalization_358/beta#batch_normalization_358/moving_mean'batch_normalization_358/moving_variancedense_72/kerneldense_72/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
GPU2*0J 8? *-
f(R&
$__inference__traced_restore_10830197??
?
?
H__inference_conv2d_450_layer_call_and_return_conditional_losses_10827725

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
:__inference_batch_normalization_358_layer_call_fn_10829860

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_108277922
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
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829369

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
?T
?
!__inference__traced_save_10830067
file_prefix0
,savev2_conv2d_447_kernel_read_readvariableop.
*savev2_conv2d_447_bias_read_readvariableop<
8savev2_batch_normalization_354_gamma_read_readvariableop;
7savev2_batch_normalization_354_beta_read_readvariableopB
>savev2_batch_normalization_354_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_354_moving_variance_read_readvariableop0
,savev2_conv2d_448_kernel_read_readvariableop.
*savev2_conv2d_448_bias_read_readvariableop<
8savev2_batch_normalization_355_gamma_read_readvariableop;
7savev2_batch_normalization_355_beta_read_readvariableopB
>savev2_batch_normalization_355_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_355_moving_variance_read_readvariableop0
,savev2_conv2d_449_kernel_read_readvariableop.
*savev2_conv2d_449_bias_read_readvariableop<
8savev2_batch_normalization_356_gamma_read_readvariableop;
7savev2_batch_normalization_356_beta_read_readvariableopB
>savev2_batch_normalization_356_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_356_moving_variance_read_readvariableop0
,savev2_conv2d_450_kernel_read_readvariableop.
*savev2_conv2d_450_bias_read_readvariableop<
8savev2_batch_normalization_357_gamma_read_readvariableop;
7savev2_batch_normalization_357_beta_read_readvariableopB
>savev2_batch_normalization_357_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_357_moving_variance_read_readvariableop0
,savev2_conv2d_451_kernel_read_readvariableop.
*savev2_conv2d_451_bias_read_readvariableop<
8savev2_batch_normalization_358_gamma_read_readvariableop;
7savev2_batch_normalization_358_beta_read_readvariableopB
>savev2_batch_normalization_358_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_358_moving_variance_read_readvariableop.
*savev2_dense_72_kernel_read_readvariableop,
(savev2_dense_72_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_447_kernel_read_readvariableop*savev2_conv2d_447_bias_read_readvariableop8savev2_batch_normalization_354_gamma_read_readvariableop7savev2_batch_normalization_354_beta_read_readvariableop>savev2_batch_normalization_354_moving_mean_read_readvariableopBsavev2_batch_normalization_354_moving_variance_read_readvariableop,savev2_conv2d_448_kernel_read_readvariableop*savev2_conv2d_448_bias_read_readvariableop8savev2_batch_normalization_355_gamma_read_readvariableop7savev2_batch_normalization_355_beta_read_readvariableop>savev2_batch_normalization_355_moving_mean_read_readvariableopBsavev2_batch_normalization_355_moving_variance_read_readvariableop,savev2_conv2d_449_kernel_read_readvariableop*savev2_conv2d_449_bias_read_readvariableop8savev2_batch_normalization_356_gamma_read_readvariableop7savev2_batch_normalization_356_beta_read_readvariableop>savev2_batch_normalization_356_moving_mean_read_readvariableopBsavev2_batch_normalization_356_moving_variance_read_readvariableop,savev2_conv2d_450_kernel_read_readvariableop*savev2_conv2d_450_bias_read_readvariableop8savev2_batch_normalization_357_gamma_read_readvariableop7savev2_batch_normalization_357_beta_read_readvariableop>savev2_batch_normalization_357_moving_mean_read_readvariableopBsavev2_batch_normalization_357_moving_variance_read_readvariableop,savev2_conv2d_451_kernel_read_readvariableop*savev2_conv2d_451_bias_read_readvariableop8savev2_batch_normalization_358_gamma_read_readvariableop7savev2_batch_normalization_358_beta_read_readvariableop>savev2_batch_normalization_358_moving_mean_read_readvariableopBsavev2_batch_normalization_358_moving_variance_read_readvariableop*savev2_dense_72_kernel_read_readvariableop(savev2_dense_72_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10827185

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
j
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_10829267

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
j
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_10829878

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
:__inference_batch_normalization_354_layer_call_fn_10829244

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_108276042
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
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10827955

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
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829479

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
:__inference_batch_normalization_358_layer_call_fn_10829847

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_108274812
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
O
3__inference_max_pooling2d_77_layer_call_fn_10829277

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_108276182
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
?	
?
:__inference_batch_normalization_358_layer_call_fn_10829873

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_108279552
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
?
I
-__inference_flatten_34_layer_call_fn_10829904

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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_34_layer_call_and_return_conditional_losses_108278142
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
?
?
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829641

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
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10827834

inputs-
conv2d_447_10827582:`!
conv2d_447_10827584:`.
 batch_normalization_354_10827605:`.
 batch_normalization_354_10827607:`.
 batch_normalization_354_10827609:`.
 batch_normalization_354_10827611:`.
conv2d_448_10827632:`?"
conv2d_448_10827634:	?/
 batch_normalization_355_10827655:	?/
 batch_normalization_355_10827657:	?/
 batch_normalization_355_10827659:	?/
 batch_normalization_355_10827661:	?/
conv2d_449_10827682:??"
conv2d_449_10827684:	?/
 batch_normalization_356_10827705:	?/
 batch_normalization_356_10827707:	?/
 batch_normalization_356_10827709:	?/
 batch_normalization_356_10827711:	?/
conv2d_450_10827726:??"
conv2d_450_10827728:	?/
 batch_normalization_357_10827749:	?/
 batch_normalization_357_10827751:	?/
 batch_normalization_357_10827753:	?/
 batch_normalization_357_10827755:	?/
conv2d_451_10827770:??"
conv2d_451_10827772:	?/
 batch_normalization_358_10827793:	?/
 batch_normalization_358_10827795:	?/
 batch_normalization_358_10827797:	?/
 batch_normalization_358_10827799:	?$
dense_72_10827828:	?(
dense_72_10827830:
identity??/batch_normalization_354/StatefulPartitionedCall?/batch_normalization_355/StatefulPartitionedCall?/batch_normalization_356/StatefulPartitionedCall?/batch_normalization_357/StatefulPartitionedCall?/batch_normalization_358/StatefulPartitionedCall?"conv2d_447/StatefulPartitionedCall?"conv2d_448/StatefulPartitionedCall?"conv2d_449/StatefulPartitionedCall?"conv2d_450/StatefulPartitionedCall?"conv2d_451/StatefulPartitionedCall? dense_72/StatefulPartitionedCall?
"conv2d_447/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_447_10827582conv2d_447_10827584*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_447_layer_call_and_return_conditional_losses_108275812$
"conv2d_447/StatefulPartitionedCall?
/batch_normalization_354/StatefulPartitionedCallStatefulPartitionedCall+conv2d_447/StatefulPartitionedCall:output:0 batch_normalization_354_10827605 batch_normalization_354_10827607 batch_normalization_354_10827609 batch_normalization_354_10827611*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_1082760421
/batch_normalization_354/StatefulPartitionedCall?
 max_pooling2d_77/PartitionedCallPartitionedCall8batch_normalization_354/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_108276182"
 max_pooling2d_77/PartitionedCall?
"conv2d_448/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_77/PartitionedCall:output:0conv2d_448_10827632conv2d_448_10827634*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_448_layer_call_and_return_conditional_losses_108276312$
"conv2d_448/StatefulPartitionedCall?
/batch_normalization_355/StatefulPartitionedCallStatefulPartitionedCall+conv2d_448/StatefulPartitionedCall:output:0 batch_normalization_355_10827655 batch_normalization_355_10827657 batch_normalization_355_10827659 batch_normalization_355_10827661*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_1082765421
/batch_normalization_355/StatefulPartitionedCall?
 max_pooling2d_78/PartitionedCallPartitionedCall8batch_normalization_355/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_108276682"
 max_pooling2d_78/PartitionedCall?
"conv2d_449/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_78/PartitionedCall:output:0conv2d_449_10827682conv2d_449_10827684*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_449_layer_call_and_return_conditional_losses_108276812$
"conv2d_449/StatefulPartitionedCall?
/batch_normalization_356/StatefulPartitionedCallStatefulPartitionedCall+conv2d_449/StatefulPartitionedCall:output:0 batch_normalization_356_10827705 batch_normalization_356_10827707 batch_normalization_356_10827709 batch_normalization_356_10827711*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_1082770421
/batch_normalization_356/StatefulPartitionedCall?
"conv2d_450/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_356/StatefulPartitionedCall:output:0conv2d_450_10827726conv2d_450_10827728*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_450_layer_call_and_return_conditional_losses_108277252$
"conv2d_450/StatefulPartitionedCall?
/batch_normalization_357/StatefulPartitionedCallStatefulPartitionedCall+conv2d_450/StatefulPartitionedCall:output:0 batch_normalization_357_10827749 batch_normalization_357_10827751 batch_normalization_357_10827753 batch_normalization_357_10827755*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_1082774821
/batch_normalization_357/StatefulPartitionedCall?
"conv2d_451/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_357/StatefulPartitionedCall:output:0conv2d_451_10827770conv2d_451_10827772*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_451_layer_call_and_return_conditional_losses_108277692$
"conv2d_451/StatefulPartitionedCall?
/batch_normalization_358/StatefulPartitionedCallStatefulPartitionedCall+conv2d_451/StatefulPartitionedCall:output:0 batch_normalization_358_10827793 batch_normalization_358_10827795 batch_normalization_358_10827797 batch_normalization_358_10827799*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_1082779221
/batch_normalization_358/StatefulPartitionedCall?
 max_pooling2d_79/PartitionedCallPartitionedCall8batch_normalization_358/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_108278062"
 max_pooling2d_79/PartitionedCall?
flatten_34/PartitionedCallPartitionedCall)max_pooling2d_79/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_34_layer_call_and_return_conditional_losses_108278142
flatten_34/PartitionedCall?
 dense_72/StatefulPartitionedCallStatefulPartitionedCall#flatten_34/PartitionedCall:output:0dense_72_10827828dense_72_10827830*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_72_layer_call_and_return_conditional_losses_108278272"
 dense_72/StatefulPartitionedCall?
IdentityIdentity)dense_72/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_354/StatefulPartitionedCall0^batch_normalization_355/StatefulPartitionedCall0^batch_normalization_356/StatefulPartitionedCall0^batch_normalization_357/StatefulPartitionedCall0^batch_normalization_358/StatefulPartitionedCall#^conv2d_447/StatefulPartitionedCall#^conv2d_448/StatefulPartitionedCall#^conv2d_449/StatefulPartitionedCall#^conv2d_450/StatefulPartitionedCall#^conv2d_451/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_354/StatefulPartitionedCall/batch_normalization_354/StatefulPartitionedCall2b
/batch_normalization_355/StatefulPartitionedCall/batch_normalization_355/StatefulPartitionedCall2b
/batch_normalization_356/StatefulPartitionedCall/batch_normalization_356/StatefulPartitionedCall2b
/batch_normalization_357/StatefulPartitionedCall/batch_normalization_357/StatefulPartitionedCall2b
/batch_normalization_358/StatefulPartitionedCall/batch_normalization_358/StatefulPartitionedCall2H
"conv2d_447/StatefulPartitionedCall"conv2d_447/StatefulPartitionedCall2H
"conv2d_448/StatefulPartitionedCall"conv2d_448/StatefulPartitionedCall2H
"conv2d_449/StatefulPartitionedCall"conv2d_449/StatefulPartitionedCall2H
"conv2d_450/StatefulPartitionedCall"conv2d_450/StatefulPartitionedCall2H
"conv2d_451/StatefulPartitionedCall"conv2d_451/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
:__inference_batch_normalization_357_layer_call_fn_10829703

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_108273552
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
?
.__inference_alex_net_13_layer_call_fn_10828492
conv2d_447_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_447_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *R
fMRK
I__inference_alex_net_13_layer_call_and_return_conditional_losses_108283562
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
_user_specified_nameconv2d_447_input
?
?
H__inference_conv2d_450_layer_call_and_return_conditional_losses_10829596

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
?
j
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_10829883

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
F__inference_dense_72_layer_call_and_return_conditional_losses_10827827

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
:__inference_batch_normalization_354_layer_call_fn_10829231

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_108269332
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
?
O
3__inference_max_pooling2d_78_layer_call_fn_10829436

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_108271502
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
:__inference_batch_normalization_356_layer_call_fn_10829585

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_108280632
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
:__inference_batch_normalization_355_layer_call_fn_10829421

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_108281222
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
?
d
H__inference_flatten_34_layer_call_and_return_conditional_losses_10829899

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
?
?
-__inference_conv2d_448_layer_call_fn_10829297

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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_448_layer_call_and_return_conditional_losses_108276312
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
?	
?
:__inference_batch_normalization_356_layer_call_fn_10829559

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_108272292
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
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829659

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
:__inference_batch_normalization_357_layer_call_fn_10829729

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_108280092
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
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10827081

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
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10828181

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
j
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_10827618

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
?	
?
:__inference_batch_normalization_358_layer_call_fn_10829834

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_108274372
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
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10827355

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
H__inference_conv2d_447_layer_call_and_return_conditional_losses_10829124

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
? 
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828975

inputsC
)conv2d_447_conv2d_readvariableop_resource:`8
*conv2d_447_biasadd_readvariableop_resource:`=
/batch_normalization_354_readvariableop_resource:`?
1batch_normalization_354_readvariableop_1_resource:`N
@batch_normalization_354_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_354_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_448_conv2d_readvariableop_resource:`?9
*conv2d_448_biasadd_readvariableop_resource:	?>
/batch_normalization_355_readvariableop_resource:	?@
1batch_normalization_355_readvariableop_1_resource:	?O
@batch_normalization_355_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_355_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_449_conv2d_readvariableop_resource:??9
*conv2d_449_biasadd_readvariableop_resource:	?>
/batch_normalization_356_readvariableop_resource:	?@
1batch_normalization_356_readvariableop_1_resource:	?O
@batch_normalization_356_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_356_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_450_conv2d_readvariableop_resource:??9
*conv2d_450_biasadd_readvariableop_resource:	?>
/batch_normalization_357_readvariableop_resource:	?@
1batch_normalization_357_readvariableop_1_resource:	?O
@batch_normalization_357_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_357_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_451_conv2d_readvariableop_resource:??9
*conv2d_451_biasadd_readvariableop_resource:	?>
/batch_normalization_358_readvariableop_resource:	?@
1batch_normalization_358_readvariableop_1_resource:	?O
@batch_normalization_358_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_358_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_72_matmul_readvariableop_resource:	?(6
(dense_72_biasadd_readvariableop_resource:
identity??&batch_normalization_354/AssignNewValue?(batch_normalization_354/AssignNewValue_1?7batch_normalization_354/FusedBatchNormV3/ReadVariableOp?9batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_354/ReadVariableOp?(batch_normalization_354/ReadVariableOp_1?&batch_normalization_355/AssignNewValue?(batch_normalization_355/AssignNewValue_1?7batch_normalization_355/FusedBatchNormV3/ReadVariableOp?9batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_355/ReadVariableOp?(batch_normalization_355/ReadVariableOp_1?&batch_normalization_356/AssignNewValue?(batch_normalization_356/AssignNewValue_1?7batch_normalization_356/FusedBatchNormV3/ReadVariableOp?9batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_356/ReadVariableOp?(batch_normalization_356/ReadVariableOp_1?&batch_normalization_357/AssignNewValue?(batch_normalization_357/AssignNewValue_1?7batch_normalization_357/FusedBatchNormV3/ReadVariableOp?9batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_357/ReadVariableOp?(batch_normalization_357/ReadVariableOp_1?&batch_normalization_358/AssignNewValue?(batch_normalization_358/AssignNewValue_1?7batch_normalization_358/FusedBatchNormV3/ReadVariableOp?9batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_358/ReadVariableOp?(batch_normalization_358/ReadVariableOp_1?!conv2d_447/BiasAdd/ReadVariableOp? conv2d_447/Conv2D/ReadVariableOp?!conv2d_448/BiasAdd/ReadVariableOp? conv2d_448/Conv2D/ReadVariableOp?!conv2d_449/BiasAdd/ReadVariableOp? conv2d_449/Conv2D/ReadVariableOp?!conv2d_450/BiasAdd/ReadVariableOp? conv2d_450/Conv2D/ReadVariableOp?!conv2d_451/BiasAdd/ReadVariableOp? conv2d_451/Conv2D/ReadVariableOp?dense_72/BiasAdd/ReadVariableOp?dense_72/MatMul/ReadVariableOp?
 conv2d_447/Conv2D/ReadVariableOpReadVariableOp)conv2d_447_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_447/Conv2D/ReadVariableOp?
conv2d_447/Conv2DConv2Dinputs(conv2d_447/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_447/Conv2D?
!conv2d_447/BiasAdd/ReadVariableOpReadVariableOp*conv2d_447_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_447/BiasAdd/ReadVariableOp?
conv2d_447/BiasAddBiasAddconv2d_447/Conv2D:output:0)conv2d_447/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_447/BiasAdd?
conv2d_447/ReluReluconv2d_447/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_447/Relu?
&batch_normalization_354/ReadVariableOpReadVariableOp/batch_normalization_354_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_354/ReadVariableOp?
(batch_normalization_354/ReadVariableOp_1ReadVariableOp1batch_normalization_354_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_354/ReadVariableOp_1?
7batch_normalization_354/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_354_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_354/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_354_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_354/FusedBatchNormV3FusedBatchNormV3conv2d_447/Relu:activations:0.batch_normalization_354/ReadVariableOp:value:00batch_normalization_354/ReadVariableOp_1:value:0?batch_normalization_354/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_354/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_354/FusedBatchNormV3?
&batch_normalization_354/AssignNewValueAssignVariableOp@batch_normalization_354_fusedbatchnormv3_readvariableop_resource5batch_normalization_354/FusedBatchNormV3:batch_mean:08^batch_normalization_354/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_354/AssignNewValue?
(batch_normalization_354/AssignNewValue_1AssignVariableOpBbatch_normalization_354_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_354/FusedBatchNormV3:batch_variance:0:^batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_354/AssignNewValue_1?
max_pooling2d_77/MaxPoolMaxPool,batch_normalization_354/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_77/MaxPool?
 conv2d_448/Conv2D/ReadVariableOpReadVariableOp)conv2d_448_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_448/Conv2D/ReadVariableOp?
conv2d_448/Conv2DConv2D!max_pooling2d_77/MaxPool:output:0(conv2d_448/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_448/Conv2D?
!conv2d_448/BiasAdd/ReadVariableOpReadVariableOp*conv2d_448_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_448/BiasAdd/ReadVariableOp?
conv2d_448/BiasAddBiasAddconv2d_448/Conv2D:output:0)conv2d_448/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_448/BiasAdd?
conv2d_448/ReluReluconv2d_448/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_448/Relu?
&batch_normalization_355/ReadVariableOpReadVariableOp/batch_normalization_355_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_355/ReadVariableOp?
(batch_normalization_355/ReadVariableOp_1ReadVariableOp1batch_normalization_355_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_355/ReadVariableOp_1?
7batch_normalization_355/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_355_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_355/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_355_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_355/FusedBatchNormV3FusedBatchNormV3conv2d_448/Relu:activations:0.batch_normalization_355/ReadVariableOp:value:00batch_normalization_355/ReadVariableOp_1:value:0?batch_normalization_355/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_355/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_355/FusedBatchNormV3?
&batch_normalization_355/AssignNewValueAssignVariableOp@batch_normalization_355_fusedbatchnormv3_readvariableop_resource5batch_normalization_355/FusedBatchNormV3:batch_mean:08^batch_normalization_355/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_355/AssignNewValue?
(batch_normalization_355/AssignNewValue_1AssignVariableOpBbatch_normalization_355_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_355/FusedBatchNormV3:batch_variance:0:^batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_355/AssignNewValue_1?
max_pooling2d_78/MaxPoolMaxPool,batch_normalization_355/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_78/MaxPool?
 conv2d_449/Conv2D/ReadVariableOpReadVariableOp)conv2d_449_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_449/Conv2D/ReadVariableOp?
conv2d_449/Conv2DConv2D!max_pooling2d_78/MaxPool:output:0(conv2d_449/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_449/Conv2D?
!conv2d_449/BiasAdd/ReadVariableOpReadVariableOp*conv2d_449_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_449/BiasAdd/ReadVariableOp?
conv2d_449/BiasAddBiasAddconv2d_449/Conv2D:output:0)conv2d_449/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_449/BiasAdd?
conv2d_449/ReluReluconv2d_449/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_449/Relu?
&batch_normalization_356/ReadVariableOpReadVariableOp/batch_normalization_356_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_356/ReadVariableOp?
(batch_normalization_356/ReadVariableOp_1ReadVariableOp1batch_normalization_356_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_356/ReadVariableOp_1?
7batch_normalization_356/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_356_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_356/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_356_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_356/FusedBatchNormV3FusedBatchNormV3conv2d_449/Relu:activations:0.batch_normalization_356/ReadVariableOp:value:00batch_normalization_356/ReadVariableOp_1:value:0?batch_normalization_356/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_356/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_356/FusedBatchNormV3?
&batch_normalization_356/AssignNewValueAssignVariableOp@batch_normalization_356_fusedbatchnormv3_readvariableop_resource5batch_normalization_356/FusedBatchNormV3:batch_mean:08^batch_normalization_356/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_356/AssignNewValue?
(batch_normalization_356/AssignNewValue_1AssignVariableOpBbatch_normalization_356_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_356/FusedBatchNormV3:batch_variance:0:^batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_356/AssignNewValue_1?
 conv2d_450/Conv2D/ReadVariableOpReadVariableOp)conv2d_450_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_450/Conv2D/ReadVariableOp?
conv2d_450/Conv2DConv2D,batch_normalization_356/FusedBatchNormV3:y:0(conv2d_450/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_450/Conv2D?
!conv2d_450/BiasAdd/ReadVariableOpReadVariableOp*conv2d_450_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_450/BiasAdd/ReadVariableOp?
conv2d_450/BiasAddBiasAddconv2d_450/Conv2D:output:0)conv2d_450/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_450/BiasAdd?
conv2d_450/ReluReluconv2d_450/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_450/Relu?
&batch_normalization_357/ReadVariableOpReadVariableOp/batch_normalization_357_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_357/ReadVariableOp?
(batch_normalization_357/ReadVariableOp_1ReadVariableOp1batch_normalization_357_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_357/ReadVariableOp_1?
7batch_normalization_357/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_357_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_357/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_357_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_357/FusedBatchNormV3FusedBatchNormV3conv2d_450/Relu:activations:0.batch_normalization_357/ReadVariableOp:value:00batch_normalization_357/ReadVariableOp_1:value:0?batch_normalization_357/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_357/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_357/FusedBatchNormV3?
&batch_normalization_357/AssignNewValueAssignVariableOp@batch_normalization_357_fusedbatchnormv3_readvariableop_resource5batch_normalization_357/FusedBatchNormV3:batch_mean:08^batch_normalization_357/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_357/AssignNewValue?
(batch_normalization_357/AssignNewValue_1AssignVariableOpBbatch_normalization_357_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_357/FusedBatchNormV3:batch_variance:0:^batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_357/AssignNewValue_1?
 conv2d_451/Conv2D/ReadVariableOpReadVariableOp)conv2d_451_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_451/Conv2D/ReadVariableOp?
conv2d_451/Conv2DConv2D,batch_normalization_357/FusedBatchNormV3:y:0(conv2d_451/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_451/Conv2D?
!conv2d_451/BiasAdd/ReadVariableOpReadVariableOp*conv2d_451_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_451/BiasAdd/ReadVariableOp?
conv2d_451/BiasAddBiasAddconv2d_451/Conv2D:output:0)conv2d_451/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_451/BiasAdd?
conv2d_451/ReluReluconv2d_451/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_451/Relu?
&batch_normalization_358/ReadVariableOpReadVariableOp/batch_normalization_358_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_358/ReadVariableOp?
(batch_normalization_358/ReadVariableOp_1ReadVariableOp1batch_normalization_358_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_358/ReadVariableOp_1?
7batch_normalization_358/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_358_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_358/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_358_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_358/FusedBatchNormV3FusedBatchNormV3conv2d_451/Relu:activations:0.batch_normalization_358/ReadVariableOp:value:00batch_normalization_358/ReadVariableOp_1:value:0?batch_normalization_358/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_358/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_358/FusedBatchNormV3?
&batch_normalization_358/AssignNewValueAssignVariableOp@batch_normalization_358_fusedbatchnormv3_readvariableop_resource5batch_normalization_358/FusedBatchNormV3:batch_mean:08^batch_normalization_358/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_358/AssignNewValue?
(batch_normalization_358/AssignNewValue_1AssignVariableOpBbatch_normalization_358_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_358/FusedBatchNormV3:batch_variance:0:^batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_358/AssignNewValue_1?
max_pooling2d_79/MaxPoolMaxPool,batch_normalization_358/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_79/MaxPoolu
flatten_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_34/Const?
flatten_34/ReshapeReshape!max_pooling2d_79/MaxPool:output:0flatten_34/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_34/Reshape?
dense_72/MatMul/ReadVariableOpReadVariableOp'dense_72_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_72/MatMul/ReadVariableOp?
dense_72/MatMulMatMulflatten_34/Reshape:output:0&dense_72/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_72/MatMul?
dense_72/BiasAdd/ReadVariableOpReadVariableOp(dense_72_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_72/BiasAdd/ReadVariableOp?
dense_72/BiasAddBiasAdddense_72/MatMul:product:0'dense_72/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_72/BiasAdd|
dense_72/SigmoidSigmoiddense_72/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_72/Sigmoido
IdentityIdentitydense_72/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_354/AssignNewValue)^batch_normalization_354/AssignNewValue_18^batch_normalization_354/FusedBatchNormV3/ReadVariableOp:^batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_354/ReadVariableOp)^batch_normalization_354/ReadVariableOp_1'^batch_normalization_355/AssignNewValue)^batch_normalization_355/AssignNewValue_18^batch_normalization_355/FusedBatchNormV3/ReadVariableOp:^batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_355/ReadVariableOp)^batch_normalization_355/ReadVariableOp_1'^batch_normalization_356/AssignNewValue)^batch_normalization_356/AssignNewValue_18^batch_normalization_356/FusedBatchNormV3/ReadVariableOp:^batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_356/ReadVariableOp)^batch_normalization_356/ReadVariableOp_1'^batch_normalization_357/AssignNewValue)^batch_normalization_357/AssignNewValue_18^batch_normalization_357/FusedBatchNormV3/ReadVariableOp:^batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_357/ReadVariableOp)^batch_normalization_357/ReadVariableOp_1'^batch_normalization_358/AssignNewValue)^batch_normalization_358/AssignNewValue_18^batch_normalization_358/FusedBatchNormV3/ReadVariableOp:^batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_358/ReadVariableOp)^batch_normalization_358/ReadVariableOp_1"^conv2d_447/BiasAdd/ReadVariableOp!^conv2d_447/Conv2D/ReadVariableOp"^conv2d_448/BiasAdd/ReadVariableOp!^conv2d_448/Conv2D/ReadVariableOp"^conv2d_449/BiasAdd/ReadVariableOp!^conv2d_449/Conv2D/ReadVariableOp"^conv2d_450/BiasAdd/ReadVariableOp!^conv2d_450/Conv2D/ReadVariableOp"^conv2d_451/BiasAdd/ReadVariableOp!^conv2d_451/Conv2D/ReadVariableOp ^dense_72/BiasAdd/ReadVariableOp^dense_72/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_354/AssignNewValue&batch_normalization_354/AssignNewValue2T
(batch_normalization_354/AssignNewValue_1(batch_normalization_354/AssignNewValue_12r
7batch_normalization_354/FusedBatchNormV3/ReadVariableOp7batch_normalization_354/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_354/FusedBatchNormV3/ReadVariableOp_19batch_normalization_354/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_354/ReadVariableOp&batch_normalization_354/ReadVariableOp2T
(batch_normalization_354/ReadVariableOp_1(batch_normalization_354/ReadVariableOp_12P
&batch_normalization_355/AssignNewValue&batch_normalization_355/AssignNewValue2T
(batch_normalization_355/AssignNewValue_1(batch_normalization_355/AssignNewValue_12r
7batch_normalization_355/FusedBatchNormV3/ReadVariableOp7batch_normalization_355/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_355/FusedBatchNormV3/ReadVariableOp_19batch_normalization_355/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_355/ReadVariableOp&batch_normalization_355/ReadVariableOp2T
(batch_normalization_355/ReadVariableOp_1(batch_normalization_355/ReadVariableOp_12P
&batch_normalization_356/AssignNewValue&batch_normalization_356/AssignNewValue2T
(batch_normalization_356/AssignNewValue_1(batch_normalization_356/AssignNewValue_12r
7batch_normalization_356/FusedBatchNormV3/ReadVariableOp7batch_normalization_356/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_356/FusedBatchNormV3/ReadVariableOp_19batch_normalization_356/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_356/ReadVariableOp&batch_normalization_356/ReadVariableOp2T
(batch_normalization_356/ReadVariableOp_1(batch_normalization_356/ReadVariableOp_12P
&batch_normalization_357/AssignNewValue&batch_normalization_357/AssignNewValue2T
(batch_normalization_357/AssignNewValue_1(batch_normalization_357/AssignNewValue_12r
7batch_normalization_357/FusedBatchNormV3/ReadVariableOp7batch_normalization_357/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_357/FusedBatchNormV3/ReadVariableOp_19batch_normalization_357/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_357/ReadVariableOp&batch_normalization_357/ReadVariableOp2T
(batch_normalization_357/ReadVariableOp_1(batch_normalization_357/ReadVariableOp_12P
&batch_normalization_358/AssignNewValue&batch_normalization_358/AssignNewValue2T
(batch_normalization_358/AssignNewValue_1(batch_normalization_358/AssignNewValue_12r
7batch_normalization_358/FusedBatchNormV3/ReadVariableOp7batch_normalization_358/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_358/FusedBatchNormV3/ReadVariableOp_19batch_normalization_358/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_358/ReadVariableOp&batch_normalization_358/ReadVariableOp2T
(batch_normalization_358/ReadVariableOp_1(batch_normalization_358/ReadVariableOp_12F
!conv2d_447/BiasAdd/ReadVariableOp!conv2d_447/BiasAdd/ReadVariableOp2D
 conv2d_447/Conv2D/ReadVariableOp conv2d_447/Conv2D/ReadVariableOp2F
!conv2d_448/BiasAdd/ReadVariableOp!conv2d_448/BiasAdd/ReadVariableOp2D
 conv2d_448/Conv2D/ReadVariableOp conv2d_448/Conv2D/ReadVariableOp2F
!conv2d_449/BiasAdd/ReadVariableOp!conv2d_449/BiasAdd/ReadVariableOp2D
 conv2d_449/Conv2D/ReadVariableOp conv2d_449/Conv2D/ReadVariableOp2F
!conv2d_450/BiasAdd/ReadVariableOp!conv2d_450/BiasAdd/ReadVariableOp2D
 conv2d_450/Conv2D/ReadVariableOp conv2d_450/Conv2D/ReadVariableOp2F
!conv2d_451/BiasAdd/ReadVariableOp!conv2d_451/BiasAdd/ReadVariableOp2D
 conv2d_451/Conv2D/ReadVariableOp conv2d_451/Conv2D/ReadVariableOp2B
dense_72/BiasAdd/ReadVariableOpdense_72/BiasAdd/ReadVariableOp2@
dense_72/MatMul/ReadVariableOpdense_72/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_conv2d_450_layer_call_fn_10829605

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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_450_layer_call_and_return_conditional_losses_108277252
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
?
?
.__inference_alex_net_13_layer_call_fn_10827901
conv2d_447_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_447_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *R
fMRK
I__inference_alex_net_13_layer_call_and_return_conditional_losses_108278342
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
_user_specified_nameconv2d_447_input
?
?
H__inference_conv2d_451_layer_call_and_return_conditional_losses_10829740

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
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829821

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
?
?
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829497

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
?
:__inference_batch_normalization_357_layer_call_fn_10829690

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_108273112
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
?
?
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10827481

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
:__inference_batch_normalization_354_layer_call_fn_10829218

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_108268892
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
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829315

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
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829515

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
?
j
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_10827002

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
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829205

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
?
?
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10827704

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
?Y
?
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828575
conv2d_447_input-
conv2d_447_10828495:`!
conv2d_447_10828497:`.
 batch_normalization_354_10828500:`.
 batch_normalization_354_10828502:`.
 batch_normalization_354_10828504:`.
 batch_normalization_354_10828506:`.
conv2d_448_10828510:`?"
conv2d_448_10828512:	?/
 batch_normalization_355_10828515:	?/
 batch_normalization_355_10828517:	?/
 batch_normalization_355_10828519:	?/
 batch_normalization_355_10828521:	?/
conv2d_449_10828525:??"
conv2d_449_10828527:	?/
 batch_normalization_356_10828530:	?/
 batch_normalization_356_10828532:	?/
 batch_normalization_356_10828534:	?/
 batch_normalization_356_10828536:	?/
conv2d_450_10828539:??"
conv2d_450_10828541:	?/
 batch_normalization_357_10828544:	?/
 batch_normalization_357_10828546:	?/
 batch_normalization_357_10828548:	?/
 batch_normalization_357_10828550:	?/
conv2d_451_10828553:??"
conv2d_451_10828555:	?/
 batch_normalization_358_10828558:	?/
 batch_normalization_358_10828560:	?/
 batch_normalization_358_10828562:	?/
 batch_normalization_358_10828564:	?$
dense_72_10828569:	?(
dense_72_10828571:
identity??/batch_normalization_354/StatefulPartitionedCall?/batch_normalization_355/StatefulPartitionedCall?/batch_normalization_356/StatefulPartitionedCall?/batch_normalization_357/StatefulPartitionedCall?/batch_normalization_358/StatefulPartitionedCall?"conv2d_447/StatefulPartitionedCall?"conv2d_448/StatefulPartitionedCall?"conv2d_449/StatefulPartitionedCall?"conv2d_450/StatefulPartitionedCall?"conv2d_451/StatefulPartitionedCall? dense_72/StatefulPartitionedCall?
"conv2d_447/StatefulPartitionedCallStatefulPartitionedCallconv2d_447_inputconv2d_447_10828495conv2d_447_10828497*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_447_layer_call_and_return_conditional_losses_108275812$
"conv2d_447/StatefulPartitionedCall?
/batch_normalization_354/StatefulPartitionedCallStatefulPartitionedCall+conv2d_447/StatefulPartitionedCall:output:0 batch_normalization_354_10828500 batch_normalization_354_10828502 batch_normalization_354_10828504 batch_normalization_354_10828506*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_1082760421
/batch_normalization_354/StatefulPartitionedCall?
 max_pooling2d_77/PartitionedCallPartitionedCall8batch_normalization_354/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_108276182"
 max_pooling2d_77/PartitionedCall?
"conv2d_448/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_77/PartitionedCall:output:0conv2d_448_10828510conv2d_448_10828512*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_448_layer_call_and_return_conditional_losses_108276312$
"conv2d_448/StatefulPartitionedCall?
/batch_normalization_355/StatefulPartitionedCallStatefulPartitionedCall+conv2d_448/StatefulPartitionedCall:output:0 batch_normalization_355_10828515 batch_normalization_355_10828517 batch_normalization_355_10828519 batch_normalization_355_10828521*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_1082765421
/batch_normalization_355/StatefulPartitionedCall?
 max_pooling2d_78/PartitionedCallPartitionedCall8batch_normalization_355/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_108276682"
 max_pooling2d_78/PartitionedCall?
"conv2d_449/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_78/PartitionedCall:output:0conv2d_449_10828525conv2d_449_10828527*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_449_layer_call_and_return_conditional_losses_108276812$
"conv2d_449/StatefulPartitionedCall?
/batch_normalization_356/StatefulPartitionedCallStatefulPartitionedCall+conv2d_449/StatefulPartitionedCall:output:0 batch_normalization_356_10828530 batch_normalization_356_10828532 batch_normalization_356_10828534 batch_normalization_356_10828536*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_1082770421
/batch_normalization_356/StatefulPartitionedCall?
"conv2d_450/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_356/StatefulPartitionedCall:output:0conv2d_450_10828539conv2d_450_10828541*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_450_layer_call_and_return_conditional_losses_108277252$
"conv2d_450/StatefulPartitionedCall?
/batch_normalization_357/StatefulPartitionedCallStatefulPartitionedCall+conv2d_450/StatefulPartitionedCall:output:0 batch_normalization_357_10828544 batch_normalization_357_10828546 batch_normalization_357_10828548 batch_normalization_357_10828550*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_1082774821
/batch_normalization_357/StatefulPartitionedCall?
"conv2d_451/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_357/StatefulPartitionedCall:output:0conv2d_451_10828553conv2d_451_10828555*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_451_layer_call_and_return_conditional_losses_108277692$
"conv2d_451/StatefulPartitionedCall?
/batch_normalization_358/StatefulPartitionedCallStatefulPartitionedCall+conv2d_451/StatefulPartitionedCall:output:0 batch_normalization_358_10828558 batch_normalization_358_10828560 batch_normalization_358_10828562 batch_normalization_358_10828564*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_1082779221
/batch_normalization_358/StatefulPartitionedCall?
 max_pooling2d_79/PartitionedCallPartitionedCall8batch_normalization_358/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_108278062"
 max_pooling2d_79/PartitionedCall?
flatten_34/PartitionedCallPartitionedCall)max_pooling2d_79/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_34_layer_call_and_return_conditional_losses_108278142
flatten_34/PartitionedCall?
 dense_72/StatefulPartitionedCallStatefulPartitionedCall#flatten_34/PartitionedCall:output:0dense_72_10828569dense_72_10828571*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_72_layer_call_and_return_conditional_losses_108278272"
 dense_72/StatefulPartitionedCall?
IdentityIdentity)dense_72/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_354/StatefulPartitionedCall0^batch_normalization_355/StatefulPartitionedCall0^batch_normalization_356/StatefulPartitionedCall0^batch_normalization_357/StatefulPartitionedCall0^batch_normalization_358/StatefulPartitionedCall#^conv2d_447/StatefulPartitionedCall#^conv2d_448/StatefulPartitionedCall#^conv2d_449/StatefulPartitionedCall#^conv2d_450/StatefulPartitionedCall#^conv2d_451/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_354/StatefulPartitionedCall/batch_normalization_354/StatefulPartitionedCall2b
/batch_normalization_355/StatefulPartitionedCall/batch_normalization_355/StatefulPartitionedCall2b
/batch_normalization_356/StatefulPartitionedCall/batch_normalization_356/StatefulPartitionedCall2b
/batch_normalization_357/StatefulPartitionedCall/batch_normalization_357/StatefulPartitionedCall2b
/batch_normalization_358/StatefulPartitionedCall/batch_normalization_358/StatefulPartitionedCall2H
"conv2d_447/StatefulPartitionedCall"conv2d_447/StatefulPartitionedCall2H
"conv2d_448/StatefulPartitionedCall"conv2d_448/StatefulPartitionedCall2H
"conv2d_449/StatefulPartitionedCall"conv2d_449/StatefulPartitionedCall2H
"conv2d_450/StatefulPartitionedCall"conv2d_450/StatefulPartitionedCall2H
"conv2d_451/StatefulPartitionedCall"conv2d_451/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_447_input
?
?
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10827229

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
?
?
+__inference_dense_72_layer_call_fn_10829924

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
GPU2*0J 8? *O
fJRH
F__inference_dense_72_layer_call_and_return_conditional_losses_108278272
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
??
?
$__inference__traced_restore_10830197
file_prefix<
"assignvariableop_conv2d_447_kernel:`0
"assignvariableop_1_conv2d_447_bias:`>
0assignvariableop_2_batch_normalization_354_gamma:`=
/assignvariableop_3_batch_normalization_354_beta:`D
6assignvariableop_4_batch_normalization_354_moving_mean:`H
:assignvariableop_5_batch_normalization_354_moving_variance:`?
$assignvariableop_6_conv2d_448_kernel:`?1
"assignvariableop_7_conv2d_448_bias:	??
0assignvariableop_8_batch_normalization_355_gamma:	?>
/assignvariableop_9_batch_normalization_355_beta:	?F
7assignvariableop_10_batch_normalization_355_moving_mean:	?J
;assignvariableop_11_batch_normalization_355_moving_variance:	?A
%assignvariableop_12_conv2d_449_kernel:??2
#assignvariableop_13_conv2d_449_bias:	?@
1assignvariableop_14_batch_normalization_356_gamma:	??
0assignvariableop_15_batch_normalization_356_beta:	?F
7assignvariableop_16_batch_normalization_356_moving_mean:	?J
;assignvariableop_17_batch_normalization_356_moving_variance:	?A
%assignvariableop_18_conv2d_450_kernel:??2
#assignvariableop_19_conv2d_450_bias:	?@
1assignvariableop_20_batch_normalization_357_gamma:	??
0assignvariableop_21_batch_normalization_357_beta:	?F
7assignvariableop_22_batch_normalization_357_moving_mean:	?J
;assignvariableop_23_batch_normalization_357_moving_variance:	?A
%assignvariableop_24_conv2d_451_kernel:??2
#assignvariableop_25_conv2d_451_bias:	?@
1assignvariableop_26_batch_normalization_358_gamma:	??
0assignvariableop_27_batch_normalization_358_beta:	?F
7assignvariableop_28_batch_normalization_358_moving_mean:	?J
;assignvariableop_29_batch_normalization_358_moving_variance:	?6
#assignvariableop_30_dense_72_kernel:	?(/
!assignvariableop_31_dense_72_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_447_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_447_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_354_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_354_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_354_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_354_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_448_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_448_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_355_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_355_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_355_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_355_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_449_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_449_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_356_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_356_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_356_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_356_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_450_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_450_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_357_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_357_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_357_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_357_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_451_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_451_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_358_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_358_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_358_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_358_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_72_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_72_biasIdentity_31:output:0"/device:CPU:0*
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
?
?
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10827437

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
?Y
?
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828658
conv2d_447_input-
conv2d_447_10828578:`!
conv2d_447_10828580:`.
 batch_normalization_354_10828583:`.
 batch_normalization_354_10828585:`.
 batch_normalization_354_10828587:`.
 batch_normalization_354_10828589:`.
conv2d_448_10828593:`?"
conv2d_448_10828595:	?/
 batch_normalization_355_10828598:	?/
 batch_normalization_355_10828600:	?/
 batch_normalization_355_10828602:	?/
 batch_normalization_355_10828604:	?/
conv2d_449_10828608:??"
conv2d_449_10828610:	?/
 batch_normalization_356_10828613:	?/
 batch_normalization_356_10828615:	?/
 batch_normalization_356_10828617:	?/
 batch_normalization_356_10828619:	?/
conv2d_450_10828622:??"
conv2d_450_10828624:	?/
 batch_normalization_357_10828627:	?/
 batch_normalization_357_10828629:	?/
 batch_normalization_357_10828631:	?/
 batch_normalization_357_10828633:	?/
conv2d_451_10828636:??"
conv2d_451_10828638:	?/
 batch_normalization_358_10828641:	?/
 batch_normalization_358_10828643:	?/
 batch_normalization_358_10828645:	?/
 batch_normalization_358_10828647:	?$
dense_72_10828652:	?(
dense_72_10828654:
identity??/batch_normalization_354/StatefulPartitionedCall?/batch_normalization_355/StatefulPartitionedCall?/batch_normalization_356/StatefulPartitionedCall?/batch_normalization_357/StatefulPartitionedCall?/batch_normalization_358/StatefulPartitionedCall?"conv2d_447/StatefulPartitionedCall?"conv2d_448/StatefulPartitionedCall?"conv2d_449/StatefulPartitionedCall?"conv2d_450/StatefulPartitionedCall?"conv2d_451/StatefulPartitionedCall? dense_72/StatefulPartitionedCall?
"conv2d_447/StatefulPartitionedCallStatefulPartitionedCallconv2d_447_inputconv2d_447_10828578conv2d_447_10828580*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_447_layer_call_and_return_conditional_losses_108275812$
"conv2d_447/StatefulPartitionedCall?
/batch_normalization_354/StatefulPartitionedCallStatefulPartitionedCall+conv2d_447/StatefulPartitionedCall:output:0 batch_normalization_354_10828583 batch_normalization_354_10828585 batch_normalization_354_10828587 batch_normalization_354_10828589*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_1082818121
/batch_normalization_354/StatefulPartitionedCall?
 max_pooling2d_77/PartitionedCallPartitionedCall8batch_normalization_354/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_108276182"
 max_pooling2d_77/PartitionedCall?
"conv2d_448/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_77/PartitionedCall:output:0conv2d_448_10828593conv2d_448_10828595*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_448_layer_call_and_return_conditional_losses_108276312$
"conv2d_448/StatefulPartitionedCall?
/batch_normalization_355/StatefulPartitionedCallStatefulPartitionedCall+conv2d_448/StatefulPartitionedCall:output:0 batch_normalization_355_10828598 batch_normalization_355_10828600 batch_normalization_355_10828602 batch_normalization_355_10828604*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_1082812221
/batch_normalization_355/StatefulPartitionedCall?
 max_pooling2d_78/PartitionedCallPartitionedCall8batch_normalization_355/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_108276682"
 max_pooling2d_78/PartitionedCall?
"conv2d_449/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_78/PartitionedCall:output:0conv2d_449_10828608conv2d_449_10828610*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_449_layer_call_and_return_conditional_losses_108276812$
"conv2d_449/StatefulPartitionedCall?
/batch_normalization_356/StatefulPartitionedCallStatefulPartitionedCall+conv2d_449/StatefulPartitionedCall:output:0 batch_normalization_356_10828613 batch_normalization_356_10828615 batch_normalization_356_10828617 batch_normalization_356_10828619*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_1082806321
/batch_normalization_356/StatefulPartitionedCall?
"conv2d_450/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_356/StatefulPartitionedCall:output:0conv2d_450_10828622conv2d_450_10828624*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_450_layer_call_and_return_conditional_losses_108277252$
"conv2d_450/StatefulPartitionedCall?
/batch_normalization_357/StatefulPartitionedCallStatefulPartitionedCall+conv2d_450/StatefulPartitionedCall:output:0 batch_normalization_357_10828627 batch_normalization_357_10828629 batch_normalization_357_10828631 batch_normalization_357_10828633*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_1082800921
/batch_normalization_357/StatefulPartitionedCall?
"conv2d_451/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_357/StatefulPartitionedCall:output:0conv2d_451_10828636conv2d_451_10828638*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_451_layer_call_and_return_conditional_losses_108277692$
"conv2d_451/StatefulPartitionedCall?
/batch_normalization_358/StatefulPartitionedCallStatefulPartitionedCall+conv2d_451/StatefulPartitionedCall:output:0 batch_normalization_358_10828641 batch_normalization_358_10828643 batch_normalization_358_10828645 batch_normalization_358_10828647*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_1082795521
/batch_normalization_358/StatefulPartitionedCall?
 max_pooling2d_79/PartitionedCallPartitionedCall8batch_normalization_358/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_108278062"
 max_pooling2d_79/PartitionedCall?
flatten_34/PartitionedCallPartitionedCall)max_pooling2d_79/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_34_layer_call_and_return_conditional_losses_108278142
flatten_34/PartitionedCall?
 dense_72/StatefulPartitionedCallStatefulPartitionedCall#flatten_34/PartitionedCall:output:0dense_72_10828652dense_72_10828654*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_72_layer_call_and_return_conditional_losses_108278272"
 dense_72/StatefulPartitionedCall?
IdentityIdentity)dense_72/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_354/StatefulPartitionedCall0^batch_normalization_355/StatefulPartitionedCall0^batch_normalization_356/StatefulPartitionedCall0^batch_normalization_357/StatefulPartitionedCall0^batch_normalization_358/StatefulPartitionedCall#^conv2d_447/StatefulPartitionedCall#^conv2d_448/StatefulPartitionedCall#^conv2d_449/StatefulPartitionedCall#^conv2d_450/StatefulPartitionedCall#^conv2d_451/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_354/StatefulPartitionedCall/batch_normalization_354/StatefulPartitionedCall2b
/batch_normalization_355/StatefulPartitionedCall/batch_normalization_355/StatefulPartitionedCall2b
/batch_normalization_356/StatefulPartitionedCall/batch_normalization_356/StatefulPartitionedCall2b
/batch_normalization_357/StatefulPartitionedCall/batch_normalization_357/StatefulPartitionedCall2b
/batch_normalization_358/StatefulPartitionedCall/batch_normalization_358/StatefulPartitionedCall2H
"conv2d_447/StatefulPartitionedCall"conv2d_447/StatefulPartitionedCall2H
"conv2d_448/StatefulPartitionedCall"conv2d_448/StatefulPartitionedCall2H
"conv2d_449/StatefulPartitionedCall"conv2d_449/StatefulPartitionedCall2H
"conv2d_450/StatefulPartitionedCall"conv2d_450/StatefulPartitionedCall2H
"conv2d_451/StatefulPartitionedCall"conv2d_451/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_447_input
?
j
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_10827150

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
O
3__inference_max_pooling2d_78_layer_call_fn_10829441

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_108276682
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
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10827654

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
?
?
&__inference_signature_wrapper_10828733
conv2d_447_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_447_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *,
f'R%
#__inference__wrapped_model_108268672
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
_user_specified_nameconv2d_447_input
?
?
-__inference_conv2d_451_layer_call_fn_10829749

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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_451_layer_call_and_return_conditional_losses_108277692
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
:__inference_batch_normalization_355_layer_call_fn_10829382

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_108270372
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
O
3__inference_max_pooling2d_79_layer_call_fn_10829888

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_108275502
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
j
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_10827668

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
.__inference_alex_net_13_layer_call_fn_10829044

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
GPU2*0J 8? *R
fMRK
I__inference_alex_net_13_layer_call_and_return_conditional_losses_108278342
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
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10827604

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
?Y
?
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828356

inputs-
conv2d_447_10828276:`!
conv2d_447_10828278:`.
 batch_normalization_354_10828281:`.
 batch_normalization_354_10828283:`.
 batch_normalization_354_10828285:`.
 batch_normalization_354_10828287:`.
conv2d_448_10828291:`?"
conv2d_448_10828293:	?/
 batch_normalization_355_10828296:	?/
 batch_normalization_355_10828298:	?/
 batch_normalization_355_10828300:	?/
 batch_normalization_355_10828302:	?/
conv2d_449_10828306:??"
conv2d_449_10828308:	?/
 batch_normalization_356_10828311:	?/
 batch_normalization_356_10828313:	?/
 batch_normalization_356_10828315:	?/
 batch_normalization_356_10828317:	?/
conv2d_450_10828320:??"
conv2d_450_10828322:	?/
 batch_normalization_357_10828325:	?/
 batch_normalization_357_10828327:	?/
 batch_normalization_357_10828329:	?/
 batch_normalization_357_10828331:	?/
conv2d_451_10828334:??"
conv2d_451_10828336:	?/
 batch_normalization_358_10828339:	?/
 batch_normalization_358_10828341:	?/
 batch_normalization_358_10828343:	?/
 batch_normalization_358_10828345:	?$
dense_72_10828350:	?(
dense_72_10828352:
identity??/batch_normalization_354/StatefulPartitionedCall?/batch_normalization_355/StatefulPartitionedCall?/batch_normalization_356/StatefulPartitionedCall?/batch_normalization_357/StatefulPartitionedCall?/batch_normalization_358/StatefulPartitionedCall?"conv2d_447/StatefulPartitionedCall?"conv2d_448/StatefulPartitionedCall?"conv2d_449/StatefulPartitionedCall?"conv2d_450/StatefulPartitionedCall?"conv2d_451/StatefulPartitionedCall? dense_72/StatefulPartitionedCall?
"conv2d_447/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_447_10828276conv2d_447_10828278*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_447_layer_call_and_return_conditional_losses_108275812$
"conv2d_447/StatefulPartitionedCall?
/batch_normalization_354/StatefulPartitionedCallStatefulPartitionedCall+conv2d_447/StatefulPartitionedCall:output:0 batch_normalization_354_10828281 batch_normalization_354_10828283 batch_normalization_354_10828285 batch_normalization_354_10828287*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_1082818121
/batch_normalization_354/StatefulPartitionedCall?
 max_pooling2d_77/PartitionedCallPartitionedCall8batch_normalization_354/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_108276182"
 max_pooling2d_77/PartitionedCall?
"conv2d_448/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_77/PartitionedCall:output:0conv2d_448_10828291conv2d_448_10828293*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_448_layer_call_and_return_conditional_losses_108276312$
"conv2d_448/StatefulPartitionedCall?
/batch_normalization_355/StatefulPartitionedCallStatefulPartitionedCall+conv2d_448/StatefulPartitionedCall:output:0 batch_normalization_355_10828296 batch_normalization_355_10828298 batch_normalization_355_10828300 batch_normalization_355_10828302*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_1082812221
/batch_normalization_355/StatefulPartitionedCall?
 max_pooling2d_78/PartitionedCallPartitionedCall8batch_normalization_355/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_108276682"
 max_pooling2d_78/PartitionedCall?
"conv2d_449/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_78/PartitionedCall:output:0conv2d_449_10828306conv2d_449_10828308*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_449_layer_call_and_return_conditional_losses_108276812$
"conv2d_449/StatefulPartitionedCall?
/batch_normalization_356/StatefulPartitionedCallStatefulPartitionedCall+conv2d_449/StatefulPartitionedCall:output:0 batch_normalization_356_10828311 batch_normalization_356_10828313 batch_normalization_356_10828315 batch_normalization_356_10828317*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_1082806321
/batch_normalization_356/StatefulPartitionedCall?
"conv2d_450/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_356/StatefulPartitionedCall:output:0conv2d_450_10828320conv2d_450_10828322*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_450_layer_call_and_return_conditional_losses_108277252$
"conv2d_450/StatefulPartitionedCall?
/batch_normalization_357/StatefulPartitionedCallStatefulPartitionedCall+conv2d_450/StatefulPartitionedCall:output:0 batch_normalization_357_10828325 batch_normalization_357_10828327 batch_normalization_357_10828329 batch_normalization_357_10828331*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_1082800921
/batch_normalization_357/StatefulPartitionedCall?
"conv2d_451/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_357/StatefulPartitionedCall:output:0conv2d_451_10828334conv2d_451_10828336*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_451_layer_call_and_return_conditional_losses_108277692$
"conv2d_451/StatefulPartitionedCall?
/batch_normalization_358/StatefulPartitionedCallStatefulPartitionedCall+conv2d_451/StatefulPartitionedCall:output:0 batch_normalization_358_10828339 batch_normalization_358_10828341 batch_normalization_358_10828343 batch_normalization_358_10828345*
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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_1082795521
/batch_normalization_358/StatefulPartitionedCall?
 max_pooling2d_79/PartitionedCallPartitionedCall8batch_normalization_358/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_108278062"
 max_pooling2d_79/PartitionedCall?
flatten_34/PartitionedCallPartitionedCall)max_pooling2d_79/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_34_layer_call_and_return_conditional_losses_108278142
flatten_34/PartitionedCall?
 dense_72/StatefulPartitionedCallStatefulPartitionedCall#flatten_34/PartitionedCall:output:0dense_72_10828350dense_72_10828352*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_72_layer_call_and_return_conditional_losses_108278272"
 dense_72/StatefulPartitionedCall?
IdentityIdentity)dense_72/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_354/StatefulPartitionedCall0^batch_normalization_355/StatefulPartitionedCall0^batch_normalization_356/StatefulPartitionedCall0^batch_normalization_357/StatefulPartitionedCall0^batch_normalization_358/StatefulPartitionedCall#^conv2d_447/StatefulPartitionedCall#^conv2d_448/StatefulPartitionedCall#^conv2d_449/StatefulPartitionedCall#^conv2d_450/StatefulPartitionedCall#^conv2d_451/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_354/StatefulPartitionedCall/batch_normalization_354/StatefulPartitionedCall2b
/batch_normalization_355/StatefulPartitionedCall/batch_normalization_355/StatefulPartitionedCall2b
/batch_normalization_356/StatefulPartitionedCall/batch_normalization_356/StatefulPartitionedCall2b
/batch_normalization_357/StatefulPartitionedCall/batch_normalization_357/StatefulPartitionedCall2b
/batch_normalization_358/StatefulPartitionedCall/batch_normalization_358/StatefulPartitionedCall2H
"conv2d_447/StatefulPartitionedCall"conv2d_447/StatefulPartitionedCall2H
"conv2d_448/StatefulPartitionedCall"conv2d_448/StatefulPartitionedCall2H
"conv2d_449/StatefulPartitionedCall"conv2d_449/StatefulPartitionedCall2H
"conv2d_450/StatefulPartitionedCall"conv2d_450/StatefulPartitionedCall2H
"conv2d_451/StatefulPartitionedCall"conv2d_451/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829187

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
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829151

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
?
?
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10828009

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
?
j
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_10829431

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
?
?
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829785

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
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829333

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
??
?#
#__inference__wrapped_model_10826867
conv2d_447_inputO
5alex_net_13_conv2d_447_conv2d_readvariableop_resource:`D
6alex_net_13_conv2d_447_biasadd_readvariableop_resource:`I
;alex_net_13_batch_normalization_354_readvariableop_resource:`K
=alex_net_13_batch_normalization_354_readvariableop_1_resource:`Z
Lalex_net_13_batch_normalization_354_fusedbatchnormv3_readvariableop_resource:`\
Nalex_net_13_batch_normalization_354_fusedbatchnormv3_readvariableop_1_resource:`P
5alex_net_13_conv2d_448_conv2d_readvariableop_resource:`?E
6alex_net_13_conv2d_448_biasadd_readvariableop_resource:	?J
;alex_net_13_batch_normalization_355_readvariableop_resource:	?L
=alex_net_13_batch_normalization_355_readvariableop_1_resource:	?[
Lalex_net_13_batch_normalization_355_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_13_batch_normalization_355_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_13_conv2d_449_conv2d_readvariableop_resource:??E
6alex_net_13_conv2d_449_biasadd_readvariableop_resource:	?J
;alex_net_13_batch_normalization_356_readvariableop_resource:	?L
=alex_net_13_batch_normalization_356_readvariableop_1_resource:	?[
Lalex_net_13_batch_normalization_356_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_13_batch_normalization_356_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_13_conv2d_450_conv2d_readvariableop_resource:??E
6alex_net_13_conv2d_450_biasadd_readvariableop_resource:	?J
;alex_net_13_batch_normalization_357_readvariableop_resource:	?L
=alex_net_13_batch_normalization_357_readvariableop_1_resource:	?[
Lalex_net_13_batch_normalization_357_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_13_batch_normalization_357_fusedbatchnormv3_readvariableop_1_resource:	?Q
5alex_net_13_conv2d_451_conv2d_readvariableop_resource:??E
6alex_net_13_conv2d_451_biasadd_readvariableop_resource:	?J
;alex_net_13_batch_normalization_358_readvariableop_resource:	?L
=alex_net_13_batch_normalization_358_readvariableop_1_resource:	?[
Lalex_net_13_batch_normalization_358_fusedbatchnormv3_readvariableop_resource:	?]
Nalex_net_13_batch_normalization_358_fusedbatchnormv3_readvariableop_1_resource:	?F
3alex_net_13_dense_72_matmul_readvariableop_resource:	?(B
4alex_net_13_dense_72_biasadd_readvariableop_resource:
identity??Calex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp?Ealex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1?2alex_net_13/batch_normalization_354/ReadVariableOp?4alex_net_13/batch_normalization_354/ReadVariableOp_1?Calex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp?Ealex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1?2alex_net_13/batch_normalization_355/ReadVariableOp?4alex_net_13/batch_normalization_355/ReadVariableOp_1?Calex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp?Ealex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1?2alex_net_13/batch_normalization_356/ReadVariableOp?4alex_net_13/batch_normalization_356/ReadVariableOp_1?Calex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp?Ealex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1?2alex_net_13/batch_normalization_357/ReadVariableOp?4alex_net_13/batch_normalization_357/ReadVariableOp_1?Calex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp?Ealex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1?2alex_net_13/batch_normalization_358/ReadVariableOp?4alex_net_13/batch_normalization_358/ReadVariableOp_1?-alex_net_13/conv2d_447/BiasAdd/ReadVariableOp?,alex_net_13/conv2d_447/Conv2D/ReadVariableOp?-alex_net_13/conv2d_448/BiasAdd/ReadVariableOp?,alex_net_13/conv2d_448/Conv2D/ReadVariableOp?-alex_net_13/conv2d_449/BiasAdd/ReadVariableOp?,alex_net_13/conv2d_449/Conv2D/ReadVariableOp?-alex_net_13/conv2d_450/BiasAdd/ReadVariableOp?,alex_net_13/conv2d_450/Conv2D/ReadVariableOp?-alex_net_13/conv2d_451/BiasAdd/ReadVariableOp?,alex_net_13/conv2d_451/Conv2D/ReadVariableOp?+alex_net_13/dense_72/BiasAdd/ReadVariableOp?*alex_net_13/dense_72/MatMul/ReadVariableOp?
,alex_net_13/conv2d_447/Conv2D/ReadVariableOpReadVariableOp5alex_net_13_conv2d_447_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02.
,alex_net_13/conv2d_447/Conv2D/ReadVariableOp?
alex_net_13/conv2d_447/Conv2DConv2Dconv2d_447_input4alex_net_13/conv2d_447/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_13/conv2d_447/Conv2D?
-alex_net_13/conv2d_447/BiasAdd/ReadVariableOpReadVariableOp6alex_net_13_conv2d_447_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02/
-alex_net_13/conv2d_447/BiasAdd/ReadVariableOp?
alex_net_13/conv2d_447/BiasAddBiasAdd&alex_net_13/conv2d_447/Conv2D:output:05alex_net_13/conv2d_447/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2 
alex_net_13/conv2d_447/BiasAdd?
alex_net_13/conv2d_447/ReluRelu'alex_net_13/conv2d_447/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_13/conv2d_447/Relu?
2alex_net_13/batch_normalization_354/ReadVariableOpReadVariableOp;alex_net_13_batch_normalization_354_readvariableop_resource*
_output_shapes
:`*
dtype024
2alex_net_13/batch_normalization_354/ReadVariableOp?
4alex_net_13/batch_normalization_354/ReadVariableOp_1ReadVariableOp=alex_net_13_batch_normalization_354_readvariableop_1_resource*
_output_shapes
:`*
dtype026
4alex_net_13/batch_normalization_354/ReadVariableOp_1?
Calex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_13_batch_normalization_354_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02E
Calex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp?
Ealex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_13_batch_normalization_354_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02G
Ealex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_13/batch_normalization_354/FusedBatchNormV3FusedBatchNormV3)alex_net_13/conv2d_447/Relu:activations:0:alex_net_13/batch_normalization_354/ReadVariableOp:value:0<alex_net_13/batch_normalization_354/ReadVariableOp_1:value:0Kalex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 26
4alex_net_13/batch_normalization_354/FusedBatchNormV3?
$alex_net_13/max_pooling2d_77/MaxPoolMaxPool8alex_net_13/batch_normalization_354/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2&
$alex_net_13/max_pooling2d_77/MaxPool?
,alex_net_13/conv2d_448/Conv2D/ReadVariableOpReadVariableOp5alex_net_13_conv2d_448_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02.
,alex_net_13/conv2d_448/Conv2D/ReadVariableOp?
alex_net_13/conv2d_448/Conv2DConv2D-alex_net_13/max_pooling2d_77/MaxPool:output:04alex_net_13/conv2d_448/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_13/conv2d_448/Conv2D?
-alex_net_13/conv2d_448/BiasAdd/ReadVariableOpReadVariableOp6alex_net_13_conv2d_448_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_13/conv2d_448/BiasAdd/ReadVariableOp?
alex_net_13/conv2d_448/BiasAddBiasAdd&alex_net_13/conv2d_448/Conv2D:output:05alex_net_13/conv2d_448/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2 
alex_net_13/conv2d_448/BiasAdd?
alex_net_13/conv2d_448/ReluRelu'alex_net_13/conv2d_448/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_13/conv2d_448/Relu?
2alex_net_13/batch_normalization_355/ReadVariableOpReadVariableOp;alex_net_13_batch_normalization_355_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_13/batch_normalization_355/ReadVariableOp?
4alex_net_13/batch_normalization_355/ReadVariableOp_1ReadVariableOp=alex_net_13_batch_normalization_355_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_13/batch_normalization_355/ReadVariableOp_1?
Calex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_13_batch_normalization_355_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp?
Ealex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_13_batch_normalization_355_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_13/batch_normalization_355/FusedBatchNormV3FusedBatchNormV3)alex_net_13/conv2d_448/Relu:activations:0:alex_net_13/batch_normalization_355/ReadVariableOp:value:0<alex_net_13/batch_normalization_355/ReadVariableOp_1:value:0Kalex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_13/batch_normalization_355/FusedBatchNormV3?
$alex_net_13/max_pooling2d_78/MaxPoolMaxPool8alex_net_13/batch_normalization_355/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2&
$alex_net_13/max_pooling2d_78/MaxPool?
,alex_net_13/conv2d_449/Conv2D/ReadVariableOpReadVariableOp5alex_net_13_conv2d_449_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_13/conv2d_449/Conv2D/ReadVariableOp?
alex_net_13/conv2d_449/Conv2DConv2D-alex_net_13/max_pooling2d_78/MaxPool:output:04alex_net_13/conv2d_449/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_13/conv2d_449/Conv2D?
-alex_net_13/conv2d_449/BiasAdd/ReadVariableOpReadVariableOp6alex_net_13_conv2d_449_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_13/conv2d_449/BiasAdd/ReadVariableOp?
alex_net_13/conv2d_449/BiasAddBiasAdd&alex_net_13/conv2d_449/Conv2D:output:05alex_net_13/conv2d_449/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_13/conv2d_449/BiasAdd?
alex_net_13/conv2d_449/ReluRelu'alex_net_13/conv2d_449/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_13/conv2d_449/Relu?
2alex_net_13/batch_normalization_356/ReadVariableOpReadVariableOp;alex_net_13_batch_normalization_356_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_13/batch_normalization_356/ReadVariableOp?
4alex_net_13/batch_normalization_356/ReadVariableOp_1ReadVariableOp=alex_net_13_batch_normalization_356_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_13/batch_normalization_356/ReadVariableOp_1?
Calex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_13_batch_normalization_356_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp?
Ealex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_13_batch_normalization_356_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_13/batch_normalization_356/FusedBatchNormV3FusedBatchNormV3)alex_net_13/conv2d_449/Relu:activations:0:alex_net_13/batch_normalization_356/ReadVariableOp:value:0<alex_net_13/batch_normalization_356/ReadVariableOp_1:value:0Kalex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_13/batch_normalization_356/FusedBatchNormV3?
,alex_net_13/conv2d_450/Conv2D/ReadVariableOpReadVariableOp5alex_net_13_conv2d_450_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_13/conv2d_450/Conv2D/ReadVariableOp?
alex_net_13/conv2d_450/Conv2DConv2D8alex_net_13/batch_normalization_356/FusedBatchNormV3:y:04alex_net_13/conv2d_450/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_13/conv2d_450/Conv2D?
-alex_net_13/conv2d_450/BiasAdd/ReadVariableOpReadVariableOp6alex_net_13_conv2d_450_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_13/conv2d_450/BiasAdd/ReadVariableOp?
alex_net_13/conv2d_450/BiasAddBiasAdd&alex_net_13/conv2d_450/Conv2D:output:05alex_net_13/conv2d_450/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_13/conv2d_450/BiasAdd?
alex_net_13/conv2d_450/ReluRelu'alex_net_13/conv2d_450/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_13/conv2d_450/Relu?
2alex_net_13/batch_normalization_357/ReadVariableOpReadVariableOp;alex_net_13_batch_normalization_357_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_13/batch_normalization_357/ReadVariableOp?
4alex_net_13/batch_normalization_357/ReadVariableOp_1ReadVariableOp=alex_net_13_batch_normalization_357_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_13/batch_normalization_357/ReadVariableOp_1?
Calex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_13_batch_normalization_357_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp?
Ealex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_13_batch_normalization_357_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_13/batch_normalization_357/FusedBatchNormV3FusedBatchNormV3)alex_net_13/conv2d_450/Relu:activations:0:alex_net_13/batch_normalization_357/ReadVariableOp:value:0<alex_net_13/batch_normalization_357/ReadVariableOp_1:value:0Kalex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_13/batch_normalization_357/FusedBatchNormV3?
,alex_net_13/conv2d_451/Conv2D/ReadVariableOpReadVariableOp5alex_net_13_conv2d_451_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,alex_net_13/conv2d_451/Conv2D/ReadVariableOp?
alex_net_13/conv2d_451/Conv2DConv2D8alex_net_13/batch_normalization_357/FusedBatchNormV3:y:04alex_net_13/conv2d_451/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_13/conv2d_451/Conv2D?
-alex_net_13/conv2d_451/BiasAdd/ReadVariableOpReadVariableOp6alex_net_13_conv2d_451_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-alex_net_13/conv2d_451/BiasAdd/ReadVariableOp?
alex_net_13/conv2d_451/BiasAddBiasAdd&alex_net_13/conv2d_451/Conv2D:output:05alex_net_13/conv2d_451/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
alex_net_13/conv2d_451/BiasAdd?
alex_net_13/conv2d_451/ReluRelu'alex_net_13/conv2d_451/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_13/conv2d_451/Relu?
2alex_net_13/batch_normalization_358/ReadVariableOpReadVariableOp;alex_net_13_batch_normalization_358_readvariableop_resource*
_output_shapes	
:?*
dtype024
2alex_net_13/batch_normalization_358/ReadVariableOp?
4alex_net_13/batch_normalization_358/ReadVariableOp_1ReadVariableOp=alex_net_13_batch_normalization_358_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4alex_net_13/batch_normalization_358/ReadVariableOp_1?
Calex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOpReadVariableOpLalex_net_13_batch_normalization_358_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Calex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp?
Ealex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNalex_net_13_batch_normalization_358_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ealex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1?
4alex_net_13/batch_normalization_358/FusedBatchNormV3FusedBatchNormV3)alex_net_13/conv2d_451/Relu:activations:0:alex_net_13/batch_normalization_358/ReadVariableOp:value:0<alex_net_13/batch_normalization_358/ReadVariableOp_1:value:0Kalex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp:value:0Malex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4alex_net_13/batch_normalization_358/FusedBatchNormV3?
$alex_net_13/max_pooling2d_79/MaxPoolMaxPool8alex_net_13/batch_normalization_358/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2&
$alex_net_13/max_pooling2d_79/MaxPool?
alex_net_13/flatten_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_13/flatten_34/Const?
alex_net_13/flatten_34/ReshapeReshape-alex_net_13/max_pooling2d_79/MaxPool:output:0%alex_net_13/flatten_34/Const:output:0*
T0*(
_output_shapes
:??????????(2 
alex_net_13/flatten_34/Reshape?
*alex_net_13/dense_72/MatMul/ReadVariableOpReadVariableOp3alex_net_13_dense_72_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02,
*alex_net_13/dense_72/MatMul/ReadVariableOp?
alex_net_13/dense_72/MatMulMatMul'alex_net_13/flatten_34/Reshape:output:02alex_net_13/dense_72/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_13/dense_72/MatMul?
+alex_net_13/dense_72/BiasAdd/ReadVariableOpReadVariableOp4alex_net_13_dense_72_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+alex_net_13/dense_72/BiasAdd/ReadVariableOp?
alex_net_13/dense_72/BiasAddBiasAdd%alex_net_13/dense_72/MatMul:product:03alex_net_13/dense_72/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_13/dense_72/BiasAdd?
alex_net_13/dense_72/SigmoidSigmoid%alex_net_13/dense_72/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_13/dense_72/Sigmoid{
IdentityIdentity alex_net_13/dense_72/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpD^alex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOpF^alex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp_13^alex_net_13/batch_normalization_354/ReadVariableOp5^alex_net_13/batch_normalization_354/ReadVariableOp_1D^alex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOpF^alex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp_13^alex_net_13/batch_normalization_355/ReadVariableOp5^alex_net_13/batch_normalization_355/ReadVariableOp_1D^alex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOpF^alex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp_13^alex_net_13/batch_normalization_356/ReadVariableOp5^alex_net_13/batch_normalization_356/ReadVariableOp_1D^alex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOpF^alex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp_13^alex_net_13/batch_normalization_357/ReadVariableOp5^alex_net_13/batch_normalization_357/ReadVariableOp_1D^alex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOpF^alex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp_13^alex_net_13/batch_normalization_358/ReadVariableOp5^alex_net_13/batch_normalization_358/ReadVariableOp_1.^alex_net_13/conv2d_447/BiasAdd/ReadVariableOp-^alex_net_13/conv2d_447/Conv2D/ReadVariableOp.^alex_net_13/conv2d_448/BiasAdd/ReadVariableOp-^alex_net_13/conv2d_448/Conv2D/ReadVariableOp.^alex_net_13/conv2d_449/BiasAdd/ReadVariableOp-^alex_net_13/conv2d_449/Conv2D/ReadVariableOp.^alex_net_13/conv2d_450/BiasAdd/ReadVariableOp-^alex_net_13/conv2d_450/Conv2D/ReadVariableOp.^alex_net_13/conv2d_451/BiasAdd/ReadVariableOp-^alex_net_13/conv2d_451/Conv2D/ReadVariableOp,^alex_net_13/dense_72/BiasAdd/ReadVariableOp+^alex_net_13/dense_72/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Calex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOpCalex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1Ealex_net_13/batch_normalization_354/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_13/batch_normalization_354/ReadVariableOp2alex_net_13/batch_normalization_354/ReadVariableOp2l
4alex_net_13/batch_normalization_354/ReadVariableOp_14alex_net_13/batch_normalization_354/ReadVariableOp_12?
Calex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOpCalex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1Ealex_net_13/batch_normalization_355/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_13/batch_normalization_355/ReadVariableOp2alex_net_13/batch_normalization_355/ReadVariableOp2l
4alex_net_13/batch_normalization_355/ReadVariableOp_14alex_net_13/batch_normalization_355/ReadVariableOp_12?
Calex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOpCalex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1Ealex_net_13/batch_normalization_356/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_13/batch_normalization_356/ReadVariableOp2alex_net_13/batch_normalization_356/ReadVariableOp2l
4alex_net_13/batch_normalization_356/ReadVariableOp_14alex_net_13/batch_normalization_356/ReadVariableOp_12?
Calex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOpCalex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1Ealex_net_13/batch_normalization_357/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_13/batch_normalization_357/ReadVariableOp2alex_net_13/batch_normalization_357/ReadVariableOp2l
4alex_net_13/batch_normalization_357/ReadVariableOp_14alex_net_13/batch_normalization_357/ReadVariableOp_12?
Calex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOpCalex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp2?
Ealex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1Ealex_net_13/batch_normalization_358/FusedBatchNormV3/ReadVariableOp_12h
2alex_net_13/batch_normalization_358/ReadVariableOp2alex_net_13/batch_normalization_358/ReadVariableOp2l
4alex_net_13/batch_normalization_358/ReadVariableOp_14alex_net_13/batch_normalization_358/ReadVariableOp_12^
-alex_net_13/conv2d_447/BiasAdd/ReadVariableOp-alex_net_13/conv2d_447/BiasAdd/ReadVariableOp2\
,alex_net_13/conv2d_447/Conv2D/ReadVariableOp,alex_net_13/conv2d_447/Conv2D/ReadVariableOp2^
-alex_net_13/conv2d_448/BiasAdd/ReadVariableOp-alex_net_13/conv2d_448/BiasAdd/ReadVariableOp2\
,alex_net_13/conv2d_448/Conv2D/ReadVariableOp,alex_net_13/conv2d_448/Conv2D/ReadVariableOp2^
-alex_net_13/conv2d_449/BiasAdd/ReadVariableOp-alex_net_13/conv2d_449/BiasAdd/ReadVariableOp2\
,alex_net_13/conv2d_449/Conv2D/ReadVariableOp,alex_net_13/conv2d_449/Conv2D/ReadVariableOp2^
-alex_net_13/conv2d_450/BiasAdd/ReadVariableOp-alex_net_13/conv2d_450/BiasAdd/ReadVariableOp2\
,alex_net_13/conv2d_450/Conv2D/ReadVariableOp,alex_net_13/conv2d_450/Conv2D/ReadVariableOp2^
-alex_net_13/conv2d_451/BiasAdd/ReadVariableOp-alex_net_13/conv2d_451/BiasAdd/ReadVariableOp2\
,alex_net_13/conv2d_451/Conv2D/ReadVariableOp,alex_net_13/conv2d_451/Conv2D/ReadVariableOp2Z
+alex_net_13/dense_72/BiasAdd/ReadVariableOp+alex_net_13/dense_72/BiasAdd/ReadVariableOp2X
*alex_net_13/dense_72/MatMul/ReadVariableOp*alex_net_13/dense_72/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_447_input
?	
?
:__inference_batch_normalization_355_layer_call_fn_10829408

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_108276542
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
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10827792

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
?
?
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829677

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
?
j
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_10827806

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
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829623

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
:__inference_batch_normalization_356_layer_call_fn_10829546

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_108271852
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
?
?
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10828063

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
H__inference_conv2d_449_layer_call_and_return_conditional_losses_10829452

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
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10827748

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
?
O
3__inference_max_pooling2d_77_layer_call_fn_10829272

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_108270022
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
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10826933

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
?
H__inference_conv2d_447_layer_call_and_return_conditional_losses_10827581

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
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829169

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
:__inference_batch_normalization_357_layer_call_fn_10829716

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_108277482
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
?
?
-__inference_conv2d_447_layer_call_fn_10829133

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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_447_layer_call_and_return_conditional_losses_108275812
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
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829767

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
:__inference_batch_normalization_355_layer_call_fn_10829395

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_108270812
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
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10828122

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
?
?
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10826889

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
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829351

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
:__inference_batch_normalization_354_layer_call_fn_10829257

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_108281812
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
H__inference_conv2d_449_layer_call_and_return_conditional_losses_10827681

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
H__inference_conv2d_448_layer_call_and_return_conditional_losses_10827631

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
?
?
-__inference_conv2d_449_layer_call_fn_10829461

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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_449_layer_call_and_return_conditional_losses_108276812
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
?
?
H__inference_conv2d_451_layer_call_and_return_conditional_losses_10827769

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
?
?
H__inference_conv2d_448_layer_call_and_return_conditional_losses_10829288

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
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10827311

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
F__inference_dense_72_layer_call_and_return_conditional_losses_10829915

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
?
j
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_10827550

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
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829533

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
:__inference_batch_normalization_356_layer_call_fn_10829572

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
GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_108277042
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
??
?
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828854

inputsC
)conv2d_447_conv2d_readvariableop_resource:`8
*conv2d_447_biasadd_readvariableop_resource:`=
/batch_normalization_354_readvariableop_resource:`?
1batch_normalization_354_readvariableop_1_resource:`N
@batch_normalization_354_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_354_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_448_conv2d_readvariableop_resource:`?9
*conv2d_448_biasadd_readvariableop_resource:	?>
/batch_normalization_355_readvariableop_resource:	?@
1batch_normalization_355_readvariableop_1_resource:	?O
@batch_normalization_355_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_355_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_449_conv2d_readvariableop_resource:??9
*conv2d_449_biasadd_readvariableop_resource:	?>
/batch_normalization_356_readvariableop_resource:	?@
1batch_normalization_356_readvariableop_1_resource:	?O
@batch_normalization_356_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_356_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_450_conv2d_readvariableop_resource:??9
*conv2d_450_biasadd_readvariableop_resource:	?>
/batch_normalization_357_readvariableop_resource:	?@
1batch_normalization_357_readvariableop_1_resource:	?O
@batch_normalization_357_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_357_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_451_conv2d_readvariableop_resource:??9
*conv2d_451_biasadd_readvariableop_resource:	?>
/batch_normalization_358_readvariableop_resource:	?@
1batch_normalization_358_readvariableop_1_resource:	?O
@batch_normalization_358_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_358_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_72_matmul_readvariableop_resource:	?(6
(dense_72_biasadd_readvariableop_resource:
identity??7batch_normalization_354/FusedBatchNormV3/ReadVariableOp?9batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_354/ReadVariableOp?(batch_normalization_354/ReadVariableOp_1?7batch_normalization_355/FusedBatchNormV3/ReadVariableOp?9batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_355/ReadVariableOp?(batch_normalization_355/ReadVariableOp_1?7batch_normalization_356/FusedBatchNormV3/ReadVariableOp?9batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_356/ReadVariableOp?(batch_normalization_356/ReadVariableOp_1?7batch_normalization_357/FusedBatchNormV3/ReadVariableOp?9batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_357/ReadVariableOp?(batch_normalization_357/ReadVariableOp_1?7batch_normalization_358/FusedBatchNormV3/ReadVariableOp?9batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_358/ReadVariableOp?(batch_normalization_358/ReadVariableOp_1?!conv2d_447/BiasAdd/ReadVariableOp? conv2d_447/Conv2D/ReadVariableOp?!conv2d_448/BiasAdd/ReadVariableOp? conv2d_448/Conv2D/ReadVariableOp?!conv2d_449/BiasAdd/ReadVariableOp? conv2d_449/Conv2D/ReadVariableOp?!conv2d_450/BiasAdd/ReadVariableOp? conv2d_450/Conv2D/ReadVariableOp?!conv2d_451/BiasAdd/ReadVariableOp? conv2d_451/Conv2D/ReadVariableOp?dense_72/BiasAdd/ReadVariableOp?dense_72/MatMul/ReadVariableOp?
 conv2d_447/Conv2D/ReadVariableOpReadVariableOp)conv2d_447_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_447/Conv2D/ReadVariableOp?
conv2d_447/Conv2DConv2Dinputs(conv2d_447/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_447/Conv2D?
!conv2d_447/BiasAdd/ReadVariableOpReadVariableOp*conv2d_447_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_447/BiasAdd/ReadVariableOp?
conv2d_447/BiasAddBiasAddconv2d_447/Conv2D:output:0)conv2d_447/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_447/BiasAdd?
conv2d_447/ReluReluconv2d_447/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_447/Relu?
&batch_normalization_354/ReadVariableOpReadVariableOp/batch_normalization_354_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_354/ReadVariableOp?
(batch_normalization_354/ReadVariableOp_1ReadVariableOp1batch_normalization_354_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_354/ReadVariableOp_1?
7batch_normalization_354/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_354_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_354/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_354_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_354/FusedBatchNormV3FusedBatchNormV3conv2d_447/Relu:activations:0.batch_normalization_354/ReadVariableOp:value:00batch_normalization_354/ReadVariableOp_1:value:0?batch_normalization_354/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_354/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_354/FusedBatchNormV3?
max_pooling2d_77/MaxPoolMaxPool,batch_normalization_354/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_77/MaxPool?
 conv2d_448/Conv2D/ReadVariableOpReadVariableOp)conv2d_448_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_448/Conv2D/ReadVariableOp?
conv2d_448/Conv2DConv2D!max_pooling2d_77/MaxPool:output:0(conv2d_448/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_448/Conv2D?
!conv2d_448/BiasAdd/ReadVariableOpReadVariableOp*conv2d_448_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_448/BiasAdd/ReadVariableOp?
conv2d_448/BiasAddBiasAddconv2d_448/Conv2D:output:0)conv2d_448/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_448/BiasAdd?
conv2d_448/ReluReluconv2d_448/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_448/Relu?
&batch_normalization_355/ReadVariableOpReadVariableOp/batch_normalization_355_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_355/ReadVariableOp?
(batch_normalization_355/ReadVariableOp_1ReadVariableOp1batch_normalization_355_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_355/ReadVariableOp_1?
7batch_normalization_355/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_355_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_355/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_355_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_355/FusedBatchNormV3FusedBatchNormV3conv2d_448/Relu:activations:0.batch_normalization_355/ReadVariableOp:value:00batch_normalization_355/ReadVariableOp_1:value:0?batch_normalization_355/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_355/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_355/FusedBatchNormV3?
max_pooling2d_78/MaxPoolMaxPool,batch_normalization_355/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_78/MaxPool?
 conv2d_449/Conv2D/ReadVariableOpReadVariableOp)conv2d_449_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_449/Conv2D/ReadVariableOp?
conv2d_449/Conv2DConv2D!max_pooling2d_78/MaxPool:output:0(conv2d_449/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_449/Conv2D?
!conv2d_449/BiasAdd/ReadVariableOpReadVariableOp*conv2d_449_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_449/BiasAdd/ReadVariableOp?
conv2d_449/BiasAddBiasAddconv2d_449/Conv2D:output:0)conv2d_449/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_449/BiasAdd?
conv2d_449/ReluReluconv2d_449/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_449/Relu?
&batch_normalization_356/ReadVariableOpReadVariableOp/batch_normalization_356_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_356/ReadVariableOp?
(batch_normalization_356/ReadVariableOp_1ReadVariableOp1batch_normalization_356_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_356/ReadVariableOp_1?
7batch_normalization_356/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_356_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_356/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_356_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_356/FusedBatchNormV3FusedBatchNormV3conv2d_449/Relu:activations:0.batch_normalization_356/ReadVariableOp:value:00batch_normalization_356/ReadVariableOp_1:value:0?batch_normalization_356/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_356/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_356/FusedBatchNormV3?
 conv2d_450/Conv2D/ReadVariableOpReadVariableOp)conv2d_450_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_450/Conv2D/ReadVariableOp?
conv2d_450/Conv2DConv2D,batch_normalization_356/FusedBatchNormV3:y:0(conv2d_450/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_450/Conv2D?
!conv2d_450/BiasAdd/ReadVariableOpReadVariableOp*conv2d_450_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_450/BiasAdd/ReadVariableOp?
conv2d_450/BiasAddBiasAddconv2d_450/Conv2D:output:0)conv2d_450/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_450/BiasAdd?
conv2d_450/ReluReluconv2d_450/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_450/Relu?
&batch_normalization_357/ReadVariableOpReadVariableOp/batch_normalization_357_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_357/ReadVariableOp?
(batch_normalization_357/ReadVariableOp_1ReadVariableOp1batch_normalization_357_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_357/ReadVariableOp_1?
7batch_normalization_357/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_357_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_357/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_357_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_357/FusedBatchNormV3FusedBatchNormV3conv2d_450/Relu:activations:0.batch_normalization_357/ReadVariableOp:value:00batch_normalization_357/ReadVariableOp_1:value:0?batch_normalization_357/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_357/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_357/FusedBatchNormV3?
 conv2d_451/Conv2D/ReadVariableOpReadVariableOp)conv2d_451_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_451/Conv2D/ReadVariableOp?
conv2d_451/Conv2DConv2D,batch_normalization_357/FusedBatchNormV3:y:0(conv2d_451/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_451/Conv2D?
!conv2d_451/BiasAdd/ReadVariableOpReadVariableOp*conv2d_451_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_451/BiasAdd/ReadVariableOp?
conv2d_451/BiasAddBiasAddconv2d_451/Conv2D:output:0)conv2d_451/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_451/BiasAdd?
conv2d_451/ReluReluconv2d_451/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_451/Relu?
&batch_normalization_358/ReadVariableOpReadVariableOp/batch_normalization_358_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_358/ReadVariableOp?
(batch_normalization_358/ReadVariableOp_1ReadVariableOp1batch_normalization_358_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_358/ReadVariableOp_1?
7batch_normalization_358/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_358_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_358/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_358_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_358/FusedBatchNormV3FusedBatchNormV3conv2d_451/Relu:activations:0.batch_normalization_358/ReadVariableOp:value:00batch_normalization_358/ReadVariableOp_1:value:0?batch_normalization_358/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_358/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_358/FusedBatchNormV3?
max_pooling2d_79/MaxPoolMaxPool,batch_normalization_358/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_79/MaxPoolu
flatten_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_34/Const?
flatten_34/ReshapeReshape!max_pooling2d_79/MaxPool:output:0flatten_34/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_34/Reshape?
dense_72/MatMul/ReadVariableOpReadVariableOp'dense_72_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_72/MatMul/ReadVariableOp?
dense_72/MatMulMatMulflatten_34/Reshape:output:0&dense_72/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_72/MatMul?
dense_72/BiasAdd/ReadVariableOpReadVariableOp(dense_72_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_72/BiasAdd/ReadVariableOp?
dense_72/BiasAddBiasAdddense_72/MatMul:product:0'dense_72/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_72/BiasAdd|
dense_72/SigmoidSigmoiddense_72/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_72/Sigmoido
IdentityIdentitydense_72/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_354/FusedBatchNormV3/ReadVariableOp:^batch_normalization_354/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_354/ReadVariableOp)^batch_normalization_354/ReadVariableOp_18^batch_normalization_355/FusedBatchNormV3/ReadVariableOp:^batch_normalization_355/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_355/ReadVariableOp)^batch_normalization_355/ReadVariableOp_18^batch_normalization_356/FusedBatchNormV3/ReadVariableOp:^batch_normalization_356/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_356/ReadVariableOp)^batch_normalization_356/ReadVariableOp_18^batch_normalization_357/FusedBatchNormV3/ReadVariableOp:^batch_normalization_357/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_357/ReadVariableOp)^batch_normalization_357/ReadVariableOp_18^batch_normalization_358/FusedBatchNormV3/ReadVariableOp:^batch_normalization_358/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_358/ReadVariableOp)^batch_normalization_358/ReadVariableOp_1"^conv2d_447/BiasAdd/ReadVariableOp!^conv2d_447/Conv2D/ReadVariableOp"^conv2d_448/BiasAdd/ReadVariableOp!^conv2d_448/Conv2D/ReadVariableOp"^conv2d_449/BiasAdd/ReadVariableOp!^conv2d_449/Conv2D/ReadVariableOp"^conv2d_450/BiasAdd/ReadVariableOp!^conv2d_450/Conv2D/ReadVariableOp"^conv2d_451/BiasAdd/ReadVariableOp!^conv2d_451/Conv2D/ReadVariableOp ^dense_72/BiasAdd/ReadVariableOp^dense_72/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_354/FusedBatchNormV3/ReadVariableOp7batch_normalization_354/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_354/FusedBatchNormV3/ReadVariableOp_19batch_normalization_354/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_354/ReadVariableOp&batch_normalization_354/ReadVariableOp2T
(batch_normalization_354/ReadVariableOp_1(batch_normalization_354/ReadVariableOp_12r
7batch_normalization_355/FusedBatchNormV3/ReadVariableOp7batch_normalization_355/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_355/FusedBatchNormV3/ReadVariableOp_19batch_normalization_355/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_355/ReadVariableOp&batch_normalization_355/ReadVariableOp2T
(batch_normalization_355/ReadVariableOp_1(batch_normalization_355/ReadVariableOp_12r
7batch_normalization_356/FusedBatchNormV3/ReadVariableOp7batch_normalization_356/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_356/FusedBatchNormV3/ReadVariableOp_19batch_normalization_356/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_356/ReadVariableOp&batch_normalization_356/ReadVariableOp2T
(batch_normalization_356/ReadVariableOp_1(batch_normalization_356/ReadVariableOp_12r
7batch_normalization_357/FusedBatchNormV3/ReadVariableOp7batch_normalization_357/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_357/FusedBatchNormV3/ReadVariableOp_19batch_normalization_357/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_357/ReadVariableOp&batch_normalization_357/ReadVariableOp2T
(batch_normalization_357/ReadVariableOp_1(batch_normalization_357/ReadVariableOp_12r
7batch_normalization_358/FusedBatchNormV3/ReadVariableOp7batch_normalization_358/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_358/FusedBatchNormV3/ReadVariableOp_19batch_normalization_358/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_358/ReadVariableOp&batch_normalization_358/ReadVariableOp2T
(batch_normalization_358/ReadVariableOp_1(batch_normalization_358/ReadVariableOp_12F
!conv2d_447/BiasAdd/ReadVariableOp!conv2d_447/BiasAdd/ReadVariableOp2D
 conv2d_447/Conv2D/ReadVariableOp conv2d_447/Conv2D/ReadVariableOp2F
!conv2d_448/BiasAdd/ReadVariableOp!conv2d_448/BiasAdd/ReadVariableOp2D
 conv2d_448/Conv2D/ReadVariableOp conv2d_448/Conv2D/ReadVariableOp2F
!conv2d_449/BiasAdd/ReadVariableOp!conv2d_449/BiasAdd/ReadVariableOp2D
 conv2d_449/Conv2D/ReadVariableOp conv2d_449/Conv2D/ReadVariableOp2F
!conv2d_450/BiasAdd/ReadVariableOp!conv2d_450/BiasAdd/ReadVariableOp2D
 conv2d_450/Conv2D/ReadVariableOp conv2d_450/Conv2D/ReadVariableOp2F
!conv2d_451/BiasAdd/ReadVariableOp!conv2d_451/BiasAdd/ReadVariableOp2D
 conv2d_451/Conv2D/ReadVariableOp conv2d_451/Conv2D/ReadVariableOp2B
dense_72/BiasAdd/ReadVariableOpdense_72/BiasAdd/ReadVariableOp2@
dense_72/MatMul/ReadVariableOpdense_72/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10827037

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
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829803

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
?
d
H__inference_flatten_34_layer_call_and_return_conditional_losses_10827814

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
O
3__inference_max_pooling2d_79_layer_call_fn_10829893

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_108278062
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
?
j
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_10829426

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
.__inference_alex_net_13_layer_call_fn_10829113

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
GPU2*0J 8? *R
fMRK
I__inference_alex_net_13_layer_call_and_return_conditional_losses_108283562
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
j
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_10829262

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
conv2d_447_inputC
"serving_default_conv2d_447_input:0???????????<
dense_720
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
+:)`2conv2d_447/kernel
:`2conv2d_447/bias
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
+:)`2batch_normalization_354/gamma
*:(`2batch_normalization_354/beta
3:1` (2#batch_normalization_354/moving_mean
7:5` (2'batch_normalization_354/moving_variance
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
,:*`?2conv2d_448/kernel
:?2conv2d_448/bias
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
,:*?2batch_normalization_355/gamma
+:)?2batch_normalization_355/beta
4:2? (2#batch_normalization_355/moving_mean
8:6? (2'batch_normalization_355/moving_variance
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
-:+??2conv2d_449/kernel
:?2conv2d_449/bias
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
,:*?2batch_normalization_356/gamma
+:)?2batch_normalization_356/beta
4:2? (2#batch_normalization_356/moving_mean
8:6? (2'batch_normalization_356/moving_variance
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
-:+??2conv2d_450/kernel
:?2conv2d_450/bias
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
,:*?2batch_normalization_357/gamma
+:)?2batch_normalization_357/beta
4:2? (2#batch_normalization_357/moving_mean
8:6? (2'batch_normalization_357/moving_variance
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
-:+??2conv2d_451/kernel
:?2conv2d_451/bias
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
,:*?2batch_normalization_358/gamma
+:)?2batch_normalization_358/beta
4:2? (2#batch_normalization_358/moving_mean
8:6? (2'batch_normalization_358/moving_variance
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
": 	?(2dense_72/kernel
:2dense_72/bias
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
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828854
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828975
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828575
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828658?
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
#__inference__wrapped_model_10826867conv2d_447_input"?
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
?2?
.__inference_alex_net_13_layer_call_fn_10827901
.__inference_alex_net_13_layer_call_fn_10829044
.__inference_alex_net_13_layer_call_fn_10829113
.__inference_alex_net_13_layer_call_fn_10828492?
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
H__inference_conv2d_447_layer_call_and_return_conditional_losses_10829124?
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
-__inference_conv2d_447_layer_call_fn_10829133?
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
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829151
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829169
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829187
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829205?
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
:__inference_batch_normalization_354_layer_call_fn_10829218
:__inference_batch_normalization_354_layer_call_fn_10829231
:__inference_batch_normalization_354_layer_call_fn_10829244
:__inference_batch_normalization_354_layer_call_fn_10829257?
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
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_10829262
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_10829267?
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
3__inference_max_pooling2d_77_layer_call_fn_10829272
3__inference_max_pooling2d_77_layer_call_fn_10829277?
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
H__inference_conv2d_448_layer_call_and_return_conditional_losses_10829288?
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
-__inference_conv2d_448_layer_call_fn_10829297?
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
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829315
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829333
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829351
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829369?
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
:__inference_batch_normalization_355_layer_call_fn_10829382
:__inference_batch_normalization_355_layer_call_fn_10829395
:__inference_batch_normalization_355_layer_call_fn_10829408
:__inference_batch_normalization_355_layer_call_fn_10829421?
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
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_10829426
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_10829431?
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
3__inference_max_pooling2d_78_layer_call_fn_10829436
3__inference_max_pooling2d_78_layer_call_fn_10829441?
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
H__inference_conv2d_449_layer_call_and_return_conditional_losses_10829452?
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
-__inference_conv2d_449_layer_call_fn_10829461?
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
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829479
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829497
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829515
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829533?
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
:__inference_batch_normalization_356_layer_call_fn_10829546
:__inference_batch_normalization_356_layer_call_fn_10829559
:__inference_batch_normalization_356_layer_call_fn_10829572
:__inference_batch_normalization_356_layer_call_fn_10829585?
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
H__inference_conv2d_450_layer_call_and_return_conditional_losses_10829596?
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
-__inference_conv2d_450_layer_call_fn_10829605?
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
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829623
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829641
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829659
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829677?
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
:__inference_batch_normalization_357_layer_call_fn_10829690
:__inference_batch_normalization_357_layer_call_fn_10829703
:__inference_batch_normalization_357_layer_call_fn_10829716
:__inference_batch_normalization_357_layer_call_fn_10829729?
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
H__inference_conv2d_451_layer_call_and_return_conditional_losses_10829740?
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
-__inference_conv2d_451_layer_call_fn_10829749?
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
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829767
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829785
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829803
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829821?
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
:__inference_batch_normalization_358_layer_call_fn_10829834
:__inference_batch_normalization_358_layer_call_fn_10829847
:__inference_batch_normalization_358_layer_call_fn_10829860
:__inference_batch_normalization_358_layer_call_fn_10829873?
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
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_10829878
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_10829883?
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
3__inference_max_pooling2d_79_layer_call_fn_10829888
3__inference_max_pooling2d_79_layer_call_fn_10829893?
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
H__inference_flatten_34_layer_call_and_return_conditional_losses_10829899?
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
-__inference_flatten_34_layer_call_fn_10829904?
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
F__inference_dense_72_layer_call_and_return_conditional_losses_10829915?
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
+__inference_dense_72_layer_call_fn_10829924?
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
&__inference_signature_wrapper_10828733conv2d_447_input"?
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
#__inference__wrapped_model_10826867?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_447_input???????????
? "3?0
.
dense_72"?
dense_72??????????
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828575?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_447_input???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828658?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_447_input???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828854?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
I__inference_alex_net_13_layer_call_and_return_conditional_losses_10828975?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
.__inference_alex_net_13_layer_call_fn_10827901?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_447_input???????????
p 

 
? "???????????
.__inference_alex_net_13_layer_call_fn_10828492?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_447_input???????????
p

 
? "???????????
.__inference_alex_net_13_layer_call_fn_10829044  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
.__inference_alex_net_13_layer_call_fn_10829113  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829151? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829169? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829187r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
U__inference_batch_normalization_354_layer_call_and_return_conditional_losses_10829205r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
:__inference_batch_normalization_354_layer_call_fn_10829218? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
:__inference_batch_normalization_354_layer_call_fn_10829231? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
:__inference_batch_normalization_354_layer_call_fn_10829244e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
:__inference_batch_normalization_354_layer_call_fn_10829257e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829315?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829333?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829351t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
U__inference_batch_normalization_355_layer_call_and_return_conditional_losses_10829369t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
:__inference_batch_normalization_355_layer_call_fn_10829382?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
:__inference_batch_normalization_355_layer_call_fn_10829395?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
:__inference_batch_normalization_355_layer_call_fn_10829408g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
:__inference_batch_normalization_355_layer_call_fn_10829421g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829479?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829497?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829515tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
U__inference_batch_normalization_356_layer_call_and_return_conditional_losses_10829533tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
:__inference_batch_normalization_356_layer_call_fn_10829546?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
:__inference_batch_normalization_356_layer_call_fn_10829559?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
:__inference_batch_normalization_356_layer_call_fn_10829572gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
:__inference_batch_normalization_356_layer_call_fn_10829585gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829623?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829641?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829659tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
U__inference_batch_normalization_357_layer_call_and_return_conditional_losses_10829677tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
:__inference_batch_normalization_357_layer_call_fn_10829690?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
:__inference_batch_normalization_357_layer_call_fn_10829703?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
:__inference_batch_normalization_357_layer_call_fn_10829716gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
:__inference_batch_normalization_357_layer_call_fn_10829729gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829767?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829785?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829803tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
U__inference_batch_normalization_358_layer_call_and_return_conditional_losses_10829821tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
:__inference_batch_normalization_358_layer_call_fn_10829834?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
:__inference_batch_normalization_358_layer_call_fn_10829847?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
:__inference_batch_normalization_358_layer_call_fn_10829860gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
:__inference_batch_normalization_358_layer_call_fn_10829873gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
H__inference_conv2d_447_layer_call_and_return_conditional_losses_10829124n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
-__inference_conv2d_447_layer_call_fn_10829133a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
H__inference_conv2d_448_layer_call_and_return_conditional_losses_10829288m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
-__inference_conv2d_448_layer_call_fn_10829297`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
H__inference_conv2d_449_layer_call_and_return_conditional_losses_10829452n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_conv2d_449_layer_call_fn_10829461a<=8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_conv2d_450_layer_call_and_return_conditional_losses_10829596nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_conv2d_450_layer_call_fn_10829605aKL8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_conv2d_451_layer_call_and_return_conditional_losses_10829740nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_conv2d_451_layer_call_fn_10829749aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
F__inference_dense_72_layer_call_and_return_conditional_losses_10829915]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? 
+__inference_dense_72_layer_call_fn_10829924Pqr0?-
&?#
!?
inputs??????????(
? "???????????
H__inference_flatten_34_layer_call_and_return_conditional_losses_10829899b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
-__inference_flatten_34_layer_call_fn_10829904U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_10829262?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_10829267h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
3__inference_max_pooling2d_77_layer_call_fn_10829272?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_77_layer_call_fn_10829277[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_10829426?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_10829431j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
3__inference_max_pooling2d_78_layer_call_fn_10829436?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_78_layer_call_fn_10829441]8?5
.?+
)?&
inputs?????????-?
? "!????????????
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_10829878?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_10829883j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
3__inference_max_pooling2d_79_layer_call_fn_10829888?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_79_layer_call_fn_10829893]8?5
.?+
)?&
inputs??????????
? "!??????????
??
&__inference_signature_wrapper_10828733?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_447_input4?1
conv2d_447_input???????????"3?0
.
dense_72"?
dense_72?????????