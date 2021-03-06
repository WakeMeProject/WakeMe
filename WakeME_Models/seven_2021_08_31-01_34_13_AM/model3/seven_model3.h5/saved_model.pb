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
conv2d_285/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_285/kernel

%conv2d_285/kernel/Read/ReadVariableOpReadVariableOpconv2d_285/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_285/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_285/bias
o
#conv2d_285/bias/Read/ReadVariableOpReadVariableOpconv2d_285/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_222/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_222/gamma
?
1batch_normalization_222/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_222/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_222/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_222/beta
?
0batch_normalization_222/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_222/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_222/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_222/moving_mean
?
7batch_normalization_222/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_222/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_222/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_222/moving_variance
?
;batch_normalization_222/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_222/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_286/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_286/kernel
?
%conv2d_286/kernel/Read/ReadVariableOpReadVariableOpconv2d_286/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_286/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_286/bias
p
#conv2d_286/bias/Read/ReadVariableOpReadVariableOpconv2d_286/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_223/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_223/gamma
?
1batch_normalization_223/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_223/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_223/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_223/beta
?
0batch_normalization_223/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_223/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_223/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_223/moving_mean
?
7batch_normalization_223/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_223/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_223/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_223/moving_variance
?
;batch_normalization_223/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_223/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_287/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_287/kernel
?
%conv2d_287/kernel/Read/ReadVariableOpReadVariableOpconv2d_287/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_287/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_287/bias
p
#conv2d_287/bias/Read/ReadVariableOpReadVariableOpconv2d_287/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_224/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_224/gamma
?
1batch_normalization_224/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_224/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_224/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_224/beta
?
0batch_normalization_224/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_224/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_224/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_224/moving_mean
?
7batch_normalization_224/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_224/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_224/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_224/moving_variance
?
;batch_normalization_224/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_224/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_288/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_288/kernel
?
%conv2d_288/kernel/Read/ReadVariableOpReadVariableOpconv2d_288/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_288/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_288/bias
p
#conv2d_288/bias/Read/ReadVariableOpReadVariableOpconv2d_288/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_225/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_225/gamma
?
1batch_normalization_225/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_225/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_225/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_225/beta
?
0batch_normalization_225/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_225/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_225/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_225/moving_mean
?
7batch_normalization_225/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_225/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_225/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_225/moving_variance
?
;batch_normalization_225/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_225/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_289/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_289/kernel
?
%conv2d_289/kernel/Read/ReadVariableOpReadVariableOpconv2d_289/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_289/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_289/bias
p
#conv2d_289/bias/Read/ReadVariableOpReadVariableOpconv2d_289/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_226/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_226/gamma
?
1batch_normalization_226/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_226/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_226/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_226/beta
?
0batch_normalization_226/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_226/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_226/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_226/moving_mean
?
7batch_normalization_226/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_226/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_226/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_226/moving_variance
?
;batch_normalization_226/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_226/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_48/kernel
t
#dense_48/kernel/Read/ReadVariableOpReadVariableOpdense_48/kernel*
_output_shapes
:	?(*
dtype0
r
dense_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_48/bias
k
!dense_48/bias/Read/ReadVariableOpReadVariableOpdense_48/bias*
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
VARIABLE_VALUEconv2d_285/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_285/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_222/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_222/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_222/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_222/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_286/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_286/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_223/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_223/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_223/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_223/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_287/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_287/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_224/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_224/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_224/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_224/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_288/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_288/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_225/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_225/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_225/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_225/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_289/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_289/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_226/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_226/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_226/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_226/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_48/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_48/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_285_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_285_inputconv2d_285/kernelconv2d_285/biasbatch_normalization_222/gammabatch_normalization_222/beta#batch_normalization_222/moving_mean'batch_normalization_222/moving_varianceconv2d_286/kernelconv2d_286/biasbatch_normalization_223/gammabatch_normalization_223/beta#batch_normalization_223/moving_mean'batch_normalization_223/moving_varianceconv2d_287/kernelconv2d_287/biasbatch_normalization_224/gammabatch_normalization_224/beta#batch_normalization_224/moving_mean'batch_normalization_224/moving_varianceconv2d_288/kernelconv2d_288/biasbatch_normalization_225/gammabatch_normalization_225/beta#batch_normalization_225/moving_mean'batch_normalization_225/moving_varianceconv2d_289/kernelconv2d_289/biasbatch_normalization_226/gammabatch_normalization_226/beta#batch_normalization_226/moving_mean'batch_normalization_226/moving_variancedense_48/kerneldense_48/bias*,
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
%__inference_signature_wrapper_3521057
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_285/kernel/Read/ReadVariableOp#conv2d_285/bias/Read/ReadVariableOp1batch_normalization_222/gamma/Read/ReadVariableOp0batch_normalization_222/beta/Read/ReadVariableOp7batch_normalization_222/moving_mean/Read/ReadVariableOp;batch_normalization_222/moving_variance/Read/ReadVariableOp%conv2d_286/kernel/Read/ReadVariableOp#conv2d_286/bias/Read/ReadVariableOp1batch_normalization_223/gamma/Read/ReadVariableOp0batch_normalization_223/beta/Read/ReadVariableOp7batch_normalization_223/moving_mean/Read/ReadVariableOp;batch_normalization_223/moving_variance/Read/ReadVariableOp%conv2d_287/kernel/Read/ReadVariableOp#conv2d_287/bias/Read/ReadVariableOp1batch_normalization_224/gamma/Read/ReadVariableOp0batch_normalization_224/beta/Read/ReadVariableOp7batch_normalization_224/moving_mean/Read/ReadVariableOp;batch_normalization_224/moving_variance/Read/ReadVariableOp%conv2d_288/kernel/Read/ReadVariableOp#conv2d_288/bias/Read/ReadVariableOp1batch_normalization_225/gamma/Read/ReadVariableOp0batch_normalization_225/beta/Read/ReadVariableOp7batch_normalization_225/moving_mean/Read/ReadVariableOp;batch_normalization_225/moving_variance/Read/ReadVariableOp%conv2d_289/kernel/Read/ReadVariableOp#conv2d_289/bias/Read/ReadVariableOp1batch_normalization_226/gamma/Read/ReadVariableOp0batch_normalization_226/beta/Read/ReadVariableOp7batch_normalization_226/moving_mean/Read/ReadVariableOp;batch_normalization_226/moving_variance/Read/ReadVariableOp#dense_48/kernel/Read/ReadVariableOp!dense_48/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3522391
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_285/kernelconv2d_285/biasbatch_normalization_222/gammabatch_normalization_222/beta#batch_normalization_222/moving_mean'batch_normalization_222/moving_varianceconv2d_286/kernelconv2d_286/biasbatch_normalization_223/gammabatch_normalization_223/beta#batch_normalization_223/moving_mean'batch_normalization_223/moving_varianceconv2d_287/kernelconv2d_287/biasbatch_normalization_224/gammabatch_normalization_224/beta#batch_normalization_224/moving_mean'batch_normalization_224/moving_varianceconv2d_288/kernelconv2d_288/biasbatch_normalization_225/gammabatch_normalization_225/beta#batch_normalization_225/moving_mean'batch_normalization_225/moving_varianceconv2d_289/kernelconv2d_289/biasbatch_normalization_226/gammabatch_normalization_226/beta#batch_normalization_226/moving_mean'batch_normalization_226/moving_variancedense_48/kerneldense_48/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_3522521??
?
?
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3519361

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
?
?
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3519257

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
?T
?
 __inference__traced_save_3522391
file_prefix0
,savev2_conv2d_285_kernel_read_readvariableop.
*savev2_conv2d_285_bias_read_readvariableop<
8savev2_batch_normalization_222_gamma_read_readvariableop;
7savev2_batch_normalization_222_beta_read_readvariableopB
>savev2_batch_normalization_222_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_222_moving_variance_read_readvariableop0
,savev2_conv2d_286_kernel_read_readvariableop.
*savev2_conv2d_286_bias_read_readvariableop<
8savev2_batch_normalization_223_gamma_read_readvariableop;
7savev2_batch_normalization_223_beta_read_readvariableopB
>savev2_batch_normalization_223_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_223_moving_variance_read_readvariableop0
,savev2_conv2d_287_kernel_read_readvariableop.
*savev2_conv2d_287_bias_read_readvariableop<
8savev2_batch_normalization_224_gamma_read_readvariableop;
7savev2_batch_normalization_224_beta_read_readvariableopB
>savev2_batch_normalization_224_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_224_moving_variance_read_readvariableop0
,savev2_conv2d_288_kernel_read_readvariableop.
*savev2_conv2d_288_bias_read_readvariableop<
8savev2_batch_normalization_225_gamma_read_readvariableop;
7savev2_batch_normalization_225_beta_read_readvariableopB
>savev2_batch_normalization_225_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_225_moving_variance_read_readvariableop0
,savev2_conv2d_289_kernel_read_readvariableop.
*savev2_conv2d_289_bias_read_readvariableop<
8savev2_batch_normalization_226_gamma_read_readvariableop;
7savev2_batch_normalization_226_beta_read_readvariableopB
>savev2_batch_normalization_226_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_226_moving_variance_read_readvariableop.
*savev2_dense_48_kernel_read_readvariableop,
(savev2_dense_48_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_285_kernel_read_readvariableop*savev2_conv2d_285_bias_read_readvariableop8savev2_batch_normalization_222_gamma_read_readvariableop7savev2_batch_normalization_222_beta_read_readvariableop>savev2_batch_normalization_222_moving_mean_read_readvariableopBsavev2_batch_normalization_222_moving_variance_read_readvariableop,savev2_conv2d_286_kernel_read_readvariableop*savev2_conv2d_286_bias_read_readvariableop8savev2_batch_normalization_223_gamma_read_readvariableop7savev2_batch_normalization_223_beta_read_readvariableop>savev2_batch_normalization_223_moving_mean_read_readvariableopBsavev2_batch_normalization_223_moving_variance_read_readvariableop,savev2_conv2d_287_kernel_read_readvariableop*savev2_conv2d_287_bias_read_readvariableop8savev2_batch_normalization_224_gamma_read_readvariableop7savev2_batch_normalization_224_beta_read_readvariableop>savev2_batch_normalization_224_moving_mean_read_readvariableopBsavev2_batch_normalization_224_moving_variance_read_readvariableop,savev2_conv2d_288_kernel_read_readvariableop*savev2_conv2d_288_bias_read_readvariableop8savev2_batch_normalization_225_gamma_read_readvariableop7savev2_batch_normalization_225_beta_read_readvariableop>savev2_batch_normalization_225_moving_mean_read_readvariableopBsavev2_batch_normalization_225_moving_variance_read_readvariableop,savev2_conv2d_289_kernel_read_readvariableop*savev2_conv2d_289_bias_read_readvariableop8savev2_batch_normalization_226_gamma_read_readvariableop7savev2_batch_normalization_226_beta_read_readvariableop>savev2_batch_normalization_226_moving_mean_read_readvariableopBsavev2_batch_normalization_226_moving_variance_read_readvariableop*savev2_dense_48_kernel_read_readvariableop(savev2_dense_48_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
*__inference_dense_48_layer_call_fn_3522248

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
E__inference_dense_48_layer_call_and_return_conditional_losses_35201512
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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3521947

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
9__inference_batch_normalization_223_layer_call_fn_3521719

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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_35194052
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
2__inference_max_pooling2d_47_layer_call_fn_3521596

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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_35193262
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
G__inference_conv2d_288_layer_call_and_return_conditional_losses_3520049

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
9__inference_batch_normalization_226_layer_call_fn_3522197

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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_35202792
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
9__inference_batch_normalization_222_layer_call_fn_3521542

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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_35192132
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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3520116

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
?
?
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521493

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
i
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_3519874

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
c
G__inference_flatten_22_layer_call_and_return_conditional_losses_3520138

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
?
E__inference_dense_48_layer_call_and_return_conditional_losses_3522239

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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521803

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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3519978

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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3522001

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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3520680

inputs,
conv2d_285_3520600:` 
conv2d_285_3520602:`-
batch_normalization_222_3520605:`-
batch_normalization_222_3520607:`-
batch_normalization_222_3520609:`-
batch_normalization_222_3520611:`-
conv2d_286_3520615:`?!
conv2d_286_3520617:	?.
batch_normalization_223_3520620:	?.
batch_normalization_223_3520622:	?.
batch_normalization_223_3520624:	?.
batch_normalization_223_3520626:	?.
conv2d_287_3520630:??!
conv2d_287_3520632:	?.
batch_normalization_224_3520635:	?.
batch_normalization_224_3520637:	?.
batch_normalization_224_3520639:	?.
batch_normalization_224_3520641:	?.
conv2d_288_3520644:??!
conv2d_288_3520646:	?.
batch_normalization_225_3520649:	?.
batch_normalization_225_3520651:	?.
batch_normalization_225_3520653:	?.
batch_normalization_225_3520655:	?.
conv2d_289_3520658:??!
conv2d_289_3520660:	?.
batch_normalization_226_3520663:	?.
batch_normalization_226_3520665:	?.
batch_normalization_226_3520667:	?.
batch_normalization_226_3520669:	?#
dense_48_3520674:	?(
dense_48_3520676:
identity??/batch_normalization_222/StatefulPartitionedCall?/batch_normalization_223/StatefulPartitionedCall?/batch_normalization_224/StatefulPartitionedCall?/batch_normalization_225/StatefulPartitionedCall?/batch_normalization_226/StatefulPartitionedCall?"conv2d_285/StatefulPartitionedCall?"conv2d_286/StatefulPartitionedCall?"conv2d_287/StatefulPartitionedCall?"conv2d_288/StatefulPartitionedCall?"conv2d_289/StatefulPartitionedCall? dense_48/StatefulPartitionedCall?
"conv2d_285/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_285_3520600conv2d_285_3520602*
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
G__inference_conv2d_285_layer_call_and_return_conditional_losses_35199052$
"conv2d_285/StatefulPartitionedCall?
/batch_normalization_222/StatefulPartitionedCallStatefulPartitionedCall+conv2d_285/StatefulPartitionedCall:output:0batch_normalization_222_3520605batch_normalization_222_3520607batch_normalization_222_3520609batch_normalization_222_3520611*
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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_352050521
/batch_normalization_222/StatefulPartitionedCall?
 max_pooling2d_47/PartitionedCallPartitionedCall8batch_normalization_222/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_35199422"
 max_pooling2d_47/PartitionedCall?
"conv2d_286/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_286_3520615conv2d_286_3520617*
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
G__inference_conv2d_286_layer_call_and_return_conditional_losses_35199552$
"conv2d_286/StatefulPartitionedCall?
/batch_normalization_223/StatefulPartitionedCallStatefulPartitionedCall+conv2d_286/StatefulPartitionedCall:output:0batch_normalization_223_3520620batch_normalization_223_3520622batch_normalization_223_3520624batch_normalization_223_3520626*
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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_352044621
/batch_normalization_223/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall8batch_normalization_223/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_35199922"
 max_pooling2d_48/PartitionedCall?
"conv2d_287/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_287_3520630conv2d_287_3520632*
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
G__inference_conv2d_287_layer_call_and_return_conditional_losses_35200052$
"conv2d_287/StatefulPartitionedCall?
/batch_normalization_224/StatefulPartitionedCallStatefulPartitionedCall+conv2d_287/StatefulPartitionedCall:output:0batch_normalization_224_3520635batch_normalization_224_3520637batch_normalization_224_3520639batch_normalization_224_3520641*
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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_352038721
/batch_normalization_224/StatefulPartitionedCall?
"conv2d_288/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_224/StatefulPartitionedCall:output:0conv2d_288_3520644conv2d_288_3520646*
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
G__inference_conv2d_288_layer_call_and_return_conditional_losses_35200492$
"conv2d_288/StatefulPartitionedCall?
/batch_normalization_225/StatefulPartitionedCallStatefulPartitionedCall+conv2d_288/StatefulPartitionedCall:output:0batch_normalization_225_3520649batch_normalization_225_3520651batch_normalization_225_3520653batch_normalization_225_3520655*
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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_352033321
/batch_normalization_225/StatefulPartitionedCall?
"conv2d_289/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_225/StatefulPartitionedCall:output:0conv2d_289_3520658conv2d_289_3520660*
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
G__inference_conv2d_289_layer_call_and_return_conditional_losses_35200932$
"conv2d_289/StatefulPartitionedCall?
/batch_normalization_226/StatefulPartitionedCallStatefulPartitionedCall+conv2d_289/StatefulPartitionedCall:output:0batch_normalization_226_3520663batch_normalization_226_3520665batch_normalization_226_3520667batch_normalization_226_3520669*
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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_352027921
/batch_normalization_226/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall8batch_normalization_226/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_35201302"
 max_pooling2d_49/PartitionedCall?
flatten_22/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
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
G__inference_flatten_22_layer_call_and_return_conditional_losses_35201382
flatten_22/PartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_48_3520674dense_48_3520676*
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
E__inference_dense_48_layer_call_and_return_conditional_losses_35201512"
 dense_48/StatefulPartitionedCall?
IdentityIdentity)dense_48/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_222/StatefulPartitionedCall0^batch_normalization_223/StatefulPartitionedCall0^batch_normalization_224/StatefulPartitionedCall0^batch_normalization_225/StatefulPartitionedCall0^batch_normalization_226/StatefulPartitionedCall#^conv2d_285/StatefulPartitionedCall#^conv2d_286/StatefulPartitionedCall#^conv2d_287/StatefulPartitionedCall#^conv2d_288/StatefulPartitionedCall#^conv2d_289/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_222/StatefulPartitionedCall/batch_normalization_222/StatefulPartitionedCall2b
/batch_normalization_223/StatefulPartitionedCall/batch_normalization_223/StatefulPartitionedCall2b
/batch_normalization_224/StatefulPartitionedCall/batch_normalization_224/StatefulPartitionedCall2b
/batch_normalization_225/StatefulPartitionedCall/batch_normalization_225/StatefulPartitionedCall2b
/batch_normalization_226/StatefulPartitionedCall/batch_normalization_226/StatefulPartitionedCall2H
"conv2d_285/StatefulPartitionedCall"conv2d_285/StatefulPartitionedCall2H
"conv2d_286/StatefulPartitionedCall"conv2d_286/StatefulPartitionedCall2H
"conv2d_287/StatefulPartitionedCall"conv2d_287/StatefulPartitionedCall2H
"conv2d_288/StatefulPartitionedCall"conv2d_288/StatefulPartitionedCall2H
"conv2d_289/StatefulPartitionedCall"conv2d_289/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_286_layer_call_and_return_conditional_losses_3521612

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
?
G__inference_conv2d_288_layer_call_and_return_conditional_losses_3521920

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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_3521586

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
9__inference_batch_normalization_223_layer_call_fn_3521732

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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_35199782
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
G__inference_conv2d_287_layer_call_and_return_conditional_losses_3520005

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
?
9__inference_batch_normalization_226_layer_call_fn_3522184

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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_35201162
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
i
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_3522202

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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521639

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
?
N
2__inference_max_pooling2d_48_layer_call_fn_3521765

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
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_35199922
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
?
?
,__inference_conv2d_287_layer_call_fn_3521785

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
G__inference_conv2d_287_layer_call_and_return_conditional_losses_35200052
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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_3519942

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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3520028

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
?
?
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3520333

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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521675

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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3521983

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
?
i
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_3522207

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
?
G__inference_conv2d_289_layer_call_and_return_conditional_losses_3522064

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
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_3520130

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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521657

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
?
N
2__inference_max_pooling2d_49_layer_call_fn_3522212

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
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_35198742
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
?
?
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3520279

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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3520387

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
G__inference_conv2d_286_layer_call_and_return_conditional_losses_3519955

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
?
?
,__inference_alex_net_7_layer_call_fn_3521368

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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_35201582
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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3519509

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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3520899
conv2d_285_input,
conv2d_285_3520819:` 
conv2d_285_3520821:`-
batch_normalization_222_3520824:`-
batch_normalization_222_3520826:`-
batch_normalization_222_3520828:`-
batch_normalization_222_3520830:`-
conv2d_286_3520834:`?!
conv2d_286_3520836:	?.
batch_normalization_223_3520839:	?.
batch_normalization_223_3520841:	?.
batch_normalization_223_3520843:	?.
batch_normalization_223_3520845:	?.
conv2d_287_3520849:??!
conv2d_287_3520851:	?.
batch_normalization_224_3520854:	?.
batch_normalization_224_3520856:	?.
batch_normalization_224_3520858:	?.
batch_normalization_224_3520860:	?.
conv2d_288_3520863:??!
conv2d_288_3520865:	?.
batch_normalization_225_3520868:	?.
batch_normalization_225_3520870:	?.
batch_normalization_225_3520872:	?.
batch_normalization_225_3520874:	?.
conv2d_289_3520877:??!
conv2d_289_3520879:	?.
batch_normalization_226_3520882:	?.
batch_normalization_226_3520884:	?.
batch_normalization_226_3520886:	?.
batch_normalization_226_3520888:	?#
dense_48_3520893:	?(
dense_48_3520895:
identity??/batch_normalization_222/StatefulPartitionedCall?/batch_normalization_223/StatefulPartitionedCall?/batch_normalization_224/StatefulPartitionedCall?/batch_normalization_225/StatefulPartitionedCall?/batch_normalization_226/StatefulPartitionedCall?"conv2d_285/StatefulPartitionedCall?"conv2d_286/StatefulPartitionedCall?"conv2d_287/StatefulPartitionedCall?"conv2d_288/StatefulPartitionedCall?"conv2d_289/StatefulPartitionedCall? dense_48/StatefulPartitionedCall?
"conv2d_285/StatefulPartitionedCallStatefulPartitionedCallconv2d_285_inputconv2d_285_3520819conv2d_285_3520821*
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
G__inference_conv2d_285_layer_call_and_return_conditional_losses_35199052$
"conv2d_285/StatefulPartitionedCall?
/batch_normalization_222/StatefulPartitionedCallStatefulPartitionedCall+conv2d_285/StatefulPartitionedCall:output:0batch_normalization_222_3520824batch_normalization_222_3520826batch_normalization_222_3520828batch_normalization_222_3520830*
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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_351992821
/batch_normalization_222/StatefulPartitionedCall?
 max_pooling2d_47/PartitionedCallPartitionedCall8batch_normalization_222/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_35199422"
 max_pooling2d_47/PartitionedCall?
"conv2d_286/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_286_3520834conv2d_286_3520836*
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
G__inference_conv2d_286_layer_call_and_return_conditional_losses_35199552$
"conv2d_286/StatefulPartitionedCall?
/batch_normalization_223/StatefulPartitionedCallStatefulPartitionedCall+conv2d_286/StatefulPartitionedCall:output:0batch_normalization_223_3520839batch_normalization_223_3520841batch_normalization_223_3520843batch_normalization_223_3520845*
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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_351997821
/batch_normalization_223/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall8batch_normalization_223/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_35199922"
 max_pooling2d_48/PartitionedCall?
"conv2d_287/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_287_3520849conv2d_287_3520851*
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
G__inference_conv2d_287_layer_call_and_return_conditional_losses_35200052$
"conv2d_287/StatefulPartitionedCall?
/batch_normalization_224/StatefulPartitionedCallStatefulPartitionedCall+conv2d_287/StatefulPartitionedCall:output:0batch_normalization_224_3520854batch_normalization_224_3520856batch_normalization_224_3520858batch_normalization_224_3520860*
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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_352002821
/batch_normalization_224/StatefulPartitionedCall?
"conv2d_288/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_224/StatefulPartitionedCall:output:0conv2d_288_3520863conv2d_288_3520865*
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
G__inference_conv2d_288_layer_call_and_return_conditional_losses_35200492$
"conv2d_288/StatefulPartitionedCall?
/batch_normalization_225/StatefulPartitionedCallStatefulPartitionedCall+conv2d_288/StatefulPartitionedCall:output:0batch_normalization_225_3520868batch_normalization_225_3520870batch_normalization_225_3520872batch_normalization_225_3520874*
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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_352007221
/batch_normalization_225/StatefulPartitionedCall?
"conv2d_289/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_225/StatefulPartitionedCall:output:0conv2d_289_3520877conv2d_289_3520879*
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
G__inference_conv2d_289_layer_call_and_return_conditional_losses_35200932$
"conv2d_289/StatefulPartitionedCall?
/batch_normalization_226/StatefulPartitionedCallStatefulPartitionedCall+conv2d_289/StatefulPartitionedCall:output:0batch_normalization_226_3520882batch_normalization_226_3520884batch_normalization_226_3520886batch_normalization_226_3520888*
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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_352011621
/batch_normalization_226/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall8batch_normalization_226/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_35201302"
 max_pooling2d_49/PartitionedCall?
flatten_22/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
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
G__inference_flatten_22_layer_call_and_return_conditional_losses_35201382
flatten_22/PartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_48_3520893dense_48_3520895*
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
E__inference_dense_48_layer_call_and_return_conditional_losses_35201512"
 dense_48/StatefulPartitionedCall?
IdentityIdentity)dense_48/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_222/StatefulPartitionedCall0^batch_normalization_223/StatefulPartitionedCall0^batch_normalization_224/StatefulPartitionedCall0^batch_normalization_225/StatefulPartitionedCall0^batch_normalization_226/StatefulPartitionedCall#^conv2d_285/StatefulPartitionedCall#^conv2d_286/StatefulPartitionedCall#^conv2d_287/StatefulPartitionedCall#^conv2d_288/StatefulPartitionedCall#^conv2d_289/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_222/StatefulPartitionedCall/batch_normalization_222/StatefulPartitionedCall2b
/batch_normalization_223/StatefulPartitionedCall/batch_normalization_223/StatefulPartitionedCall2b
/batch_normalization_224/StatefulPartitionedCall/batch_normalization_224/StatefulPartitionedCall2b
/batch_normalization_225/StatefulPartitionedCall/batch_normalization_225/StatefulPartitionedCall2b
/batch_normalization_226/StatefulPartitionedCall/batch_normalization_226/StatefulPartitionedCall2H
"conv2d_285/StatefulPartitionedCall"conv2d_285/StatefulPartitionedCall2H
"conv2d_286/StatefulPartitionedCall"conv2d_286/StatefulPartitionedCall2H
"conv2d_287/StatefulPartitionedCall"conv2d_287/StatefulPartitionedCall2H
"conv2d_288/StatefulPartitionedCall"conv2d_288/StatefulPartitionedCall2H
"conv2d_289/StatefulPartitionedCall"conv2d_289/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_285_input
?
N
2__inference_max_pooling2d_49_layer_call_fn_3522217

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
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_35201302
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
9__inference_batch_normalization_224_layer_call_fn_3521909

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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_35203872
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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3519635

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
?
?
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521693

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
?
?
,__inference_conv2d_286_layer_call_fn_3521621

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
G__inference_conv2d_286_layer_call_and_return_conditional_losses_35199552
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
9__inference_batch_normalization_222_layer_call_fn_3521568

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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_35199282
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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522127

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
2__inference_max_pooling2d_48_layer_call_fn_3521760

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
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_35194742
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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521475

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
?
?
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521821

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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522145

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
G__inference_conv2d_287_layer_call_and_return_conditional_losses_3521776

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
?
?
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3519553

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
?
?
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521839

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
?
?
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3519405

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
?
#__inference__traced_restore_3522521
file_prefix<
"assignvariableop_conv2d_285_kernel:`0
"assignvariableop_1_conv2d_285_bias:`>
0assignvariableop_2_batch_normalization_222_gamma:`=
/assignvariableop_3_batch_normalization_222_beta:`D
6assignvariableop_4_batch_normalization_222_moving_mean:`H
:assignvariableop_5_batch_normalization_222_moving_variance:`?
$assignvariableop_6_conv2d_286_kernel:`?1
"assignvariableop_7_conv2d_286_bias:	??
0assignvariableop_8_batch_normalization_223_gamma:	?>
/assignvariableop_9_batch_normalization_223_beta:	?F
7assignvariableop_10_batch_normalization_223_moving_mean:	?J
;assignvariableop_11_batch_normalization_223_moving_variance:	?A
%assignvariableop_12_conv2d_287_kernel:??2
#assignvariableop_13_conv2d_287_bias:	?@
1assignvariableop_14_batch_normalization_224_gamma:	??
0assignvariableop_15_batch_normalization_224_beta:	?F
7assignvariableop_16_batch_normalization_224_moving_mean:	?J
;assignvariableop_17_batch_normalization_224_moving_variance:	?A
%assignvariableop_18_conv2d_288_kernel:??2
#assignvariableop_19_conv2d_288_bias:	?@
1assignvariableop_20_batch_normalization_225_gamma:	??
0assignvariableop_21_batch_normalization_225_beta:	?F
7assignvariableop_22_batch_normalization_225_moving_mean:	?J
;assignvariableop_23_batch_normalization_225_moving_variance:	?A
%assignvariableop_24_conv2d_289_kernel:??2
#assignvariableop_25_conv2d_289_bias:	?@
1assignvariableop_26_batch_normalization_226_gamma:	??
0assignvariableop_27_batch_normalization_226_beta:	?F
7assignvariableop_28_batch_normalization_226_moving_mean:	?J
;assignvariableop_29_batch_normalization_226_moving_variance:	?6
#assignvariableop_30_dense_48_kernel:	?(/
!assignvariableop_31_dense_48_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_285_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_285_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_222_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_222_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_222_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_222_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_286_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_286_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_223_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_223_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_223_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_223_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_287_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_287_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_224_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_224_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_224_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_224_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_288_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_288_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_225_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_225_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_225_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_225_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_289_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_289_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_226_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_226_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_226_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_226_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_48_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_48_biasIdentity_31:output:0"/device:CPU:0*
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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522109

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
9__inference_batch_normalization_222_layer_call_fn_3521581

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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_35205052
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
?
H
,__inference_flatten_22_layer_call_fn_3522228

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
G__inference_flatten_22_layer_call_and_return_conditional_losses_35201382
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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3520072

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
N
2__inference_max_pooling2d_47_layer_call_fn_3521601

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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_35199422
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
?
?
,__inference_conv2d_288_layer_call_fn_3521929

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
G__inference_conv2d_288_layer_call_and_return_conditional_losses_35200492
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
?
G__inference_conv2d_285_layer_call_and_return_conditional_losses_3519905

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
?
?
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521511

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
?
i
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_3521750

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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3519761

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
9__inference_batch_normalization_223_layer_call_fn_3521706

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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_35193612
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
?
?
,__inference_alex_net_7_layer_call_fn_3520225
conv2d_285_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_285_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_35201582
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
_user_specified_nameconv2d_285_input
?
?
G__inference_conv2d_289_layer_call_and_return_conditional_losses_3520093

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
?
9__inference_batch_normalization_226_layer_call_fn_3522171

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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_35198052
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
9__inference_batch_normalization_224_layer_call_fn_3521870

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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_35195092
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
,__inference_alex_net_7_layer_call_fn_3521437

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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_35206802
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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3520446

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
?
i
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_3519474

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
9__inference_batch_normalization_225_layer_call_fn_3522014

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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_35196352
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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3521965

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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3521178

inputsC
)conv2d_285_conv2d_readvariableop_resource:`8
*conv2d_285_biasadd_readvariableop_resource:`=
/batch_normalization_222_readvariableop_resource:`?
1batch_normalization_222_readvariableop_1_resource:`N
@batch_normalization_222_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_222_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_286_conv2d_readvariableop_resource:`?9
*conv2d_286_biasadd_readvariableop_resource:	?>
/batch_normalization_223_readvariableop_resource:	?@
1batch_normalization_223_readvariableop_1_resource:	?O
@batch_normalization_223_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_223_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_287_conv2d_readvariableop_resource:??9
*conv2d_287_biasadd_readvariableop_resource:	?>
/batch_normalization_224_readvariableop_resource:	?@
1batch_normalization_224_readvariableop_1_resource:	?O
@batch_normalization_224_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_224_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_288_conv2d_readvariableop_resource:??9
*conv2d_288_biasadd_readvariableop_resource:	?>
/batch_normalization_225_readvariableop_resource:	?@
1batch_normalization_225_readvariableop_1_resource:	?O
@batch_normalization_225_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_225_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_289_conv2d_readvariableop_resource:??9
*conv2d_289_biasadd_readvariableop_resource:	?>
/batch_normalization_226_readvariableop_resource:	?@
1batch_normalization_226_readvariableop_1_resource:	?O
@batch_normalization_226_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_226_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_48_matmul_readvariableop_resource:	?(6
(dense_48_biasadd_readvariableop_resource:
identity??7batch_normalization_222/FusedBatchNormV3/ReadVariableOp?9batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_222/ReadVariableOp?(batch_normalization_222/ReadVariableOp_1?7batch_normalization_223/FusedBatchNormV3/ReadVariableOp?9batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_223/ReadVariableOp?(batch_normalization_223/ReadVariableOp_1?7batch_normalization_224/FusedBatchNormV3/ReadVariableOp?9batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_224/ReadVariableOp?(batch_normalization_224/ReadVariableOp_1?7batch_normalization_225/FusedBatchNormV3/ReadVariableOp?9batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_225/ReadVariableOp?(batch_normalization_225/ReadVariableOp_1?7batch_normalization_226/FusedBatchNormV3/ReadVariableOp?9batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_226/ReadVariableOp?(batch_normalization_226/ReadVariableOp_1?!conv2d_285/BiasAdd/ReadVariableOp? conv2d_285/Conv2D/ReadVariableOp?!conv2d_286/BiasAdd/ReadVariableOp? conv2d_286/Conv2D/ReadVariableOp?!conv2d_287/BiasAdd/ReadVariableOp? conv2d_287/Conv2D/ReadVariableOp?!conv2d_288/BiasAdd/ReadVariableOp? conv2d_288/Conv2D/ReadVariableOp?!conv2d_289/BiasAdd/ReadVariableOp? conv2d_289/Conv2D/ReadVariableOp?dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?
 conv2d_285/Conv2D/ReadVariableOpReadVariableOp)conv2d_285_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_285/Conv2D/ReadVariableOp?
conv2d_285/Conv2DConv2Dinputs(conv2d_285/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_285/Conv2D?
!conv2d_285/BiasAdd/ReadVariableOpReadVariableOp*conv2d_285_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_285/BiasAdd/ReadVariableOp?
conv2d_285/BiasAddBiasAddconv2d_285/Conv2D:output:0)conv2d_285/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_285/BiasAdd?
conv2d_285/ReluReluconv2d_285/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_285/Relu?
&batch_normalization_222/ReadVariableOpReadVariableOp/batch_normalization_222_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_222/ReadVariableOp?
(batch_normalization_222/ReadVariableOp_1ReadVariableOp1batch_normalization_222_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_222/ReadVariableOp_1?
7batch_normalization_222/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_222_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_222/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_222_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_222/FusedBatchNormV3FusedBatchNormV3conv2d_285/Relu:activations:0.batch_normalization_222/ReadVariableOp:value:00batch_normalization_222/ReadVariableOp_1:value:0?batch_normalization_222/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_222/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_222/FusedBatchNormV3?
max_pooling2d_47/MaxPoolMaxPool,batch_normalization_222/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPool?
 conv2d_286/Conv2D/ReadVariableOpReadVariableOp)conv2d_286_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_286/Conv2D/ReadVariableOp?
conv2d_286/Conv2DConv2D!max_pooling2d_47/MaxPool:output:0(conv2d_286/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_286/Conv2D?
!conv2d_286/BiasAdd/ReadVariableOpReadVariableOp*conv2d_286_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_286/BiasAdd/ReadVariableOp?
conv2d_286/BiasAddBiasAddconv2d_286/Conv2D:output:0)conv2d_286/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_286/BiasAdd?
conv2d_286/ReluReluconv2d_286/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_286/Relu?
&batch_normalization_223/ReadVariableOpReadVariableOp/batch_normalization_223_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_223/ReadVariableOp?
(batch_normalization_223/ReadVariableOp_1ReadVariableOp1batch_normalization_223_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_223/ReadVariableOp_1?
7batch_normalization_223/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_223_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_223/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_223_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_223/FusedBatchNormV3FusedBatchNormV3conv2d_286/Relu:activations:0.batch_normalization_223/ReadVariableOp:value:00batch_normalization_223/ReadVariableOp_1:value:0?batch_normalization_223/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_223/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_223/FusedBatchNormV3?
max_pooling2d_48/MaxPoolMaxPool,batch_normalization_223/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_48/MaxPool?
 conv2d_287/Conv2D/ReadVariableOpReadVariableOp)conv2d_287_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_287/Conv2D/ReadVariableOp?
conv2d_287/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0(conv2d_287/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_287/Conv2D?
!conv2d_287/BiasAdd/ReadVariableOpReadVariableOp*conv2d_287_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_287/BiasAdd/ReadVariableOp?
conv2d_287/BiasAddBiasAddconv2d_287/Conv2D:output:0)conv2d_287/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_287/BiasAdd?
conv2d_287/ReluReluconv2d_287/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_287/Relu?
&batch_normalization_224/ReadVariableOpReadVariableOp/batch_normalization_224_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_224/ReadVariableOp?
(batch_normalization_224/ReadVariableOp_1ReadVariableOp1batch_normalization_224_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_224/ReadVariableOp_1?
7batch_normalization_224/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_224_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_224/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_224_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_224/FusedBatchNormV3FusedBatchNormV3conv2d_287/Relu:activations:0.batch_normalization_224/ReadVariableOp:value:00batch_normalization_224/ReadVariableOp_1:value:0?batch_normalization_224/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_224/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_224/FusedBatchNormV3?
 conv2d_288/Conv2D/ReadVariableOpReadVariableOp)conv2d_288_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_288/Conv2D/ReadVariableOp?
conv2d_288/Conv2DConv2D,batch_normalization_224/FusedBatchNormV3:y:0(conv2d_288/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_288/Conv2D?
!conv2d_288/BiasAdd/ReadVariableOpReadVariableOp*conv2d_288_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_288/BiasAdd/ReadVariableOp?
conv2d_288/BiasAddBiasAddconv2d_288/Conv2D:output:0)conv2d_288/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_288/BiasAdd?
conv2d_288/ReluReluconv2d_288/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_288/Relu?
&batch_normalization_225/ReadVariableOpReadVariableOp/batch_normalization_225_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_225/ReadVariableOp?
(batch_normalization_225/ReadVariableOp_1ReadVariableOp1batch_normalization_225_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_225/ReadVariableOp_1?
7batch_normalization_225/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_225_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_225/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_225_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_225/FusedBatchNormV3FusedBatchNormV3conv2d_288/Relu:activations:0.batch_normalization_225/ReadVariableOp:value:00batch_normalization_225/ReadVariableOp_1:value:0?batch_normalization_225/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_225/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_225/FusedBatchNormV3?
 conv2d_289/Conv2D/ReadVariableOpReadVariableOp)conv2d_289_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_289/Conv2D/ReadVariableOp?
conv2d_289/Conv2DConv2D,batch_normalization_225/FusedBatchNormV3:y:0(conv2d_289/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_289/Conv2D?
!conv2d_289/BiasAdd/ReadVariableOpReadVariableOp*conv2d_289_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_289/BiasAdd/ReadVariableOp?
conv2d_289/BiasAddBiasAddconv2d_289/Conv2D:output:0)conv2d_289/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_289/BiasAdd?
conv2d_289/ReluReluconv2d_289/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_289/Relu?
&batch_normalization_226/ReadVariableOpReadVariableOp/batch_normalization_226_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_226/ReadVariableOp?
(batch_normalization_226/ReadVariableOp_1ReadVariableOp1batch_normalization_226_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_226/ReadVariableOp_1?
7batch_normalization_226/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_226_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_226/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_226_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_226/FusedBatchNormV3FusedBatchNormV3conv2d_289/Relu:activations:0.batch_normalization_226/ReadVariableOp:value:00batch_normalization_226/ReadVariableOp_1:value:0?batch_normalization_226/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_226/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_226/FusedBatchNormV3?
max_pooling2d_49/MaxPoolMaxPool,batch_normalization_226/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPoolu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_22/Const?
flatten_22/ReshapeReshape!max_pooling2d_49/MaxPool:output:0flatten_22/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_22/Reshape?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMulflatten_22/Reshape:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_48/BiasAdd|
dense_48/SigmoidSigmoiddense_48/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_48/Sigmoido
IdentityIdentitydense_48/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_222/FusedBatchNormV3/ReadVariableOp:^batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_222/ReadVariableOp)^batch_normalization_222/ReadVariableOp_18^batch_normalization_223/FusedBatchNormV3/ReadVariableOp:^batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_223/ReadVariableOp)^batch_normalization_223/ReadVariableOp_18^batch_normalization_224/FusedBatchNormV3/ReadVariableOp:^batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_224/ReadVariableOp)^batch_normalization_224/ReadVariableOp_18^batch_normalization_225/FusedBatchNormV3/ReadVariableOp:^batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_225/ReadVariableOp)^batch_normalization_225/ReadVariableOp_18^batch_normalization_226/FusedBatchNormV3/ReadVariableOp:^batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_226/ReadVariableOp)^batch_normalization_226/ReadVariableOp_1"^conv2d_285/BiasAdd/ReadVariableOp!^conv2d_285/Conv2D/ReadVariableOp"^conv2d_286/BiasAdd/ReadVariableOp!^conv2d_286/Conv2D/ReadVariableOp"^conv2d_287/BiasAdd/ReadVariableOp!^conv2d_287/Conv2D/ReadVariableOp"^conv2d_288/BiasAdd/ReadVariableOp!^conv2d_288/Conv2D/ReadVariableOp"^conv2d_289/BiasAdd/ReadVariableOp!^conv2d_289/Conv2D/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_222/FusedBatchNormV3/ReadVariableOp7batch_normalization_222/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_222/FusedBatchNormV3/ReadVariableOp_19batch_normalization_222/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_222/ReadVariableOp&batch_normalization_222/ReadVariableOp2T
(batch_normalization_222/ReadVariableOp_1(batch_normalization_222/ReadVariableOp_12r
7batch_normalization_223/FusedBatchNormV3/ReadVariableOp7batch_normalization_223/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_223/FusedBatchNormV3/ReadVariableOp_19batch_normalization_223/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_223/ReadVariableOp&batch_normalization_223/ReadVariableOp2T
(batch_normalization_223/ReadVariableOp_1(batch_normalization_223/ReadVariableOp_12r
7batch_normalization_224/FusedBatchNormV3/ReadVariableOp7batch_normalization_224/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_224/FusedBatchNormV3/ReadVariableOp_19batch_normalization_224/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_224/ReadVariableOp&batch_normalization_224/ReadVariableOp2T
(batch_normalization_224/ReadVariableOp_1(batch_normalization_224/ReadVariableOp_12r
7batch_normalization_225/FusedBatchNormV3/ReadVariableOp7batch_normalization_225/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_225/FusedBatchNormV3/ReadVariableOp_19batch_normalization_225/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_225/ReadVariableOp&batch_normalization_225/ReadVariableOp2T
(batch_normalization_225/ReadVariableOp_1(batch_normalization_225/ReadVariableOp_12r
7batch_normalization_226/FusedBatchNormV3/ReadVariableOp7batch_normalization_226/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_226/FusedBatchNormV3/ReadVariableOp_19batch_normalization_226/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_226/ReadVariableOp&batch_normalization_226/ReadVariableOp2T
(batch_normalization_226/ReadVariableOp_1(batch_normalization_226/ReadVariableOp_12F
!conv2d_285/BiasAdd/ReadVariableOp!conv2d_285/BiasAdd/ReadVariableOp2D
 conv2d_285/Conv2D/ReadVariableOp conv2d_285/Conv2D/ReadVariableOp2F
!conv2d_286/BiasAdd/ReadVariableOp!conv2d_286/BiasAdd/ReadVariableOp2D
 conv2d_286/Conv2D/ReadVariableOp conv2d_286/Conv2D/ReadVariableOp2F
!conv2d_287/BiasAdd/ReadVariableOp!conv2d_287/BiasAdd/ReadVariableOp2D
 conv2d_287/Conv2D/ReadVariableOp conv2d_287/Conv2D/ReadVariableOp2F
!conv2d_288/BiasAdd/ReadVariableOp!conv2d_288/BiasAdd/ReadVariableOp2D
 conv2d_288/Conv2D/ReadVariableOp conv2d_288/Conv2D/ReadVariableOp2F
!conv2d_289/BiasAdd/ReadVariableOp!conv2d_289/BiasAdd/ReadVariableOp2D
 conv2d_289/Conv2D/ReadVariableOp conv2d_289/Conv2D/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521529

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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522091

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
?
i
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_3519992

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
E__inference_dense_48_layer_call_and_return_conditional_losses_3520151

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
?
?
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521857

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
??
? 
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3521299

inputsC
)conv2d_285_conv2d_readvariableop_resource:`8
*conv2d_285_biasadd_readvariableop_resource:`=
/batch_normalization_222_readvariableop_resource:`?
1batch_normalization_222_readvariableop_1_resource:`N
@batch_normalization_222_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_222_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_286_conv2d_readvariableop_resource:`?9
*conv2d_286_biasadd_readvariableop_resource:	?>
/batch_normalization_223_readvariableop_resource:	?@
1batch_normalization_223_readvariableop_1_resource:	?O
@batch_normalization_223_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_223_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_287_conv2d_readvariableop_resource:??9
*conv2d_287_biasadd_readvariableop_resource:	?>
/batch_normalization_224_readvariableop_resource:	?@
1batch_normalization_224_readvariableop_1_resource:	?O
@batch_normalization_224_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_224_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_288_conv2d_readvariableop_resource:??9
*conv2d_288_biasadd_readvariableop_resource:	?>
/batch_normalization_225_readvariableop_resource:	?@
1batch_normalization_225_readvariableop_1_resource:	?O
@batch_normalization_225_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_225_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_289_conv2d_readvariableop_resource:??9
*conv2d_289_biasadd_readvariableop_resource:	?>
/batch_normalization_226_readvariableop_resource:	?@
1batch_normalization_226_readvariableop_1_resource:	?O
@batch_normalization_226_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_226_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_48_matmul_readvariableop_resource:	?(6
(dense_48_biasadd_readvariableop_resource:
identity??&batch_normalization_222/AssignNewValue?(batch_normalization_222/AssignNewValue_1?7batch_normalization_222/FusedBatchNormV3/ReadVariableOp?9batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_222/ReadVariableOp?(batch_normalization_222/ReadVariableOp_1?&batch_normalization_223/AssignNewValue?(batch_normalization_223/AssignNewValue_1?7batch_normalization_223/FusedBatchNormV3/ReadVariableOp?9batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_223/ReadVariableOp?(batch_normalization_223/ReadVariableOp_1?&batch_normalization_224/AssignNewValue?(batch_normalization_224/AssignNewValue_1?7batch_normalization_224/FusedBatchNormV3/ReadVariableOp?9batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_224/ReadVariableOp?(batch_normalization_224/ReadVariableOp_1?&batch_normalization_225/AssignNewValue?(batch_normalization_225/AssignNewValue_1?7batch_normalization_225/FusedBatchNormV3/ReadVariableOp?9batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_225/ReadVariableOp?(batch_normalization_225/ReadVariableOp_1?&batch_normalization_226/AssignNewValue?(batch_normalization_226/AssignNewValue_1?7batch_normalization_226/FusedBatchNormV3/ReadVariableOp?9batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_226/ReadVariableOp?(batch_normalization_226/ReadVariableOp_1?!conv2d_285/BiasAdd/ReadVariableOp? conv2d_285/Conv2D/ReadVariableOp?!conv2d_286/BiasAdd/ReadVariableOp? conv2d_286/Conv2D/ReadVariableOp?!conv2d_287/BiasAdd/ReadVariableOp? conv2d_287/Conv2D/ReadVariableOp?!conv2d_288/BiasAdd/ReadVariableOp? conv2d_288/Conv2D/ReadVariableOp?!conv2d_289/BiasAdd/ReadVariableOp? conv2d_289/Conv2D/ReadVariableOp?dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?
 conv2d_285/Conv2D/ReadVariableOpReadVariableOp)conv2d_285_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_285/Conv2D/ReadVariableOp?
conv2d_285/Conv2DConv2Dinputs(conv2d_285/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_285/Conv2D?
!conv2d_285/BiasAdd/ReadVariableOpReadVariableOp*conv2d_285_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_285/BiasAdd/ReadVariableOp?
conv2d_285/BiasAddBiasAddconv2d_285/Conv2D:output:0)conv2d_285/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_285/BiasAdd?
conv2d_285/ReluReluconv2d_285/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_285/Relu?
&batch_normalization_222/ReadVariableOpReadVariableOp/batch_normalization_222_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_222/ReadVariableOp?
(batch_normalization_222/ReadVariableOp_1ReadVariableOp1batch_normalization_222_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_222/ReadVariableOp_1?
7batch_normalization_222/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_222_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_222/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_222_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_222/FusedBatchNormV3FusedBatchNormV3conv2d_285/Relu:activations:0.batch_normalization_222/ReadVariableOp:value:00batch_normalization_222/ReadVariableOp_1:value:0?batch_normalization_222/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_222/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_222/FusedBatchNormV3?
&batch_normalization_222/AssignNewValueAssignVariableOp@batch_normalization_222_fusedbatchnormv3_readvariableop_resource5batch_normalization_222/FusedBatchNormV3:batch_mean:08^batch_normalization_222/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_222/AssignNewValue?
(batch_normalization_222/AssignNewValue_1AssignVariableOpBbatch_normalization_222_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_222/FusedBatchNormV3:batch_variance:0:^batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_222/AssignNewValue_1?
max_pooling2d_47/MaxPoolMaxPool,batch_normalization_222/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPool?
 conv2d_286/Conv2D/ReadVariableOpReadVariableOp)conv2d_286_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_286/Conv2D/ReadVariableOp?
conv2d_286/Conv2DConv2D!max_pooling2d_47/MaxPool:output:0(conv2d_286/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_286/Conv2D?
!conv2d_286/BiasAdd/ReadVariableOpReadVariableOp*conv2d_286_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_286/BiasAdd/ReadVariableOp?
conv2d_286/BiasAddBiasAddconv2d_286/Conv2D:output:0)conv2d_286/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_286/BiasAdd?
conv2d_286/ReluReluconv2d_286/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_286/Relu?
&batch_normalization_223/ReadVariableOpReadVariableOp/batch_normalization_223_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_223/ReadVariableOp?
(batch_normalization_223/ReadVariableOp_1ReadVariableOp1batch_normalization_223_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_223/ReadVariableOp_1?
7batch_normalization_223/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_223_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_223/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_223_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_223/FusedBatchNormV3FusedBatchNormV3conv2d_286/Relu:activations:0.batch_normalization_223/ReadVariableOp:value:00batch_normalization_223/ReadVariableOp_1:value:0?batch_normalization_223/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_223/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_223/FusedBatchNormV3?
&batch_normalization_223/AssignNewValueAssignVariableOp@batch_normalization_223_fusedbatchnormv3_readvariableop_resource5batch_normalization_223/FusedBatchNormV3:batch_mean:08^batch_normalization_223/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_223/AssignNewValue?
(batch_normalization_223/AssignNewValue_1AssignVariableOpBbatch_normalization_223_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_223/FusedBatchNormV3:batch_variance:0:^batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_223/AssignNewValue_1?
max_pooling2d_48/MaxPoolMaxPool,batch_normalization_223/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_48/MaxPool?
 conv2d_287/Conv2D/ReadVariableOpReadVariableOp)conv2d_287_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_287/Conv2D/ReadVariableOp?
conv2d_287/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0(conv2d_287/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_287/Conv2D?
!conv2d_287/BiasAdd/ReadVariableOpReadVariableOp*conv2d_287_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_287/BiasAdd/ReadVariableOp?
conv2d_287/BiasAddBiasAddconv2d_287/Conv2D:output:0)conv2d_287/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_287/BiasAdd?
conv2d_287/ReluReluconv2d_287/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_287/Relu?
&batch_normalization_224/ReadVariableOpReadVariableOp/batch_normalization_224_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_224/ReadVariableOp?
(batch_normalization_224/ReadVariableOp_1ReadVariableOp1batch_normalization_224_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_224/ReadVariableOp_1?
7batch_normalization_224/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_224_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_224/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_224_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_224/FusedBatchNormV3FusedBatchNormV3conv2d_287/Relu:activations:0.batch_normalization_224/ReadVariableOp:value:00batch_normalization_224/ReadVariableOp_1:value:0?batch_normalization_224/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_224/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_224/FusedBatchNormV3?
&batch_normalization_224/AssignNewValueAssignVariableOp@batch_normalization_224_fusedbatchnormv3_readvariableop_resource5batch_normalization_224/FusedBatchNormV3:batch_mean:08^batch_normalization_224/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_224/AssignNewValue?
(batch_normalization_224/AssignNewValue_1AssignVariableOpBbatch_normalization_224_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_224/FusedBatchNormV3:batch_variance:0:^batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_224/AssignNewValue_1?
 conv2d_288/Conv2D/ReadVariableOpReadVariableOp)conv2d_288_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_288/Conv2D/ReadVariableOp?
conv2d_288/Conv2DConv2D,batch_normalization_224/FusedBatchNormV3:y:0(conv2d_288/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_288/Conv2D?
!conv2d_288/BiasAdd/ReadVariableOpReadVariableOp*conv2d_288_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_288/BiasAdd/ReadVariableOp?
conv2d_288/BiasAddBiasAddconv2d_288/Conv2D:output:0)conv2d_288/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_288/BiasAdd?
conv2d_288/ReluReluconv2d_288/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_288/Relu?
&batch_normalization_225/ReadVariableOpReadVariableOp/batch_normalization_225_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_225/ReadVariableOp?
(batch_normalization_225/ReadVariableOp_1ReadVariableOp1batch_normalization_225_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_225/ReadVariableOp_1?
7batch_normalization_225/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_225_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_225/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_225_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_225/FusedBatchNormV3FusedBatchNormV3conv2d_288/Relu:activations:0.batch_normalization_225/ReadVariableOp:value:00batch_normalization_225/ReadVariableOp_1:value:0?batch_normalization_225/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_225/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_225/FusedBatchNormV3?
&batch_normalization_225/AssignNewValueAssignVariableOp@batch_normalization_225_fusedbatchnormv3_readvariableop_resource5batch_normalization_225/FusedBatchNormV3:batch_mean:08^batch_normalization_225/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_225/AssignNewValue?
(batch_normalization_225/AssignNewValue_1AssignVariableOpBbatch_normalization_225_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_225/FusedBatchNormV3:batch_variance:0:^batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_225/AssignNewValue_1?
 conv2d_289/Conv2D/ReadVariableOpReadVariableOp)conv2d_289_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_289/Conv2D/ReadVariableOp?
conv2d_289/Conv2DConv2D,batch_normalization_225/FusedBatchNormV3:y:0(conv2d_289/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_289/Conv2D?
!conv2d_289/BiasAdd/ReadVariableOpReadVariableOp*conv2d_289_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_289/BiasAdd/ReadVariableOp?
conv2d_289/BiasAddBiasAddconv2d_289/Conv2D:output:0)conv2d_289/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_289/BiasAdd?
conv2d_289/ReluReluconv2d_289/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_289/Relu?
&batch_normalization_226/ReadVariableOpReadVariableOp/batch_normalization_226_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_226/ReadVariableOp?
(batch_normalization_226/ReadVariableOp_1ReadVariableOp1batch_normalization_226_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_226/ReadVariableOp_1?
7batch_normalization_226/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_226_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_226/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_226_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_226/FusedBatchNormV3FusedBatchNormV3conv2d_289/Relu:activations:0.batch_normalization_226/ReadVariableOp:value:00batch_normalization_226/ReadVariableOp_1:value:0?batch_normalization_226/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_226/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_226/FusedBatchNormV3?
&batch_normalization_226/AssignNewValueAssignVariableOp@batch_normalization_226_fusedbatchnormv3_readvariableop_resource5batch_normalization_226/FusedBatchNormV3:batch_mean:08^batch_normalization_226/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_226/AssignNewValue?
(batch_normalization_226/AssignNewValue_1AssignVariableOpBbatch_normalization_226_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_226/FusedBatchNormV3:batch_variance:0:^batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_226/AssignNewValue_1?
max_pooling2d_49/MaxPoolMaxPool,batch_normalization_226/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPoolu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_22/Const?
flatten_22/ReshapeReshape!max_pooling2d_49/MaxPool:output:0flatten_22/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_22/Reshape?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMulflatten_22/Reshape:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_48/BiasAdd|
dense_48/SigmoidSigmoiddense_48/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_48/Sigmoido
IdentityIdentitydense_48/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_222/AssignNewValue)^batch_normalization_222/AssignNewValue_18^batch_normalization_222/FusedBatchNormV3/ReadVariableOp:^batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_222/ReadVariableOp)^batch_normalization_222/ReadVariableOp_1'^batch_normalization_223/AssignNewValue)^batch_normalization_223/AssignNewValue_18^batch_normalization_223/FusedBatchNormV3/ReadVariableOp:^batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_223/ReadVariableOp)^batch_normalization_223/ReadVariableOp_1'^batch_normalization_224/AssignNewValue)^batch_normalization_224/AssignNewValue_18^batch_normalization_224/FusedBatchNormV3/ReadVariableOp:^batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_224/ReadVariableOp)^batch_normalization_224/ReadVariableOp_1'^batch_normalization_225/AssignNewValue)^batch_normalization_225/AssignNewValue_18^batch_normalization_225/FusedBatchNormV3/ReadVariableOp:^batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_225/ReadVariableOp)^batch_normalization_225/ReadVariableOp_1'^batch_normalization_226/AssignNewValue)^batch_normalization_226/AssignNewValue_18^batch_normalization_226/FusedBatchNormV3/ReadVariableOp:^batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_226/ReadVariableOp)^batch_normalization_226/ReadVariableOp_1"^conv2d_285/BiasAdd/ReadVariableOp!^conv2d_285/Conv2D/ReadVariableOp"^conv2d_286/BiasAdd/ReadVariableOp!^conv2d_286/Conv2D/ReadVariableOp"^conv2d_287/BiasAdd/ReadVariableOp!^conv2d_287/Conv2D/ReadVariableOp"^conv2d_288/BiasAdd/ReadVariableOp!^conv2d_288/Conv2D/ReadVariableOp"^conv2d_289/BiasAdd/ReadVariableOp!^conv2d_289/Conv2D/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_222/AssignNewValue&batch_normalization_222/AssignNewValue2T
(batch_normalization_222/AssignNewValue_1(batch_normalization_222/AssignNewValue_12r
7batch_normalization_222/FusedBatchNormV3/ReadVariableOp7batch_normalization_222/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_222/FusedBatchNormV3/ReadVariableOp_19batch_normalization_222/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_222/ReadVariableOp&batch_normalization_222/ReadVariableOp2T
(batch_normalization_222/ReadVariableOp_1(batch_normalization_222/ReadVariableOp_12P
&batch_normalization_223/AssignNewValue&batch_normalization_223/AssignNewValue2T
(batch_normalization_223/AssignNewValue_1(batch_normalization_223/AssignNewValue_12r
7batch_normalization_223/FusedBatchNormV3/ReadVariableOp7batch_normalization_223/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_223/FusedBatchNormV3/ReadVariableOp_19batch_normalization_223/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_223/ReadVariableOp&batch_normalization_223/ReadVariableOp2T
(batch_normalization_223/ReadVariableOp_1(batch_normalization_223/ReadVariableOp_12P
&batch_normalization_224/AssignNewValue&batch_normalization_224/AssignNewValue2T
(batch_normalization_224/AssignNewValue_1(batch_normalization_224/AssignNewValue_12r
7batch_normalization_224/FusedBatchNormV3/ReadVariableOp7batch_normalization_224/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_224/FusedBatchNormV3/ReadVariableOp_19batch_normalization_224/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_224/ReadVariableOp&batch_normalization_224/ReadVariableOp2T
(batch_normalization_224/ReadVariableOp_1(batch_normalization_224/ReadVariableOp_12P
&batch_normalization_225/AssignNewValue&batch_normalization_225/AssignNewValue2T
(batch_normalization_225/AssignNewValue_1(batch_normalization_225/AssignNewValue_12r
7batch_normalization_225/FusedBatchNormV3/ReadVariableOp7batch_normalization_225/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_225/FusedBatchNormV3/ReadVariableOp_19batch_normalization_225/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_225/ReadVariableOp&batch_normalization_225/ReadVariableOp2T
(batch_normalization_225/ReadVariableOp_1(batch_normalization_225/ReadVariableOp_12P
&batch_normalization_226/AssignNewValue&batch_normalization_226/AssignNewValue2T
(batch_normalization_226/AssignNewValue_1(batch_normalization_226/AssignNewValue_12r
7batch_normalization_226/FusedBatchNormV3/ReadVariableOp7batch_normalization_226/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_226/FusedBatchNormV3/ReadVariableOp_19batch_normalization_226/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_226/ReadVariableOp&batch_normalization_226/ReadVariableOp2T
(batch_normalization_226/ReadVariableOp_1(batch_normalization_226/ReadVariableOp_12F
!conv2d_285/BiasAdd/ReadVariableOp!conv2d_285/BiasAdd/ReadVariableOp2D
 conv2d_285/Conv2D/ReadVariableOp conv2d_285/Conv2D/ReadVariableOp2F
!conv2d_286/BiasAdd/ReadVariableOp!conv2d_286/BiasAdd/ReadVariableOp2D
 conv2d_286/Conv2D/ReadVariableOp conv2d_286/Conv2D/ReadVariableOp2F
!conv2d_287/BiasAdd/ReadVariableOp!conv2d_287/BiasAdd/ReadVariableOp2D
 conv2d_287/Conv2D/ReadVariableOp conv2d_287/Conv2D/ReadVariableOp2F
!conv2d_288/BiasAdd/ReadVariableOp!conv2d_288/BiasAdd/ReadVariableOp2D
 conv2d_288/Conv2D/ReadVariableOp conv2d_288/Conv2D/ReadVariableOp2F
!conv2d_289/BiasAdd/ReadVariableOp!conv2d_289/BiasAdd/ReadVariableOp2D
 conv2d_289/Conv2D/ReadVariableOp conv2d_289/Conv2D/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3519805

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
%__inference_signature_wrapper_3521057
conv2d_285_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_285_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_35191912
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
_user_specified_nameconv2d_285_input
?
?
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3520505

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
?
?
,__inference_alex_net_7_layer_call_fn_3520816
conv2d_285_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_285_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_35206802
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
_user_specified_nameconv2d_285_input
??
?"
"__inference__wrapped_model_3519191
conv2d_285_inputN
4alex_net_7_conv2d_285_conv2d_readvariableop_resource:`C
5alex_net_7_conv2d_285_biasadd_readvariableop_resource:`H
:alex_net_7_batch_normalization_222_readvariableop_resource:`J
<alex_net_7_batch_normalization_222_readvariableop_1_resource:`Y
Kalex_net_7_batch_normalization_222_fusedbatchnormv3_readvariableop_resource:`[
Malex_net_7_batch_normalization_222_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_7_conv2d_286_conv2d_readvariableop_resource:`?D
5alex_net_7_conv2d_286_biasadd_readvariableop_resource:	?I
:alex_net_7_batch_normalization_223_readvariableop_resource:	?K
<alex_net_7_batch_normalization_223_readvariableop_1_resource:	?Z
Kalex_net_7_batch_normalization_223_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_7_batch_normalization_223_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_7_conv2d_287_conv2d_readvariableop_resource:??D
5alex_net_7_conv2d_287_biasadd_readvariableop_resource:	?I
:alex_net_7_batch_normalization_224_readvariableop_resource:	?K
<alex_net_7_batch_normalization_224_readvariableop_1_resource:	?Z
Kalex_net_7_batch_normalization_224_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_7_batch_normalization_224_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_7_conv2d_288_conv2d_readvariableop_resource:??D
5alex_net_7_conv2d_288_biasadd_readvariableop_resource:	?I
:alex_net_7_batch_normalization_225_readvariableop_resource:	?K
<alex_net_7_batch_normalization_225_readvariableop_1_resource:	?Z
Kalex_net_7_batch_normalization_225_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_7_batch_normalization_225_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_7_conv2d_289_conv2d_readvariableop_resource:??D
5alex_net_7_conv2d_289_biasadd_readvariableop_resource:	?I
:alex_net_7_batch_normalization_226_readvariableop_resource:	?K
<alex_net_7_batch_normalization_226_readvariableop_1_resource:	?Z
Kalex_net_7_batch_normalization_226_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_7_batch_normalization_226_fusedbatchnormv3_readvariableop_1_resource:	?E
2alex_net_7_dense_48_matmul_readvariableop_resource:	?(A
3alex_net_7_dense_48_biasadd_readvariableop_resource:
identity??Balex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_222/ReadVariableOp?3alex_net_7/batch_normalization_222/ReadVariableOp_1?Balex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_223/ReadVariableOp?3alex_net_7/batch_normalization_223/ReadVariableOp_1?Balex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_224/ReadVariableOp?3alex_net_7/batch_normalization_224/ReadVariableOp_1?Balex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_225/ReadVariableOp?3alex_net_7/batch_normalization_225/ReadVariableOp_1?Balex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_226/ReadVariableOp?3alex_net_7/batch_normalization_226/ReadVariableOp_1?,alex_net_7/conv2d_285/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_285/Conv2D/ReadVariableOp?,alex_net_7/conv2d_286/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_286/Conv2D/ReadVariableOp?,alex_net_7/conv2d_287/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_287/Conv2D/ReadVariableOp?,alex_net_7/conv2d_288/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_288/Conv2D/ReadVariableOp?,alex_net_7/conv2d_289/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_289/Conv2D/ReadVariableOp?*alex_net_7/dense_48/BiasAdd/ReadVariableOp?)alex_net_7/dense_48/MatMul/ReadVariableOp?
+alex_net_7/conv2d_285/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_285_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_7/conv2d_285/Conv2D/ReadVariableOp?
alex_net_7/conv2d_285/Conv2DConv2Dconv2d_285_input3alex_net_7/conv2d_285/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_7/conv2d_285/Conv2D?
,alex_net_7/conv2d_285/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_285_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_7/conv2d_285/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_285/BiasAddBiasAdd%alex_net_7/conv2d_285/Conv2D:output:04alex_net_7/conv2d_285/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
alex_net_7/conv2d_285/BiasAdd?
alex_net_7/conv2d_285/ReluRelu&alex_net_7/conv2d_285/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_7/conv2d_285/Relu?
1alex_net_7/batch_normalization_222/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_222_readvariableop_resource*
_output_shapes
:`*
dtype023
1alex_net_7/batch_normalization_222/ReadVariableOp?
3alex_net_7/batch_normalization_222/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_222_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3alex_net_7/batch_normalization_222/ReadVariableOp_1?
Balex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_222_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02D
Balex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_222_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02F
Dalex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_222/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_285/Relu:activations:09alex_net_7/batch_normalization_222/ReadVariableOp:value:0;alex_net_7/batch_normalization_222/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_222/FusedBatchNormV3?
#alex_net_7/max_pooling2d_47/MaxPoolMaxPool7alex_net_7/batch_normalization_222/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_7/max_pooling2d_47/MaxPool?
+alex_net_7/conv2d_286/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_286_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02-
+alex_net_7/conv2d_286/Conv2D/ReadVariableOp?
alex_net_7/conv2d_286/Conv2DConv2D,alex_net_7/max_pooling2d_47/MaxPool:output:03alex_net_7/conv2d_286/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_7/conv2d_286/Conv2D?
,alex_net_7/conv2d_286/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_286_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_7/conv2d_286/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_286/BiasAddBiasAdd%alex_net_7/conv2d_286/Conv2D:output:04alex_net_7/conv2d_286/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
alex_net_7/conv2d_286/BiasAdd?
alex_net_7/conv2d_286/ReluRelu&alex_net_7/conv2d_286/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_7/conv2d_286/Relu?
1alex_net_7/batch_normalization_223/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_223_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_7/batch_normalization_223/ReadVariableOp?
3alex_net_7/batch_normalization_223/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_223_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_7/batch_normalization_223/ReadVariableOp_1?
Balex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_223_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_223_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_223/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_286/Relu:activations:09alex_net_7/batch_normalization_223/ReadVariableOp:value:0;alex_net_7/batch_normalization_223/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_223/FusedBatchNormV3?
#alex_net_7/max_pooling2d_48/MaxPoolMaxPool7alex_net_7/batch_normalization_223/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#alex_net_7/max_pooling2d_48/MaxPool?
+alex_net_7/conv2d_287/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_287_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_7/conv2d_287/Conv2D/ReadVariableOp?
alex_net_7/conv2d_287/Conv2DConv2D,alex_net_7/max_pooling2d_48/MaxPool:output:03alex_net_7/conv2d_287/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_7/conv2d_287/Conv2D?
,alex_net_7/conv2d_287/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_287_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_7/conv2d_287/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_287/BiasAddBiasAdd%alex_net_7/conv2d_287/Conv2D:output:04alex_net_7/conv2d_287/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_287/BiasAdd?
alex_net_7/conv2d_287/ReluRelu&alex_net_7/conv2d_287/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_287/Relu?
1alex_net_7/batch_normalization_224/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_224_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_7/batch_normalization_224/ReadVariableOp?
3alex_net_7/batch_normalization_224/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_224_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_7/batch_normalization_224/ReadVariableOp_1?
Balex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_224_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_224_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_224/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_287/Relu:activations:09alex_net_7/batch_normalization_224/ReadVariableOp:value:0;alex_net_7/batch_normalization_224/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_224/FusedBatchNormV3?
+alex_net_7/conv2d_288/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_288_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_7/conv2d_288/Conv2D/ReadVariableOp?
alex_net_7/conv2d_288/Conv2DConv2D7alex_net_7/batch_normalization_224/FusedBatchNormV3:y:03alex_net_7/conv2d_288/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_7/conv2d_288/Conv2D?
,alex_net_7/conv2d_288/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_288_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_7/conv2d_288/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_288/BiasAddBiasAdd%alex_net_7/conv2d_288/Conv2D:output:04alex_net_7/conv2d_288/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_288/BiasAdd?
alex_net_7/conv2d_288/ReluRelu&alex_net_7/conv2d_288/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_288/Relu?
1alex_net_7/batch_normalization_225/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_225_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_7/batch_normalization_225/ReadVariableOp?
3alex_net_7/batch_normalization_225/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_225_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_7/batch_normalization_225/ReadVariableOp_1?
Balex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_225_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_225_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_225/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_288/Relu:activations:09alex_net_7/batch_normalization_225/ReadVariableOp:value:0;alex_net_7/batch_normalization_225/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_225/FusedBatchNormV3?
+alex_net_7/conv2d_289/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_289_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_7/conv2d_289/Conv2D/ReadVariableOp?
alex_net_7/conv2d_289/Conv2DConv2D7alex_net_7/batch_normalization_225/FusedBatchNormV3:y:03alex_net_7/conv2d_289/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_7/conv2d_289/Conv2D?
,alex_net_7/conv2d_289/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_289_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_7/conv2d_289/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_289/BiasAddBiasAdd%alex_net_7/conv2d_289/Conv2D:output:04alex_net_7/conv2d_289/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_289/BiasAdd?
alex_net_7/conv2d_289/ReluRelu&alex_net_7/conv2d_289/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_289/Relu?
1alex_net_7/batch_normalization_226/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_226_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_7/batch_normalization_226/ReadVariableOp?
3alex_net_7/batch_normalization_226/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_226_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_7/batch_normalization_226/ReadVariableOp_1?
Balex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_226_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_226_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_226/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_289/Relu:activations:09alex_net_7/batch_normalization_226/ReadVariableOp:value:0;alex_net_7/batch_normalization_226/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_226/FusedBatchNormV3?
#alex_net_7/max_pooling2d_49/MaxPoolMaxPool7alex_net_7/batch_normalization_226/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2%
#alex_net_7/max_pooling2d_49/MaxPool?
alex_net_7/flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_7/flatten_22/Const?
alex_net_7/flatten_22/ReshapeReshape,alex_net_7/max_pooling2d_49/MaxPool:output:0$alex_net_7/flatten_22/Const:output:0*
T0*(
_output_shapes
:??????????(2
alex_net_7/flatten_22/Reshape?
)alex_net_7/dense_48/MatMul/ReadVariableOpReadVariableOp2alex_net_7_dense_48_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02+
)alex_net_7/dense_48/MatMul/ReadVariableOp?
alex_net_7/dense_48/MatMulMatMul&alex_net_7/flatten_22/Reshape:output:01alex_net_7/dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_7/dense_48/MatMul?
*alex_net_7/dense_48/BiasAdd/ReadVariableOpReadVariableOp3alex_net_7_dense_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_7/dense_48/BiasAdd/ReadVariableOp?
alex_net_7/dense_48/BiasAddBiasAdd$alex_net_7/dense_48/MatMul:product:02alex_net_7/dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_7/dense_48/BiasAdd?
alex_net_7/dense_48/SigmoidSigmoid$alex_net_7/dense_48/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_7/dense_48/Sigmoidz
IdentityIdentityalex_net_7/dense_48/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpC^alex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_222/ReadVariableOp4^alex_net_7/batch_normalization_222/ReadVariableOp_1C^alex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_223/ReadVariableOp4^alex_net_7/batch_normalization_223/ReadVariableOp_1C^alex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_224/ReadVariableOp4^alex_net_7/batch_normalization_224/ReadVariableOp_1C^alex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_225/ReadVariableOp4^alex_net_7/batch_normalization_225/ReadVariableOp_1C^alex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_226/ReadVariableOp4^alex_net_7/batch_normalization_226/ReadVariableOp_1-^alex_net_7/conv2d_285/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_285/Conv2D/ReadVariableOp-^alex_net_7/conv2d_286/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_286/Conv2D/ReadVariableOp-^alex_net_7/conv2d_287/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_287/Conv2D/ReadVariableOp-^alex_net_7/conv2d_288/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_288/Conv2D/ReadVariableOp-^alex_net_7/conv2d_289/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_289/Conv2D/ReadVariableOp+^alex_net_7/dense_48/BiasAdd/ReadVariableOp*^alex_net_7/dense_48/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Balex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_222/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_222/ReadVariableOp1alex_net_7/batch_normalization_222/ReadVariableOp2j
3alex_net_7/batch_normalization_222/ReadVariableOp_13alex_net_7/batch_normalization_222/ReadVariableOp_12?
Balex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_223/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_223/ReadVariableOp1alex_net_7/batch_normalization_223/ReadVariableOp2j
3alex_net_7/batch_normalization_223/ReadVariableOp_13alex_net_7/batch_normalization_223/ReadVariableOp_12?
Balex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_224/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_224/ReadVariableOp1alex_net_7/batch_normalization_224/ReadVariableOp2j
3alex_net_7/batch_normalization_224/ReadVariableOp_13alex_net_7/batch_normalization_224/ReadVariableOp_12?
Balex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_225/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_225/ReadVariableOp1alex_net_7/batch_normalization_225/ReadVariableOp2j
3alex_net_7/batch_normalization_225/ReadVariableOp_13alex_net_7/batch_normalization_225/ReadVariableOp_12?
Balex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_226/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_226/ReadVariableOp1alex_net_7/batch_normalization_226/ReadVariableOp2j
3alex_net_7/batch_normalization_226/ReadVariableOp_13alex_net_7/batch_normalization_226/ReadVariableOp_12\
,alex_net_7/conv2d_285/BiasAdd/ReadVariableOp,alex_net_7/conv2d_285/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_285/Conv2D/ReadVariableOp+alex_net_7/conv2d_285/Conv2D/ReadVariableOp2\
,alex_net_7/conv2d_286/BiasAdd/ReadVariableOp,alex_net_7/conv2d_286/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_286/Conv2D/ReadVariableOp+alex_net_7/conv2d_286/Conv2D/ReadVariableOp2\
,alex_net_7/conv2d_287/BiasAdd/ReadVariableOp,alex_net_7/conv2d_287/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_287/Conv2D/ReadVariableOp+alex_net_7/conv2d_287/Conv2D/ReadVariableOp2\
,alex_net_7/conv2d_288/BiasAdd/ReadVariableOp,alex_net_7/conv2d_288/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_288/Conv2D/ReadVariableOp+alex_net_7/conv2d_288/Conv2D/ReadVariableOp2\
,alex_net_7/conv2d_289/BiasAdd/ReadVariableOp,alex_net_7/conv2d_289/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_289/Conv2D/ReadVariableOp+alex_net_7/conv2d_289/Conv2D/ReadVariableOp2X
*alex_net_7/dense_48/BiasAdd/ReadVariableOp*alex_net_7/dense_48/BiasAdd/ReadVariableOp2V
)alex_net_7/dense_48/MatMul/ReadVariableOp)alex_net_7/dense_48/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_285_input
?	
?
9__inference_batch_normalization_224_layer_call_fn_3521896

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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_35200282
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
?Y
?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3520982
conv2d_285_input,
conv2d_285_3520902:` 
conv2d_285_3520904:`-
batch_normalization_222_3520907:`-
batch_normalization_222_3520909:`-
batch_normalization_222_3520911:`-
batch_normalization_222_3520913:`-
conv2d_286_3520917:`?!
conv2d_286_3520919:	?.
batch_normalization_223_3520922:	?.
batch_normalization_223_3520924:	?.
batch_normalization_223_3520926:	?.
batch_normalization_223_3520928:	?.
conv2d_287_3520932:??!
conv2d_287_3520934:	?.
batch_normalization_224_3520937:	?.
batch_normalization_224_3520939:	?.
batch_normalization_224_3520941:	?.
batch_normalization_224_3520943:	?.
conv2d_288_3520946:??!
conv2d_288_3520948:	?.
batch_normalization_225_3520951:	?.
batch_normalization_225_3520953:	?.
batch_normalization_225_3520955:	?.
batch_normalization_225_3520957:	?.
conv2d_289_3520960:??!
conv2d_289_3520962:	?.
batch_normalization_226_3520965:	?.
batch_normalization_226_3520967:	?.
batch_normalization_226_3520969:	?.
batch_normalization_226_3520971:	?#
dense_48_3520976:	?(
dense_48_3520978:
identity??/batch_normalization_222/StatefulPartitionedCall?/batch_normalization_223/StatefulPartitionedCall?/batch_normalization_224/StatefulPartitionedCall?/batch_normalization_225/StatefulPartitionedCall?/batch_normalization_226/StatefulPartitionedCall?"conv2d_285/StatefulPartitionedCall?"conv2d_286/StatefulPartitionedCall?"conv2d_287/StatefulPartitionedCall?"conv2d_288/StatefulPartitionedCall?"conv2d_289/StatefulPartitionedCall? dense_48/StatefulPartitionedCall?
"conv2d_285/StatefulPartitionedCallStatefulPartitionedCallconv2d_285_inputconv2d_285_3520902conv2d_285_3520904*
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
G__inference_conv2d_285_layer_call_and_return_conditional_losses_35199052$
"conv2d_285/StatefulPartitionedCall?
/batch_normalization_222/StatefulPartitionedCallStatefulPartitionedCall+conv2d_285/StatefulPartitionedCall:output:0batch_normalization_222_3520907batch_normalization_222_3520909batch_normalization_222_3520911batch_normalization_222_3520913*
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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_352050521
/batch_normalization_222/StatefulPartitionedCall?
 max_pooling2d_47/PartitionedCallPartitionedCall8batch_normalization_222/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_35199422"
 max_pooling2d_47/PartitionedCall?
"conv2d_286/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_286_3520917conv2d_286_3520919*
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
G__inference_conv2d_286_layer_call_and_return_conditional_losses_35199552$
"conv2d_286/StatefulPartitionedCall?
/batch_normalization_223/StatefulPartitionedCallStatefulPartitionedCall+conv2d_286/StatefulPartitionedCall:output:0batch_normalization_223_3520922batch_normalization_223_3520924batch_normalization_223_3520926batch_normalization_223_3520928*
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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_352044621
/batch_normalization_223/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall8batch_normalization_223/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_35199922"
 max_pooling2d_48/PartitionedCall?
"conv2d_287/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_287_3520932conv2d_287_3520934*
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
G__inference_conv2d_287_layer_call_and_return_conditional_losses_35200052$
"conv2d_287/StatefulPartitionedCall?
/batch_normalization_224/StatefulPartitionedCallStatefulPartitionedCall+conv2d_287/StatefulPartitionedCall:output:0batch_normalization_224_3520937batch_normalization_224_3520939batch_normalization_224_3520941batch_normalization_224_3520943*
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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_352038721
/batch_normalization_224/StatefulPartitionedCall?
"conv2d_288/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_224/StatefulPartitionedCall:output:0conv2d_288_3520946conv2d_288_3520948*
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
G__inference_conv2d_288_layer_call_and_return_conditional_losses_35200492$
"conv2d_288/StatefulPartitionedCall?
/batch_normalization_225/StatefulPartitionedCallStatefulPartitionedCall+conv2d_288/StatefulPartitionedCall:output:0batch_normalization_225_3520951batch_normalization_225_3520953batch_normalization_225_3520955batch_normalization_225_3520957*
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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_352033321
/batch_normalization_225/StatefulPartitionedCall?
"conv2d_289/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_225/StatefulPartitionedCall:output:0conv2d_289_3520960conv2d_289_3520962*
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
G__inference_conv2d_289_layer_call_and_return_conditional_losses_35200932$
"conv2d_289/StatefulPartitionedCall?
/batch_normalization_226/StatefulPartitionedCallStatefulPartitionedCall+conv2d_289/StatefulPartitionedCall:output:0batch_normalization_226_3520965batch_normalization_226_3520967batch_normalization_226_3520969batch_normalization_226_3520971*
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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_352027921
/batch_normalization_226/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall8batch_normalization_226/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_35201302"
 max_pooling2d_49/PartitionedCall?
flatten_22/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
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
G__inference_flatten_22_layer_call_and_return_conditional_losses_35201382
flatten_22/PartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_48_3520976dense_48_3520978*
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
E__inference_dense_48_layer_call_and_return_conditional_losses_35201512"
 dense_48/StatefulPartitionedCall?
IdentityIdentity)dense_48/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_222/StatefulPartitionedCall0^batch_normalization_223/StatefulPartitionedCall0^batch_normalization_224/StatefulPartitionedCall0^batch_normalization_225/StatefulPartitionedCall0^batch_normalization_226/StatefulPartitionedCall#^conv2d_285/StatefulPartitionedCall#^conv2d_286/StatefulPartitionedCall#^conv2d_287/StatefulPartitionedCall#^conv2d_288/StatefulPartitionedCall#^conv2d_289/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_222/StatefulPartitionedCall/batch_normalization_222/StatefulPartitionedCall2b
/batch_normalization_223/StatefulPartitionedCall/batch_normalization_223/StatefulPartitionedCall2b
/batch_normalization_224/StatefulPartitionedCall/batch_normalization_224/StatefulPartitionedCall2b
/batch_normalization_225/StatefulPartitionedCall/batch_normalization_225/StatefulPartitionedCall2b
/batch_normalization_226/StatefulPartitionedCall/batch_normalization_226/StatefulPartitionedCall2H
"conv2d_285/StatefulPartitionedCall"conv2d_285/StatefulPartitionedCall2H
"conv2d_286/StatefulPartitionedCall"conv2d_286/StatefulPartitionedCall2H
"conv2d_287/StatefulPartitionedCall"conv2d_287/StatefulPartitionedCall2H
"conv2d_288/StatefulPartitionedCall"conv2d_288/StatefulPartitionedCall2H
"conv2d_289/StatefulPartitionedCall"conv2d_289/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_285_input
?
?
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3519213

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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_3519326

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
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_3521755

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
9__inference_batch_normalization_223_layer_call_fn_3521745

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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_35204462
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
?
9__inference_batch_normalization_225_layer_call_fn_3522027

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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_35196792
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
9__inference_batch_normalization_225_layer_call_fn_3522040

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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_35200722
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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3519928

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
9__inference_batch_normalization_226_layer_call_fn_3522158

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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_35197612
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
9__inference_batch_normalization_224_layer_call_fn_3521883

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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_35195532
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
?
?
,__inference_conv2d_289_layer_call_fn_3522073

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
G__inference_conv2d_289_layer_call_and_return_conditional_losses_35200932
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
9__inference_batch_normalization_222_layer_call_fn_3521555

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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_35192572
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
9__inference_batch_normalization_225_layer_call_fn_3522053

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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_35203332
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
G__inference_conv2d_285_layer_call_and_return_conditional_losses_3521448

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
,__inference_conv2d_285_layer_call_fn_3521457

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
G__inference_conv2d_285_layer_call_and_return_conditional_losses_35199052
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
?X
?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3520158

inputs,
conv2d_285_3519906:` 
conv2d_285_3519908:`-
batch_normalization_222_3519929:`-
batch_normalization_222_3519931:`-
batch_normalization_222_3519933:`-
batch_normalization_222_3519935:`-
conv2d_286_3519956:`?!
conv2d_286_3519958:	?.
batch_normalization_223_3519979:	?.
batch_normalization_223_3519981:	?.
batch_normalization_223_3519983:	?.
batch_normalization_223_3519985:	?.
conv2d_287_3520006:??!
conv2d_287_3520008:	?.
batch_normalization_224_3520029:	?.
batch_normalization_224_3520031:	?.
batch_normalization_224_3520033:	?.
batch_normalization_224_3520035:	?.
conv2d_288_3520050:??!
conv2d_288_3520052:	?.
batch_normalization_225_3520073:	?.
batch_normalization_225_3520075:	?.
batch_normalization_225_3520077:	?.
batch_normalization_225_3520079:	?.
conv2d_289_3520094:??!
conv2d_289_3520096:	?.
batch_normalization_226_3520117:	?.
batch_normalization_226_3520119:	?.
batch_normalization_226_3520121:	?.
batch_normalization_226_3520123:	?#
dense_48_3520152:	?(
dense_48_3520154:
identity??/batch_normalization_222/StatefulPartitionedCall?/batch_normalization_223/StatefulPartitionedCall?/batch_normalization_224/StatefulPartitionedCall?/batch_normalization_225/StatefulPartitionedCall?/batch_normalization_226/StatefulPartitionedCall?"conv2d_285/StatefulPartitionedCall?"conv2d_286/StatefulPartitionedCall?"conv2d_287/StatefulPartitionedCall?"conv2d_288/StatefulPartitionedCall?"conv2d_289/StatefulPartitionedCall? dense_48/StatefulPartitionedCall?
"conv2d_285/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_285_3519906conv2d_285_3519908*
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
G__inference_conv2d_285_layer_call_and_return_conditional_losses_35199052$
"conv2d_285/StatefulPartitionedCall?
/batch_normalization_222/StatefulPartitionedCallStatefulPartitionedCall+conv2d_285/StatefulPartitionedCall:output:0batch_normalization_222_3519929batch_normalization_222_3519931batch_normalization_222_3519933batch_normalization_222_3519935*
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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_351992821
/batch_normalization_222/StatefulPartitionedCall?
 max_pooling2d_47/PartitionedCallPartitionedCall8batch_normalization_222/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_35199422"
 max_pooling2d_47/PartitionedCall?
"conv2d_286/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_286_3519956conv2d_286_3519958*
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
G__inference_conv2d_286_layer_call_and_return_conditional_losses_35199552$
"conv2d_286/StatefulPartitionedCall?
/batch_normalization_223/StatefulPartitionedCallStatefulPartitionedCall+conv2d_286/StatefulPartitionedCall:output:0batch_normalization_223_3519979batch_normalization_223_3519981batch_normalization_223_3519983batch_normalization_223_3519985*
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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_351997821
/batch_normalization_223/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall8batch_normalization_223/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_35199922"
 max_pooling2d_48/PartitionedCall?
"conv2d_287/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_287_3520006conv2d_287_3520008*
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
G__inference_conv2d_287_layer_call_and_return_conditional_losses_35200052$
"conv2d_287/StatefulPartitionedCall?
/batch_normalization_224/StatefulPartitionedCallStatefulPartitionedCall+conv2d_287/StatefulPartitionedCall:output:0batch_normalization_224_3520029batch_normalization_224_3520031batch_normalization_224_3520033batch_normalization_224_3520035*
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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_352002821
/batch_normalization_224/StatefulPartitionedCall?
"conv2d_288/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_224/StatefulPartitionedCall:output:0conv2d_288_3520050conv2d_288_3520052*
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
G__inference_conv2d_288_layer_call_and_return_conditional_losses_35200492$
"conv2d_288/StatefulPartitionedCall?
/batch_normalization_225/StatefulPartitionedCallStatefulPartitionedCall+conv2d_288/StatefulPartitionedCall:output:0batch_normalization_225_3520073batch_normalization_225_3520075batch_normalization_225_3520077batch_normalization_225_3520079*
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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_352007221
/batch_normalization_225/StatefulPartitionedCall?
"conv2d_289/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_225/StatefulPartitionedCall:output:0conv2d_289_3520094conv2d_289_3520096*
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
G__inference_conv2d_289_layer_call_and_return_conditional_losses_35200932$
"conv2d_289/StatefulPartitionedCall?
/batch_normalization_226/StatefulPartitionedCallStatefulPartitionedCall+conv2d_289/StatefulPartitionedCall:output:0batch_normalization_226_3520117batch_normalization_226_3520119batch_normalization_226_3520121batch_normalization_226_3520123*
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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_352011621
/batch_normalization_226/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall8batch_normalization_226/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_35201302"
 max_pooling2d_49/PartitionedCall?
flatten_22/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
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
G__inference_flatten_22_layer_call_and_return_conditional_losses_35201382
flatten_22/PartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_48_3520152dense_48_3520154*
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
E__inference_dense_48_layer_call_and_return_conditional_losses_35201512"
 dense_48/StatefulPartitionedCall?
IdentityIdentity)dense_48/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_222/StatefulPartitionedCall0^batch_normalization_223/StatefulPartitionedCall0^batch_normalization_224/StatefulPartitionedCall0^batch_normalization_225/StatefulPartitionedCall0^batch_normalization_226/StatefulPartitionedCall#^conv2d_285/StatefulPartitionedCall#^conv2d_286/StatefulPartitionedCall#^conv2d_287/StatefulPartitionedCall#^conv2d_288/StatefulPartitionedCall#^conv2d_289/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_222/StatefulPartitionedCall/batch_normalization_222/StatefulPartitionedCall2b
/batch_normalization_223/StatefulPartitionedCall/batch_normalization_223/StatefulPartitionedCall2b
/batch_normalization_224/StatefulPartitionedCall/batch_normalization_224/StatefulPartitionedCall2b
/batch_normalization_225/StatefulPartitionedCall/batch_normalization_225/StatefulPartitionedCall2b
/batch_normalization_226/StatefulPartitionedCall/batch_normalization_226/StatefulPartitionedCall2H
"conv2d_285/StatefulPartitionedCall"conv2d_285/StatefulPartitionedCall2H
"conv2d_286/StatefulPartitionedCall"conv2d_286/StatefulPartitionedCall2H
"conv2d_287/StatefulPartitionedCall"conv2d_287/StatefulPartitionedCall2H
"conv2d_288/StatefulPartitionedCall"conv2d_288/StatefulPartitionedCall2H
"conv2d_289/StatefulPartitionedCall"conv2d_289/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3519679

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
c
G__inference_flatten_22_layer_call_and_return_conditional_losses_3522223

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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_3521591

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
conv2d_285_inputC
"serving_default_conv2d_285_input:0???????????<
dense_480
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
+:)`2conv2d_285/kernel
:`2conv2d_285/bias
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
+:)`2batch_normalization_222/gamma
*:(`2batch_normalization_222/beta
3:1` (2#batch_normalization_222/moving_mean
7:5` (2'batch_normalization_222/moving_variance
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
,:*`?2conv2d_286/kernel
:?2conv2d_286/bias
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
,:*?2batch_normalization_223/gamma
+:)?2batch_normalization_223/beta
4:2? (2#batch_normalization_223/moving_mean
8:6? (2'batch_normalization_223/moving_variance
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
-:+??2conv2d_287/kernel
:?2conv2d_287/bias
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
,:*?2batch_normalization_224/gamma
+:)?2batch_normalization_224/beta
4:2? (2#batch_normalization_224/moving_mean
8:6? (2'batch_normalization_224/moving_variance
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
-:+??2conv2d_288/kernel
:?2conv2d_288/bias
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
,:*?2batch_normalization_225/gamma
+:)?2batch_normalization_225/beta
4:2? (2#batch_normalization_225/moving_mean
8:6? (2'batch_normalization_225/moving_variance
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
-:+??2conv2d_289/kernel
:?2conv2d_289/bias
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
,:*?2batch_normalization_226/gamma
+:)?2batch_normalization_226/beta
4:2? (2#batch_normalization_226/moving_mean
8:6? (2'batch_normalization_226/moving_variance
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
": 	?(2dense_48/kernel
:2dense_48/bias
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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3521178
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3521299
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3520899
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3520982?
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
"__inference__wrapped_model_3519191conv2d_285_input"?
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
,__inference_alex_net_7_layer_call_fn_3520225
,__inference_alex_net_7_layer_call_fn_3521368
,__inference_alex_net_7_layer_call_fn_3521437
,__inference_alex_net_7_layer_call_fn_3520816?
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
G__inference_conv2d_285_layer_call_and_return_conditional_losses_3521448?
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
,__inference_conv2d_285_layer_call_fn_3521457?
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
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521475
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521493
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521511
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521529?
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
9__inference_batch_normalization_222_layer_call_fn_3521542
9__inference_batch_normalization_222_layer_call_fn_3521555
9__inference_batch_normalization_222_layer_call_fn_3521568
9__inference_batch_normalization_222_layer_call_fn_3521581?
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
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_3521586
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_3521591?
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
2__inference_max_pooling2d_47_layer_call_fn_3521596
2__inference_max_pooling2d_47_layer_call_fn_3521601?
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
G__inference_conv2d_286_layer_call_and_return_conditional_losses_3521612?
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
,__inference_conv2d_286_layer_call_fn_3521621?
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
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521639
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521657
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521675
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521693?
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
9__inference_batch_normalization_223_layer_call_fn_3521706
9__inference_batch_normalization_223_layer_call_fn_3521719
9__inference_batch_normalization_223_layer_call_fn_3521732
9__inference_batch_normalization_223_layer_call_fn_3521745?
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
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_3521750
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_3521755?
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
2__inference_max_pooling2d_48_layer_call_fn_3521760
2__inference_max_pooling2d_48_layer_call_fn_3521765?
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
G__inference_conv2d_287_layer_call_and_return_conditional_losses_3521776?
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
,__inference_conv2d_287_layer_call_fn_3521785?
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
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521803
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521821
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521839
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521857?
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
9__inference_batch_normalization_224_layer_call_fn_3521870
9__inference_batch_normalization_224_layer_call_fn_3521883
9__inference_batch_normalization_224_layer_call_fn_3521896
9__inference_batch_normalization_224_layer_call_fn_3521909?
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
G__inference_conv2d_288_layer_call_and_return_conditional_losses_3521920?
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
,__inference_conv2d_288_layer_call_fn_3521929?
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
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3521947
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3521965
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3521983
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3522001?
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
9__inference_batch_normalization_225_layer_call_fn_3522014
9__inference_batch_normalization_225_layer_call_fn_3522027
9__inference_batch_normalization_225_layer_call_fn_3522040
9__inference_batch_normalization_225_layer_call_fn_3522053?
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
G__inference_conv2d_289_layer_call_and_return_conditional_losses_3522064?
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
,__inference_conv2d_289_layer_call_fn_3522073?
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
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522091
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522109
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522127
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522145?
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
9__inference_batch_normalization_226_layer_call_fn_3522158
9__inference_batch_normalization_226_layer_call_fn_3522171
9__inference_batch_normalization_226_layer_call_fn_3522184
9__inference_batch_normalization_226_layer_call_fn_3522197?
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
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_3522202
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_3522207?
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
2__inference_max_pooling2d_49_layer_call_fn_3522212
2__inference_max_pooling2d_49_layer_call_fn_3522217?
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
G__inference_flatten_22_layer_call_and_return_conditional_losses_3522223?
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
,__inference_flatten_22_layer_call_fn_3522228?
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
E__inference_dense_48_layer_call_and_return_conditional_losses_3522239?
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
*__inference_dense_48_layer_call_fn_3522248?
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
%__inference_signature_wrapper_3521057conv2d_285_input"?
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
"__inference__wrapped_model_3519191?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_285_input???????????
? "3?0
.
dense_48"?
dense_48??????????
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3520899?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_285_input???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3520982?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_285_input???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3521178?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_3521299?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
,__inference_alex_net_7_layer_call_fn_3520225?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_285_input???????????
p 

 
? "???????????
,__inference_alex_net_7_layer_call_fn_3520816?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_285_input???????????
p

 
? "???????????
,__inference_alex_net_7_layer_call_fn_3521368  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_alex_net_7_layer_call_fn_3521437  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521475? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521493? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521511r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_222_layer_call_and_return_conditional_losses_3521529r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_222_layer_call_fn_3521542? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_222_layer_call_fn_3521555? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_222_layer_call_fn_3521568e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_222_layer_call_fn_3521581e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521639?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521657?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521675t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_223_layer_call_and_return_conditional_losses_3521693t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_223_layer_call_fn_3521706?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_223_layer_call_fn_3521719?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_223_layer_call_fn_3521732g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_223_layer_call_fn_3521745g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521803?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521821?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521839tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_224_layer_call_and_return_conditional_losses_3521857tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_224_layer_call_fn_3521870?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_224_layer_call_fn_3521883?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_224_layer_call_fn_3521896gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_224_layer_call_fn_3521909gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3521947?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3521965?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3521983tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_225_layer_call_and_return_conditional_losses_3522001tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_225_layer_call_fn_3522014?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_225_layer_call_fn_3522027?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_225_layer_call_fn_3522040gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_225_layer_call_fn_3522053gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522091?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522109?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522127tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_226_layer_call_and_return_conditional_losses_3522145tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_226_layer_call_fn_3522158?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_226_layer_call_fn_3522171?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_226_layer_call_fn_3522184gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_226_layer_call_fn_3522197gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_285_layer_call_and_return_conditional_losses_3521448n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_285_layer_call_fn_3521457a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_286_layer_call_and_return_conditional_losses_3521612m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_286_layer_call_fn_3521621`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_287_layer_call_and_return_conditional_losses_3521776n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_287_layer_call_fn_3521785a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_288_layer_call_and_return_conditional_losses_3521920nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_288_layer_call_fn_3521929aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_289_layer_call_and_return_conditional_losses_3522064nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_289_layer_call_fn_3522073aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_48_layer_call_and_return_conditional_losses_3522239]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_48_layer_call_fn_3522248Pqr0?-
&?#
!?
inputs??????????(
? "???????????
G__inference_flatten_22_layer_call_and_return_conditional_losses_3522223b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
,__inference_flatten_22_layer_call_fn_3522228U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_3521586?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_3521591h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_47_layer_call_fn_3521596?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_47_layer_call_fn_3521601[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_3521750?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_3521755j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_48_layer_call_fn_3521760?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_48_layer_call_fn_3521765]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_3522202?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_3522207j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_49_layer_call_fn_3522212?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_49_layer_call_fn_3522217]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_3521057?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_285_input4?1
conv2d_285_input???????????"3?0
.
dense_48"?
dense_48?????????