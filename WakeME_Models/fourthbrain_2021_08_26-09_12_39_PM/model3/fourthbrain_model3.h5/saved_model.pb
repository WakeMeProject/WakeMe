Î
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
conv2d_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_103/kernel

%conv2d_103/kernel/Read/ReadVariableOpReadVariableOpconv2d_103/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_103/bias
o
#conv2d_103/bias/Read/ReadVariableOpReadVariableOpconv2d_103/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_83/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_83/gamma
?
0batch_normalization_83/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_83/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_83/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*,
shared_namebatch_normalization_83/beta
?
/batch_normalization_83/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_83/beta*
_output_shapes
:`*
dtype0
?
"batch_normalization_83/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*3
shared_name$"batch_normalization_83/moving_mean
?
6batch_normalization_83/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_83/moving_mean*
_output_shapes
:`*
dtype0
?
&batch_normalization_83/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*7
shared_name(&batch_normalization_83/moving_variance
?
:batch_normalization_83/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_83/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_104/kernel
?
%conv2d_104/kernel/Read/ReadVariableOpReadVariableOpconv2d_104/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_104/bias
p
#conv2d_104/bias/Read/ReadVariableOpReadVariableOpconv2d_104/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_84/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_84/gamma
?
0batch_normalization_84/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_84/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_84/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_84/beta
?
/batch_normalization_84/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_84/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_84/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_84/moving_mean
?
6batch_normalization_84/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_84/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_84/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_84/moving_variance
?
:batch_normalization_84/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_84/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_105/kernel
?
%conv2d_105/kernel/Read/ReadVariableOpReadVariableOpconv2d_105/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_105/bias
p
#conv2d_105/bias/Read/ReadVariableOpReadVariableOpconv2d_105/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_85/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_85/gamma
?
0batch_normalization_85/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_85/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_85/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_85/beta
?
/batch_normalization_85/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_85/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_85/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_85/moving_mean
?
6batch_normalization_85/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_85/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_85/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_85/moving_variance
?
:batch_normalization_85/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_85/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_106/kernel
?
%conv2d_106/kernel/Read/ReadVariableOpReadVariableOpconv2d_106/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_106/bias
p
#conv2d_106/bias/Read/ReadVariableOpReadVariableOpconv2d_106/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_86/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_86/gamma
?
0batch_normalization_86/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_86/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_86/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_86/beta
?
/batch_normalization_86/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_86/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_86/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_86/moving_mean
?
6batch_normalization_86/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_86/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_86/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_86/moving_variance
?
:batch_normalization_86/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_86/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_107/kernel
?
%conv2d_107/kernel/Read/ReadVariableOpReadVariableOpconv2d_107/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_107/bias
p
#conv2d_107/bias/Read/ReadVariableOpReadVariableOpconv2d_107/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_87/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_87/gamma
?
0batch_normalization_87/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_87/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_87/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_87/beta
?
/batch_normalization_87/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_87/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_87/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_87/moving_mean
?
6batch_normalization_87/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_87/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_87/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_87/moving_variance
?
:batch_normalization_87/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_87/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_15/kernel
t
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes
:	?(*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
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
{layer_regularization_losses
regularization_losses
|metrics
}layer_metrics

~layers
	variables
trainable_variables
non_trainable_variables
 
][
VARIABLE_VALUEconv2d_103/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_103/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
 ?layer_regularization_losses
regularization_losses
?metrics
?layer_metrics
?layers
	variables
trainable_variables
?non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_83/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_83/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_83/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_83/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 3

0
1
?
 ?layer_regularization_losses
!regularization_losses
?metrics
?layer_metrics
?layers
"	variables
#trainable_variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
%regularization_losses
?metrics
?layer_metrics
?layers
&	variables
'trainable_variables
?non_trainable_variables
][
VARIABLE_VALUEconv2d_104/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_104/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
?
 ?layer_regularization_losses
+regularization_losses
?metrics
?layer_metrics
?layers
,	variables
-trainable_variables
?non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_84/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_84/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_84/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_84/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

00
11
22
33

00
11
?
 ?layer_regularization_losses
4regularization_losses
?metrics
?layer_metrics
?layers
5	variables
6trainable_variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
8regularization_losses
?metrics
?layer_metrics
?layers
9	variables
:trainable_variables
?non_trainable_variables
][
VARIABLE_VALUEconv2d_105/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_105/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
?
 ?layer_regularization_losses
>regularization_losses
?metrics
?layer_metrics
?layers
?	variables
@trainable_variables
?non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_85/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_85/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_85/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_85/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1
E2
F3

C0
D1
?
 ?layer_regularization_losses
Gregularization_losses
?metrics
?layer_metrics
?layers
H	variables
Itrainable_variables
?non_trainable_variables
][
VARIABLE_VALUEconv2d_106/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_106/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1

K0
L1
?
 ?layer_regularization_losses
Mregularization_losses
?metrics
?layer_metrics
?layers
N	variables
Otrainable_variables
?non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_86/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_86/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_86/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_86/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1
T2
U3

R0
S1
?
 ?layer_regularization_losses
Vregularization_losses
?metrics
?layer_metrics
?layers
W	variables
Xtrainable_variables
?non_trainable_variables
][
VARIABLE_VALUEconv2d_107/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_107/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Z0
[1

Z0
[1
?
 ?layer_regularization_losses
\regularization_losses
?metrics
?layer_metrics
?layers
]	variables
^trainable_variables
?non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_87/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_87/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_87/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_87/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

a0
b1
c2
d3

a0
b1
?
 ?layer_regularization_losses
eregularization_losses
?metrics
?layer_metrics
?layers
f	variables
gtrainable_variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
iregularization_losses
?metrics
?layer_metrics
?layers
j	variables
ktrainable_variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
mregularization_losses
?metrics
?layer_metrics
?layers
n	variables
otrainable_variables
?non_trainable_variables
\Z
VARIABLE_VALUEdense_15/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_15/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

q0
r1

q0
r1
?
 ?layer_regularization_losses
sregularization_losses
?metrics
?layer_metrics
?layers
t	variables
utrainable_variables
?non_trainable_variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
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
 serving_default_conv2d_103_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?	
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_103_inputconv2d_103/kernelconv2d_103/biasbatch_normalization_83/gammabatch_normalization_83/beta"batch_normalization_83/moving_mean&batch_normalization_83/moving_varianceconv2d_104/kernelconv2d_104/biasbatch_normalization_84/gammabatch_normalization_84/beta"batch_normalization_84/moving_mean&batch_normalization_84/moving_varianceconv2d_105/kernelconv2d_105/biasbatch_normalization_85/gammabatch_normalization_85/beta"batch_normalization_85/moving_mean&batch_normalization_85/moving_varianceconv2d_106/kernelconv2d_106/biasbatch_normalization_86/gammabatch_normalization_86/beta"batch_normalization_86/moving_mean&batch_normalization_86/moving_varianceconv2d_107/kernelconv2d_107/biasbatch_normalization_87/gammabatch_normalization_87/beta"batch_normalization_87/moving_mean&batch_normalization_87/moving_variancedense_15/kerneldense_15/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_3250924
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_103/kernel/Read/ReadVariableOp#conv2d_103/bias/Read/ReadVariableOp0batch_normalization_83/gamma/Read/ReadVariableOp/batch_normalization_83/beta/Read/ReadVariableOp6batch_normalization_83/moving_mean/Read/ReadVariableOp:batch_normalization_83/moving_variance/Read/ReadVariableOp%conv2d_104/kernel/Read/ReadVariableOp#conv2d_104/bias/Read/ReadVariableOp0batch_normalization_84/gamma/Read/ReadVariableOp/batch_normalization_84/beta/Read/ReadVariableOp6batch_normalization_84/moving_mean/Read/ReadVariableOp:batch_normalization_84/moving_variance/Read/ReadVariableOp%conv2d_105/kernel/Read/ReadVariableOp#conv2d_105/bias/Read/ReadVariableOp0batch_normalization_85/gamma/Read/ReadVariableOp/batch_normalization_85/beta/Read/ReadVariableOp6batch_normalization_85/moving_mean/Read/ReadVariableOp:batch_normalization_85/moving_variance/Read/ReadVariableOp%conv2d_106/kernel/Read/ReadVariableOp#conv2d_106/bias/Read/ReadVariableOp0batch_normalization_86/gamma/Read/ReadVariableOp/batch_normalization_86/beta/Read/ReadVariableOp6batch_normalization_86/moving_mean/Read/ReadVariableOp:batch_normalization_86/moving_variance/Read/ReadVariableOp%conv2d_107/kernel/Read/ReadVariableOp#conv2d_107/bias/Read/ReadVariableOp0batch_normalization_87/gamma/Read/ReadVariableOp/batch_normalization_87/beta/Read/ReadVariableOp6batch_normalization_87/moving_mean/Read/ReadVariableOp:batch_normalization_87/moving_variance/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3252258
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_103/kernelconv2d_103/biasbatch_normalization_83/gammabatch_normalization_83/beta"batch_normalization_83/moving_mean&batch_normalization_83/moving_varianceconv2d_104/kernelconv2d_104/biasbatch_normalization_84/gammabatch_normalization_84/beta"batch_normalization_84/moving_mean&batch_normalization_84/moving_varianceconv2d_105/kernelconv2d_105/biasbatch_normalization_85/gammabatch_normalization_85/beta"batch_normalization_85/moving_mean&batch_normalization_85/moving_varianceconv2d_106/kernelconv2d_106/biasbatch_normalization_86/gammabatch_normalization_86/beta"batch_normalization_86/moving_mean&batch_normalization_86/moving_varianceconv2d_107/kernelconv2d_107/biasbatch_normalization_87/gammabatch_normalization_87/beta"batch_normalization_87/moving_mean&batch_normalization_87/moving_variancedense_15/kerneldense_15/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_3252388??
?
N
2__inference_max_pooling2d_17_layer_call_fn_3251458

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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_32498092
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
?X
?
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3250547

inputs,
conv2d_103_3250467:` 
conv2d_103_3250469:`,
batch_normalization_83_3250472:`,
batch_normalization_83_3250474:`,
batch_normalization_83_3250476:`,
batch_normalization_83_3250478:`-
conv2d_104_3250482:`?!
conv2d_104_3250484:	?-
batch_normalization_84_3250487:	?-
batch_normalization_84_3250489:	?-
batch_normalization_84_3250491:	?-
batch_normalization_84_3250493:	?.
conv2d_105_3250497:??!
conv2d_105_3250499:	?-
batch_normalization_85_3250502:	?-
batch_normalization_85_3250504:	?-
batch_normalization_85_3250506:	?-
batch_normalization_85_3250508:	?.
conv2d_106_3250511:??!
conv2d_106_3250513:	?-
batch_normalization_86_3250516:	?-
batch_normalization_86_3250518:	?-
batch_normalization_86_3250520:	?-
batch_normalization_86_3250522:	?.
conv2d_107_3250525:??!
conv2d_107_3250527:	?-
batch_normalization_87_3250530:	?-
batch_normalization_87_3250532:	?-
batch_normalization_87_3250534:	?-
batch_normalization_87_3250536:	?#
dense_15_3250541:	?(
dense_15_3250543:
identity??.batch_normalization_83/StatefulPartitionedCall?.batch_normalization_84/StatefulPartitionedCall?.batch_normalization_85/StatefulPartitionedCall?.batch_normalization_86/StatefulPartitionedCall?.batch_normalization_87/StatefulPartitionedCall?"conv2d_103/StatefulPartitionedCall?"conv2d_104/StatefulPartitionedCall?"conv2d_105/StatefulPartitionedCall?"conv2d_106/StatefulPartitionedCall?"conv2d_107/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
"conv2d_103/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_103_3250467conv2d_103_3250469*
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
G__inference_conv2d_103_layer_call_and_return_conditional_losses_32497722$
"conv2d_103/StatefulPartitionedCall?
.batch_normalization_83/StatefulPartitionedCallStatefulPartitionedCall+conv2d_103/StatefulPartitionedCall:output:0batch_normalization_83_3250472batch_normalization_83_3250474batch_normalization_83_3250476batch_normalization_83_3250478*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_325037220
.batch_normalization_83/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_83/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_32498092"
 max_pooling2d_17/PartitionedCall?
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_104_3250482conv2d_104_3250484*
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
G__inference_conv2d_104_layer_call_and_return_conditional_losses_32498222$
"conv2d_104/StatefulPartitionedCall?
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0batch_normalization_84_3250487batch_normalization_84_3250489batch_normalization_84_3250491batch_normalization_84_3250493*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_325031320
.batch_normalization_84/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_32498592"
 max_pooling2d_18/PartitionedCall?
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_105_3250497conv2d_105_3250499*
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
G__inference_conv2d_105_layer_call_and_return_conditional_losses_32498722$
"conv2d_105/StatefulPartitionedCall?
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0batch_normalization_85_3250502batch_normalization_85_3250504batch_normalization_85_3250506batch_normalization_85_3250508*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_325025420
.batch_normalization_85/StatefulPartitionedCall?
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0conv2d_106_3250511conv2d_106_3250513*
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
G__inference_conv2d_106_layer_call_and_return_conditional_losses_32499162$
"conv2d_106/StatefulPartitionedCall?
.batch_normalization_86/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0batch_normalization_86_3250516batch_normalization_86_3250518batch_normalization_86_3250520batch_normalization_86_3250522*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_325020020
.batch_normalization_86/StatefulPartitionedCall?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_86/StatefulPartitionedCall:output:0conv2d_107_3250525conv2d_107_3250527*
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
G__inference_conv2d_107_layer_call_and_return_conditional_losses_32499602$
"conv2d_107/StatefulPartitionedCall?
.batch_normalization_87/StatefulPartitionedCallStatefulPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0batch_normalization_87_3250530batch_normalization_87_3250532batch_normalization_87_3250534batch_normalization_87_3250536*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_325014620
.batch_normalization_87/StatefulPartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_87/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_32499972"
 max_pooling2d_19/PartitionedCall?
flatten_7/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_32500052
flatten_7/PartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_15_3250541dense_15_3250543*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_32500182"
 dense_15/StatefulPartitionedCall?
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp/^batch_normalization_83/StatefulPartitionedCall/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall/^batch_normalization_86/StatefulPartitionedCall/^batch_normalization_87/StatefulPartitionedCall#^conv2d_103/StatefulPartitionedCall#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_83/StatefulPartitionedCall.batch_normalization_83/StatefulPartitionedCall2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2`
.batch_normalization_86/StatefulPartitionedCall.batch_normalization_86/StatefulPartitionedCall2`
.batch_normalization_87/StatefulPartitionedCall.batch_normalization_87/StatefulPartitionedCall2H
"conv2d_103/StatefulPartitionedCall"conv2d_103/StatefulPartitionedCall2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3250146

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
G__inference_conv2d_107_layer_call_and_return_conditional_losses_3251940

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
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251740

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
,__inference_alex_net_3_layer_call_fn_3250993

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

unknown_29:	?(

unknown_30:
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
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_alex_net_3_layer_call_and_return_conditional_losses_32500252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

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
8__inference_batch_normalization_83_layer_call_fn_3251350

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_32491242
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
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3249376

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
8__inference_batch_normalization_85_layer_call_fn_3251678

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_32494202
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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3251463

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
,__inference_conv2d_103_layer_call_fn_3251313

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
G__inference_conv2d_103_layer_call_and_return_conditional_losses_32497722
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
?
?
8__inference_batch_normalization_83_layer_call_fn_3251363

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_32497952
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
8__inference_batch_normalization_86_layer_call_fn_3251809

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_32495022
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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3252084

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
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251722

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
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3250254

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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3249193

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
??
?"
"__inference__wrapped_model_3249058
conv2d_103_inputN
4alex_net_3_conv2d_103_conv2d_readvariableop_resource:`C
5alex_net_3_conv2d_103_biasadd_readvariableop_resource:`G
9alex_net_3_batch_normalization_83_readvariableop_resource:`I
;alex_net_3_batch_normalization_83_readvariableop_1_resource:`X
Jalex_net_3_batch_normalization_83_fusedbatchnormv3_readvariableop_resource:`Z
Lalex_net_3_batch_normalization_83_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_3_conv2d_104_conv2d_readvariableop_resource:`?D
5alex_net_3_conv2d_104_biasadd_readvariableop_resource:	?H
9alex_net_3_batch_normalization_84_readvariableop_resource:	?J
;alex_net_3_batch_normalization_84_readvariableop_1_resource:	?Y
Jalex_net_3_batch_normalization_84_fusedbatchnormv3_readvariableop_resource:	?[
Lalex_net_3_batch_normalization_84_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_3_conv2d_105_conv2d_readvariableop_resource:??D
5alex_net_3_conv2d_105_biasadd_readvariableop_resource:	?H
9alex_net_3_batch_normalization_85_readvariableop_resource:	?J
;alex_net_3_batch_normalization_85_readvariableop_1_resource:	?Y
Jalex_net_3_batch_normalization_85_fusedbatchnormv3_readvariableop_resource:	?[
Lalex_net_3_batch_normalization_85_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_3_conv2d_106_conv2d_readvariableop_resource:??D
5alex_net_3_conv2d_106_biasadd_readvariableop_resource:	?H
9alex_net_3_batch_normalization_86_readvariableop_resource:	?J
;alex_net_3_batch_normalization_86_readvariableop_1_resource:	?Y
Jalex_net_3_batch_normalization_86_fusedbatchnormv3_readvariableop_resource:	?[
Lalex_net_3_batch_normalization_86_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_3_conv2d_107_conv2d_readvariableop_resource:??D
5alex_net_3_conv2d_107_biasadd_readvariableop_resource:	?H
9alex_net_3_batch_normalization_87_readvariableop_resource:	?J
;alex_net_3_batch_normalization_87_readvariableop_1_resource:	?Y
Jalex_net_3_batch_normalization_87_fusedbatchnormv3_readvariableop_resource:	?[
Lalex_net_3_batch_normalization_87_fusedbatchnormv3_readvariableop_1_resource:	?E
2alex_net_3_dense_15_matmul_readvariableop_resource:	?(A
3alex_net_3_dense_15_biasadd_readvariableop_resource:
identity??Aalex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp?Calex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1?0alex_net_3/batch_normalization_83/ReadVariableOp?2alex_net_3/batch_normalization_83/ReadVariableOp_1?Aalex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp?Calex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?0alex_net_3/batch_normalization_84/ReadVariableOp?2alex_net_3/batch_normalization_84/ReadVariableOp_1?Aalex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp?Calex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?0alex_net_3/batch_normalization_85/ReadVariableOp?2alex_net_3/batch_normalization_85/ReadVariableOp_1?Aalex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp?Calex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?0alex_net_3/batch_normalization_86/ReadVariableOp?2alex_net_3/batch_normalization_86/ReadVariableOp_1?Aalex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp?Calex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?0alex_net_3/batch_normalization_87/ReadVariableOp?2alex_net_3/batch_normalization_87/ReadVariableOp_1?,alex_net_3/conv2d_103/BiasAdd/ReadVariableOp?+alex_net_3/conv2d_103/Conv2D/ReadVariableOp?,alex_net_3/conv2d_104/BiasAdd/ReadVariableOp?+alex_net_3/conv2d_104/Conv2D/ReadVariableOp?,alex_net_3/conv2d_105/BiasAdd/ReadVariableOp?+alex_net_3/conv2d_105/Conv2D/ReadVariableOp?,alex_net_3/conv2d_106/BiasAdd/ReadVariableOp?+alex_net_3/conv2d_106/Conv2D/ReadVariableOp?,alex_net_3/conv2d_107/BiasAdd/ReadVariableOp?+alex_net_3/conv2d_107/Conv2D/ReadVariableOp?*alex_net_3/dense_15/BiasAdd/ReadVariableOp?)alex_net_3/dense_15/MatMul/ReadVariableOp?
+alex_net_3/conv2d_103/Conv2D/ReadVariableOpReadVariableOp4alex_net_3_conv2d_103_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_3/conv2d_103/Conv2D/ReadVariableOp?
alex_net_3/conv2d_103/Conv2DConv2Dconv2d_103_input3alex_net_3/conv2d_103/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_3/conv2d_103/Conv2D?
,alex_net_3/conv2d_103/BiasAdd/ReadVariableOpReadVariableOp5alex_net_3_conv2d_103_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_3/conv2d_103/BiasAdd/ReadVariableOp?
alex_net_3/conv2d_103/BiasAddBiasAdd%alex_net_3/conv2d_103/Conv2D:output:04alex_net_3/conv2d_103/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
alex_net_3/conv2d_103/BiasAdd?
alex_net_3/conv2d_103/ReluRelu&alex_net_3/conv2d_103/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_3/conv2d_103/Relu?
0alex_net_3/batch_normalization_83/ReadVariableOpReadVariableOp9alex_net_3_batch_normalization_83_readvariableop_resource*
_output_shapes
:`*
dtype022
0alex_net_3/batch_normalization_83/ReadVariableOp?
2alex_net_3/batch_normalization_83/ReadVariableOp_1ReadVariableOp;alex_net_3_batch_normalization_83_readvariableop_1_resource*
_output_shapes
:`*
dtype024
2alex_net_3/batch_normalization_83/ReadVariableOp_1?
Aalex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOpReadVariableOpJalex_net_3_batch_normalization_83_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02C
Aalex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp?
Calex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLalex_net_3_batch_normalization_83_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02E
Calex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1?
2alex_net_3/batch_normalization_83/FusedBatchNormV3FusedBatchNormV3(alex_net_3/conv2d_103/Relu:activations:08alex_net_3/batch_normalization_83/ReadVariableOp:value:0:alex_net_3/batch_normalization_83/ReadVariableOp_1:value:0Ialex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp:value:0Kalex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 24
2alex_net_3/batch_normalization_83/FusedBatchNormV3?
#alex_net_3/max_pooling2d_17/MaxPoolMaxPool6alex_net_3/batch_normalization_83/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_3/max_pooling2d_17/MaxPool?
+alex_net_3/conv2d_104/Conv2D/ReadVariableOpReadVariableOp4alex_net_3_conv2d_104_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02-
+alex_net_3/conv2d_104/Conv2D/ReadVariableOp?
alex_net_3/conv2d_104/Conv2DConv2D,alex_net_3/max_pooling2d_17/MaxPool:output:03alex_net_3/conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_3/conv2d_104/Conv2D?
,alex_net_3/conv2d_104/BiasAdd/ReadVariableOpReadVariableOp5alex_net_3_conv2d_104_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_3/conv2d_104/BiasAdd/ReadVariableOp?
alex_net_3/conv2d_104/BiasAddBiasAdd%alex_net_3/conv2d_104/Conv2D:output:04alex_net_3/conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
alex_net_3/conv2d_104/BiasAdd?
alex_net_3/conv2d_104/ReluRelu&alex_net_3/conv2d_104/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_3/conv2d_104/Relu?
0alex_net_3/batch_normalization_84/ReadVariableOpReadVariableOp9alex_net_3_batch_normalization_84_readvariableop_resource*
_output_shapes	
:?*
dtype022
0alex_net_3/batch_normalization_84/ReadVariableOp?
2alex_net_3/batch_normalization_84/ReadVariableOp_1ReadVariableOp;alex_net_3_batch_normalization_84_readvariableop_1_resource*
_output_shapes	
:?*
dtype024
2alex_net_3/batch_normalization_84/ReadVariableOp_1?
Aalex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOpReadVariableOpJalex_net_3_batch_normalization_84_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Aalex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp?
Calex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLalex_net_3_batch_normalization_84_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Calex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?
2alex_net_3/batch_normalization_84/FusedBatchNormV3FusedBatchNormV3(alex_net_3/conv2d_104/Relu:activations:08alex_net_3/batch_normalization_84/ReadVariableOp:value:0:alex_net_3/batch_normalization_84/ReadVariableOp_1:value:0Ialex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp:value:0Kalex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 24
2alex_net_3/batch_normalization_84/FusedBatchNormV3?
#alex_net_3/max_pooling2d_18/MaxPoolMaxPool6alex_net_3/batch_normalization_84/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#alex_net_3/max_pooling2d_18/MaxPool?
+alex_net_3/conv2d_105/Conv2D/ReadVariableOpReadVariableOp4alex_net_3_conv2d_105_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_3/conv2d_105/Conv2D/ReadVariableOp?
alex_net_3/conv2d_105/Conv2DConv2D,alex_net_3/max_pooling2d_18/MaxPool:output:03alex_net_3/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_3/conv2d_105/Conv2D?
,alex_net_3/conv2d_105/BiasAdd/ReadVariableOpReadVariableOp5alex_net_3_conv2d_105_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_3/conv2d_105/BiasAdd/ReadVariableOp?
alex_net_3/conv2d_105/BiasAddBiasAdd%alex_net_3/conv2d_105/Conv2D:output:04alex_net_3/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_3/conv2d_105/BiasAdd?
alex_net_3/conv2d_105/ReluRelu&alex_net_3/conv2d_105/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_3/conv2d_105/Relu?
0alex_net_3/batch_normalization_85/ReadVariableOpReadVariableOp9alex_net_3_batch_normalization_85_readvariableop_resource*
_output_shapes	
:?*
dtype022
0alex_net_3/batch_normalization_85/ReadVariableOp?
2alex_net_3/batch_normalization_85/ReadVariableOp_1ReadVariableOp;alex_net_3_batch_normalization_85_readvariableop_1_resource*
_output_shapes	
:?*
dtype024
2alex_net_3/batch_normalization_85/ReadVariableOp_1?
Aalex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOpReadVariableOpJalex_net_3_batch_normalization_85_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Aalex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp?
Calex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLalex_net_3_batch_normalization_85_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Calex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?
2alex_net_3/batch_normalization_85/FusedBatchNormV3FusedBatchNormV3(alex_net_3/conv2d_105/Relu:activations:08alex_net_3/batch_normalization_85/ReadVariableOp:value:0:alex_net_3/batch_normalization_85/ReadVariableOp_1:value:0Ialex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp:value:0Kalex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 24
2alex_net_3/batch_normalization_85/FusedBatchNormV3?
+alex_net_3/conv2d_106/Conv2D/ReadVariableOpReadVariableOp4alex_net_3_conv2d_106_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_3/conv2d_106/Conv2D/ReadVariableOp?
alex_net_3/conv2d_106/Conv2DConv2D6alex_net_3/batch_normalization_85/FusedBatchNormV3:y:03alex_net_3/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_3/conv2d_106/Conv2D?
,alex_net_3/conv2d_106/BiasAdd/ReadVariableOpReadVariableOp5alex_net_3_conv2d_106_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_3/conv2d_106/BiasAdd/ReadVariableOp?
alex_net_3/conv2d_106/BiasAddBiasAdd%alex_net_3/conv2d_106/Conv2D:output:04alex_net_3/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_3/conv2d_106/BiasAdd?
alex_net_3/conv2d_106/ReluRelu&alex_net_3/conv2d_106/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_3/conv2d_106/Relu?
0alex_net_3/batch_normalization_86/ReadVariableOpReadVariableOp9alex_net_3_batch_normalization_86_readvariableop_resource*
_output_shapes	
:?*
dtype022
0alex_net_3/batch_normalization_86/ReadVariableOp?
2alex_net_3/batch_normalization_86/ReadVariableOp_1ReadVariableOp;alex_net_3_batch_normalization_86_readvariableop_1_resource*
_output_shapes	
:?*
dtype024
2alex_net_3/batch_normalization_86/ReadVariableOp_1?
Aalex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOpReadVariableOpJalex_net_3_batch_normalization_86_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Aalex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp?
Calex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLalex_net_3_batch_normalization_86_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Calex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?
2alex_net_3/batch_normalization_86/FusedBatchNormV3FusedBatchNormV3(alex_net_3/conv2d_106/Relu:activations:08alex_net_3/batch_normalization_86/ReadVariableOp:value:0:alex_net_3/batch_normalization_86/ReadVariableOp_1:value:0Ialex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp:value:0Kalex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 24
2alex_net_3/batch_normalization_86/FusedBatchNormV3?
+alex_net_3/conv2d_107/Conv2D/ReadVariableOpReadVariableOp4alex_net_3_conv2d_107_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_3/conv2d_107/Conv2D/ReadVariableOp?
alex_net_3/conv2d_107/Conv2DConv2D6alex_net_3/batch_normalization_86/FusedBatchNormV3:y:03alex_net_3/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_3/conv2d_107/Conv2D?
,alex_net_3/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp5alex_net_3_conv2d_107_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_3/conv2d_107/BiasAdd/ReadVariableOp?
alex_net_3/conv2d_107/BiasAddBiasAdd%alex_net_3/conv2d_107/Conv2D:output:04alex_net_3/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_3/conv2d_107/BiasAdd?
alex_net_3/conv2d_107/ReluRelu&alex_net_3/conv2d_107/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_3/conv2d_107/Relu?
0alex_net_3/batch_normalization_87/ReadVariableOpReadVariableOp9alex_net_3_batch_normalization_87_readvariableop_resource*
_output_shapes	
:?*
dtype022
0alex_net_3/batch_normalization_87/ReadVariableOp?
2alex_net_3/batch_normalization_87/ReadVariableOp_1ReadVariableOp;alex_net_3_batch_normalization_87_readvariableop_1_resource*
_output_shapes	
:?*
dtype024
2alex_net_3/batch_normalization_87/ReadVariableOp_1?
Aalex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOpReadVariableOpJalex_net_3_batch_normalization_87_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Aalex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp?
Calex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLalex_net_3_batch_normalization_87_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Calex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?
2alex_net_3/batch_normalization_87/FusedBatchNormV3FusedBatchNormV3(alex_net_3/conv2d_107/Relu:activations:08alex_net_3/batch_normalization_87/ReadVariableOp:value:0:alex_net_3/batch_normalization_87/ReadVariableOp_1:value:0Ialex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp:value:0Kalex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 24
2alex_net_3/batch_normalization_87/FusedBatchNormV3?
#alex_net_3/max_pooling2d_19/MaxPoolMaxPool6alex_net_3/batch_normalization_87/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2%
#alex_net_3/max_pooling2d_19/MaxPool?
alex_net_3/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_3/flatten_7/Const?
alex_net_3/flatten_7/ReshapeReshape,alex_net_3/max_pooling2d_19/MaxPool:output:0#alex_net_3/flatten_7/Const:output:0*
T0*(
_output_shapes
:??????????(2
alex_net_3/flatten_7/Reshape?
)alex_net_3/dense_15/MatMul/ReadVariableOpReadVariableOp2alex_net_3_dense_15_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02+
)alex_net_3/dense_15/MatMul/ReadVariableOp?
alex_net_3/dense_15/MatMulMatMul%alex_net_3/flatten_7/Reshape:output:01alex_net_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_3/dense_15/MatMul?
*alex_net_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp3alex_net_3_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_3/dense_15/BiasAdd/ReadVariableOp?
alex_net_3/dense_15/BiasAddBiasAdd$alex_net_3/dense_15/MatMul:product:02alex_net_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_3/dense_15/BiasAdd?
alex_net_3/dense_15/SoftmaxSoftmax$alex_net_3/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_3/dense_15/Softmax?
IdentityIdentity%alex_net_3/dense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpB^alex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOpD^alex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_11^alex_net_3/batch_normalization_83/ReadVariableOp3^alex_net_3/batch_normalization_83/ReadVariableOp_1B^alex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOpD^alex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_11^alex_net_3/batch_normalization_84/ReadVariableOp3^alex_net_3/batch_normalization_84/ReadVariableOp_1B^alex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOpD^alex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_11^alex_net_3/batch_normalization_85/ReadVariableOp3^alex_net_3/batch_normalization_85/ReadVariableOp_1B^alex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOpD^alex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_11^alex_net_3/batch_normalization_86/ReadVariableOp3^alex_net_3/batch_normalization_86/ReadVariableOp_1B^alex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOpD^alex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_11^alex_net_3/batch_normalization_87/ReadVariableOp3^alex_net_3/batch_normalization_87/ReadVariableOp_1-^alex_net_3/conv2d_103/BiasAdd/ReadVariableOp,^alex_net_3/conv2d_103/Conv2D/ReadVariableOp-^alex_net_3/conv2d_104/BiasAdd/ReadVariableOp,^alex_net_3/conv2d_104/Conv2D/ReadVariableOp-^alex_net_3/conv2d_105/BiasAdd/ReadVariableOp,^alex_net_3/conv2d_105/Conv2D/ReadVariableOp-^alex_net_3/conv2d_106/BiasAdd/ReadVariableOp,^alex_net_3/conv2d_106/Conv2D/ReadVariableOp-^alex_net_3/conv2d_107/BiasAdd/ReadVariableOp,^alex_net_3/conv2d_107/Conv2D/ReadVariableOp+^alex_net_3/dense_15/BiasAdd/ReadVariableOp*^alex_net_3/dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Aalex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOpAalex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp2?
Calex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1Calex_net_3/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_12d
0alex_net_3/batch_normalization_83/ReadVariableOp0alex_net_3/batch_normalization_83/ReadVariableOp2h
2alex_net_3/batch_normalization_83/ReadVariableOp_12alex_net_3/batch_normalization_83/ReadVariableOp_12?
Aalex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOpAalex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp2?
Calex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1Calex_net_3/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_12d
0alex_net_3/batch_normalization_84/ReadVariableOp0alex_net_3/batch_normalization_84/ReadVariableOp2h
2alex_net_3/batch_normalization_84/ReadVariableOp_12alex_net_3/batch_normalization_84/ReadVariableOp_12?
Aalex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOpAalex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp2?
Calex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1Calex_net_3/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_12d
0alex_net_3/batch_normalization_85/ReadVariableOp0alex_net_3/batch_normalization_85/ReadVariableOp2h
2alex_net_3/batch_normalization_85/ReadVariableOp_12alex_net_3/batch_normalization_85/ReadVariableOp_12?
Aalex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOpAalex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp2?
Calex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1Calex_net_3/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_12d
0alex_net_3/batch_normalization_86/ReadVariableOp0alex_net_3/batch_normalization_86/ReadVariableOp2h
2alex_net_3/batch_normalization_86/ReadVariableOp_12alex_net_3/batch_normalization_86/ReadVariableOp_12?
Aalex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOpAalex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp2?
Calex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1Calex_net_3/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_12d
0alex_net_3/batch_normalization_87/ReadVariableOp0alex_net_3/batch_normalization_87/ReadVariableOp2h
2alex_net_3/batch_normalization_87/ReadVariableOp_12alex_net_3/batch_normalization_87/ReadVariableOp_12\
,alex_net_3/conv2d_103/BiasAdd/ReadVariableOp,alex_net_3/conv2d_103/BiasAdd/ReadVariableOp2Z
+alex_net_3/conv2d_103/Conv2D/ReadVariableOp+alex_net_3/conv2d_103/Conv2D/ReadVariableOp2\
,alex_net_3/conv2d_104/BiasAdd/ReadVariableOp,alex_net_3/conv2d_104/BiasAdd/ReadVariableOp2Z
+alex_net_3/conv2d_104/Conv2D/ReadVariableOp+alex_net_3/conv2d_104/Conv2D/ReadVariableOp2\
,alex_net_3/conv2d_105/BiasAdd/ReadVariableOp,alex_net_3/conv2d_105/BiasAdd/ReadVariableOp2Z
+alex_net_3/conv2d_105/Conv2D/ReadVariableOp+alex_net_3/conv2d_105/Conv2D/ReadVariableOp2\
,alex_net_3/conv2d_106/BiasAdd/ReadVariableOp,alex_net_3/conv2d_106/BiasAdd/ReadVariableOp2Z
+alex_net_3/conv2d_106/Conv2D/ReadVariableOp+alex_net_3/conv2d_106/Conv2D/ReadVariableOp2\
,alex_net_3/conv2d_107/BiasAdd/ReadVariableOp,alex_net_3/conv2d_107/BiasAdd/ReadVariableOp2Z
+alex_net_3/conv2d_107/Conv2D/ReadVariableOp+alex_net_3/conv2d_107/Conv2D/ReadVariableOp2X
*alex_net_3/dense_15/BiasAdd/ReadVariableOp*alex_net_3/dense_15/BiasAdd/ReadVariableOp2V
)alex_net_3/dense_15/MatMul/ReadVariableOp)alex_net_3/dense_15/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_103_input
?
N
2__inference_max_pooling2d_18_layer_call_fn_3251617

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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_32493412
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
8__inference_batch_normalization_87_layer_call_fn_3251992

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_32501462
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
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251394

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
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251866

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
?
?
,__inference_conv2d_104_layer_call_fn_3251477

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
G__inference_conv2d_104_layer_call_and_return_conditional_losses_32498222
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
?
G__inference_conv2d_107_layer_call_and_return_conditional_losses_3249960

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
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3249420

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
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251558

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
8__inference_batch_normalization_86_layer_call_fn_3251835

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_32499392
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
2__inference_max_pooling2d_19_layer_call_fn_3252069

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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_32497412
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
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251412

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
G__inference_conv2d_105_layer_call_and_return_conditional_losses_3251652

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
?T
?
 __inference__traced_save_3252258
file_prefix0
,savev2_conv2d_103_kernel_read_readvariableop.
*savev2_conv2d_103_bias_read_readvariableop;
7savev2_batch_normalization_83_gamma_read_readvariableop:
6savev2_batch_normalization_83_beta_read_readvariableopA
=savev2_batch_normalization_83_moving_mean_read_readvariableopE
Asavev2_batch_normalization_83_moving_variance_read_readvariableop0
,savev2_conv2d_104_kernel_read_readvariableop.
*savev2_conv2d_104_bias_read_readvariableop;
7savev2_batch_normalization_84_gamma_read_readvariableop:
6savev2_batch_normalization_84_beta_read_readvariableopA
=savev2_batch_normalization_84_moving_mean_read_readvariableopE
Asavev2_batch_normalization_84_moving_variance_read_readvariableop0
,savev2_conv2d_105_kernel_read_readvariableop.
*savev2_conv2d_105_bias_read_readvariableop;
7savev2_batch_normalization_85_gamma_read_readvariableop:
6savev2_batch_normalization_85_beta_read_readvariableopA
=savev2_batch_normalization_85_moving_mean_read_readvariableopE
Asavev2_batch_normalization_85_moving_variance_read_readvariableop0
,savev2_conv2d_106_kernel_read_readvariableop.
*savev2_conv2d_106_bias_read_readvariableop;
7savev2_batch_normalization_86_gamma_read_readvariableop:
6savev2_batch_normalization_86_beta_read_readvariableopA
=savev2_batch_normalization_86_moving_mean_read_readvariableopE
Asavev2_batch_normalization_86_moving_variance_read_readvariableop0
,savev2_conv2d_107_kernel_read_readvariableop.
*savev2_conv2d_107_bias_read_readvariableop;
7savev2_batch_normalization_87_gamma_read_readvariableop:
6savev2_batch_normalization_87_beta_read_readvariableopA
=savev2_batch_normalization_87_moving_mean_read_readvariableopE
Asavev2_batch_normalization_87_moving_variance_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_103_kernel_read_readvariableop*savev2_conv2d_103_bias_read_readvariableop7savev2_batch_normalization_83_gamma_read_readvariableop6savev2_batch_normalization_83_beta_read_readvariableop=savev2_batch_normalization_83_moving_mean_read_readvariableopAsavev2_batch_normalization_83_moving_variance_read_readvariableop,savev2_conv2d_104_kernel_read_readvariableop*savev2_conv2d_104_bias_read_readvariableop7savev2_batch_normalization_84_gamma_read_readvariableop6savev2_batch_normalization_84_beta_read_readvariableop=savev2_batch_normalization_84_moving_mean_read_readvariableopAsavev2_batch_normalization_84_moving_variance_read_readvariableop,savev2_conv2d_105_kernel_read_readvariableop*savev2_conv2d_105_bias_read_readvariableop7savev2_batch_normalization_85_gamma_read_readvariableop6savev2_batch_normalization_85_beta_read_readvariableop=savev2_batch_normalization_85_moving_mean_read_readvariableopAsavev2_batch_normalization_85_moving_variance_read_readvariableop,savev2_conv2d_106_kernel_read_readvariableop*savev2_conv2d_106_bias_read_readvariableop7savev2_batch_normalization_86_gamma_read_readvariableop6savev2_batch_normalization_86_beta_read_readvariableop=savev2_batch_normalization_86_moving_mean_read_readvariableopAsavev2_batch_normalization_86_moving_variance_read_readvariableop,savev2_conv2d_107_kernel_read_readvariableop*savev2_conv2d_107_bias_read_readvariableop7savev2_batch_normalization_87_gamma_read_readvariableop6savev2_batch_normalization_87_beta_read_readvariableop=savev2_batch_normalization_87_moving_mean_read_readvariableopAsavev2_batch_normalization_87_moving_variance_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :`:`:`:`:`:`:`?:?:?:?:?:?:??:?:?:?:?:?:??:?:?:?:?:?:??:?:?:?:?:?:	?(:: : : : : : : : : 2(
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
:	?(:  

_output_shapes
::!
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
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3249502

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
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251758

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
,__inference_conv2d_107_layer_call_fn_3251929

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
G__inference_conv2d_107_layer_call_and_return_conditional_losses_32499602
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
G
+__inference_flatten_7_layer_call_fn_3252089

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
GPU2*0J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_32500052
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
?
?
,__inference_alex_net_3_layer_call_fn_3250683
conv2d_103_input!
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

unknown_29:	?(

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_103_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_alex_net_3_layer_call_and_return_conditional_losses_32505472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

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
_user_specified_nameconv2d_103_input
?
?
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252064

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
,__inference_alex_net_3_layer_call_fn_3250092
conv2d_103_input!
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

unknown_29:	?(

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_103_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_alex_net_3_layer_call_and_return_conditional_losses_32500252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

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
_user_specified_nameconv2d_103_input
?
?
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3250313

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
8__inference_batch_normalization_85_layer_call_fn_3251665

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_32493762
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
8__inference_batch_normalization_87_layer_call_fn_3251979

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_32499832
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
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251776

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
b
F__inference_flatten_7_layer_call_and_return_conditional_losses_3250005

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
G__inference_conv2d_103_layer_call_and_return_conditional_losses_3249772

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
?
E__inference_dense_15_layer_call_and_return_conditional_losses_3250018

inputs1
matmul_readvariableop_resource:	?(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

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
i
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3251468

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
??
? 
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3251304

inputsC
)conv2d_103_conv2d_readvariableop_resource:`8
*conv2d_103_biasadd_readvariableop_resource:`<
.batch_normalization_83_readvariableop_resource:`>
0batch_normalization_83_readvariableop_1_resource:`M
?batch_normalization_83_fusedbatchnormv3_readvariableop_resource:`O
Abatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_104_conv2d_readvariableop_resource:`?9
*conv2d_104_biasadd_readvariableop_resource:	?=
.batch_normalization_84_readvariableop_resource:	??
0batch_normalization_84_readvariableop_1_resource:	?N
?batch_normalization_84_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_105_conv2d_readvariableop_resource:??9
*conv2d_105_biasadd_readvariableop_resource:	?=
.batch_normalization_85_readvariableop_resource:	??
0batch_normalization_85_readvariableop_1_resource:	?N
?batch_normalization_85_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_106_conv2d_readvariableop_resource:??9
*conv2d_106_biasadd_readvariableop_resource:	?=
.batch_normalization_86_readvariableop_resource:	??
0batch_normalization_86_readvariableop_1_resource:	?N
?batch_normalization_86_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_107_conv2d_readvariableop_resource:??9
*conv2d_107_biasadd_readvariableop_resource:	?=
.batch_normalization_87_readvariableop_resource:	??
0batch_normalization_87_readvariableop_1_resource:	?N
?batch_normalization_87_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_15_matmul_readvariableop_resource:	?(6
(dense_15_biasadd_readvariableop_resource:
identity??%batch_normalization_83/AssignNewValue?'batch_normalization_83/AssignNewValue_1?6batch_normalization_83/FusedBatchNormV3/ReadVariableOp?8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_83/ReadVariableOp?'batch_normalization_83/ReadVariableOp_1?%batch_normalization_84/AssignNewValue?'batch_normalization_84/AssignNewValue_1?6batch_normalization_84/FusedBatchNormV3/ReadVariableOp?8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_84/ReadVariableOp?'batch_normalization_84/ReadVariableOp_1?%batch_normalization_85/AssignNewValue?'batch_normalization_85/AssignNewValue_1?6batch_normalization_85/FusedBatchNormV3/ReadVariableOp?8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_85/ReadVariableOp?'batch_normalization_85/ReadVariableOp_1?%batch_normalization_86/AssignNewValue?'batch_normalization_86/AssignNewValue_1?6batch_normalization_86/FusedBatchNormV3/ReadVariableOp?8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_86/ReadVariableOp?'batch_normalization_86/ReadVariableOp_1?%batch_normalization_87/AssignNewValue?'batch_normalization_87/AssignNewValue_1?6batch_normalization_87/FusedBatchNormV3/ReadVariableOp?8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_87/ReadVariableOp?'batch_normalization_87/ReadVariableOp_1?!conv2d_103/BiasAdd/ReadVariableOp? conv2d_103/Conv2D/ReadVariableOp?!conv2d_104/BiasAdd/ReadVariableOp? conv2d_104/Conv2D/ReadVariableOp?!conv2d_105/BiasAdd/ReadVariableOp? conv2d_105/Conv2D/ReadVariableOp?!conv2d_106/BiasAdd/ReadVariableOp? conv2d_106/Conv2D/ReadVariableOp?!conv2d_107/BiasAdd/ReadVariableOp? conv2d_107/Conv2D/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOp?
 conv2d_103/Conv2D/ReadVariableOpReadVariableOp)conv2d_103_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_103/Conv2D/ReadVariableOp?
conv2d_103/Conv2DConv2Dinputs(conv2d_103/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_103/Conv2D?
!conv2d_103/BiasAdd/ReadVariableOpReadVariableOp*conv2d_103_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_103/BiasAdd/ReadVariableOp?
conv2d_103/BiasAddBiasAddconv2d_103/Conv2D:output:0)conv2d_103/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_103/BiasAdd?
conv2d_103/ReluReluconv2d_103/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_103/Relu?
%batch_normalization_83/ReadVariableOpReadVariableOp.batch_normalization_83_readvariableop_resource*
_output_shapes
:`*
dtype02'
%batch_normalization_83/ReadVariableOp?
'batch_normalization_83/ReadVariableOp_1ReadVariableOp0batch_normalization_83_readvariableop_1_resource*
_output_shapes
:`*
dtype02)
'batch_normalization_83/ReadVariableOp_1?
6batch_normalization_83/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_83_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype028
6batch_normalization_83/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02:
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_83/FusedBatchNormV3FusedBatchNormV3conv2d_103/Relu:activations:0-batch_normalization_83/ReadVariableOp:value:0/batch_normalization_83/ReadVariableOp_1:value:0>batch_normalization_83/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_83/FusedBatchNormV3?
%batch_normalization_83/AssignNewValueAssignVariableOp?batch_normalization_83_fusedbatchnormv3_readvariableop_resource4batch_normalization_83/FusedBatchNormV3:batch_mean:07^batch_normalization_83/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_83/AssignNewValue?
'batch_normalization_83/AssignNewValue_1AssignVariableOpAbatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_83/FusedBatchNormV3:batch_variance:09^batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_83/AssignNewValue_1?
max_pooling2d_17/MaxPoolMaxPool+batch_normalization_83/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool?
 conv2d_104/Conv2D/ReadVariableOpReadVariableOp)conv2d_104_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_104/Conv2D/ReadVariableOp?
conv2d_104/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0(conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_104/Conv2D?
!conv2d_104/BiasAdd/ReadVariableOpReadVariableOp*conv2d_104_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_104/BiasAdd/ReadVariableOp?
conv2d_104/BiasAddBiasAddconv2d_104/Conv2D:output:0)conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_104/BiasAdd?
conv2d_104/ReluReluconv2d_104/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_104/Relu?
%batch_normalization_84/ReadVariableOpReadVariableOp.batch_normalization_84_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_84/ReadVariableOp?
'batch_normalization_84/ReadVariableOp_1ReadVariableOp0batch_normalization_84_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_84/ReadVariableOp_1?
6batch_normalization_84/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_84_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_84/FusedBatchNormV3FusedBatchNormV3conv2d_104/Relu:activations:0-batch_normalization_84/ReadVariableOp:value:0/batch_normalization_84/ReadVariableOp_1:value:0>batch_normalization_84/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_84/FusedBatchNormV3?
%batch_normalization_84/AssignNewValueAssignVariableOp?batch_normalization_84_fusedbatchnormv3_readvariableop_resource4batch_normalization_84/FusedBatchNormV3:batch_mean:07^batch_normalization_84/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_84/AssignNewValue?
'batch_normalization_84/AssignNewValue_1AssignVariableOpAbatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_84/FusedBatchNormV3:batch_variance:09^batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_84/AssignNewValue_1?
max_pooling2d_18/MaxPoolMaxPool+batch_normalization_84/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_18/MaxPool?
 conv2d_105/Conv2D/ReadVariableOpReadVariableOp)conv2d_105_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_105/Conv2D/ReadVariableOp?
conv2d_105/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0(conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_105/Conv2D?
!conv2d_105/BiasAdd/ReadVariableOpReadVariableOp*conv2d_105_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_105/BiasAdd/ReadVariableOp?
conv2d_105/BiasAddBiasAddconv2d_105/Conv2D:output:0)conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_105/BiasAdd?
conv2d_105/ReluReluconv2d_105/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_105/Relu?
%batch_normalization_85/ReadVariableOpReadVariableOp.batch_normalization_85_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_85/ReadVariableOp?
'batch_normalization_85/ReadVariableOp_1ReadVariableOp0batch_normalization_85_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_85/ReadVariableOp_1?
6batch_normalization_85/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_85_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_85/FusedBatchNormV3FusedBatchNormV3conv2d_105/Relu:activations:0-batch_normalization_85/ReadVariableOp:value:0/batch_normalization_85/ReadVariableOp_1:value:0>batch_normalization_85/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_85/FusedBatchNormV3?
%batch_normalization_85/AssignNewValueAssignVariableOp?batch_normalization_85_fusedbatchnormv3_readvariableop_resource4batch_normalization_85/FusedBatchNormV3:batch_mean:07^batch_normalization_85/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_85/AssignNewValue?
'batch_normalization_85/AssignNewValue_1AssignVariableOpAbatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_85/FusedBatchNormV3:batch_variance:09^batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_85/AssignNewValue_1?
 conv2d_106/Conv2D/ReadVariableOpReadVariableOp)conv2d_106_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_106/Conv2D/ReadVariableOp?
conv2d_106/Conv2DConv2D+batch_normalization_85/FusedBatchNormV3:y:0(conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_106/Conv2D?
!conv2d_106/BiasAdd/ReadVariableOpReadVariableOp*conv2d_106_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_106/BiasAdd/ReadVariableOp?
conv2d_106/BiasAddBiasAddconv2d_106/Conv2D:output:0)conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_106/BiasAdd?
conv2d_106/ReluReluconv2d_106/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_106/Relu?
%batch_normalization_86/ReadVariableOpReadVariableOp.batch_normalization_86_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_86/ReadVariableOp?
'batch_normalization_86/ReadVariableOp_1ReadVariableOp0batch_normalization_86_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_86/ReadVariableOp_1?
6batch_normalization_86/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_86_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_86/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_86/FusedBatchNormV3FusedBatchNormV3conv2d_106/Relu:activations:0-batch_normalization_86/ReadVariableOp:value:0/batch_normalization_86/ReadVariableOp_1:value:0>batch_normalization_86/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_86/FusedBatchNormV3?
%batch_normalization_86/AssignNewValueAssignVariableOp?batch_normalization_86_fusedbatchnormv3_readvariableop_resource4batch_normalization_86/FusedBatchNormV3:batch_mean:07^batch_normalization_86/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_86/AssignNewValue?
'batch_normalization_86/AssignNewValue_1AssignVariableOpAbatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_86/FusedBatchNormV3:batch_variance:09^batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_86/AssignNewValue_1?
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_107/Conv2D/ReadVariableOp?
conv2d_107/Conv2DConv2D+batch_normalization_86/FusedBatchNormV3:y:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_107/Conv2D?
!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_107/BiasAdd/ReadVariableOp?
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_107/BiasAdd?
conv2d_107/ReluReluconv2d_107/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_107/Relu?
%batch_normalization_87/ReadVariableOpReadVariableOp.batch_normalization_87_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_87/ReadVariableOp?
'batch_normalization_87/ReadVariableOp_1ReadVariableOp0batch_normalization_87_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_87/ReadVariableOp_1?
6batch_normalization_87/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_87_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_87/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_87/FusedBatchNormV3FusedBatchNormV3conv2d_107/Relu:activations:0-batch_normalization_87/ReadVariableOp:value:0/batch_normalization_87/ReadVariableOp_1:value:0>batch_normalization_87/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_87/FusedBatchNormV3?
%batch_normalization_87/AssignNewValueAssignVariableOp?batch_normalization_87_fusedbatchnormv3_readvariableop_resource4batch_normalization_87/FusedBatchNormV3:batch_mean:07^batch_normalization_87/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_87/AssignNewValue?
'batch_normalization_87/AssignNewValue_1AssignVariableOpAbatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_87/FusedBatchNormV3:batch_variance:09^batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_87/AssignNewValue_1?
max_pooling2d_19/MaxPoolMaxPool+batch_normalization_87/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_19/MaxPools
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_7/Const?
flatten_7/ReshapeReshape!max_pooling2d_19/MaxPool:output:0flatten_7/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_7/Reshape?
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_15/MatMul/ReadVariableOp?
dense_15/MatMulMatMulflatten_7/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_15/MatMul?
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOp?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_15/BiasAdd|
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_15/Softmaxu
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp&^batch_normalization_83/AssignNewValue(^batch_normalization_83/AssignNewValue_17^batch_normalization_83/FusedBatchNormV3/ReadVariableOp9^batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_83/ReadVariableOp(^batch_normalization_83/ReadVariableOp_1&^batch_normalization_84/AssignNewValue(^batch_normalization_84/AssignNewValue_17^batch_normalization_84/FusedBatchNormV3/ReadVariableOp9^batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_84/ReadVariableOp(^batch_normalization_84/ReadVariableOp_1&^batch_normalization_85/AssignNewValue(^batch_normalization_85/AssignNewValue_17^batch_normalization_85/FusedBatchNormV3/ReadVariableOp9^batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_85/ReadVariableOp(^batch_normalization_85/ReadVariableOp_1&^batch_normalization_86/AssignNewValue(^batch_normalization_86/AssignNewValue_17^batch_normalization_86/FusedBatchNormV3/ReadVariableOp9^batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_86/ReadVariableOp(^batch_normalization_86/ReadVariableOp_1&^batch_normalization_87/AssignNewValue(^batch_normalization_87/AssignNewValue_17^batch_normalization_87/FusedBatchNormV3/ReadVariableOp9^batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_87/ReadVariableOp(^batch_normalization_87/ReadVariableOp_1"^conv2d_103/BiasAdd/ReadVariableOp!^conv2d_103/Conv2D/ReadVariableOp"^conv2d_104/BiasAdd/ReadVariableOp!^conv2d_104/Conv2D/ReadVariableOp"^conv2d_105/BiasAdd/ReadVariableOp!^conv2d_105/Conv2D/ReadVariableOp"^conv2d_106/BiasAdd/ReadVariableOp!^conv2d_106/Conv2D/ReadVariableOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_83/AssignNewValue%batch_normalization_83/AssignNewValue2R
'batch_normalization_83/AssignNewValue_1'batch_normalization_83/AssignNewValue_12p
6batch_normalization_83/FusedBatchNormV3/ReadVariableOp6batch_normalization_83/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_18batch_normalization_83/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_83/ReadVariableOp%batch_normalization_83/ReadVariableOp2R
'batch_normalization_83/ReadVariableOp_1'batch_normalization_83/ReadVariableOp_12N
%batch_normalization_84/AssignNewValue%batch_normalization_84/AssignNewValue2R
'batch_normalization_84/AssignNewValue_1'batch_normalization_84/AssignNewValue_12p
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp6batch_normalization_84/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_18batch_normalization_84/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_84/ReadVariableOp%batch_normalization_84/ReadVariableOp2R
'batch_normalization_84/ReadVariableOp_1'batch_normalization_84/ReadVariableOp_12N
%batch_normalization_85/AssignNewValue%batch_normalization_85/AssignNewValue2R
'batch_normalization_85/AssignNewValue_1'batch_normalization_85/AssignNewValue_12p
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp6batch_normalization_85/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_18batch_normalization_85/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_85/ReadVariableOp%batch_normalization_85/ReadVariableOp2R
'batch_normalization_85/ReadVariableOp_1'batch_normalization_85/ReadVariableOp_12N
%batch_normalization_86/AssignNewValue%batch_normalization_86/AssignNewValue2R
'batch_normalization_86/AssignNewValue_1'batch_normalization_86/AssignNewValue_12p
6batch_normalization_86/FusedBatchNormV3/ReadVariableOp6batch_normalization_86/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_18batch_normalization_86/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_86/ReadVariableOp%batch_normalization_86/ReadVariableOp2R
'batch_normalization_86/ReadVariableOp_1'batch_normalization_86/ReadVariableOp_12N
%batch_normalization_87/AssignNewValue%batch_normalization_87/AssignNewValue2R
'batch_normalization_87/AssignNewValue_1'batch_normalization_87/AssignNewValue_12p
6batch_normalization_87/FusedBatchNormV3/ReadVariableOp6batch_normalization_87/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_18batch_normalization_87/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_87/ReadVariableOp%batch_normalization_87/ReadVariableOp2R
'batch_normalization_87/ReadVariableOp_1'batch_normalization_87/ReadVariableOp_12F
!conv2d_103/BiasAdd/ReadVariableOp!conv2d_103/BiasAdd/ReadVariableOp2D
 conv2d_103/Conv2D/ReadVariableOp conv2d_103/Conv2D/ReadVariableOp2F
!conv2d_104/BiasAdd/ReadVariableOp!conv2d_104/BiasAdd/ReadVariableOp2D
 conv2d_104/Conv2D/ReadVariableOp conv2d_104/Conv2D/ReadVariableOp2F
!conv2d_105/BiasAdd/ReadVariableOp!conv2d_105/BiasAdd/ReadVariableOp2D
 conv2d_105/Conv2D/ReadVariableOp conv2d_105/Conv2D/ReadVariableOp2F
!conv2d_106/BiasAdd/ReadVariableOp!conv2d_106/BiasAdd/ReadVariableOp2D
 conv2d_106/Conv2D/ReadVariableOp conv2d_106/Conv2D/ReadVariableOp2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?X
?
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3250766
conv2d_103_input,
conv2d_103_3250686:` 
conv2d_103_3250688:`,
batch_normalization_83_3250691:`,
batch_normalization_83_3250693:`,
batch_normalization_83_3250695:`,
batch_normalization_83_3250697:`-
conv2d_104_3250701:`?!
conv2d_104_3250703:	?-
batch_normalization_84_3250706:	?-
batch_normalization_84_3250708:	?-
batch_normalization_84_3250710:	?-
batch_normalization_84_3250712:	?.
conv2d_105_3250716:??!
conv2d_105_3250718:	?-
batch_normalization_85_3250721:	?-
batch_normalization_85_3250723:	?-
batch_normalization_85_3250725:	?-
batch_normalization_85_3250727:	?.
conv2d_106_3250730:??!
conv2d_106_3250732:	?-
batch_normalization_86_3250735:	?-
batch_normalization_86_3250737:	?-
batch_normalization_86_3250739:	?-
batch_normalization_86_3250741:	?.
conv2d_107_3250744:??!
conv2d_107_3250746:	?-
batch_normalization_87_3250749:	?-
batch_normalization_87_3250751:	?-
batch_normalization_87_3250753:	?-
batch_normalization_87_3250755:	?#
dense_15_3250760:	?(
dense_15_3250762:
identity??.batch_normalization_83/StatefulPartitionedCall?.batch_normalization_84/StatefulPartitionedCall?.batch_normalization_85/StatefulPartitionedCall?.batch_normalization_86/StatefulPartitionedCall?.batch_normalization_87/StatefulPartitionedCall?"conv2d_103/StatefulPartitionedCall?"conv2d_104/StatefulPartitionedCall?"conv2d_105/StatefulPartitionedCall?"conv2d_106/StatefulPartitionedCall?"conv2d_107/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
"conv2d_103/StatefulPartitionedCallStatefulPartitionedCallconv2d_103_inputconv2d_103_3250686conv2d_103_3250688*
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
G__inference_conv2d_103_layer_call_and_return_conditional_losses_32497722$
"conv2d_103/StatefulPartitionedCall?
.batch_normalization_83/StatefulPartitionedCallStatefulPartitionedCall+conv2d_103/StatefulPartitionedCall:output:0batch_normalization_83_3250691batch_normalization_83_3250693batch_normalization_83_3250695batch_normalization_83_3250697*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_324979520
.batch_normalization_83/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_83/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_32498092"
 max_pooling2d_17/PartitionedCall?
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_104_3250701conv2d_104_3250703*
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
G__inference_conv2d_104_layer_call_and_return_conditional_losses_32498222$
"conv2d_104/StatefulPartitionedCall?
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0batch_normalization_84_3250706batch_normalization_84_3250708batch_normalization_84_3250710batch_normalization_84_3250712*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_324984520
.batch_normalization_84/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_32498592"
 max_pooling2d_18/PartitionedCall?
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_105_3250716conv2d_105_3250718*
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
G__inference_conv2d_105_layer_call_and_return_conditional_losses_32498722$
"conv2d_105/StatefulPartitionedCall?
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0batch_normalization_85_3250721batch_normalization_85_3250723batch_normalization_85_3250725batch_normalization_85_3250727*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_324989520
.batch_normalization_85/StatefulPartitionedCall?
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0conv2d_106_3250730conv2d_106_3250732*
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
G__inference_conv2d_106_layer_call_and_return_conditional_losses_32499162$
"conv2d_106/StatefulPartitionedCall?
.batch_normalization_86/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0batch_normalization_86_3250735batch_normalization_86_3250737batch_normalization_86_3250739batch_normalization_86_3250741*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_324993920
.batch_normalization_86/StatefulPartitionedCall?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_86/StatefulPartitionedCall:output:0conv2d_107_3250744conv2d_107_3250746*
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
G__inference_conv2d_107_layer_call_and_return_conditional_losses_32499602$
"conv2d_107/StatefulPartitionedCall?
.batch_normalization_87/StatefulPartitionedCallStatefulPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0batch_normalization_87_3250749batch_normalization_87_3250751batch_normalization_87_3250753batch_normalization_87_3250755*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_324998320
.batch_normalization_87/StatefulPartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_87/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_32499972"
 max_pooling2d_19/PartitionedCall?
flatten_7/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_32500052
flatten_7/PartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_15_3250760dense_15_3250762*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_32500182"
 dense_15/StatefulPartitionedCall?
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp/^batch_normalization_83/StatefulPartitionedCall/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall/^batch_normalization_86/StatefulPartitionedCall/^batch_normalization_87/StatefulPartitionedCall#^conv2d_103/StatefulPartitionedCall#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_83/StatefulPartitionedCall.batch_normalization_83/StatefulPartitionedCall2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2`
.batch_normalization_86/StatefulPartitionedCall.batch_normalization_86/StatefulPartitionedCall2`
.batch_normalization_87/StatefulPartitionedCall.batch_normalization_87/StatefulPartitionedCall2H
"conv2d_103/StatefulPartitionedCall"conv2d_103/StatefulPartitionedCall2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_103_input
?
i
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3252079

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
8__inference_batch_normalization_85_layer_call_fn_3251691

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_32498952
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
E__inference_dense_15_layer_call_and_return_conditional_losses_3252115

inputs1
matmul_readvariableop_resource:	?(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

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
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251884

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
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251448

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
?	
?
8__inference_batch_normalization_85_layer_call_fn_3251704

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_32502542
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
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251920

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
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251902

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
8__inference_batch_normalization_84_layer_call_fn_3251514

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_32492722
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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3249859

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
G__inference_conv2d_106_layer_call_and_return_conditional_losses_3249916

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
?
?
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252046

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
?
G__inference_conv2d_103_layer_call_and_return_conditional_losses_3251324

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
?
?
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3250200

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
2__inference_max_pooling2d_18_layer_call_fn_3251622

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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_32498592
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
?
?
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251612

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
?X
?
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3250025

inputs,
conv2d_103_3249773:` 
conv2d_103_3249775:`,
batch_normalization_83_3249796:`,
batch_normalization_83_3249798:`,
batch_normalization_83_3249800:`,
batch_normalization_83_3249802:`-
conv2d_104_3249823:`?!
conv2d_104_3249825:	?-
batch_normalization_84_3249846:	?-
batch_normalization_84_3249848:	?-
batch_normalization_84_3249850:	?-
batch_normalization_84_3249852:	?.
conv2d_105_3249873:??!
conv2d_105_3249875:	?-
batch_normalization_85_3249896:	?-
batch_normalization_85_3249898:	?-
batch_normalization_85_3249900:	?-
batch_normalization_85_3249902:	?.
conv2d_106_3249917:??!
conv2d_106_3249919:	?-
batch_normalization_86_3249940:	?-
batch_normalization_86_3249942:	?-
batch_normalization_86_3249944:	?-
batch_normalization_86_3249946:	?.
conv2d_107_3249961:??!
conv2d_107_3249963:	?-
batch_normalization_87_3249984:	?-
batch_normalization_87_3249986:	?-
batch_normalization_87_3249988:	?-
batch_normalization_87_3249990:	?#
dense_15_3250019:	?(
dense_15_3250021:
identity??.batch_normalization_83/StatefulPartitionedCall?.batch_normalization_84/StatefulPartitionedCall?.batch_normalization_85/StatefulPartitionedCall?.batch_normalization_86/StatefulPartitionedCall?.batch_normalization_87/StatefulPartitionedCall?"conv2d_103/StatefulPartitionedCall?"conv2d_104/StatefulPartitionedCall?"conv2d_105/StatefulPartitionedCall?"conv2d_106/StatefulPartitionedCall?"conv2d_107/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
"conv2d_103/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_103_3249773conv2d_103_3249775*
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
G__inference_conv2d_103_layer_call_and_return_conditional_losses_32497722$
"conv2d_103/StatefulPartitionedCall?
.batch_normalization_83/StatefulPartitionedCallStatefulPartitionedCall+conv2d_103/StatefulPartitionedCall:output:0batch_normalization_83_3249796batch_normalization_83_3249798batch_normalization_83_3249800batch_normalization_83_3249802*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_324979520
.batch_normalization_83/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_83/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_32498092"
 max_pooling2d_17/PartitionedCall?
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_104_3249823conv2d_104_3249825*
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
G__inference_conv2d_104_layer_call_and_return_conditional_losses_32498222$
"conv2d_104/StatefulPartitionedCall?
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0batch_normalization_84_3249846batch_normalization_84_3249848batch_normalization_84_3249850batch_normalization_84_3249852*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_324984520
.batch_normalization_84/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_32498592"
 max_pooling2d_18/PartitionedCall?
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_105_3249873conv2d_105_3249875*
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
G__inference_conv2d_105_layer_call_and_return_conditional_losses_32498722$
"conv2d_105/StatefulPartitionedCall?
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0batch_normalization_85_3249896batch_normalization_85_3249898batch_normalization_85_3249900batch_normalization_85_3249902*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_324989520
.batch_normalization_85/StatefulPartitionedCall?
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0conv2d_106_3249917conv2d_106_3249919*
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
G__inference_conv2d_106_layer_call_and_return_conditional_losses_32499162$
"conv2d_106/StatefulPartitionedCall?
.batch_normalization_86/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0batch_normalization_86_3249940batch_normalization_86_3249942batch_normalization_86_3249944batch_normalization_86_3249946*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_324993920
.batch_normalization_86/StatefulPartitionedCall?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_86/StatefulPartitionedCall:output:0conv2d_107_3249961conv2d_107_3249963*
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
G__inference_conv2d_107_layer_call_and_return_conditional_losses_32499602$
"conv2d_107/StatefulPartitionedCall?
.batch_normalization_87/StatefulPartitionedCallStatefulPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0batch_normalization_87_3249984batch_normalization_87_3249986batch_normalization_87_3249988batch_normalization_87_3249990*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_324998320
.batch_normalization_87/StatefulPartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_87/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_32499972"
 max_pooling2d_19/PartitionedCall?
flatten_7/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_32500052
flatten_7/PartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_15_3250019dense_15_3250021*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_32500182"
 dense_15/StatefulPartitionedCall?
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp/^batch_normalization_83/StatefulPartitionedCall/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall/^batch_normalization_86/StatefulPartitionedCall/^batch_normalization_87/StatefulPartitionedCall#^conv2d_103/StatefulPartitionedCall#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_83/StatefulPartitionedCall.batch_normalization_83/StatefulPartitionedCall2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2`
.batch_normalization_86/StatefulPartitionedCall.batch_normalization_86/StatefulPartitionedCall2`
.batch_normalization_87/StatefulPartitionedCall.batch_normalization_87/StatefulPartitionedCall2H
"conv2d_103/StatefulPartitionedCall"conv2d_103/StatefulPartitionedCall2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3250372

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
?
?
G__inference_conv2d_104_layer_call_and_return_conditional_losses_3251488

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
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251430

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
,__inference_conv2d_105_layer_call_fn_3251641

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
G__inference_conv2d_105_layer_call_and_return_conditional_losses_32498722
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
?
?
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251576

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
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252010

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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3249809

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
?X
?
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3250849
conv2d_103_input,
conv2d_103_3250769:` 
conv2d_103_3250771:`,
batch_normalization_83_3250774:`,
batch_normalization_83_3250776:`,
batch_normalization_83_3250778:`,
batch_normalization_83_3250780:`-
conv2d_104_3250784:`?!
conv2d_104_3250786:	?-
batch_normalization_84_3250789:	?-
batch_normalization_84_3250791:	?-
batch_normalization_84_3250793:	?-
batch_normalization_84_3250795:	?.
conv2d_105_3250799:??!
conv2d_105_3250801:	?-
batch_normalization_85_3250804:	?-
batch_normalization_85_3250806:	?-
batch_normalization_85_3250808:	?-
batch_normalization_85_3250810:	?.
conv2d_106_3250813:??!
conv2d_106_3250815:	?-
batch_normalization_86_3250818:	?-
batch_normalization_86_3250820:	?-
batch_normalization_86_3250822:	?-
batch_normalization_86_3250824:	?.
conv2d_107_3250827:??!
conv2d_107_3250829:	?-
batch_normalization_87_3250832:	?-
batch_normalization_87_3250834:	?-
batch_normalization_87_3250836:	?-
batch_normalization_87_3250838:	?#
dense_15_3250843:	?(
dense_15_3250845:
identity??.batch_normalization_83/StatefulPartitionedCall?.batch_normalization_84/StatefulPartitionedCall?.batch_normalization_85/StatefulPartitionedCall?.batch_normalization_86/StatefulPartitionedCall?.batch_normalization_87/StatefulPartitionedCall?"conv2d_103/StatefulPartitionedCall?"conv2d_104/StatefulPartitionedCall?"conv2d_105/StatefulPartitionedCall?"conv2d_106/StatefulPartitionedCall?"conv2d_107/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
"conv2d_103/StatefulPartitionedCallStatefulPartitionedCallconv2d_103_inputconv2d_103_3250769conv2d_103_3250771*
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
G__inference_conv2d_103_layer_call_and_return_conditional_losses_32497722$
"conv2d_103/StatefulPartitionedCall?
.batch_normalization_83/StatefulPartitionedCallStatefulPartitionedCall+conv2d_103/StatefulPartitionedCall:output:0batch_normalization_83_3250774batch_normalization_83_3250776batch_normalization_83_3250778batch_normalization_83_3250780*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_325037220
.batch_normalization_83/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_83/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_32498092"
 max_pooling2d_17/PartitionedCall?
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_104_3250784conv2d_104_3250786*
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
G__inference_conv2d_104_layer_call_and_return_conditional_losses_32498222$
"conv2d_104/StatefulPartitionedCall?
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0batch_normalization_84_3250789batch_normalization_84_3250791batch_normalization_84_3250793batch_normalization_84_3250795*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_325031320
.batch_normalization_84/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_32498592"
 max_pooling2d_18/PartitionedCall?
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_105_3250799conv2d_105_3250801*
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
G__inference_conv2d_105_layer_call_and_return_conditional_losses_32498722$
"conv2d_105/StatefulPartitionedCall?
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0batch_normalization_85_3250804batch_normalization_85_3250806batch_normalization_85_3250808batch_normalization_85_3250810*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_325025420
.batch_normalization_85/StatefulPartitionedCall?
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0conv2d_106_3250813conv2d_106_3250815*
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
G__inference_conv2d_106_layer_call_and_return_conditional_losses_32499162$
"conv2d_106/StatefulPartitionedCall?
.batch_normalization_86/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0batch_normalization_86_3250818batch_normalization_86_3250820batch_normalization_86_3250822batch_normalization_86_3250824*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_325020020
.batch_normalization_86/StatefulPartitionedCall?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_86/StatefulPartitionedCall:output:0conv2d_107_3250827conv2d_107_3250829*
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
G__inference_conv2d_107_layer_call_and_return_conditional_losses_32499602$
"conv2d_107/StatefulPartitionedCall?
.batch_normalization_87/StatefulPartitionedCallStatefulPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0batch_normalization_87_3250832batch_normalization_87_3250834batch_normalization_87_3250836batch_normalization_87_3250838*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_325014620
.batch_normalization_87/StatefulPartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_87/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_32499972"
 max_pooling2d_19/PartitionedCall?
flatten_7/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_32500052
flatten_7/PartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_15_3250843dense_15_3250845*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_32500182"
 dense_15/StatefulPartitionedCall?
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp/^batch_normalization_83/StatefulPartitionedCall/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall/^batch_normalization_86/StatefulPartitionedCall/^batch_normalization_87/StatefulPartitionedCall#^conv2d_103/StatefulPartitionedCall#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_83/StatefulPartitionedCall.batch_normalization_83/StatefulPartitionedCall2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2`
.batch_normalization_86/StatefulPartitionedCall.batch_normalization_86/StatefulPartitionedCall2`
.batch_normalization_87/StatefulPartitionedCall.batch_normalization_87/StatefulPartitionedCall2H
"conv2d_103/StatefulPartitionedCall"conv2d_103/StatefulPartitionedCall2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_103_input
?
?
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3249672

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
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3249845

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
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3249983

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
8__inference_batch_normalization_84_layer_call_fn_3251540

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_32503132
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
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3249546

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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3249997

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
?
i
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3251632

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
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251594

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
,__inference_conv2d_106_layer_call_fn_3251785

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
G__inference_conv2d_106_layer_call_and_return_conditional_losses_32499162
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
?
?
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3249628

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
8__inference_batch_normalization_83_layer_call_fn_3251376

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_32503722
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
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3249795

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
8__inference_batch_normalization_84_layer_call_fn_3251527

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_32498452
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
8__inference_batch_normalization_83_layer_call_fn_3251337

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_32490802
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
8__inference_batch_normalization_84_layer_call_fn_3251501

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_32492282
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
8__inference_batch_normalization_87_layer_call_fn_3251966

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_32496722
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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3251627

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
?
?
*__inference_dense_15_layer_call_fn_3252104

inputs
unknown:	?(
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_32500182
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

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
?
8__inference_batch_normalization_87_layer_call_fn_3251953

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_32496282
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
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3249895

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
2__inference_max_pooling2d_19_layer_call_fn_3252074

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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_32499972
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
?
G__inference_conv2d_106_layer_call_and_return_conditional_losses_3251796

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
?
?
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3249939

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
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3249228

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
8__inference_batch_normalization_86_layer_call_fn_3251848

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_32502002
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
?
b
F__inference_flatten_7_layer_call_and_return_conditional_losses_3252095

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
i
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3249341

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
%__inference_signature_wrapper_3250924
conv2d_103_input!
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

unknown_29:	?(

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_103_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_32490582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

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
_user_specified_nameconv2d_103_input
?
i
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3249741

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
,__inference_alex_net_3_layer_call_fn_3251062

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

unknown_29:	?(

unknown_30:
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
:?????????*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_alex_net_3_layer_call_and_return_conditional_losses_32505472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

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
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3249080

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
?
G__inference_conv2d_105_layer_call_and_return_conditional_losses_3249872

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
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3249124

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
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3249272

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
?
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3251183

inputsC
)conv2d_103_conv2d_readvariableop_resource:`8
*conv2d_103_biasadd_readvariableop_resource:`<
.batch_normalization_83_readvariableop_resource:`>
0batch_normalization_83_readvariableop_1_resource:`M
?batch_normalization_83_fusedbatchnormv3_readvariableop_resource:`O
Abatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_104_conv2d_readvariableop_resource:`?9
*conv2d_104_biasadd_readvariableop_resource:	?=
.batch_normalization_84_readvariableop_resource:	??
0batch_normalization_84_readvariableop_1_resource:	?N
?batch_normalization_84_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_105_conv2d_readvariableop_resource:??9
*conv2d_105_biasadd_readvariableop_resource:	?=
.batch_normalization_85_readvariableop_resource:	??
0batch_normalization_85_readvariableop_1_resource:	?N
?batch_normalization_85_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_106_conv2d_readvariableop_resource:??9
*conv2d_106_biasadd_readvariableop_resource:	?=
.batch_normalization_86_readvariableop_resource:	??
0batch_normalization_86_readvariableop_1_resource:	?N
?batch_normalization_86_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_107_conv2d_readvariableop_resource:??9
*conv2d_107_biasadd_readvariableop_resource:	?=
.batch_normalization_87_readvariableop_resource:	??
0batch_normalization_87_readvariableop_1_resource:	?N
?batch_normalization_87_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_15_matmul_readvariableop_resource:	?(6
(dense_15_biasadd_readvariableop_resource:
identity??6batch_normalization_83/FusedBatchNormV3/ReadVariableOp?8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_83/ReadVariableOp?'batch_normalization_83/ReadVariableOp_1?6batch_normalization_84/FusedBatchNormV3/ReadVariableOp?8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_84/ReadVariableOp?'batch_normalization_84/ReadVariableOp_1?6batch_normalization_85/FusedBatchNormV3/ReadVariableOp?8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_85/ReadVariableOp?'batch_normalization_85/ReadVariableOp_1?6batch_normalization_86/FusedBatchNormV3/ReadVariableOp?8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_86/ReadVariableOp?'batch_normalization_86/ReadVariableOp_1?6batch_normalization_87/FusedBatchNormV3/ReadVariableOp?8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_87/ReadVariableOp?'batch_normalization_87/ReadVariableOp_1?!conv2d_103/BiasAdd/ReadVariableOp? conv2d_103/Conv2D/ReadVariableOp?!conv2d_104/BiasAdd/ReadVariableOp? conv2d_104/Conv2D/ReadVariableOp?!conv2d_105/BiasAdd/ReadVariableOp? conv2d_105/Conv2D/ReadVariableOp?!conv2d_106/BiasAdd/ReadVariableOp? conv2d_106/Conv2D/ReadVariableOp?!conv2d_107/BiasAdd/ReadVariableOp? conv2d_107/Conv2D/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOp?
 conv2d_103/Conv2D/ReadVariableOpReadVariableOp)conv2d_103_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_103/Conv2D/ReadVariableOp?
conv2d_103/Conv2DConv2Dinputs(conv2d_103/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_103/Conv2D?
!conv2d_103/BiasAdd/ReadVariableOpReadVariableOp*conv2d_103_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_103/BiasAdd/ReadVariableOp?
conv2d_103/BiasAddBiasAddconv2d_103/Conv2D:output:0)conv2d_103/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_103/BiasAdd?
conv2d_103/ReluReluconv2d_103/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_103/Relu?
%batch_normalization_83/ReadVariableOpReadVariableOp.batch_normalization_83_readvariableop_resource*
_output_shapes
:`*
dtype02'
%batch_normalization_83/ReadVariableOp?
'batch_normalization_83/ReadVariableOp_1ReadVariableOp0batch_normalization_83_readvariableop_1_resource*
_output_shapes
:`*
dtype02)
'batch_normalization_83/ReadVariableOp_1?
6batch_normalization_83/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_83_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype028
6batch_normalization_83/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02:
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_83/FusedBatchNormV3FusedBatchNormV3conv2d_103/Relu:activations:0-batch_normalization_83/ReadVariableOp:value:0/batch_normalization_83/ReadVariableOp_1:value:0>batch_normalization_83/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2)
'batch_normalization_83/FusedBatchNormV3?
max_pooling2d_17/MaxPoolMaxPool+batch_normalization_83/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool?
 conv2d_104/Conv2D/ReadVariableOpReadVariableOp)conv2d_104_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_104/Conv2D/ReadVariableOp?
conv2d_104/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0(conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_104/Conv2D?
!conv2d_104/BiasAdd/ReadVariableOpReadVariableOp*conv2d_104_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_104/BiasAdd/ReadVariableOp?
conv2d_104/BiasAddBiasAddconv2d_104/Conv2D:output:0)conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_104/BiasAdd?
conv2d_104/ReluReluconv2d_104/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_104/Relu?
%batch_normalization_84/ReadVariableOpReadVariableOp.batch_normalization_84_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_84/ReadVariableOp?
'batch_normalization_84/ReadVariableOp_1ReadVariableOp0batch_normalization_84_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_84/ReadVariableOp_1?
6batch_normalization_84/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_84_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_84/FusedBatchNormV3FusedBatchNormV3conv2d_104/Relu:activations:0-batch_normalization_84/ReadVariableOp:value:0/batch_normalization_84/ReadVariableOp_1:value:0>batch_normalization_84/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_84/FusedBatchNormV3?
max_pooling2d_18/MaxPoolMaxPool+batch_normalization_84/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_18/MaxPool?
 conv2d_105/Conv2D/ReadVariableOpReadVariableOp)conv2d_105_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_105/Conv2D/ReadVariableOp?
conv2d_105/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0(conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_105/Conv2D?
!conv2d_105/BiasAdd/ReadVariableOpReadVariableOp*conv2d_105_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_105/BiasAdd/ReadVariableOp?
conv2d_105/BiasAddBiasAddconv2d_105/Conv2D:output:0)conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_105/BiasAdd?
conv2d_105/ReluReluconv2d_105/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_105/Relu?
%batch_normalization_85/ReadVariableOpReadVariableOp.batch_normalization_85_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_85/ReadVariableOp?
'batch_normalization_85/ReadVariableOp_1ReadVariableOp0batch_normalization_85_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_85/ReadVariableOp_1?
6batch_normalization_85/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_85_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_85/FusedBatchNormV3FusedBatchNormV3conv2d_105/Relu:activations:0-batch_normalization_85/ReadVariableOp:value:0/batch_normalization_85/ReadVariableOp_1:value:0>batch_normalization_85/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_85/FusedBatchNormV3?
 conv2d_106/Conv2D/ReadVariableOpReadVariableOp)conv2d_106_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_106/Conv2D/ReadVariableOp?
conv2d_106/Conv2DConv2D+batch_normalization_85/FusedBatchNormV3:y:0(conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_106/Conv2D?
!conv2d_106/BiasAdd/ReadVariableOpReadVariableOp*conv2d_106_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_106/BiasAdd/ReadVariableOp?
conv2d_106/BiasAddBiasAddconv2d_106/Conv2D:output:0)conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_106/BiasAdd?
conv2d_106/ReluReluconv2d_106/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_106/Relu?
%batch_normalization_86/ReadVariableOpReadVariableOp.batch_normalization_86_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_86/ReadVariableOp?
'batch_normalization_86/ReadVariableOp_1ReadVariableOp0batch_normalization_86_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_86/ReadVariableOp_1?
6batch_normalization_86/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_86_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_86/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_86/FusedBatchNormV3FusedBatchNormV3conv2d_106/Relu:activations:0-batch_normalization_86/ReadVariableOp:value:0/batch_normalization_86/ReadVariableOp_1:value:0>batch_normalization_86/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_86/FusedBatchNormV3?
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_107/Conv2D/ReadVariableOp?
conv2d_107/Conv2DConv2D+batch_normalization_86/FusedBatchNormV3:y:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_107/Conv2D?
!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_107/BiasAdd/ReadVariableOp?
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_107/BiasAdd?
conv2d_107/ReluReluconv2d_107/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_107/Relu?
%batch_normalization_87/ReadVariableOpReadVariableOp.batch_normalization_87_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_87/ReadVariableOp?
'batch_normalization_87/ReadVariableOp_1ReadVariableOp0batch_normalization_87_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_87/ReadVariableOp_1?
6batch_normalization_87/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_87_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_87/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_87/FusedBatchNormV3FusedBatchNormV3conv2d_107/Relu:activations:0-batch_normalization_87/ReadVariableOp:value:0/batch_normalization_87/ReadVariableOp_1:value:0>batch_normalization_87/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_87/FusedBatchNormV3?
max_pooling2d_19/MaxPoolMaxPool+batch_normalization_87/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_19/MaxPools
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_7/Const?
flatten_7/ReshapeReshape!max_pooling2d_19/MaxPool:output:0flatten_7/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_7/Reshape?
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_15/MatMul/ReadVariableOp?
dense_15/MatMulMatMulflatten_7/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_15/MatMul?
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOp?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_15/BiasAdd|
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_15/Softmaxu
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp7^batch_normalization_83/FusedBatchNormV3/ReadVariableOp9^batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_83/ReadVariableOp(^batch_normalization_83/ReadVariableOp_17^batch_normalization_84/FusedBatchNormV3/ReadVariableOp9^batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_84/ReadVariableOp(^batch_normalization_84/ReadVariableOp_17^batch_normalization_85/FusedBatchNormV3/ReadVariableOp9^batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_85/ReadVariableOp(^batch_normalization_85/ReadVariableOp_17^batch_normalization_86/FusedBatchNormV3/ReadVariableOp9^batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_86/ReadVariableOp(^batch_normalization_86/ReadVariableOp_17^batch_normalization_87/FusedBatchNormV3/ReadVariableOp9^batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_87/ReadVariableOp(^batch_normalization_87/ReadVariableOp_1"^conv2d_103/BiasAdd/ReadVariableOp!^conv2d_103/Conv2D/ReadVariableOp"^conv2d_104/BiasAdd/ReadVariableOp!^conv2d_104/Conv2D/ReadVariableOp"^conv2d_105/BiasAdd/ReadVariableOp!^conv2d_105/Conv2D/ReadVariableOp"^conv2d_106/BiasAdd/ReadVariableOp!^conv2d_106/Conv2D/ReadVariableOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_83/FusedBatchNormV3/ReadVariableOp6batch_normalization_83/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_18batch_normalization_83/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_83/ReadVariableOp%batch_normalization_83/ReadVariableOp2R
'batch_normalization_83/ReadVariableOp_1'batch_normalization_83/ReadVariableOp_12p
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp6batch_normalization_84/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_18batch_normalization_84/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_84/ReadVariableOp%batch_normalization_84/ReadVariableOp2R
'batch_normalization_84/ReadVariableOp_1'batch_normalization_84/ReadVariableOp_12p
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp6batch_normalization_85/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_18batch_normalization_85/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_85/ReadVariableOp%batch_normalization_85/ReadVariableOp2R
'batch_normalization_85/ReadVariableOp_1'batch_normalization_85/ReadVariableOp_12p
6batch_normalization_86/FusedBatchNormV3/ReadVariableOp6batch_normalization_86/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_18batch_normalization_86/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_86/ReadVariableOp%batch_normalization_86/ReadVariableOp2R
'batch_normalization_86/ReadVariableOp_1'batch_normalization_86/ReadVariableOp_12p
6batch_normalization_87/FusedBatchNormV3/ReadVariableOp6batch_normalization_87/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_18batch_normalization_87/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_87/ReadVariableOp%batch_normalization_87/ReadVariableOp2R
'batch_normalization_87/ReadVariableOp_1'batch_normalization_87/ReadVariableOp_12F
!conv2d_103/BiasAdd/ReadVariableOp!conv2d_103/BiasAdd/ReadVariableOp2D
 conv2d_103/Conv2D/ReadVariableOp conv2d_103/Conv2D/ReadVariableOp2F
!conv2d_104/BiasAdd/ReadVariableOp!conv2d_104/BiasAdd/ReadVariableOp2D
 conv2d_104/Conv2D/ReadVariableOp conv2d_104/Conv2D/ReadVariableOp2F
!conv2d_105/BiasAdd/ReadVariableOp!conv2d_105/BiasAdd/ReadVariableOp2D
 conv2d_105/Conv2D/ReadVariableOp conv2d_105/Conv2D/ReadVariableOp2F
!conv2d_106/BiasAdd/ReadVariableOp!conv2d_106/BiasAdd/ReadVariableOp2D
 conv2d_106/Conv2D/ReadVariableOp conv2d_106/Conv2D/ReadVariableOp2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_17_layer_call_fn_3251453

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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_32491932
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
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252028

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
8__inference_batch_normalization_86_layer_call_fn_3251822

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_32495462
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
?
#__inference__traced_restore_3252388
file_prefix<
"assignvariableop_conv2d_103_kernel:`0
"assignvariableop_1_conv2d_103_bias:`=
/assignvariableop_2_batch_normalization_83_gamma:`<
.assignvariableop_3_batch_normalization_83_beta:`C
5assignvariableop_4_batch_normalization_83_moving_mean:`G
9assignvariableop_5_batch_normalization_83_moving_variance:`?
$assignvariableop_6_conv2d_104_kernel:`?1
"assignvariableop_7_conv2d_104_bias:	?>
/assignvariableop_8_batch_normalization_84_gamma:	?=
.assignvariableop_9_batch_normalization_84_beta:	?E
6assignvariableop_10_batch_normalization_84_moving_mean:	?I
:assignvariableop_11_batch_normalization_84_moving_variance:	?A
%assignvariableop_12_conv2d_105_kernel:??2
#assignvariableop_13_conv2d_105_bias:	??
0assignvariableop_14_batch_normalization_85_gamma:	?>
/assignvariableop_15_batch_normalization_85_beta:	?E
6assignvariableop_16_batch_normalization_85_moving_mean:	?I
:assignvariableop_17_batch_normalization_85_moving_variance:	?A
%assignvariableop_18_conv2d_106_kernel:??2
#assignvariableop_19_conv2d_106_bias:	??
0assignvariableop_20_batch_normalization_86_gamma:	?>
/assignvariableop_21_batch_normalization_86_beta:	?E
6assignvariableop_22_batch_normalization_86_moving_mean:	?I
:assignvariableop_23_batch_normalization_86_moving_variance:	?A
%assignvariableop_24_conv2d_107_kernel:??2
#assignvariableop_25_conv2d_107_bias:	??
0assignvariableop_26_batch_normalization_87_gamma:	?>
/assignvariableop_27_batch_normalization_87_beta:	?E
6assignvariableop_28_batch_normalization_87_moving_mean:	?I
:assignvariableop_29_batch_normalization_87_moving_variance:	?6
#assignvariableop_30_dense_15_kernel:	?(/
!assignvariableop_31_dense_15_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_103_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_103_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_83_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_83_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_83_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_83_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_104_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_104_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_84_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_84_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_84_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_84_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_105_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_105_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_85_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_85_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_85_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_85_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_106_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_106_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_86_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_86_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_86_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_86_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_107_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_107_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_87_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_87_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_87_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_87_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_15_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_15_biasIdentity_31:output:0"/device:CPU:0*
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
?
G__inference_conv2d_104_layer_call_and_return_conditional_losses_3249822

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
conv2d_103_inputC
"serving_default_conv2d_103_input:0???????????<
dense_150
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
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
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
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
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
%regularization_losses
&	variables
'trainable_variables
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

)kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
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
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
8regularization_losses
9	variables
:trainable_variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
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
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Kkernel
Lbias
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
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
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Zkernel
[bias
\regularization_losses
]	variables
^trainable_variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
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
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
mregularization_losses
n	variables
otrainable_variables
p	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

qkernel
rbias
sregularization_losses
t	variables
utrainable_variables
v	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
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
{layer_regularization_losses
regularization_losses
|metrics
}layer_metrics

~layers
	variables
trainable_variables
non_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)`2conv2d_103/kernel
:`2conv2d_103/bias
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
 ?layer_regularization_losses
regularization_losses
?metrics
?layer_metrics
?layers
	variables
trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(`2batch_normalization_83/gamma
):'`2batch_normalization_83/beta
2:0` (2"batch_normalization_83/moving_mean
6:4` (2&batch_normalization_83/moving_variance
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
 ?layer_regularization_losses
!regularization_losses
?metrics
?layer_metrics
?layers
"	variables
#trainable_variables
?non_trainable_variables
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
 ?layer_regularization_losses
%regularization_losses
?metrics
?layer_metrics
?layers
&	variables
'trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*`?2conv2d_104/kernel
:?2conv2d_104/bias
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
 ?layer_regularization_losses
+regularization_losses
?metrics
?layer_metrics
?layers
,	variables
-trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_84/gamma
*:(?2batch_normalization_84/beta
3:1? (2"batch_normalization_84/moving_mean
7:5? (2&batch_normalization_84/moving_variance
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
 ?layer_regularization_losses
4regularization_losses
?metrics
?layer_metrics
?layers
5	variables
6trainable_variables
?non_trainable_variables
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
 ?layer_regularization_losses
8regularization_losses
?metrics
?layer_metrics
?layers
9	variables
:trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_105/kernel
:?2conv2d_105/bias
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
 ?layer_regularization_losses
>regularization_losses
?metrics
?layer_metrics
?layers
?	variables
@trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_85/gamma
*:(?2batch_normalization_85/beta
3:1? (2"batch_normalization_85/moving_mean
7:5? (2&batch_normalization_85/moving_variance
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
 ?layer_regularization_losses
Gregularization_losses
?metrics
?layer_metrics
?layers
H	variables
Itrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_106/kernel
:?2conv2d_106/bias
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
 ?layer_regularization_losses
Mregularization_losses
?metrics
?layer_metrics
?layers
N	variables
Otrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_86/gamma
*:(?2batch_normalization_86/beta
3:1? (2"batch_normalization_86/moving_mean
7:5? (2&batch_normalization_86/moving_variance
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
 ?layer_regularization_losses
Vregularization_losses
?metrics
?layer_metrics
?layers
W	variables
Xtrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_107/kernel
:?2conv2d_107/bias
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
 ?layer_regularization_losses
\regularization_losses
?metrics
?layer_metrics
?layers
]	variables
^trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_87/gamma
*:(?2batch_normalization_87/beta
3:1? (2"batch_normalization_87/moving_mean
7:5? (2&batch_normalization_87/moving_variance
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
 ?layer_regularization_losses
eregularization_losses
?metrics
?layer_metrics
?layers
f	variables
gtrainable_variables
?non_trainable_variables
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
 ?layer_regularization_losses
iregularization_losses
?metrics
?layer_metrics
?layers
j	variables
ktrainable_variables
?non_trainable_variables
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
 ?layer_regularization_losses
mregularization_losses
?metrics
?layer_metrics
?layers
n	variables
otrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?(2dense_15/kernel
:2dense_15/bias
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
 ?layer_regularization_losses
sregularization_losses
?metrics
?layer_metrics
?layers
t	variables
utrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
0
 1"
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
.
20
31"
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
.
E0
F1"
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
.
T0
U1"
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
.
c0
d1"
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
?2?
,__inference_alex_net_3_layer_call_fn_3250092
,__inference_alex_net_3_layer_call_fn_3250993
,__inference_alex_net_3_layer_call_fn_3251062
,__inference_alex_net_3_layer_call_fn_3250683?
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
"__inference__wrapped_model_3249058conv2d_103_input"?
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
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3251183
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3251304
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3250766
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3250849?
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
,__inference_conv2d_103_layer_call_fn_3251313?
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
G__inference_conv2d_103_layer_call_and_return_conditional_losses_3251324?
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
?2?
8__inference_batch_normalization_83_layer_call_fn_3251337
8__inference_batch_normalization_83_layer_call_fn_3251350
8__inference_batch_normalization_83_layer_call_fn_3251363
8__inference_batch_normalization_83_layer_call_fn_3251376?
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
?2?
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251394
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251412
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251430
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251448?
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
2__inference_max_pooling2d_17_layer_call_fn_3251453
2__inference_max_pooling2d_17_layer_call_fn_3251458?
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
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3251463
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3251468?
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
,__inference_conv2d_104_layer_call_fn_3251477?
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
G__inference_conv2d_104_layer_call_and_return_conditional_losses_3251488?
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
?2?
8__inference_batch_normalization_84_layer_call_fn_3251501
8__inference_batch_normalization_84_layer_call_fn_3251514
8__inference_batch_normalization_84_layer_call_fn_3251527
8__inference_batch_normalization_84_layer_call_fn_3251540?
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
?2?
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251558
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251576
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251594
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251612?
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
2__inference_max_pooling2d_18_layer_call_fn_3251617
2__inference_max_pooling2d_18_layer_call_fn_3251622?
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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3251627
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3251632?
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
,__inference_conv2d_105_layer_call_fn_3251641?
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
G__inference_conv2d_105_layer_call_and_return_conditional_losses_3251652?
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
?2?
8__inference_batch_normalization_85_layer_call_fn_3251665
8__inference_batch_normalization_85_layer_call_fn_3251678
8__inference_batch_normalization_85_layer_call_fn_3251691
8__inference_batch_normalization_85_layer_call_fn_3251704?
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
?2?
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251722
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251740
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251758
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251776?
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
,__inference_conv2d_106_layer_call_fn_3251785?
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
G__inference_conv2d_106_layer_call_and_return_conditional_losses_3251796?
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
?2?
8__inference_batch_normalization_86_layer_call_fn_3251809
8__inference_batch_normalization_86_layer_call_fn_3251822
8__inference_batch_normalization_86_layer_call_fn_3251835
8__inference_batch_normalization_86_layer_call_fn_3251848?
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
?2?
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251866
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251884
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251902
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251920?
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
,__inference_conv2d_107_layer_call_fn_3251929?
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
G__inference_conv2d_107_layer_call_and_return_conditional_losses_3251940?
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
?2?
8__inference_batch_normalization_87_layer_call_fn_3251953
8__inference_batch_normalization_87_layer_call_fn_3251966
8__inference_batch_normalization_87_layer_call_fn_3251979
8__inference_batch_normalization_87_layer_call_fn_3251992?
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
?2?
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252010
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252028
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252046
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252064?
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
2__inference_max_pooling2d_19_layer_call_fn_3252069
2__inference_max_pooling2d_19_layer_call_fn_3252074?
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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3252079
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3252084?
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
+__inference_flatten_7_layer_call_fn_3252089?
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
F__inference_flatten_7_layer_call_and_return_conditional_losses_3252095?
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
*__inference_dense_15_layer_call_fn_3252104?
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
E__inference_dense_15_layer_call_and_return_conditional_losses_3252115?
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
%__inference_signature_wrapper_3250924conv2d_103_input"?
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
"__inference__wrapped_model_3249058?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_103_input???????????
? "3?0
.
dense_15"?
dense_15??????????
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3250766?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_103_input???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3250849?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_103_input???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3251183?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_3_layer_call_and_return_conditional_losses_3251304?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
,__inference_alex_net_3_layer_call_fn_3250092?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_103_input???????????
p 

 
? "???????????
,__inference_alex_net_3_layer_call_fn_3250683?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_103_input???????????
p

 
? "???????????
,__inference_alex_net_3_layer_call_fn_3250993  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_alex_net_3_layer_call_fn_3251062  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251394? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251412? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251430r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
S__inference_batch_normalization_83_layer_call_and_return_conditional_losses_3251448r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
8__inference_batch_normalization_83_layer_call_fn_3251337? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
8__inference_batch_normalization_83_layer_call_fn_3251350? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
8__inference_batch_normalization_83_layer_call_fn_3251363e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
8__inference_batch_normalization_83_layer_call_fn_3251376e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251558?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251576?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251594t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
S__inference_batch_normalization_84_layer_call_and_return_conditional_losses_3251612t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
8__inference_batch_normalization_84_layer_call_fn_3251501?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
8__inference_batch_normalization_84_layer_call_fn_3251514?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
8__inference_batch_normalization_84_layer_call_fn_3251527g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
8__inference_batch_normalization_84_layer_call_fn_3251540g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251722?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251740?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251758tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
S__inference_batch_normalization_85_layer_call_and_return_conditional_losses_3251776tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
8__inference_batch_normalization_85_layer_call_fn_3251665?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
8__inference_batch_normalization_85_layer_call_fn_3251678?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
8__inference_batch_normalization_85_layer_call_fn_3251691gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
8__inference_batch_normalization_85_layer_call_fn_3251704gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251866?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251884?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251902tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
S__inference_batch_normalization_86_layer_call_and_return_conditional_losses_3251920tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
8__inference_batch_normalization_86_layer_call_fn_3251809?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
8__inference_batch_normalization_86_layer_call_fn_3251822?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
8__inference_batch_normalization_86_layer_call_fn_3251835gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
8__inference_batch_normalization_86_layer_call_fn_3251848gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252010?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252028?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252046tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
S__inference_batch_normalization_87_layer_call_and_return_conditional_losses_3252064tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
8__inference_batch_normalization_87_layer_call_fn_3251953?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
8__inference_batch_normalization_87_layer_call_fn_3251966?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
8__inference_batch_normalization_87_layer_call_fn_3251979gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
8__inference_batch_normalization_87_layer_call_fn_3251992gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_103_layer_call_and_return_conditional_losses_3251324n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_103_layer_call_fn_3251313a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_104_layer_call_and_return_conditional_losses_3251488m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_104_layer_call_fn_3251477`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_105_layer_call_and_return_conditional_losses_3251652n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_105_layer_call_fn_3251641a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_106_layer_call_and_return_conditional_losses_3251796nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_106_layer_call_fn_3251785aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_107_layer_call_and_return_conditional_losses_3251940nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_107_layer_call_fn_3251929aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_15_layer_call_and_return_conditional_losses_3252115]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_15_layer_call_fn_3252104Pqr0?-
&?#
!?
inputs??????????(
? "???????????
F__inference_flatten_7_layer_call_and_return_conditional_losses_3252095b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
+__inference_flatten_7_layer_call_fn_3252089U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3251463?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3251468h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_17_layer_call_fn_3251453?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_17_layer_call_fn_3251458[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3251627?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3251632j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_18_layer_call_fn_3251617?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_18_layer_call_fn_3251622]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3252079?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3252084j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_19_layer_call_fn_3252069?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_19_layer_call_fn_3252074]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_3250924?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_103_input4?1
conv2d_103_input???????????"3?0
.
dense_15"?
dense_15?????????