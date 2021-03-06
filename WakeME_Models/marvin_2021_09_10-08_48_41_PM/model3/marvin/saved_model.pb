??
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
conv2d_130/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_130/kernel

%conv2d_130/kernel/Read/ReadVariableOpReadVariableOpconv2d_130/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_130/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_130/bias
o
#conv2d_130/bias/Read/ReadVariableOpReadVariableOpconv2d_130/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_105/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_105/gamma
?
1batch_normalization_105/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_105/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_105/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_105/beta
?
0batch_normalization_105/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_105/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_105/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_105/moving_mean
?
7batch_normalization_105/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_105/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_105/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_105/moving_variance
?
;batch_normalization_105/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_105/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_131/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_131/kernel
?
%conv2d_131/kernel/Read/ReadVariableOpReadVariableOpconv2d_131/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_131/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_131/bias
p
#conv2d_131/bias/Read/ReadVariableOpReadVariableOpconv2d_131/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_106/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_106/gamma
?
1batch_normalization_106/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_106/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_106/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_106/beta
?
0batch_normalization_106/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_106/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_106/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_106/moving_mean
?
7batch_normalization_106/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_106/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_106/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_106/moving_variance
?
;batch_normalization_106/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_106/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_132/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_132/kernel
?
%conv2d_132/kernel/Read/ReadVariableOpReadVariableOpconv2d_132/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_132/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_132/bias
p
#conv2d_132/bias/Read/ReadVariableOpReadVariableOpconv2d_132/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_107/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_107/gamma
?
1batch_normalization_107/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_107/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_107/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_107/beta
?
0batch_normalization_107/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_107/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_107/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_107/moving_mean
?
7batch_normalization_107/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_107/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_107/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_107/moving_variance
?
;batch_normalization_107/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_107/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_133/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_133/kernel
?
%conv2d_133/kernel/Read/ReadVariableOpReadVariableOpconv2d_133/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_133/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_133/bias
p
#conv2d_133/bias/Read/ReadVariableOpReadVariableOpconv2d_133/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_108/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_108/gamma
?
1batch_normalization_108/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_108/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_108/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_108/beta
?
0batch_normalization_108/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_108/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_108/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_108/moving_mean
?
7batch_normalization_108/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_108/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_108/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_108/moving_variance
?
;batch_normalization_108/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_108/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_134/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_134/kernel
?
%conv2d_134/kernel/Read/ReadVariableOpReadVariableOpconv2d_134/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_134/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_134/bias
p
#conv2d_134/bias/Read/ReadVariableOpReadVariableOpconv2d_134/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_109/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_109/gamma
?
1batch_normalization_109/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_109/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_109/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_109/beta
?
0batch_normalization_109/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_109/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_109/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_109/moving_mean
?
7batch_normalization_109/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_109/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_109/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_109/moving_variance
?
;batch_normalization_109/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_109/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_19/kernel
t
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes
:	?(*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
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
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
?
axis
	gamma
beta
moving_mean
 moving_variance
!regularization_losses
"trainable_variables
#	variables
$	keras_api
R
%regularization_losses
&trainable_variables
'	variables
(	keras_api
h

)kernel
*bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
?
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4regularization_losses
5trainable_variables
6	variables
7	keras_api
R
8regularization_losses
9trainable_variables
:	variables
;	keras_api
h

<kernel
=bias
>regularization_losses
?trainable_variables
@	variables
A	keras_api
?
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
h

Kkernel
Lbias
Mregularization_losses
Ntrainable_variables
O	variables
P	keras_api
?
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
h

Zkernel
[bias
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
R
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
R
mregularization_losses
ntrainable_variables
o	variables
p	keras_api
h

qkernel
rbias
sregularization_losses
ttrainable_variables
u	variables
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

{layers
|layer_metrics
}layer_regularization_losses
~metrics
regularization_losses
non_trainable_variables
trainable_variables
	variables
 
][
VARIABLE_VALUEconv2d_130/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_130/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
regularization_losses
?non_trainable_variables
trainable_variables
	variables
 
hf
VARIABLE_VALUEbatch_normalization_105/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_105/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_105/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_105/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
2
 3
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
!regularization_losses
?non_trainable_variables
"trainable_variables
#	variables
 
 
 
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
%regularization_losses
?non_trainable_variables
&trainable_variables
'	variables
][
VARIABLE_VALUEconv2d_131/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_131/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
+regularization_losses
?non_trainable_variables
,trainable_variables
-	variables
 
hf
VARIABLE_VALUEbatch_normalization_106/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_106/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_106/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_106/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
22
33
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
4regularization_losses
?non_trainable_variables
5trainable_variables
6	variables
 
 
 
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
8regularization_losses
?non_trainable_variables
9trainable_variables
:	variables
][
VARIABLE_VALUEconv2d_132/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_132/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
>regularization_losses
?non_trainable_variables
?trainable_variables
@	variables
 
hf
VARIABLE_VALUEbatch_normalization_107/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_107/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_107/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_107/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1

C0
D1
E2
F3
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
Gregularization_losses
?non_trainable_variables
Htrainable_variables
I	variables
][
VARIABLE_VALUEconv2d_133/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_133/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1

K0
L1
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
Mregularization_losses
?non_trainable_variables
Ntrainable_variables
O	variables
 
hf
VARIABLE_VALUEbatch_normalization_108/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_108/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_108/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_108/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

R0
S1
T2
U3
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
Vregularization_losses
?non_trainable_variables
Wtrainable_variables
X	variables
][
VARIABLE_VALUEconv2d_134/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_134/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Z0
[1

Z0
[1
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
\regularization_losses
?non_trainable_variables
]trainable_variables
^	variables
 
hf
VARIABLE_VALUEbatch_normalization_109/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_109/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_109/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_109/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

a0
b1

a0
b1
c2
d3
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
eregularization_losses
?non_trainable_variables
ftrainable_variables
g	variables
 
 
 
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
iregularization_losses
?non_trainable_variables
jtrainable_variables
k	variables
 
 
 
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
mregularization_losses
?non_trainable_variables
ntrainable_variables
o	variables
\Z
VARIABLE_VALUEdense_19/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_19/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

q0
r1

q0
r1
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
sregularization_losses
?non_trainable_variables
ttrainable_variables
u	variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
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

?0
?1
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
 serving_default_conv2d_130_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_130_inputconv2d_130/kernelconv2d_130/biasbatch_normalization_105/gammabatch_normalization_105/beta#batch_normalization_105/moving_mean'batch_normalization_105/moving_varianceconv2d_131/kernelconv2d_131/biasbatch_normalization_106/gammabatch_normalization_106/beta#batch_normalization_106/moving_mean'batch_normalization_106/moving_varianceconv2d_132/kernelconv2d_132/biasbatch_normalization_107/gammabatch_normalization_107/beta#batch_normalization_107/moving_mean'batch_normalization_107/moving_varianceconv2d_133/kernelconv2d_133/biasbatch_normalization_108/gammabatch_normalization_108/beta#batch_normalization_108/moving_mean'batch_normalization_108/moving_varianceconv2d_134/kernelconv2d_134/biasbatch_normalization_109/gammabatch_normalization_109/beta#batch_normalization_109/moving_mean'batch_normalization_109/moving_variancedense_19/kerneldense_19/bias*,
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
%__inference_signature_wrapper_4843597
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_130/kernel/Read/ReadVariableOp#conv2d_130/bias/Read/ReadVariableOp1batch_normalization_105/gamma/Read/ReadVariableOp0batch_normalization_105/beta/Read/ReadVariableOp7batch_normalization_105/moving_mean/Read/ReadVariableOp;batch_normalization_105/moving_variance/Read/ReadVariableOp%conv2d_131/kernel/Read/ReadVariableOp#conv2d_131/bias/Read/ReadVariableOp1batch_normalization_106/gamma/Read/ReadVariableOp0batch_normalization_106/beta/Read/ReadVariableOp7batch_normalization_106/moving_mean/Read/ReadVariableOp;batch_normalization_106/moving_variance/Read/ReadVariableOp%conv2d_132/kernel/Read/ReadVariableOp#conv2d_132/bias/Read/ReadVariableOp1batch_normalization_107/gamma/Read/ReadVariableOp0batch_normalization_107/beta/Read/ReadVariableOp7batch_normalization_107/moving_mean/Read/ReadVariableOp;batch_normalization_107/moving_variance/Read/ReadVariableOp%conv2d_133/kernel/Read/ReadVariableOp#conv2d_133/bias/Read/ReadVariableOp1batch_normalization_108/gamma/Read/ReadVariableOp0batch_normalization_108/beta/Read/ReadVariableOp7batch_normalization_108/moving_mean/Read/ReadVariableOp;batch_normalization_108/moving_variance/Read/ReadVariableOp%conv2d_134/kernel/Read/ReadVariableOp#conv2d_134/bias/Read/ReadVariableOp1batch_normalization_109/gamma/Read/ReadVariableOp0batch_normalization_109/beta/Read/ReadVariableOp7batch_normalization_109/moving_mean/Read/ReadVariableOp;batch_normalization_109/moving_variance/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4844931
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_130/kernelconv2d_130/biasbatch_normalization_105/gammabatch_normalization_105/beta#batch_normalization_105/moving_mean'batch_normalization_105/moving_varianceconv2d_131/kernelconv2d_131/biasbatch_normalization_106/gammabatch_normalization_106/beta#batch_normalization_106/moving_mean'batch_normalization_106/moving_varianceconv2d_132/kernelconv2d_132/biasbatch_normalization_107/gammabatch_normalization_107/beta#batch_normalization_107/moving_mean'batch_normalization_107/moving_varianceconv2d_133/kernelconv2d_133/biasbatch_normalization_108/gammabatch_normalization_108/beta#batch_normalization_108/moving_mean'batch_normalization_108/moving_varianceconv2d_134/kernelconv2d_134/biasbatch_normalization_109/gammabatch_normalization_109/beta#batch_normalization_109/moving_mean'batch_normalization_109/moving_variancedense_19/kerneldense_19/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_4845061??
?
?
G__inference_conv2d_133_layer_call_and_return_conditional_losses_4842589

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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4841753

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
G__inference_conv2d_131_layer_call_and_return_conditional_losses_4844152

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
??
?
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843718

inputsC
)conv2d_130_conv2d_readvariableop_resource:`8
*conv2d_130_biasadd_readvariableop_resource:`=
/batch_normalization_105_readvariableop_resource:`?
1batch_normalization_105_readvariableop_1_resource:`N
@batch_normalization_105_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_105_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_131_conv2d_readvariableop_resource:`?9
*conv2d_131_biasadd_readvariableop_resource:	?>
/batch_normalization_106_readvariableop_resource:	?@
1batch_normalization_106_readvariableop_1_resource:	?O
@batch_normalization_106_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_106_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_132_conv2d_readvariableop_resource:??9
*conv2d_132_biasadd_readvariableop_resource:	?>
/batch_normalization_107_readvariableop_resource:	?@
1batch_normalization_107_readvariableop_1_resource:	?O
@batch_normalization_107_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_107_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_133_conv2d_readvariableop_resource:??9
*conv2d_133_biasadd_readvariableop_resource:	?>
/batch_normalization_108_readvariableop_resource:	?@
1batch_normalization_108_readvariableop_1_resource:	?O
@batch_normalization_108_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_108_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_134_conv2d_readvariableop_resource:??9
*conv2d_134_biasadd_readvariableop_resource:	?>
/batch_normalization_109_readvariableop_resource:	?@
1batch_normalization_109_readvariableop_1_resource:	?O
@batch_normalization_109_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_109_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_19_matmul_readvariableop_resource:	?(6
(dense_19_biasadd_readvariableop_resource:
identity??7batch_normalization_105/FusedBatchNormV3/ReadVariableOp?9batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_105/ReadVariableOp?(batch_normalization_105/ReadVariableOp_1?7batch_normalization_106/FusedBatchNormV3/ReadVariableOp?9batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_106/ReadVariableOp?(batch_normalization_106/ReadVariableOp_1?7batch_normalization_107/FusedBatchNormV3/ReadVariableOp?9batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_107/ReadVariableOp?(batch_normalization_107/ReadVariableOp_1?7batch_normalization_108/FusedBatchNormV3/ReadVariableOp?9batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_108/ReadVariableOp?(batch_normalization_108/ReadVariableOp_1?7batch_normalization_109/FusedBatchNormV3/ReadVariableOp?9batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_109/ReadVariableOp?(batch_normalization_109/ReadVariableOp_1?!conv2d_130/BiasAdd/ReadVariableOp? conv2d_130/Conv2D/ReadVariableOp?!conv2d_131/BiasAdd/ReadVariableOp? conv2d_131/Conv2D/ReadVariableOp?!conv2d_132/BiasAdd/ReadVariableOp? conv2d_132/Conv2D/ReadVariableOp?!conv2d_133/BiasAdd/ReadVariableOp? conv2d_133/Conv2D/ReadVariableOp?!conv2d_134/BiasAdd/ReadVariableOp? conv2d_134/Conv2D/ReadVariableOp?dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?
 conv2d_130/Conv2D/ReadVariableOpReadVariableOp)conv2d_130_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_130/Conv2D/ReadVariableOp?
conv2d_130/Conv2DConv2Dinputs(conv2d_130/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_130/Conv2D?
!conv2d_130/BiasAdd/ReadVariableOpReadVariableOp*conv2d_130_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_130/BiasAdd/ReadVariableOp?
conv2d_130/BiasAddBiasAddconv2d_130/Conv2D:output:0)conv2d_130/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_130/BiasAdd?
conv2d_130/ReluReluconv2d_130/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_130/Relu?
&batch_normalization_105/ReadVariableOpReadVariableOp/batch_normalization_105_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_105/ReadVariableOp?
(batch_normalization_105/ReadVariableOp_1ReadVariableOp1batch_normalization_105_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_105/ReadVariableOp_1?
7batch_normalization_105/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_105_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_105/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_105_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_105/FusedBatchNormV3FusedBatchNormV3conv2d_130/Relu:activations:0.batch_normalization_105/ReadVariableOp:value:00batch_normalization_105/ReadVariableOp_1:value:0?batch_normalization_105/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_105/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_105/FusedBatchNormV3?
max_pooling2d_22/MaxPoolMaxPool,batch_normalization_105/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_22/MaxPool?
 conv2d_131/Conv2D/ReadVariableOpReadVariableOp)conv2d_131_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_131/Conv2D/ReadVariableOp?
conv2d_131/Conv2DConv2D!max_pooling2d_22/MaxPool:output:0(conv2d_131/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_131/Conv2D?
!conv2d_131/BiasAdd/ReadVariableOpReadVariableOp*conv2d_131_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_131/BiasAdd/ReadVariableOp?
conv2d_131/BiasAddBiasAddconv2d_131/Conv2D:output:0)conv2d_131/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_131/BiasAdd?
conv2d_131/ReluReluconv2d_131/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_131/Relu?
&batch_normalization_106/ReadVariableOpReadVariableOp/batch_normalization_106_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_106/ReadVariableOp?
(batch_normalization_106/ReadVariableOp_1ReadVariableOp1batch_normalization_106_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_106/ReadVariableOp_1?
7batch_normalization_106/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_106_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_106/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_106_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_106/FusedBatchNormV3FusedBatchNormV3conv2d_131/Relu:activations:0.batch_normalization_106/ReadVariableOp:value:00batch_normalization_106/ReadVariableOp_1:value:0?batch_normalization_106/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_106/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_106/FusedBatchNormV3?
max_pooling2d_23/MaxPoolMaxPool,batch_normalization_106/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_23/MaxPool?
 conv2d_132/Conv2D/ReadVariableOpReadVariableOp)conv2d_132_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_132/Conv2D/ReadVariableOp?
conv2d_132/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0(conv2d_132/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_132/Conv2D?
!conv2d_132/BiasAdd/ReadVariableOpReadVariableOp*conv2d_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_132/BiasAdd/ReadVariableOp?
conv2d_132/BiasAddBiasAddconv2d_132/Conv2D:output:0)conv2d_132/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_132/BiasAdd?
conv2d_132/ReluReluconv2d_132/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_132/Relu?
&batch_normalization_107/ReadVariableOpReadVariableOp/batch_normalization_107_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_107/ReadVariableOp?
(batch_normalization_107/ReadVariableOp_1ReadVariableOp1batch_normalization_107_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_107/ReadVariableOp_1?
7batch_normalization_107/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_107_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_107/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_107_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_107/FusedBatchNormV3FusedBatchNormV3conv2d_132/Relu:activations:0.batch_normalization_107/ReadVariableOp:value:00batch_normalization_107/ReadVariableOp_1:value:0?batch_normalization_107/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_107/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_107/FusedBatchNormV3?
 conv2d_133/Conv2D/ReadVariableOpReadVariableOp)conv2d_133_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_133/Conv2D/ReadVariableOp?
conv2d_133/Conv2DConv2D,batch_normalization_107/FusedBatchNormV3:y:0(conv2d_133/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_133/Conv2D?
!conv2d_133/BiasAdd/ReadVariableOpReadVariableOp*conv2d_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_133/BiasAdd/ReadVariableOp?
conv2d_133/BiasAddBiasAddconv2d_133/Conv2D:output:0)conv2d_133/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_133/BiasAdd?
conv2d_133/ReluReluconv2d_133/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_133/Relu?
&batch_normalization_108/ReadVariableOpReadVariableOp/batch_normalization_108_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_108/ReadVariableOp?
(batch_normalization_108/ReadVariableOp_1ReadVariableOp1batch_normalization_108_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_108/ReadVariableOp_1?
7batch_normalization_108/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_108_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_108/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_108_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_108/FusedBatchNormV3FusedBatchNormV3conv2d_133/Relu:activations:0.batch_normalization_108/ReadVariableOp:value:00batch_normalization_108/ReadVariableOp_1:value:0?batch_normalization_108/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_108/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_108/FusedBatchNormV3?
 conv2d_134/Conv2D/ReadVariableOpReadVariableOp)conv2d_134_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_134/Conv2D/ReadVariableOp?
conv2d_134/Conv2DConv2D,batch_normalization_108/FusedBatchNormV3:y:0(conv2d_134/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_134/Conv2D?
!conv2d_134/BiasAdd/ReadVariableOpReadVariableOp*conv2d_134_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_134/BiasAdd/ReadVariableOp?
conv2d_134/BiasAddBiasAddconv2d_134/Conv2D:output:0)conv2d_134/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_134/BiasAdd?
conv2d_134/ReluReluconv2d_134/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_134/Relu?
&batch_normalization_109/ReadVariableOpReadVariableOp/batch_normalization_109_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_109/ReadVariableOp?
(batch_normalization_109/ReadVariableOp_1ReadVariableOp1batch_normalization_109_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_109/ReadVariableOp_1?
7batch_normalization_109/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_109_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_109/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_109_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_109/FusedBatchNormV3FusedBatchNormV3conv2d_134/Relu:activations:0.batch_normalization_109/ReadVariableOp:value:00batch_normalization_109/ReadVariableOp_1:value:0?batch_normalization_109/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_109/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_109/FusedBatchNormV3?
max_pooling2d_24/MaxPoolMaxPool,batch_normalization_109/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_24/MaxPools
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_9/Const?
flatten_9/ReshapeReshape!max_pooling2d_24/MaxPool:output:0flatten_9/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_9/Reshape?
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_19/MatMul/ReadVariableOp?
dense_19/MatMulMatMulflatten_9/Reshape:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/MatMul?
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_19/BiasAdd/ReadVariableOp?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/BiasAdd|
dense_19/SigmoidSigmoiddense_19/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_19/Sigmoido
IdentityIdentitydense_19/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_105/FusedBatchNormV3/ReadVariableOp:^batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_105/ReadVariableOp)^batch_normalization_105/ReadVariableOp_18^batch_normalization_106/FusedBatchNormV3/ReadVariableOp:^batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_106/ReadVariableOp)^batch_normalization_106/ReadVariableOp_18^batch_normalization_107/FusedBatchNormV3/ReadVariableOp:^batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_107/ReadVariableOp)^batch_normalization_107/ReadVariableOp_18^batch_normalization_108/FusedBatchNormV3/ReadVariableOp:^batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_108/ReadVariableOp)^batch_normalization_108/ReadVariableOp_18^batch_normalization_109/FusedBatchNormV3/ReadVariableOp:^batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_109/ReadVariableOp)^batch_normalization_109/ReadVariableOp_1"^conv2d_130/BiasAdd/ReadVariableOp!^conv2d_130/Conv2D/ReadVariableOp"^conv2d_131/BiasAdd/ReadVariableOp!^conv2d_131/Conv2D/ReadVariableOp"^conv2d_132/BiasAdd/ReadVariableOp!^conv2d_132/Conv2D/ReadVariableOp"^conv2d_133/BiasAdd/ReadVariableOp!^conv2d_133/Conv2D/ReadVariableOp"^conv2d_134/BiasAdd/ReadVariableOp!^conv2d_134/Conv2D/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_105/FusedBatchNormV3/ReadVariableOp7batch_normalization_105/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_105/FusedBatchNormV3/ReadVariableOp_19batch_normalization_105/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_105/ReadVariableOp&batch_normalization_105/ReadVariableOp2T
(batch_normalization_105/ReadVariableOp_1(batch_normalization_105/ReadVariableOp_12r
7batch_normalization_106/FusedBatchNormV3/ReadVariableOp7batch_normalization_106/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_106/FusedBatchNormV3/ReadVariableOp_19batch_normalization_106/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_106/ReadVariableOp&batch_normalization_106/ReadVariableOp2T
(batch_normalization_106/ReadVariableOp_1(batch_normalization_106/ReadVariableOp_12r
7batch_normalization_107/FusedBatchNormV3/ReadVariableOp7batch_normalization_107/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_107/FusedBatchNormV3/ReadVariableOp_19batch_normalization_107/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_107/ReadVariableOp&batch_normalization_107/ReadVariableOp2T
(batch_normalization_107/ReadVariableOp_1(batch_normalization_107/ReadVariableOp_12r
7batch_normalization_108/FusedBatchNormV3/ReadVariableOp7batch_normalization_108/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_108/FusedBatchNormV3/ReadVariableOp_19batch_normalization_108/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_108/ReadVariableOp&batch_normalization_108/ReadVariableOp2T
(batch_normalization_108/ReadVariableOp_1(batch_normalization_108/ReadVariableOp_12r
7batch_normalization_109/FusedBatchNormV3/ReadVariableOp7batch_normalization_109/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_109/FusedBatchNormV3/ReadVariableOp_19batch_normalization_109/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_109/ReadVariableOp&batch_normalization_109/ReadVariableOp2T
(batch_normalization_109/ReadVariableOp_1(batch_normalization_109/ReadVariableOp_12F
!conv2d_130/BiasAdd/ReadVariableOp!conv2d_130/BiasAdd/ReadVariableOp2D
 conv2d_130/Conv2D/ReadVariableOp conv2d_130/Conv2D/ReadVariableOp2F
!conv2d_131/BiasAdd/ReadVariableOp!conv2d_131/BiasAdd/ReadVariableOp2D
 conv2d_131/Conv2D/ReadVariableOp conv2d_131/Conv2D/ReadVariableOp2F
!conv2d_132/BiasAdd/ReadVariableOp!conv2d_132/BiasAdd/ReadVariableOp2D
 conv2d_132/Conv2D/ReadVariableOp conv2d_132/Conv2D/ReadVariableOp2F
!conv2d_133/BiasAdd/ReadVariableOp!conv2d_133/BiasAdd/ReadVariableOp2D
 conv2d_133/Conv2D/ReadVariableOp conv2d_133/Conv2D/ReadVariableOp2F
!conv2d_134/BiasAdd/ReadVariableOp!conv2d_134/BiasAdd/ReadVariableOp2D
 conv2d_134/Conv2D/ReadVariableOp conv2d_134/Conv2D/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_4842014

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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_4842670

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
9__inference_batch_normalization_106_layer_call_fn_4844272

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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_48425182
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
?
G
+__inference_flatten_9_layer_call_fn_4844768

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
F__inference_flatten_9_layer_call_and_return_conditional_losses_48426782
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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844015

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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4842518

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
?
i
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_4842482

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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4843045

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
9__inference_batch_normalization_105_layer_call_fn_4844082

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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_48417532
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
?
?
,__inference_conv2d_132_layer_call_fn_4844325

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
G__inference_conv2d_132_layer_call_and_return_conditional_losses_48425452
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
?
?
,__inference_conv2d_133_layer_call_fn_4844469

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
G__inference_conv2d_133_layer_call_and_return_conditional_losses_48425892
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
G__inference_conv2d_134_layer_call_and_return_conditional_losses_4844604

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
?
?
,__inference_conv2d_131_layer_call_fn_4844161

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
G__inference_conv2d_131_layer_call_and_return_conditional_losses_48424952
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
??
? 
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843839

inputsC
)conv2d_130_conv2d_readvariableop_resource:`8
*conv2d_130_biasadd_readvariableop_resource:`=
/batch_normalization_105_readvariableop_resource:`?
1batch_normalization_105_readvariableop_1_resource:`N
@batch_normalization_105_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_105_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_131_conv2d_readvariableop_resource:`?9
*conv2d_131_biasadd_readvariableop_resource:	?>
/batch_normalization_106_readvariableop_resource:	?@
1batch_normalization_106_readvariableop_1_resource:	?O
@batch_normalization_106_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_106_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_132_conv2d_readvariableop_resource:??9
*conv2d_132_biasadd_readvariableop_resource:	?>
/batch_normalization_107_readvariableop_resource:	?@
1batch_normalization_107_readvariableop_1_resource:	?O
@batch_normalization_107_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_107_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_133_conv2d_readvariableop_resource:??9
*conv2d_133_biasadd_readvariableop_resource:	?>
/batch_normalization_108_readvariableop_resource:	?@
1batch_normalization_108_readvariableop_1_resource:	?O
@batch_normalization_108_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_108_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_134_conv2d_readvariableop_resource:??9
*conv2d_134_biasadd_readvariableop_resource:	?>
/batch_normalization_109_readvariableop_resource:	?@
1batch_normalization_109_readvariableop_1_resource:	?O
@batch_normalization_109_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_109_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_19_matmul_readvariableop_resource:	?(6
(dense_19_biasadd_readvariableop_resource:
identity??&batch_normalization_105/AssignNewValue?(batch_normalization_105/AssignNewValue_1?7batch_normalization_105/FusedBatchNormV3/ReadVariableOp?9batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_105/ReadVariableOp?(batch_normalization_105/ReadVariableOp_1?&batch_normalization_106/AssignNewValue?(batch_normalization_106/AssignNewValue_1?7batch_normalization_106/FusedBatchNormV3/ReadVariableOp?9batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_106/ReadVariableOp?(batch_normalization_106/ReadVariableOp_1?&batch_normalization_107/AssignNewValue?(batch_normalization_107/AssignNewValue_1?7batch_normalization_107/FusedBatchNormV3/ReadVariableOp?9batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_107/ReadVariableOp?(batch_normalization_107/ReadVariableOp_1?&batch_normalization_108/AssignNewValue?(batch_normalization_108/AssignNewValue_1?7batch_normalization_108/FusedBatchNormV3/ReadVariableOp?9batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_108/ReadVariableOp?(batch_normalization_108/ReadVariableOp_1?&batch_normalization_109/AssignNewValue?(batch_normalization_109/AssignNewValue_1?7batch_normalization_109/FusedBatchNormV3/ReadVariableOp?9batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_109/ReadVariableOp?(batch_normalization_109/ReadVariableOp_1?!conv2d_130/BiasAdd/ReadVariableOp? conv2d_130/Conv2D/ReadVariableOp?!conv2d_131/BiasAdd/ReadVariableOp? conv2d_131/Conv2D/ReadVariableOp?!conv2d_132/BiasAdd/ReadVariableOp? conv2d_132/Conv2D/ReadVariableOp?!conv2d_133/BiasAdd/ReadVariableOp? conv2d_133/Conv2D/ReadVariableOp?!conv2d_134/BiasAdd/ReadVariableOp? conv2d_134/Conv2D/ReadVariableOp?dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?
 conv2d_130/Conv2D/ReadVariableOpReadVariableOp)conv2d_130_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_130/Conv2D/ReadVariableOp?
conv2d_130/Conv2DConv2Dinputs(conv2d_130/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_130/Conv2D?
!conv2d_130/BiasAdd/ReadVariableOpReadVariableOp*conv2d_130_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_130/BiasAdd/ReadVariableOp?
conv2d_130/BiasAddBiasAddconv2d_130/Conv2D:output:0)conv2d_130/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_130/BiasAdd?
conv2d_130/ReluReluconv2d_130/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_130/Relu?
&batch_normalization_105/ReadVariableOpReadVariableOp/batch_normalization_105_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_105/ReadVariableOp?
(batch_normalization_105/ReadVariableOp_1ReadVariableOp1batch_normalization_105_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_105/ReadVariableOp_1?
7batch_normalization_105/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_105_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_105/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_105_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_105/FusedBatchNormV3FusedBatchNormV3conv2d_130/Relu:activations:0.batch_normalization_105/ReadVariableOp:value:00batch_normalization_105/ReadVariableOp_1:value:0?batch_normalization_105/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_105/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_105/FusedBatchNormV3?
&batch_normalization_105/AssignNewValueAssignVariableOp@batch_normalization_105_fusedbatchnormv3_readvariableop_resource5batch_normalization_105/FusedBatchNormV3:batch_mean:08^batch_normalization_105/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_105/AssignNewValue?
(batch_normalization_105/AssignNewValue_1AssignVariableOpBbatch_normalization_105_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_105/FusedBatchNormV3:batch_variance:0:^batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_105/AssignNewValue_1?
max_pooling2d_22/MaxPoolMaxPool,batch_normalization_105/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_22/MaxPool?
 conv2d_131/Conv2D/ReadVariableOpReadVariableOp)conv2d_131_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_131/Conv2D/ReadVariableOp?
conv2d_131/Conv2DConv2D!max_pooling2d_22/MaxPool:output:0(conv2d_131/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_131/Conv2D?
!conv2d_131/BiasAdd/ReadVariableOpReadVariableOp*conv2d_131_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_131/BiasAdd/ReadVariableOp?
conv2d_131/BiasAddBiasAddconv2d_131/Conv2D:output:0)conv2d_131/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_131/BiasAdd?
conv2d_131/ReluReluconv2d_131/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_131/Relu?
&batch_normalization_106/ReadVariableOpReadVariableOp/batch_normalization_106_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_106/ReadVariableOp?
(batch_normalization_106/ReadVariableOp_1ReadVariableOp1batch_normalization_106_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_106/ReadVariableOp_1?
7batch_normalization_106/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_106_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_106/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_106_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_106/FusedBatchNormV3FusedBatchNormV3conv2d_131/Relu:activations:0.batch_normalization_106/ReadVariableOp:value:00batch_normalization_106/ReadVariableOp_1:value:0?batch_normalization_106/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_106/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_106/FusedBatchNormV3?
&batch_normalization_106/AssignNewValueAssignVariableOp@batch_normalization_106_fusedbatchnormv3_readvariableop_resource5batch_normalization_106/FusedBatchNormV3:batch_mean:08^batch_normalization_106/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_106/AssignNewValue?
(batch_normalization_106/AssignNewValue_1AssignVariableOpBbatch_normalization_106_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_106/FusedBatchNormV3:batch_variance:0:^batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_106/AssignNewValue_1?
max_pooling2d_23/MaxPoolMaxPool,batch_normalization_106/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_23/MaxPool?
 conv2d_132/Conv2D/ReadVariableOpReadVariableOp)conv2d_132_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_132/Conv2D/ReadVariableOp?
conv2d_132/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0(conv2d_132/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_132/Conv2D?
!conv2d_132/BiasAdd/ReadVariableOpReadVariableOp*conv2d_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_132/BiasAdd/ReadVariableOp?
conv2d_132/BiasAddBiasAddconv2d_132/Conv2D:output:0)conv2d_132/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_132/BiasAdd?
conv2d_132/ReluReluconv2d_132/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_132/Relu?
&batch_normalization_107/ReadVariableOpReadVariableOp/batch_normalization_107_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_107/ReadVariableOp?
(batch_normalization_107/ReadVariableOp_1ReadVariableOp1batch_normalization_107_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_107/ReadVariableOp_1?
7batch_normalization_107/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_107_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_107/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_107_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_107/FusedBatchNormV3FusedBatchNormV3conv2d_132/Relu:activations:0.batch_normalization_107/ReadVariableOp:value:00batch_normalization_107/ReadVariableOp_1:value:0?batch_normalization_107/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_107/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_107/FusedBatchNormV3?
&batch_normalization_107/AssignNewValueAssignVariableOp@batch_normalization_107_fusedbatchnormv3_readvariableop_resource5batch_normalization_107/FusedBatchNormV3:batch_mean:08^batch_normalization_107/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_107/AssignNewValue?
(batch_normalization_107/AssignNewValue_1AssignVariableOpBbatch_normalization_107_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_107/FusedBatchNormV3:batch_variance:0:^batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_107/AssignNewValue_1?
 conv2d_133/Conv2D/ReadVariableOpReadVariableOp)conv2d_133_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_133/Conv2D/ReadVariableOp?
conv2d_133/Conv2DConv2D,batch_normalization_107/FusedBatchNormV3:y:0(conv2d_133/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_133/Conv2D?
!conv2d_133/BiasAdd/ReadVariableOpReadVariableOp*conv2d_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_133/BiasAdd/ReadVariableOp?
conv2d_133/BiasAddBiasAddconv2d_133/Conv2D:output:0)conv2d_133/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_133/BiasAdd?
conv2d_133/ReluReluconv2d_133/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_133/Relu?
&batch_normalization_108/ReadVariableOpReadVariableOp/batch_normalization_108_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_108/ReadVariableOp?
(batch_normalization_108/ReadVariableOp_1ReadVariableOp1batch_normalization_108_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_108/ReadVariableOp_1?
7batch_normalization_108/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_108_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_108/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_108_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_108/FusedBatchNormV3FusedBatchNormV3conv2d_133/Relu:activations:0.batch_normalization_108/ReadVariableOp:value:00batch_normalization_108/ReadVariableOp_1:value:0?batch_normalization_108/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_108/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_108/FusedBatchNormV3?
&batch_normalization_108/AssignNewValueAssignVariableOp@batch_normalization_108_fusedbatchnormv3_readvariableop_resource5batch_normalization_108/FusedBatchNormV3:batch_mean:08^batch_normalization_108/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_108/AssignNewValue?
(batch_normalization_108/AssignNewValue_1AssignVariableOpBbatch_normalization_108_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_108/FusedBatchNormV3:batch_variance:0:^batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_108/AssignNewValue_1?
 conv2d_134/Conv2D/ReadVariableOpReadVariableOp)conv2d_134_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_134/Conv2D/ReadVariableOp?
conv2d_134/Conv2DConv2D,batch_normalization_108/FusedBatchNormV3:y:0(conv2d_134/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_134/Conv2D?
!conv2d_134/BiasAdd/ReadVariableOpReadVariableOp*conv2d_134_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_134/BiasAdd/ReadVariableOp?
conv2d_134/BiasAddBiasAddconv2d_134/Conv2D:output:0)conv2d_134/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_134/BiasAdd?
conv2d_134/ReluReluconv2d_134/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_134/Relu?
&batch_normalization_109/ReadVariableOpReadVariableOp/batch_normalization_109_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_109/ReadVariableOp?
(batch_normalization_109/ReadVariableOp_1ReadVariableOp1batch_normalization_109_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_109/ReadVariableOp_1?
7batch_normalization_109/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_109_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_109/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_109_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_109/FusedBatchNormV3FusedBatchNormV3conv2d_134/Relu:activations:0.batch_normalization_109/ReadVariableOp:value:00batch_normalization_109/ReadVariableOp_1:value:0?batch_normalization_109/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_109/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_109/FusedBatchNormV3?
&batch_normalization_109/AssignNewValueAssignVariableOp@batch_normalization_109_fusedbatchnormv3_readvariableop_resource5batch_normalization_109/FusedBatchNormV3:batch_mean:08^batch_normalization_109/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_109/AssignNewValue?
(batch_normalization_109/AssignNewValue_1AssignVariableOpBbatch_normalization_109_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_109/FusedBatchNormV3:batch_variance:0:^batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_109/AssignNewValue_1?
max_pooling2d_24/MaxPoolMaxPool,batch_normalization_109/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_24/MaxPools
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_9/Const?
flatten_9/ReshapeReshape!max_pooling2d_24/MaxPool:output:0flatten_9/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_9/Reshape?
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_19/MatMul/ReadVariableOp?
dense_19/MatMulMatMulflatten_9/Reshape:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/MatMul?
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_19/BiasAdd/ReadVariableOp?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/BiasAdd|
dense_19/SigmoidSigmoiddense_19/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_19/Sigmoido
IdentityIdentitydense_19/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_105/AssignNewValue)^batch_normalization_105/AssignNewValue_18^batch_normalization_105/FusedBatchNormV3/ReadVariableOp:^batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_105/ReadVariableOp)^batch_normalization_105/ReadVariableOp_1'^batch_normalization_106/AssignNewValue)^batch_normalization_106/AssignNewValue_18^batch_normalization_106/FusedBatchNormV3/ReadVariableOp:^batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_106/ReadVariableOp)^batch_normalization_106/ReadVariableOp_1'^batch_normalization_107/AssignNewValue)^batch_normalization_107/AssignNewValue_18^batch_normalization_107/FusedBatchNormV3/ReadVariableOp:^batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_107/ReadVariableOp)^batch_normalization_107/ReadVariableOp_1'^batch_normalization_108/AssignNewValue)^batch_normalization_108/AssignNewValue_18^batch_normalization_108/FusedBatchNormV3/ReadVariableOp:^batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_108/ReadVariableOp)^batch_normalization_108/ReadVariableOp_1'^batch_normalization_109/AssignNewValue)^batch_normalization_109/AssignNewValue_18^batch_normalization_109/FusedBatchNormV3/ReadVariableOp:^batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_109/ReadVariableOp)^batch_normalization_109/ReadVariableOp_1"^conv2d_130/BiasAdd/ReadVariableOp!^conv2d_130/Conv2D/ReadVariableOp"^conv2d_131/BiasAdd/ReadVariableOp!^conv2d_131/Conv2D/ReadVariableOp"^conv2d_132/BiasAdd/ReadVariableOp!^conv2d_132/Conv2D/ReadVariableOp"^conv2d_133/BiasAdd/ReadVariableOp!^conv2d_133/Conv2D/ReadVariableOp"^conv2d_134/BiasAdd/ReadVariableOp!^conv2d_134/Conv2D/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_105/AssignNewValue&batch_normalization_105/AssignNewValue2T
(batch_normalization_105/AssignNewValue_1(batch_normalization_105/AssignNewValue_12r
7batch_normalization_105/FusedBatchNormV3/ReadVariableOp7batch_normalization_105/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_105/FusedBatchNormV3/ReadVariableOp_19batch_normalization_105/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_105/ReadVariableOp&batch_normalization_105/ReadVariableOp2T
(batch_normalization_105/ReadVariableOp_1(batch_normalization_105/ReadVariableOp_12P
&batch_normalization_106/AssignNewValue&batch_normalization_106/AssignNewValue2T
(batch_normalization_106/AssignNewValue_1(batch_normalization_106/AssignNewValue_12r
7batch_normalization_106/FusedBatchNormV3/ReadVariableOp7batch_normalization_106/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_106/FusedBatchNormV3/ReadVariableOp_19batch_normalization_106/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_106/ReadVariableOp&batch_normalization_106/ReadVariableOp2T
(batch_normalization_106/ReadVariableOp_1(batch_normalization_106/ReadVariableOp_12P
&batch_normalization_107/AssignNewValue&batch_normalization_107/AssignNewValue2T
(batch_normalization_107/AssignNewValue_1(batch_normalization_107/AssignNewValue_12r
7batch_normalization_107/FusedBatchNormV3/ReadVariableOp7batch_normalization_107/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_107/FusedBatchNormV3/ReadVariableOp_19batch_normalization_107/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_107/ReadVariableOp&batch_normalization_107/ReadVariableOp2T
(batch_normalization_107/ReadVariableOp_1(batch_normalization_107/ReadVariableOp_12P
&batch_normalization_108/AssignNewValue&batch_normalization_108/AssignNewValue2T
(batch_normalization_108/AssignNewValue_1(batch_normalization_108/AssignNewValue_12r
7batch_normalization_108/FusedBatchNormV3/ReadVariableOp7batch_normalization_108/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_108/FusedBatchNormV3/ReadVariableOp_19batch_normalization_108/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_108/ReadVariableOp&batch_normalization_108/ReadVariableOp2T
(batch_normalization_108/ReadVariableOp_1(batch_normalization_108/ReadVariableOp_12P
&batch_normalization_109/AssignNewValue&batch_normalization_109/AssignNewValue2T
(batch_normalization_109/AssignNewValue_1(batch_normalization_109/AssignNewValue_12r
7batch_normalization_109/FusedBatchNormV3/ReadVariableOp7batch_normalization_109/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_109/FusedBatchNormV3/ReadVariableOp_19batch_normalization_109/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_109/ReadVariableOp&batch_normalization_109/ReadVariableOp2T
(batch_normalization_109/ReadVariableOp_1(batch_normalization_109/ReadVariableOp_12F
!conv2d_130/BiasAdd/ReadVariableOp!conv2d_130/BiasAdd/ReadVariableOp2D
 conv2d_130/Conv2D/ReadVariableOp conv2d_130/Conv2D/ReadVariableOp2F
!conv2d_131/BiasAdd/ReadVariableOp!conv2d_131/BiasAdd/ReadVariableOp2D
 conv2d_131/Conv2D/ReadVariableOp conv2d_131/Conv2D/ReadVariableOp2F
!conv2d_132/BiasAdd/ReadVariableOp!conv2d_132/BiasAdd/ReadVariableOp2D
 conv2d_132/Conv2D/ReadVariableOp conv2d_132/Conv2D/ReadVariableOp2F
!conv2d_133/BiasAdd/ReadVariableOp!conv2d_133/BiasAdd/ReadVariableOp2D
 conv2d_133/Conv2D/ReadVariableOp conv2d_133/Conv2D/ReadVariableOp2F
!conv2d_134/BiasAdd/ReadVariableOp!conv2d_134/BiasAdd/ReadVariableOp2D
 conv2d_134/Conv2D/ReadVariableOp conv2d_134/Conv2D/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_4844126

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844343

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4842093

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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844631

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
?
G__inference_conv2d_133_layer_call_and_return_conditional_losses_4844460

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
b
F__inference_flatten_9_layer_call_and_return_conditional_losses_4844763

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
?
?
,__inference_alex_net_4_layer_call_fn_4843908

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
G__inference_alex_net_4_layer_call_and_return_conditional_losses_48426982
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
9__inference_batch_normalization_106_layer_call_fn_4844246

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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_48419012
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
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_4842532

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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844649

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
2__inference_max_pooling2d_22_layer_call_fn_4844136

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
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_48418662
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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4842656

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
9__inference_batch_normalization_107_layer_call_fn_4844410

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_48420492
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
9__inference_batch_normalization_108_layer_call_fn_4844554

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_48421752
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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844685

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
?
b
F__inference_flatten_9_layer_call_and_return_conditional_losses_4842678

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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_4844742

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844505

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
*__inference_dense_19_layer_call_fn_4844788

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
E__inference_dense_19_layer_call_and_return_conditional_losses_48426912
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
?
9__inference_batch_normalization_108_layer_call_fn_4844580

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_48426122
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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4842819

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
?
i
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_4844747

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
9__inference_batch_normalization_105_layer_call_fn_4844121

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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_48430452
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
?
?
,__inference_conv2d_134_layer_call_fn_4844613

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
G__inference_conv2d_134_layer_call_and_return_conditional_losses_48426332
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
?
?
,__inference_alex_net_4_layer_call_fn_4843356
conv2d_130_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_4_layer_call_and_return_conditional_losses_48432202
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
_user_specified_nameconv2d_130_input
?
?
,__inference_conv2d_130_layer_call_fn_4843997

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
G__inference_conv2d_130_layer_call_and_return_conditional_losses_48424452
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
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843220

inputs,
conv2d_130_4843140:` 
conv2d_130_4843142:`-
batch_normalization_105_4843145:`-
batch_normalization_105_4843147:`-
batch_normalization_105_4843149:`-
batch_normalization_105_4843151:`-
conv2d_131_4843155:`?!
conv2d_131_4843157:	?.
batch_normalization_106_4843160:	?.
batch_normalization_106_4843162:	?.
batch_normalization_106_4843164:	?.
batch_normalization_106_4843166:	?.
conv2d_132_4843170:??!
conv2d_132_4843172:	?.
batch_normalization_107_4843175:	?.
batch_normalization_107_4843177:	?.
batch_normalization_107_4843179:	?.
batch_normalization_107_4843181:	?.
conv2d_133_4843184:??!
conv2d_133_4843186:	?.
batch_normalization_108_4843189:	?.
batch_normalization_108_4843191:	?.
batch_normalization_108_4843193:	?.
batch_normalization_108_4843195:	?.
conv2d_134_4843198:??!
conv2d_134_4843200:	?.
batch_normalization_109_4843203:	?.
batch_normalization_109_4843205:	?.
batch_normalization_109_4843207:	?.
batch_normalization_109_4843209:	?#
dense_19_4843214:	?(
dense_19_4843216:
identity??/batch_normalization_105/StatefulPartitionedCall?/batch_normalization_106/StatefulPartitionedCall?/batch_normalization_107/StatefulPartitionedCall?/batch_normalization_108/StatefulPartitionedCall?/batch_normalization_109/StatefulPartitionedCall?"conv2d_130/StatefulPartitionedCall?"conv2d_131/StatefulPartitionedCall?"conv2d_132/StatefulPartitionedCall?"conv2d_133/StatefulPartitionedCall?"conv2d_134/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?
"conv2d_130/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_130_4843140conv2d_130_4843142*
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
G__inference_conv2d_130_layer_call_and_return_conditional_losses_48424452$
"conv2d_130/StatefulPartitionedCall?
/batch_normalization_105/StatefulPartitionedCallStatefulPartitionedCall+conv2d_130/StatefulPartitionedCall:output:0batch_normalization_105_4843145batch_normalization_105_4843147batch_normalization_105_4843149batch_normalization_105_4843151*
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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_484304521
/batch_normalization_105/StatefulPartitionedCall?
 max_pooling2d_22/PartitionedCallPartitionedCall8batch_normalization_105/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_48424822"
 max_pooling2d_22/PartitionedCall?
"conv2d_131/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_131_4843155conv2d_131_4843157*
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
G__inference_conv2d_131_layer_call_and_return_conditional_losses_48424952$
"conv2d_131/StatefulPartitionedCall?
/batch_normalization_106/StatefulPartitionedCallStatefulPartitionedCall+conv2d_131/StatefulPartitionedCall:output:0batch_normalization_106_4843160batch_normalization_106_4843162batch_normalization_106_4843164batch_normalization_106_4843166*
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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_484298621
/batch_normalization_106/StatefulPartitionedCall?
 max_pooling2d_23/PartitionedCallPartitionedCall8batch_normalization_106/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_48425322"
 max_pooling2d_23/PartitionedCall?
"conv2d_132/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_132_4843170conv2d_132_4843172*
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
G__inference_conv2d_132_layer_call_and_return_conditional_losses_48425452$
"conv2d_132/StatefulPartitionedCall?
/batch_normalization_107/StatefulPartitionedCallStatefulPartitionedCall+conv2d_132/StatefulPartitionedCall:output:0batch_normalization_107_4843175batch_normalization_107_4843177batch_normalization_107_4843179batch_normalization_107_4843181*
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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_484292721
/batch_normalization_107/StatefulPartitionedCall?
"conv2d_133/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_107/StatefulPartitionedCall:output:0conv2d_133_4843184conv2d_133_4843186*
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
G__inference_conv2d_133_layer_call_and_return_conditional_losses_48425892$
"conv2d_133/StatefulPartitionedCall?
/batch_normalization_108/StatefulPartitionedCallStatefulPartitionedCall+conv2d_133/StatefulPartitionedCall:output:0batch_normalization_108_4843189batch_normalization_108_4843191batch_normalization_108_4843193batch_normalization_108_4843195*
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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_484287321
/batch_normalization_108/StatefulPartitionedCall?
"conv2d_134/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_108/StatefulPartitionedCall:output:0conv2d_134_4843198conv2d_134_4843200*
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
G__inference_conv2d_134_layer_call_and_return_conditional_losses_48426332$
"conv2d_134/StatefulPartitionedCall?
/batch_normalization_109/StatefulPartitionedCallStatefulPartitionedCall+conv2d_134/StatefulPartitionedCall:output:0batch_normalization_109_4843203batch_normalization_109_4843205batch_normalization_109_4843207batch_normalization_109_4843209*
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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_484281921
/batch_normalization_109/StatefulPartitionedCall?
 max_pooling2d_24/PartitionedCallPartitionedCall8batch_normalization_109/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_48426702"
 max_pooling2d_24/PartitionedCall?
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_24/PartitionedCall:output:0*
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_48426782
flatten_9/PartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_19_4843214dense_19_4843216*
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
E__inference_dense_19_layer_call_and_return_conditional_losses_48426912"
 dense_19/StatefulPartitionedCall?
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_105/StatefulPartitionedCall0^batch_normalization_106/StatefulPartitionedCall0^batch_normalization_107/StatefulPartitionedCall0^batch_normalization_108/StatefulPartitionedCall0^batch_normalization_109/StatefulPartitionedCall#^conv2d_130/StatefulPartitionedCall#^conv2d_131/StatefulPartitionedCall#^conv2d_132/StatefulPartitionedCall#^conv2d_133/StatefulPartitionedCall#^conv2d_134/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_105/StatefulPartitionedCall/batch_normalization_105/StatefulPartitionedCall2b
/batch_normalization_106/StatefulPartitionedCall/batch_normalization_106/StatefulPartitionedCall2b
/batch_normalization_107/StatefulPartitionedCall/batch_normalization_107/StatefulPartitionedCall2b
/batch_normalization_108/StatefulPartitionedCall/batch_normalization_108/StatefulPartitionedCall2b
/batch_normalization_109/StatefulPartitionedCall/batch_normalization_109/StatefulPartitionedCall2H
"conv2d_130/StatefulPartitionedCall"conv2d_130/StatefulPartitionedCall2H
"conv2d_131/StatefulPartitionedCall"conv2d_131/StatefulPartitionedCall2H
"conv2d_132/StatefulPartitionedCall"conv2d_132/StatefulPartitionedCall2H
"conv2d_133/StatefulPartitionedCall"conv2d_133/StatefulPartitionedCall2H
"conv2d_134/StatefulPartitionedCall"conv2d_134/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_4843597
conv2d_130_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_48417312
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
_user_specified_nameconv2d_130_input
?
?
G__inference_conv2d_130_layer_call_and_return_conditional_losses_4843988

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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844197

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
9__inference_batch_normalization_108_layer_call_fn_4844567

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_48422192
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
9__inference_batch_normalization_108_layer_call_fn_4844593

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_48428732
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
?
N
2__inference_max_pooling2d_23_layer_call_fn_4844305

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
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_48425322
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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844179

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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844215

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
9__inference_batch_normalization_109_layer_call_fn_4844698

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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_48423012
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
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_4841866

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
E__inference_dense_19_layer_call_and_return_conditional_losses_4844779

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844397

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4842175

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4842927

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4842612

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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844667

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4842049

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
N
2__inference_max_pooling2d_24_layer_call_fn_4844757

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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_48426702
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
?
?
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4842219

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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_4842414

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
9__inference_batch_normalization_107_layer_call_fn_4844423

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_48420932
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
9__inference_batch_normalization_105_layer_call_fn_4844095

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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_48417972
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
9__inference_batch_normalization_109_layer_call_fn_4844711

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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_48423452
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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4841945

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844361

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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4841901

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844523

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
9__inference_batch_normalization_109_layer_call_fn_4844737

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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_48428192
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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4842301

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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4841797

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
9__inference_batch_normalization_109_layer_call_fn_4844724

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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_48426562
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
?
?
,__inference_alex_net_4_layer_call_fn_4842765
conv2d_130_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_4_layer_call_and_return_conditional_losses_48426982
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
_user_specified_nameconv2d_130_input
?
?
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844051

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
9__inference_batch_normalization_106_layer_call_fn_4844259

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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_48419452
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
?
G__inference_conv2d_132_layer_call_and_return_conditional_losses_4842545

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
9__inference_batch_normalization_107_layer_call_fn_4844449

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_48429272
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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4842568

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
?T
?
 __inference__traced_save_4844931
file_prefix0
,savev2_conv2d_130_kernel_read_readvariableop.
*savev2_conv2d_130_bias_read_readvariableop<
8savev2_batch_normalization_105_gamma_read_readvariableop;
7savev2_batch_normalization_105_beta_read_readvariableopB
>savev2_batch_normalization_105_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_105_moving_variance_read_readvariableop0
,savev2_conv2d_131_kernel_read_readvariableop.
*savev2_conv2d_131_bias_read_readvariableop<
8savev2_batch_normalization_106_gamma_read_readvariableop;
7savev2_batch_normalization_106_beta_read_readvariableopB
>savev2_batch_normalization_106_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_106_moving_variance_read_readvariableop0
,savev2_conv2d_132_kernel_read_readvariableop.
*savev2_conv2d_132_bias_read_readvariableop<
8savev2_batch_normalization_107_gamma_read_readvariableop;
7savev2_batch_normalization_107_beta_read_readvariableopB
>savev2_batch_normalization_107_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_107_moving_variance_read_readvariableop0
,savev2_conv2d_133_kernel_read_readvariableop.
*savev2_conv2d_133_bias_read_readvariableop<
8savev2_batch_normalization_108_gamma_read_readvariableop;
7savev2_batch_normalization_108_beta_read_readvariableopB
>savev2_batch_normalization_108_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_108_moving_variance_read_readvariableop0
,savev2_conv2d_134_kernel_read_readvariableop.
*savev2_conv2d_134_bias_read_readvariableop<
8savev2_batch_normalization_109_gamma_read_readvariableop;
7savev2_batch_normalization_109_beta_read_readvariableopB
>savev2_batch_normalization_109_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_109_moving_variance_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_130_kernel_read_readvariableop*savev2_conv2d_130_bias_read_readvariableop8savev2_batch_normalization_105_gamma_read_readvariableop7savev2_batch_normalization_105_beta_read_readvariableop>savev2_batch_normalization_105_moving_mean_read_readvariableopBsavev2_batch_normalization_105_moving_variance_read_readvariableop,savev2_conv2d_131_kernel_read_readvariableop*savev2_conv2d_131_bias_read_readvariableop8savev2_batch_normalization_106_gamma_read_readvariableop7savev2_batch_normalization_106_beta_read_readvariableop>savev2_batch_normalization_106_moving_mean_read_readvariableopBsavev2_batch_normalization_106_moving_variance_read_readvariableop,savev2_conv2d_132_kernel_read_readvariableop*savev2_conv2d_132_bias_read_readvariableop8savev2_batch_normalization_107_gamma_read_readvariableop7savev2_batch_normalization_107_beta_read_readvariableop>savev2_batch_normalization_107_moving_mean_read_readvariableopBsavev2_batch_normalization_107_moving_variance_read_readvariableop,savev2_conv2d_133_kernel_read_readvariableop*savev2_conv2d_133_bias_read_readvariableop8savev2_batch_normalization_108_gamma_read_readvariableop7savev2_batch_normalization_108_beta_read_readvariableop>savev2_batch_normalization_108_moving_mean_read_readvariableopBsavev2_batch_normalization_108_moving_variance_read_readvariableop,savev2_conv2d_134_kernel_read_readvariableop*savev2_conv2d_134_bias_read_readvariableop8savev2_batch_normalization_109_gamma_read_readvariableop7savev2_batch_normalization_109_beta_read_readvariableop>savev2_batch_normalization_109_moving_mean_read_readvariableopBsavev2_batch_normalization_109_moving_variance_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?
i
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_4844290

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844487

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
,__inference_alex_net_4_layer_call_fn_4843977

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
G__inference_alex_net_4_layer_call_and_return_conditional_losses_48432202
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
?
?
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844033

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
?
?
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844069

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
9__inference_batch_normalization_107_layer_call_fn_4844436

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_48425682
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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4842986

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
?Y
?
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843439
conv2d_130_input,
conv2d_130_4843359:` 
conv2d_130_4843361:`-
batch_normalization_105_4843364:`-
batch_normalization_105_4843366:`-
batch_normalization_105_4843368:`-
batch_normalization_105_4843370:`-
conv2d_131_4843374:`?!
conv2d_131_4843376:	?.
batch_normalization_106_4843379:	?.
batch_normalization_106_4843381:	?.
batch_normalization_106_4843383:	?.
batch_normalization_106_4843385:	?.
conv2d_132_4843389:??!
conv2d_132_4843391:	?.
batch_normalization_107_4843394:	?.
batch_normalization_107_4843396:	?.
batch_normalization_107_4843398:	?.
batch_normalization_107_4843400:	?.
conv2d_133_4843403:??!
conv2d_133_4843405:	?.
batch_normalization_108_4843408:	?.
batch_normalization_108_4843410:	?.
batch_normalization_108_4843412:	?.
batch_normalization_108_4843414:	?.
conv2d_134_4843417:??!
conv2d_134_4843419:	?.
batch_normalization_109_4843422:	?.
batch_normalization_109_4843424:	?.
batch_normalization_109_4843426:	?.
batch_normalization_109_4843428:	?#
dense_19_4843433:	?(
dense_19_4843435:
identity??/batch_normalization_105/StatefulPartitionedCall?/batch_normalization_106/StatefulPartitionedCall?/batch_normalization_107/StatefulPartitionedCall?/batch_normalization_108/StatefulPartitionedCall?/batch_normalization_109/StatefulPartitionedCall?"conv2d_130/StatefulPartitionedCall?"conv2d_131/StatefulPartitionedCall?"conv2d_132/StatefulPartitionedCall?"conv2d_133/StatefulPartitionedCall?"conv2d_134/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?
"conv2d_130/StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputconv2d_130_4843359conv2d_130_4843361*
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
G__inference_conv2d_130_layer_call_and_return_conditional_losses_48424452$
"conv2d_130/StatefulPartitionedCall?
/batch_normalization_105/StatefulPartitionedCallStatefulPartitionedCall+conv2d_130/StatefulPartitionedCall:output:0batch_normalization_105_4843364batch_normalization_105_4843366batch_normalization_105_4843368batch_normalization_105_4843370*
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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_484246821
/batch_normalization_105/StatefulPartitionedCall?
 max_pooling2d_22/PartitionedCallPartitionedCall8batch_normalization_105/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_48424822"
 max_pooling2d_22/PartitionedCall?
"conv2d_131/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_131_4843374conv2d_131_4843376*
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
G__inference_conv2d_131_layer_call_and_return_conditional_losses_48424952$
"conv2d_131/StatefulPartitionedCall?
/batch_normalization_106/StatefulPartitionedCallStatefulPartitionedCall+conv2d_131/StatefulPartitionedCall:output:0batch_normalization_106_4843379batch_normalization_106_4843381batch_normalization_106_4843383batch_normalization_106_4843385*
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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_484251821
/batch_normalization_106/StatefulPartitionedCall?
 max_pooling2d_23/PartitionedCallPartitionedCall8batch_normalization_106/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_48425322"
 max_pooling2d_23/PartitionedCall?
"conv2d_132/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_132_4843389conv2d_132_4843391*
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
G__inference_conv2d_132_layer_call_and_return_conditional_losses_48425452$
"conv2d_132/StatefulPartitionedCall?
/batch_normalization_107/StatefulPartitionedCallStatefulPartitionedCall+conv2d_132/StatefulPartitionedCall:output:0batch_normalization_107_4843394batch_normalization_107_4843396batch_normalization_107_4843398batch_normalization_107_4843400*
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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_484256821
/batch_normalization_107/StatefulPartitionedCall?
"conv2d_133/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_107/StatefulPartitionedCall:output:0conv2d_133_4843403conv2d_133_4843405*
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
G__inference_conv2d_133_layer_call_and_return_conditional_losses_48425892$
"conv2d_133/StatefulPartitionedCall?
/batch_normalization_108/StatefulPartitionedCallStatefulPartitionedCall+conv2d_133/StatefulPartitionedCall:output:0batch_normalization_108_4843408batch_normalization_108_4843410batch_normalization_108_4843412batch_normalization_108_4843414*
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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_484261221
/batch_normalization_108/StatefulPartitionedCall?
"conv2d_134/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_108/StatefulPartitionedCall:output:0conv2d_134_4843417conv2d_134_4843419*
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
G__inference_conv2d_134_layer_call_and_return_conditional_losses_48426332$
"conv2d_134/StatefulPartitionedCall?
/batch_normalization_109/StatefulPartitionedCallStatefulPartitionedCall+conv2d_134/StatefulPartitionedCall:output:0batch_normalization_109_4843422batch_normalization_109_4843424batch_normalization_109_4843426batch_normalization_109_4843428*
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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_484265621
/batch_normalization_109/StatefulPartitionedCall?
 max_pooling2d_24/PartitionedCallPartitionedCall8batch_normalization_109/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_48426702"
 max_pooling2d_24/PartitionedCall?
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_24/PartitionedCall:output:0*
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_48426782
flatten_9/PartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_19_4843433dense_19_4843435*
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
E__inference_dense_19_layer_call_and_return_conditional_losses_48426912"
 dense_19/StatefulPartitionedCall?
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_105/StatefulPartitionedCall0^batch_normalization_106/StatefulPartitionedCall0^batch_normalization_107/StatefulPartitionedCall0^batch_normalization_108/StatefulPartitionedCall0^batch_normalization_109/StatefulPartitionedCall#^conv2d_130/StatefulPartitionedCall#^conv2d_131/StatefulPartitionedCall#^conv2d_132/StatefulPartitionedCall#^conv2d_133/StatefulPartitionedCall#^conv2d_134/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_105/StatefulPartitionedCall/batch_normalization_105/StatefulPartitionedCall2b
/batch_normalization_106/StatefulPartitionedCall/batch_normalization_106/StatefulPartitionedCall2b
/batch_normalization_107/StatefulPartitionedCall/batch_normalization_107/StatefulPartitionedCall2b
/batch_normalization_108/StatefulPartitionedCall/batch_normalization_108/StatefulPartitionedCall2b
/batch_normalization_109/StatefulPartitionedCall/batch_normalization_109/StatefulPartitionedCall2H
"conv2d_130/StatefulPartitionedCall"conv2d_130/StatefulPartitionedCall2H
"conv2d_131/StatefulPartitionedCall"conv2d_131/StatefulPartitionedCall2H
"conv2d_132/StatefulPartitionedCall"conv2d_132/StatefulPartitionedCall2H
"conv2d_133/StatefulPartitionedCall"conv2d_133/StatefulPartitionedCall2H
"conv2d_134/StatefulPartitionedCall"conv2d_134/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_130_input
?	
?
9__inference_batch_normalization_106_layer_call_fn_4844285

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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_48429862
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
?
?
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844233

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
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4842698

inputs,
conv2d_130_4842446:` 
conv2d_130_4842448:`-
batch_normalization_105_4842469:`-
batch_normalization_105_4842471:`-
batch_normalization_105_4842473:`-
batch_normalization_105_4842475:`-
conv2d_131_4842496:`?!
conv2d_131_4842498:	?.
batch_normalization_106_4842519:	?.
batch_normalization_106_4842521:	?.
batch_normalization_106_4842523:	?.
batch_normalization_106_4842525:	?.
conv2d_132_4842546:??!
conv2d_132_4842548:	?.
batch_normalization_107_4842569:	?.
batch_normalization_107_4842571:	?.
batch_normalization_107_4842573:	?.
batch_normalization_107_4842575:	?.
conv2d_133_4842590:??!
conv2d_133_4842592:	?.
batch_normalization_108_4842613:	?.
batch_normalization_108_4842615:	?.
batch_normalization_108_4842617:	?.
batch_normalization_108_4842619:	?.
conv2d_134_4842634:??!
conv2d_134_4842636:	?.
batch_normalization_109_4842657:	?.
batch_normalization_109_4842659:	?.
batch_normalization_109_4842661:	?.
batch_normalization_109_4842663:	?#
dense_19_4842692:	?(
dense_19_4842694:
identity??/batch_normalization_105/StatefulPartitionedCall?/batch_normalization_106/StatefulPartitionedCall?/batch_normalization_107/StatefulPartitionedCall?/batch_normalization_108/StatefulPartitionedCall?/batch_normalization_109/StatefulPartitionedCall?"conv2d_130/StatefulPartitionedCall?"conv2d_131/StatefulPartitionedCall?"conv2d_132/StatefulPartitionedCall?"conv2d_133/StatefulPartitionedCall?"conv2d_134/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?
"conv2d_130/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_130_4842446conv2d_130_4842448*
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
G__inference_conv2d_130_layer_call_and_return_conditional_losses_48424452$
"conv2d_130/StatefulPartitionedCall?
/batch_normalization_105/StatefulPartitionedCallStatefulPartitionedCall+conv2d_130/StatefulPartitionedCall:output:0batch_normalization_105_4842469batch_normalization_105_4842471batch_normalization_105_4842473batch_normalization_105_4842475*
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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_484246821
/batch_normalization_105/StatefulPartitionedCall?
 max_pooling2d_22/PartitionedCallPartitionedCall8batch_normalization_105/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_48424822"
 max_pooling2d_22/PartitionedCall?
"conv2d_131/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_131_4842496conv2d_131_4842498*
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
G__inference_conv2d_131_layer_call_and_return_conditional_losses_48424952$
"conv2d_131/StatefulPartitionedCall?
/batch_normalization_106/StatefulPartitionedCallStatefulPartitionedCall+conv2d_131/StatefulPartitionedCall:output:0batch_normalization_106_4842519batch_normalization_106_4842521batch_normalization_106_4842523batch_normalization_106_4842525*
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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_484251821
/batch_normalization_106/StatefulPartitionedCall?
 max_pooling2d_23/PartitionedCallPartitionedCall8batch_normalization_106/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_48425322"
 max_pooling2d_23/PartitionedCall?
"conv2d_132/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_132_4842546conv2d_132_4842548*
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
G__inference_conv2d_132_layer_call_and_return_conditional_losses_48425452$
"conv2d_132/StatefulPartitionedCall?
/batch_normalization_107/StatefulPartitionedCallStatefulPartitionedCall+conv2d_132/StatefulPartitionedCall:output:0batch_normalization_107_4842569batch_normalization_107_4842571batch_normalization_107_4842573batch_normalization_107_4842575*
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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_484256821
/batch_normalization_107/StatefulPartitionedCall?
"conv2d_133/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_107/StatefulPartitionedCall:output:0conv2d_133_4842590conv2d_133_4842592*
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
G__inference_conv2d_133_layer_call_and_return_conditional_losses_48425892$
"conv2d_133/StatefulPartitionedCall?
/batch_normalization_108/StatefulPartitionedCallStatefulPartitionedCall+conv2d_133/StatefulPartitionedCall:output:0batch_normalization_108_4842613batch_normalization_108_4842615batch_normalization_108_4842617batch_normalization_108_4842619*
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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_484261221
/batch_normalization_108/StatefulPartitionedCall?
"conv2d_134/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_108/StatefulPartitionedCall:output:0conv2d_134_4842634conv2d_134_4842636*
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
G__inference_conv2d_134_layer_call_and_return_conditional_losses_48426332$
"conv2d_134/StatefulPartitionedCall?
/batch_normalization_109/StatefulPartitionedCallStatefulPartitionedCall+conv2d_134/StatefulPartitionedCall:output:0batch_normalization_109_4842657batch_normalization_109_4842659batch_normalization_109_4842661batch_normalization_109_4842663*
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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_484265621
/batch_normalization_109/StatefulPartitionedCall?
 max_pooling2d_24/PartitionedCallPartitionedCall8batch_normalization_109/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_48426702"
 max_pooling2d_24/PartitionedCall?
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_24/PartitionedCall:output:0*
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_48426782
flatten_9/PartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_19_4842692dense_19_4842694*
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
E__inference_dense_19_layer_call_and_return_conditional_losses_48426912"
 dense_19/StatefulPartitionedCall?
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_105/StatefulPartitionedCall0^batch_normalization_106/StatefulPartitionedCall0^batch_normalization_107/StatefulPartitionedCall0^batch_normalization_108/StatefulPartitionedCall0^batch_normalization_109/StatefulPartitionedCall#^conv2d_130/StatefulPartitionedCall#^conv2d_131/StatefulPartitionedCall#^conv2d_132/StatefulPartitionedCall#^conv2d_133/StatefulPartitionedCall#^conv2d_134/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_105/StatefulPartitionedCall/batch_normalization_105/StatefulPartitionedCall2b
/batch_normalization_106/StatefulPartitionedCall/batch_normalization_106/StatefulPartitionedCall2b
/batch_normalization_107/StatefulPartitionedCall/batch_normalization_107/StatefulPartitionedCall2b
/batch_normalization_108/StatefulPartitionedCall/batch_normalization_108/StatefulPartitionedCall2b
/batch_normalization_109/StatefulPartitionedCall/batch_normalization_109/StatefulPartitionedCall2H
"conv2d_130/StatefulPartitionedCall"conv2d_130/StatefulPartitionedCall2H
"conv2d_131/StatefulPartitionedCall"conv2d_131/StatefulPartitionedCall2H
"conv2d_132/StatefulPartitionedCall"conv2d_132/StatefulPartitionedCall2H
"conv2d_133/StatefulPartitionedCall"conv2d_133/StatefulPartitionedCall2H
"conv2d_134/StatefulPartitionedCall"conv2d_134/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?Y
?
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843522
conv2d_130_input,
conv2d_130_4843442:` 
conv2d_130_4843444:`-
batch_normalization_105_4843447:`-
batch_normalization_105_4843449:`-
batch_normalization_105_4843451:`-
batch_normalization_105_4843453:`-
conv2d_131_4843457:`?!
conv2d_131_4843459:	?.
batch_normalization_106_4843462:	?.
batch_normalization_106_4843464:	?.
batch_normalization_106_4843466:	?.
batch_normalization_106_4843468:	?.
conv2d_132_4843472:??!
conv2d_132_4843474:	?.
batch_normalization_107_4843477:	?.
batch_normalization_107_4843479:	?.
batch_normalization_107_4843481:	?.
batch_normalization_107_4843483:	?.
conv2d_133_4843486:??!
conv2d_133_4843488:	?.
batch_normalization_108_4843491:	?.
batch_normalization_108_4843493:	?.
batch_normalization_108_4843495:	?.
batch_normalization_108_4843497:	?.
conv2d_134_4843500:??!
conv2d_134_4843502:	?.
batch_normalization_109_4843505:	?.
batch_normalization_109_4843507:	?.
batch_normalization_109_4843509:	?.
batch_normalization_109_4843511:	?#
dense_19_4843516:	?(
dense_19_4843518:
identity??/batch_normalization_105/StatefulPartitionedCall?/batch_normalization_106/StatefulPartitionedCall?/batch_normalization_107/StatefulPartitionedCall?/batch_normalization_108/StatefulPartitionedCall?/batch_normalization_109/StatefulPartitionedCall?"conv2d_130/StatefulPartitionedCall?"conv2d_131/StatefulPartitionedCall?"conv2d_132/StatefulPartitionedCall?"conv2d_133/StatefulPartitionedCall?"conv2d_134/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?
"conv2d_130/StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputconv2d_130_4843442conv2d_130_4843444*
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
G__inference_conv2d_130_layer_call_and_return_conditional_losses_48424452$
"conv2d_130/StatefulPartitionedCall?
/batch_normalization_105/StatefulPartitionedCallStatefulPartitionedCall+conv2d_130/StatefulPartitionedCall:output:0batch_normalization_105_4843447batch_normalization_105_4843449batch_normalization_105_4843451batch_normalization_105_4843453*
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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_484304521
/batch_normalization_105/StatefulPartitionedCall?
 max_pooling2d_22/PartitionedCallPartitionedCall8batch_normalization_105/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_48424822"
 max_pooling2d_22/PartitionedCall?
"conv2d_131/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_131_4843457conv2d_131_4843459*
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
G__inference_conv2d_131_layer_call_and_return_conditional_losses_48424952$
"conv2d_131/StatefulPartitionedCall?
/batch_normalization_106/StatefulPartitionedCallStatefulPartitionedCall+conv2d_131/StatefulPartitionedCall:output:0batch_normalization_106_4843462batch_normalization_106_4843464batch_normalization_106_4843466batch_normalization_106_4843468*
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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_484298621
/batch_normalization_106/StatefulPartitionedCall?
 max_pooling2d_23/PartitionedCallPartitionedCall8batch_normalization_106/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_48425322"
 max_pooling2d_23/PartitionedCall?
"conv2d_132/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_132_4843472conv2d_132_4843474*
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
G__inference_conv2d_132_layer_call_and_return_conditional_losses_48425452$
"conv2d_132/StatefulPartitionedCall?
/batch_normalization_107/StatefulPartitionedCallStatefulPartitionedCall+conv2d_132/StatefulPartitionedCall:output:0batch_normalization_107_4843477batch_normalization_107_4843479batch_normalization_107_4843481batch_normalization_107_4843483*
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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_484292721
/batch_normalization_107/StatefulPartitionedCall?
"conv2d_133/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_107/StatefulPartitionedCall:output:0conv2d_133_4843486conv2d_133_4843488*
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
G__inference_conv2d_133_layer_call_and_return_conditional_losses_48425892$
"conv2d_133/StatefulPartitionedCall?
/batch_normalization_108/StatefulPartitionedCallStatefulPartitionedCall+conv2d_133/StatefulPartitionedCall:output:0batch_normalization_108_4843491batch_normalization_108_4843493batch_normalization_108_4843495batch_normalization_108_4843497*
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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_484287321
/batch_normalization_108/StatefulPartitionedCall?
"conv2d_134/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_108/StatefulPartitionedCall:output:0conv2d_134_4843500conv2d_134_4843502*
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
G__inference_conv2d_134_layer_call_and_return_conditional_losses_48426332$
"conv2d_134/StatefulPartitionedCall?
/batch_normalization_109/StatefulPartitionedCallStatefulPartitionedCall+conv2d_134/StatefulPartitionedCall:output:0batch_normalization_109_4843505batch_normalization_109_4843507batch_normalization_109_4843509batch_normalization_109_4843511*
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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_484281921
/batch_normalization_109/StatefulPartitionedCall?
 max_pooling2d_24/PartitionedCallPartitionedCall8batch_normalization_109/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_48426702"
 max_pooling2d_24/PartitionedCall?
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_24/PartitionedCall:output:0*
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_48426782
flatten_9/PartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_19_4843516dense_19_4843518*
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
E__inference_dense_19_layer_call_and_return_conditional_losses_48426912"
 dense_19/StatefulPartitionedCall?
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_105/StatefulPartitionedCall0^batch_normalization_106/StatefulPartitionedCall0^batch_normalization_107/StatefulPartitionedCall0^batch_normalization_108/StatefulPartitionedCall0^batch_normalization_109/StatefulPartitionedCall#^conv2d_130/StatefulPartitionedCall#^conv2d_131/StatefulPartitionedCall#^conv2d_132/StatefulPartitionedCall#^conv2d_133/StatefulPartitionedCall#^conv2d_134/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_105/StatefulPartitionedCall/batch_normalization_105/StatefulPartitionedCall2b
/batch_normalization_106/StatefulPartitionedCall/batch_normalization_106/StatefulPartitionedCall2b
/batch_normalization_107/StatefulPartitionedCall/batch_normalization_107/StatefulPartitionedCall2b
/batch_normalization_108/StatefulPartitionedCall/batch_normalization_108/StatefulPartitionedCall2b
/batch_normalization_109/StatefulPartitionedCall/batch_normalization_109/StatefulPartitionedCall2H
"conv2d_130/StatefulPartitionedCall"conv2d_130/StatefulPartitionedCall2H
"conv2d_131/StatefulPartitionedCall"conv2d_131/StatefulPartitionedCall2H
"conv2d_132/StatefulPartitionedCall"conv2d_132/StatefulPartitionedCall2H
"conv2d_133/StatefulPartitionedCall"conv2d_133/StatefulPartitionedCall2H
"conv2d_134/StatefulPartitionedCall"conv2d_134/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_130_input
?
i
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_4844295

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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4842468

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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4842345

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
2__inference_max_pooling2d_23_layer_call_fn_4844300

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
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_48420142
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
N
2__inference_max_pooling2d_22_layer_call_fn_4844141

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
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_48424822
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
?
G__inference_conv2d_130_layer_call_and_return_conditional_losses_4842445

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
E__inference_dense_19_layer_call_and_return_conditional_losses_4842691

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
9__inference_batch_normalization_105_layer_call_fn_4844108

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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_48424682
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
G__inference_conv2d_131_layer_call_and_return_conditional_losses_4842495

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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4842873

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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844379

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
?"
"__inference__wrapped_model_4841731
conv2d_130_inputN
4alex_net_4_conv2d_130_conv2d_readvariableop_resource:`C
5alex_net_4_conv2d_130_biasadd_readvariableop_resource:`H
:alex_net_4_batch_normalization_105_readvariableop_resource:`J
<alex_net_4_batch_normalization_105_readvariableop_1_resource:`Y
Kalex_net_4_batch_normalization_105_fusedbatchnormv3_readvariableop_resource:`[
Malex_net_4_batch_normalization_105_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_4_conv2d_131_conv2d_readvariableop_resource:`?D
5alex_net_4_conv2d_131_biasadd_readvariableop_resource:	?I
:alex_net_4_batch_normalization_106_readvariableop_resource:	?K
<alex_net_4_batch_normalization_106_readvariableop_1_resource:	?Z
Kalex_net_4_batch_normalization_106_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_4_batch_normalization_106_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_4_conv2d_132_conv2d_readvariableop_resource:??D
5alex_net_4_conv2d_132_biasadd_readvariableop_resource:	?I
:alex_net_4_batch_normalization_107_readvariableop_resource:	?K
<alex_net_4_batch_normalization_107_readvariableop_1_resource:	?Z
Kalex_net_4_batch_normalization_107_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_4_batch_normalization_107_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_4_conv2d_133_conv2d_readvariableop_resource:??D
5alex_net_4_conv2d_133_biasadd_readvariableop_resource:	?I
:alex_net_4_batch_normalization_108_readvariableop_resource:	?K
<alex_net_4_batch_normalization_108_readvariableop_1_resource:	?Z
Kalex_net_4_batch_normalization_108_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_4_batch_normalization_108_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_4_conv2d_134_conv2d_readvariableop_resource:??D
5alex_net_4_conv2d_134_biasadd_readvariableop_resource:	?I
:alex_net_4_batch_normalization_109_readvariableop_resource:	?K
<alex_net_4_batch_normalization_109_readvariableop_1_resource:	?Z
Kalex_net_4_batch_normalization_109_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_4_batch_normalization_109_fusedbatchnormv3_readvariableop_1_resource:	?E
2alex_net_4_dense_19_matmul_readvariableop_resource:	?(A
3alex_net_4_dense_19_biasadd_readvariableop_resource:
identity??Balex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp?Dalex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1?1alex_net_4/batch_normalization_105/ReadVariableOp?3alex_net_4/batch_normalization_105/ReadVariableOp_1?Balex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp?Dalex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1?1alex_net_4/batch_normalization_106/ReadVariableOp?3alex_net_4/batch_normalization_106/ReadVariableOp_1?Balex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp?Dalex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1?1alex_net_4/batch_normalization_107/ReadVariableOp?3alex_net_4/batch_normalization_107/ReadVariableOp_1?Balex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp?Dalex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1?1alex_net_4/batch_normalization_108/ReadVariableOp?3alex_net_4/batch_normalization_108/ReadVariableOp_1?Balex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp?Dalex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1?1alex_net_4/batch_normalization_109/ReadVariableOp?3alex_net_4/batch_normalization_109/ReadVariableOp_1?,alex_net_4/conv2d_130/BiasAdd/ReadVariableOp?+alex_net_4/conv2d_130/Conv2D/ReadVariableOp?,alex_net_4/conv2d_131/BiasAdd/ReadVariableOp?+alex_net_4/conv2d_131/Conv2D/ReadVariableOp?,alex_net_4/conv2d_132/BiasAdd/ReadVariableOp?+alex_net_4/conv2d_132/Conv2D/ReadVariableOp?,alex_net_4/conv2d_133/BiasAdd/ReadVariableOp?+alex_net_4/conv2d_133/Conv2D/ReadVariableOp?,alex_net_4/conv2d_134/BiasAdd/ReadVariableOp?+alex_net_4/conv2d_134/Conv2D/ReadVariableOp?*alex_net_4/dense_19/BiasAdd/ReadVariableOp?)alex_net_4/dense_19/MatMul/ReadVariableOp?
+alex_net_4/conv2d_130/Conv2D/ReadVariableOpReadVariableOp4alex_net_4_conv2d_130_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_4/conv2d_130/Conv2D/ReadVariableOp?
alex_net_4/conv2d_130/Conv2DConv2Dconv2d_130_input3alex_net_4/conv2d_130/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_4/conv2d_130/Conv2D?
,alex_net_4/conv2d_130/BiasAdd/ReadVariableOpReadVariableOp5alex_net_4_conv2d_130_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_4/conv2d_130/BiasAdd/ReadVariableOp?
alex_net_4/conv2d_130/BiasAddBiasAdd%alex_net_4/conv2d_130/Conv2D:output:04alex_net_4/conv2d_130/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
alex_net_4/conv2d_130/BiasAdd?
alex_net_4/conv2d_130/ReluRelu&alex_net_4/conv2d_130/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_4/conv2d_130/Relu?
1alex_net_4/batch_normalization_105/ReadVariableOpReadVariableOp:alex_net_4_batch_normalization_105_readvariableop_resource*
_output_shapes
:`*
dtype023
1alex_net_4/batch_normalization_105/ReadVariableOp?
3alex_net_4/batch_normalization_105/ReadVariableOp_1ReadVariableOp<alex_net_4_batch_normalization_105_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3alex_net_4/batch_normalization_105/ReadVariableOp_1?
Balex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_4_batch_normalization_105_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02D
Balex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp?
Dalex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_4_batch_normalization_105_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02F
Dalex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_4/batch_normalization_105/FusedBatchNormV3FusedBatchNormV3(alex_net_4/conv2d_130/Relu:activations:09alex_net_4/batch_normalization_105/ReadVariableOp:value:0;alex_net_4/batch_normalization_105/ReadVariableOp_1:value:0Jalex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 25
3alex_net_4/batch_normalization_105/FusedBatchNormV3?
#alex_net_4/max_pooling2d_22/MaxPoolMaxPool7alex_net_4/batch_normalization_105/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_4/max_pooling2d_22/MaxPool?
+alex_net_4/conv2d_131/Conv2D/ReadVariableOpReadVariableOp4alex_net_4_conv2d_131_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02-
+alex_net_4/conv2d_131/Conv2D/ReadVariableOp?
alex_net_4/conv2d_131/Conv2DConv2D,alex_net_4/max_pooling2d_22/MaxPool:output:03alex_net_4/conv2d_131/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_4/conv2d_131/Conv2D?
,alex_net_4/conv2d_131/BiasAdd/ReadVariableOpReadVariableOp5alex_net_4_conv2d_131_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_4/conv2d_131/BiasAdd/ReadVariableOp?
alex_net_4/conv2d_131/BiasAddBiasAdd%alex_net_4/conv2d_131/Conv2D:output:04alex_net_4/conv2d_131/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
alex_net_4/conv2d_131/BiasAdd?
alex_net_4/conv2d_131/ReluRelu&alex_net_4/conv2d_131/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_4/conv2d_131/Relu?
1alex_net_4/batch_normalization_106/ReadVariableOpReadVariableOp:alex_net_4_batch_normalization_106_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_4/batch_normalization_106/ReadVariableOp?
3alex_net_4/batch_normalization_106/ReadVariableOp_1ReadVariableOp<alex_net_4_batch_normalization_106_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_4/batch_normalization_106/ReadVariableOp_1?
Balex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_4_batch_normalization_106_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp?
Dalex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_4_batch_normalization_106_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_4/batch_normalization_106/FusedBatchNormV3FusedBatchNormV3(alex_net_4/conv2d_131/Relu:activations:09alex_net_4/batch_normalization_106/ReadVariableOp:value:0;alex_net_4/batch_normalization_106/ReadVariableOp_1:value:0Jalex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_4/batch_normalization_106/FusedBatchNormV3?
#alex_net_4/max_pooling2d_23/MaxPoolMaxPool7alex_net_4/batch_normalization_106/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#alex_net_4/max_pooling2d_23/MaxPool?
+alex_net_4/conv2d_132/Conv2D/ReadVariableOpReadVariableOp4alex_net_4_conv2d_132_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_4/conv2d_132/Conv2D/ReadVariableOp?
alex_net_4/conv2d_132/Conv2DConv2D,alex_net_4/max_pooling2d_23/MaxPool:output:03alex_net_4/conv2d_132/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_4/conv2d_132/Conv2D?
,alex_net_4/conv2d_132/BiasAdd/ReadVariableOpReadVariableOp5alex_net_4_conv2d_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_4/conv2d_132/BiasAdd/ReadVariableOp?
alex_net_4/conv2d_132/BiasAddBiasAdd%alex_net_4/conv2d_132/Conv2D:output:04alex_net_4/conv2d_132/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_4/conv2d_132/BiasAdd?
alex_net_4/conv2d_132/ReluRelu&alex_net_4/conv2d_132/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_4/conv2d_132/Relu?
1alex_net_4/batch_normalization_107/ReadVariableOpReadVariableOp:alex_net_4_batch_normalization_107_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_4/batch_normalization_107/ReadVariableOp?
3alex_net_4/batch_normalization_107/ReadVariableOp_1ReadVariableOp<alex_net_4_batch_normalization_107_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_4/batch_normalization_107/ReadVariableOp_1?
Balex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_4_batch_normalization_107_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp?
Dalex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_4_batch_normalization_107_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_4/batch_normalization_107/FusedBatchNormV3FusedBatchNormV3(alex_net_4/conv2d_132/Relu:activations:09alex_net_4/batch_normalization_107/ReadVariableOp:value:0;alex_net_4/batch_normalization_107/ReadVariableOp_1:value:0Jalex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_4/batch_normalization_107/FusedBatchNormV3?
+alex_net_4/conv2d_133/Conv2D/ReadVariableOpReadVariableOp4alex_net_4_conv2d_133_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_4/conv2d_133/Conv2D/ReadVariableOp?
alex_net_4/conv2d_133/Conv2DConv2D7alex_net_4/batch_normalization_107/FusedBatchNormV3:y:03alex_net_4/conv2d_133/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_4/conv2d_133/Conv2D?
,alex_net_4/conv2d_133/BiasAdd/ReadVariableOpReadVariableOp5alex_net_4_conv2d_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_4/conv2d_133/BiasAdd/ReadVariableOp?
alex_net_4/conv2d_133/BiasAddBiasAdd%alex_net_4/conv2d_133/Conv2D:output:04alex_net_4/conv2d_133/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_4/conv2d_133/BiasAdd?
alex_net_4/conv2d_133/ReluRelu&alex_net_4/conv2d_133/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_4/conv2d_133/Relu?
1alex_net_4/batch_normalization_108/ReadVariableOpReadVariableOp:alex_net_4_batch_normalization_108_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_4/batch_normalization_108/ReadVariableOp?
3alex_net_4/batch_normalization_108/ReadVariableOp_1ReadVariableOp<alex_net_4_batch_normalization_108_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_4/batch_normalization_108/ReadVariableOp_1?
Balex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_4_batch_normalization_108_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp?
Dalex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_4_batch_normalization_108_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_4/batch_normalization_108/FusedBatchNormV3FusedBatchNormV3(alex_net_4/conv2d_133/Relu:activations:09alex_net_4/batch_normalization_108/ReadVariableOp:value:0;alex_net_4/batch_normalization_108/ReadVariableOp_1:value:0Jalex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_4/batch_normalization_108/FusedBatchNormV3?
+alex_net_4/conv2d_134/Conv2D/ReadVariableOpReadVariableOp4alex_net_4_conv2d_134_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_4/conv2d_134/Conv2D/ReadVariableOp?
alex_net_4/conv2d_134/Conv2DConv2D7alex_net_4/batch_normalization_108/FusedBatchNormV3:y:03alex_net_4/conv2d_134/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_4/conv2d_134/Conv2D?
,alex_net_4/conv2d_134/BiasAdd/ReadVariableOpReadVariableOp5alex_net_4_conv2d_134_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_4/conv2d_134/BiasAdd/ReadVariableOp?
alex_net_4/conv2d_134/BiasAddBiasAdd%alex_net_4/conv2d_134/Conv2D:output:04alex_net_4/conv2d_134/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_4/conv2d_134/BiasAdd?
alex_net_4/conv2d_134/ReluRelu&alex_net_4/conv2d_134/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_4/conv2d_134/Relu?
1alex_net_4/batch_normalization_109/ReadVariableOpReadVariableOp:alex_net_4_batch_normalization_109_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_4/batch_normalization_109/ReadVariableOp?
3alex_net_4/batch_normalization_109/ReadVariableOp_1ReadVariableOp<alex_net_4_batch_normalization_109_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_4/batch_normalization_109/ReadVariableOp_1?
Balex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_4_batch_normalization_109_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp?
Dalex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_4_batch_normalization_109_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_4/batch_normalization_109/FusedBatchNormV3FusedBatchNormV3(alex_net_4/conv2d_134/Relu:activations:09alex_net_4/batch_normalization_109/ReadVariableOp:value:0;alex_net_4/batch_normalization_109/ReadVariableOp_1:value:0Jalex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_4/batch_normalization_109/FusedBatchNormV3?
#alex_net_4/max_pooling2d_24/MaxPoolMaxPool7alex_net_4/batch_normalization_109/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2%
#alex_net_4/max_pooling2d_24/MaxPool?
alex_net_4/flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_4/flatten_9/Const?
alex_net_4/flatten_9/ReshapeReshape,alex_net_4/max_pooling2d_24/MaxPool:output:0#alex_net_4/flatten_9/Const:output:0*
T0*(
_output_shapes
:??????????(2
alex_net_4/flatten_9/Reshape?
)alex_net_4/dense_19/MatMul/ReadVariableOpReadVariableOp2alex_net_4_dense_19_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02+
)alex_net_4/dense_19/MatMul/ReadVariableOp?
alex_net_4/dense_19/MatMulMatMul%alex_net_4/flatten_9/Reshape:output:01alex_net_4/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_4/dense_19/MatMul?
*alex_net_4/dense_19/BiasAdd/ReadVariableOpReadVariableOp3alex_net_4_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_4/dense_19/BiasAdd/ReadVariableOp?
alex_net_4/dense_19/BiasAddBiasAdd$alex_net_4/dense_19/MatMul:product:02alex_net_4/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_4/dense_19/BiasAdd?
alex_net_4/dense_19/SigmoidSigmoid$alex_net_4/dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_4/dense_19/Sigmoidz
IdentityIdentityalex_net_4/dense_19/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpC^alex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOpE^alex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp_12^alex_net_4/batch_normalization_105/ReadVariableOp4^alex_net_4/batch_normalization_105/ReadVariableOp_1C^alex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOpE^alex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp_12^alex_net_4/batch_normalization_106/ReadVariableOp4^alex_net_4/batch_normalization_106/ReadVariableOp_1C^alex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOpE^alex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp_12^alex_net_4/batch_normalization_107/ReadVariableOp4^alex_net_4/batch_normalization_107/ReadVariableOp_1C^alex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOpE^alex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp_12^alex_net_4/batch_normalization_108/ReadVariableOp4^alex_net_4/batch_normalization_108/ReadVariableOp_1C^alex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOpE^alex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp_12^alex_net_4/batch_normalization_109/ReadVariableOp4^alex_net_4/batch_normalization_109/ReadVariableOp_1-^alex_net_4/conv2d_130/BiasAdd/ReadVariableOp,^alex_net_4/conv2d_130/Conv2D/ReadVariableOp-^alex_net_4/conv2d_131/BiasAdd/ReadVariableOp,^alex_net_4/conv2d_131/Conv2D/ReadVariableOp-^alex_net_4/conv2d_132/BiasAdd/ReadVariableOp,^alex_net_4/conv2d_132/Conv2D/ReadVariableOp-^alex_net_4/conv2d_133/BiasAdd/ReadVariableOp,^alex_net_4/conv2d_133/Conv2D/ReadVariableOp-^alex_net_4/conv2d_134/BiasAdd/ReadVariableOp,^alex_net_4/conv2d_134/Conv2D/ReadVariableOp+^alex_net_4/dense_19/BiasAdd/ReadVariableOp*^alex_net_4/dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Balex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOpBalex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp_1Dalex_net_4/batch_normalization_105/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_4/batch_normalization_105/ReadVariableOp1alex_net_4/batch_normalization_105/ReadVariableOp2j
3alex_net_4/batch_normalization_105/ReadVariableOp_13alex_net_4/batch_normalization_105/ReadVariableOp_12?
Balex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOpBalex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp_1Dalex_net_4/batch_normalization_106/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_4/batch_normalization_106/ReadVariableOp1alex_net_4/batch_normalization_106/ReadVariableOp2j
3alex_net_4/batch_normalization_106/ReadVariableOp_13alex_net_4/batch_normalization_106/ReadVariableOp_12?
Balex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOpBalex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp_1Dalex_net_4/batch_normalization_107/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_4/batch_normalization_107/ReadVariableOp1alex_net_4/batch_normalization_107/ReadVariableOp2j
3alex_net_4/batch_normalization_107/ReadVariableOp_13alex_net_4/batch_normalization_107/ReadVariableOp_12?
Balex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOpBalex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp_1Dalex_net_4/batch_normalization_108/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_4/batch_normalization_108/ReadVariableOp1alex_net_4/batch_normalization_108/ReadVariableOp2j
3alex_net_4/batch_normalization_108/ReadVariableOp_13alex_net_4/batch_normalization_108/ReadVariableOp_12?
Balex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOpBalex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp_1Dalex_net_4/batch_normalization_109/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_4/batch_normalization_109/ReadVariableOp1alex_net_4/batch_normalization_109/ReadVariableOp2j
3alex_net_4/batch_normalization_109/ReadVariableOp_13alex_net_4/batch_normalization_109/ReadVariableOp_12\
,alex_net_4/conv2d_130/BiasAdd/ReadVariableOp,alex_net_4/conv2d_130/BiasAdd/ReadVariableOp2Z
+alex_net_4/conv2d_130/Conv2D/ReadVariableOp+alex_net_4/conv2d_130/Conv2D/ReadVariableOp2\
,alex_net_4/conv2d_131/BiasAdd/ReadVariableOp,alex_net_4/conv2d_131/BiasAdd/ReadVariableOp2Z
+alex_net_4/conv2d_131/Conv2D/ReadVariableOp+alex_net_4/conv2d_131/Conv2D/ReadVariableOp2\
,alex_net_4/conv2d_132/BiasAdd/ReadVariableOp,alex_net_4/conv2d_132/BiasAdd/ReadVariableOp2Z
+alex_net_4/conv2d_132/Conv2D/ReadVariableOp+alex_net_4/conv2d_132/Conv2D/ReadVariableOp2\
,alex_net_4/conv2d_133/BiasAdd/ReadVariableOp,alex_net_4/conv2d_133/BiasAdd/ReadVariableOp2Z
+alex_net_4/conv2d_133/Conv2D/ReadVariableOp+alex_net_4/conv2d_133/Conv2D/ReadVariableOp2\
,alex_net_4/conv2d_134/BiasAdd/ReadVariableOp,alex_net_4/conv2d_134/BiasAdd/ReadVariableOp2Z
+alex_net_4/conv2d_134/Conv2D/ReadVariableOp+alex_net_4/conv2d_134/Conv2D/ReadVariableOp2X
*alex_net_4/dense_19/BiasAdd/ReadVariableOp*alex_net_4/dense_19/BiasAdd/ReadVariableOp2V
)alex_net_4/dense_19/MatMul/ReadVariableOp)alex_net_4/dense_19/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_130_input
?
?
G__inference_conv2d_132_layer_call_and_return_conditional_losses_4844316

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
?
?
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844541

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
?
N
2__inference_max_pooling2d_24_layer_call_fn_4844752

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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_48424142
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
G__inference_conv2d_134_layer_call_and_return_conditional_losses_4842633

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
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_4844131

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
?
#__inference__traced_restore_4845061
file_prefix<
"assignvariableop_conv2d_130_kernel:`0
"assignvariableop_1_conv2d_130_bias:`>
0assignvariableop_2_batch_normalization_105_gamma:`=
/assignvariableop_3_batch_normalization_105_beta:`D
6assignvariableop_4_batch_normalization_105_moving_mean:`H
:assignvariableop_5_batch_normalization_105_moving_variance:`?
$assignvariableop_6_conv2d_131_kernel:`?1
"assignvariableop_7_conv2d_131_bias:	??
0assignvariableop_8_batch_normalization_106_gamma:	?>
/assignvariableop_9_batch_normalization_106_beta:	?F
7assignvariableop_10_batch_normalization_106_moving_mean:	?J
;assignvariableop_11_batch_normalization_106_moving_variance:	?A
%assignvariableop_12_conv2d_132_kernel:??2
#assignvariableop_13_conv2d_132_bias:	?@
1assignvariableop_14_batch_normalization_107_gamma:	??
0assignvariableop_15_batch_normalization_107_beta:	?F
7assignvariableop_16_batch_normalization_107_moving_mean:	?J
;assignvariableop_17_batch_normalization_107_moving_variance:	?A
%assignvariableop_18_conv2d_133_kernel:??2
#assignvariableop_19_conv2d_133_bias:	?@
1assignvariableop_20_batch_normalization_108_gamma:	??
0assignvariableop_21_batch_normalization_108_beta:	?F
7assignvariableop_22_batch_normalization_108_moving_mean:	?J
;assignvariableop_23_batch_normalization_108_moving_variance:	?A
%assignvariableop_24_conv2d_134_kernel:??2
#assignvariableop_25_conv2d_134_bias:	?@
1assignvariableop_26_batch_normalization_109_gamma:	??
0assignvariableop_27_batch_normalization_109_beta:	?F
7assignvariableop_28_batch_normalization_109_moving_mean:	?J
;assignvariableop_29_batch_normalization_109_moving_variance:	?6
#assignvariableop_30_dense_19_kernel:	?(/
!assignvariableop_31_dense_19_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_130_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_130_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_105_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_105_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_105_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_105_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_131_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_131_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_106_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_106_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_106_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_106_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_132_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_132_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_107_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_107_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_107_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_107_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_133_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_133_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_108_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_108_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_108_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_108_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_134_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_134_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_109_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_109_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_109_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_109_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_19_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_19_biasIdentity_31:output:0"/device:CPU:0*
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
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv2d_130_inputC
"serving_default_conv2d_130_input:0???????????<
dense_190
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
trainable_variables
	variables
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
trainable_variables
	variables
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
"trainable_variables
#	variables
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
%regularization_losses
&trainable_variables
'	variables
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

)kernel
*bias
+regularization_losses
,trainable_variables
-	variables
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
5trainable_variables
6	variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
8regularization_losses
9trainable_variables
:	variables
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

<kernel
=bias
>regularization_losses
?trainable_variables
@	variables
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
Htrainable_variables
I	variables
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Kkernel
Lbias
Mregularization_losses
Ntrainable_variables
O	variables
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
Wtrainable_variables
X	variables
Y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Zkernel
[bias
\regularization_losses
]trainable_variables
^	variables
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
ftrainable_variables
g	variables
h	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
mregularization_losses
ntrainable_variables
o	variables
p	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

qkernel
rbias
sregularization_losses
ttrainable_variables
u	variables
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
?

{layers
|layer_metrics
}layer_regularization_losses
~metrics
regularization_losses
non_trainable_variables
trainable_variables
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)`2conv2d_130/kernel
:`2conv2d_130/bias
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
regularization_losses
?non_trainable_variables
trainable_variables
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)`2batch_normalization_105/gamma
*:(`2batch_normalization_105/beta
3:1` (2#batch_normalization_105/moving_mean
7:5` (2'batch_normalization_105/moving_variance
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
<
0
1
2
 3"
trackable_list_wrapper
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
!regularization_losses
?non_trainable_variables
"trainable_variables
#	variables
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
%regularization_losses
?non_trainable_variables
&trainable_variables
'	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*`?2conv2d_131/kernel
:?2conv2d_131/bias
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
+regularization_losses
?non_trainable_variables
,trainable_variables
-	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_106/gamma
+:)?2batch_normalization_106/beta
4:2? (2#batch_normalization_106/moving_mean
8:6? (2'batch_normalization_106/moving_variance
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
<
00
11
22
33"
trackable_list_wrapper
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
4regularization_losses
?non_trainable_variables
5trainable_variables
6	variables
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
8regularization_losses
?non_trainable_variables
9trainable_variables
:	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_132/kernel
:?2conv2d_132/bias
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
>regularization_losses
?non_trainable_variables
?trainable_variables
@	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_107/gamma
+:)?2batch_normalization_107/beta
4:2? (2#batch_normalization_107/moving_mean
8:6? (2'batch_normalization_107/moving_variance
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
<
C0
D1
E2
F3"
trackable_list_wrapper
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
Gregularization_losses
?non_trainable_variables
Htrainable_variables
I	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_133/kernel
:?2conv2d_133/bias
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
Mregularization_losses
?non_trainable_variables
Ntrainable_variables
O	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_108/gamma
+:)?2batch_normalization_108/beta
4:2? (2#batch_normalization_108/moving_mean
8:6? (2'batch_normalization_108/moving_variance
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
<
R0
S1
T2
U3"
trackable_list_wrapper
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
Vregularization_losses
?non_trainable_variables
Wtrainable_variables
X	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_134/kernel
:?2conv2d_134/bias
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
\regularization_losses
?non_trainable_variables
]trainable_variables
^	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_109/gamma
+:)?2batch_normalization_109/beta
4:2? (2#batch_normalization_109/moving_mean
8:6? (2'batch_normalization_109/moving_variance
 "
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
<
a0
b1
c2
d3"
trackable_list_wrapper
?
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
eregularization_losses
?non_trainable_variables
ftrainable_variables
g	variables
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
iregularization_losses
?non_trainable_variables
jtrainable_variables
k	variables
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
mregularization_losses
?non_trainable_variables
ntrainable_variables
o	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?(2dense_19/kernel
:2dense_19/bias
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
?layers
?layer_metrics
 ?layer_regularization_losses
?metrics
sregularization_losses
?non_trainable_variables
ttrainable_variables
u	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
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
0
?0
?1"
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
.
0
 1"
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
.
20
31"
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
.
E0
F1"
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
.
T0
U1"
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
.
c0
d1"
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
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843718
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843839
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843439
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843522?
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
"__inference__wrapped_model_4841731conv2d_130_input"?
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
,__inference_alex_net_4_layer_call_fn_4842765
,__inference_alex_net_4_layer_call_fn_4843908
,__inference_alex_net_4_layer_call_fn_4843977
,__inference_alex_net_4_layer_call_fn_4843356?
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
G__inference_conv2d_130_layer_call_and_return_conditional_losses_4843988?
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
,__inference_conv2d_130_layer_call_fn_4843997?
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
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844015
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844033
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844051
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844069?
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
9__inference_batch_normalization_105_layer_call_fn_4844082
9__inference_batch_normalization_105_layer_call_fn_4844095
9__inference_batch_normalization_105_layer_call_fn_4844108
9__inference_batch_normalization_105_layer_call_fn_4844121?
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
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_4844126
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_4844131?
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
2__inference_max_pooling2d_22_layer_call_fn_4844136
2__inference_max_pooling2d_22_layer_call_fn_4844141?
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
G__inference_conv2d_131_layer_call_and_return_conditional_losses_4844152?
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
,__inference_conv2d_131_layer_call_fn_4844161?
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
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844179
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844197
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844215
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844233?
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
9__inference_batch_normalization_106_layer_call_fn_4844246
9__inference_batch_normalization_106_layer_call_fn_4844259
9__inference_batch_normalization_106_layer_call_fn_4844272
9__inference_batch_normalization_106_layer_call_fn_4844285?
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
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_4844290
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_4844295?
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
2__inference_max_pooling2d_23_layer_call_fn_4844300
2__inference_max_pooling2d_23_layer_call_fn_4844305?
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
G__inference_conv2d_132_layer_call_and_return_conditional_losses_4844316?
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
,__inference_conv2d_132_layer_call_fn_4844325?
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
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844343
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844361
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844379
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844397?
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
9__inference_batch_normalization_107_layer_call_fn_4844410
9__inference_batch_normalization_107_layer_call_fn_4844423
9__inference_batch_normalization_107_layer_call_fn_4844436
9__inference_batch_normalization_107_layer_call_fn_4844449?
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
G__inference_conv2d_133_layer_call_and_return_conditional_losses_4844460?
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
,__inference_conv2d_133_layer_call_fn_4844469?
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
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844487
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844505
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844523
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844541?
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
9__inference_batch_normalization_108_layer_call_fn_4844554
9__inference_batch_normalization_108_layer_call_fn_4844567
9__inference_batch_normalization_108_layer_call_fn_4844580
9__inference_batch_normalization_108_layer_call_fn_4844593?
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
G__inference_conv2d_134_layer_call_and_return_conditional_losses_4844604?
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
,__inference_conv2d_134_layer_call_fn_4844613?
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
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844631
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844649
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844667
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844685?
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
9__inference_batch_normalization_109_layer_call_fn_4844698
9__inference_batch_normalization_109_layer_call_fn_4844711
9__inference_batch_normalization_109_layer_call_fn_4844724
9__inference_batch_normalization_109_layer_call_fn_4844737?
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
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_4844742
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_4844747?
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
2__inference_max_pooling2d_24_layer_call_fn_4844752
2__inference_max_pooling2d_24_layer_call_fn_4844757?
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_4844763?
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
+__inference_flatten_9_layer_call_fn_4844768?
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
E__inference_dense_19_layer_call_and_return_conditional_losses_4844779?
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
*__inference_dense_19_layer_call_fn_4844788?
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
%__inference_signature_wrapper_4843597conv2d_130_input"?
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
"__inference__wrapped_model_4841731?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_130_input???????????
? "3?0
.
dense_19"?
dense_19??????????
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843439?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_130_input???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843522?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_130_input???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843718?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
G__inference_alex_net_4_layer_call_and_return_conditional_losses_4843839?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
,__inference_alex_net_4_layer_call_fn_4842765?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_130_input???????????
p 

 
? "???????????
,__inference_alex_net_4_layer_call_fn_4843356?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_130_input???????????
p

 
? "???????????
,__inference_alex_net_4_layer_call_fn_4843908  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_alex_net_4_layer_call_fn_4843977  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844015? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844033? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844051r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_105_layer_call_and_return_conditional_losses_4844069r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_105_layer_call_fn_4844082? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_105_layer_call_fn_4844095? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_105_layer_call_fn_4844108e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_105_layer_call_fn_4844121e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844179?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844197?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844215t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_106_layer_call_and_return_conditional_losses_4844233t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_106_layer_call_fn_4844246?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_106_layer_call_fn_4844259?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_106_layer_call_fn_4844272g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_106_layer_call_fn_4844285g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844343?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844361?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844379tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_107_layer_call_and_return_conditional_losses_4844397tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_107_layer_call_fn_4844410?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_107_layer_call_fn_4844423?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_107_layer_call_fn_4844436gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_107_layer_call_fn_4844449gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844487?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844505?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844523tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_108_layer_call_and_return_conditional_losses_4844541tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_108_layer_call_fn_4844554?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_108_layer_call_fn_4844567?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_108_layer_call_fn_4844580gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_108_layer_call_fn_4844593gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844631?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844649?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844667tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_109_layer_call_and_return_conditional_losses_4844685tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_109_layer_call_fn_4844698?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_109_layer_call_fn_4844711?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_109_layer_call_fn_4844724gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_109_layer_call_fn_4844737gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_130_layer_call_and_return_conditional_losses_4843988n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_130_layer_call_fn_4843997a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_131_layer_call_and_return_conditional_losses_4844152m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_131_layer_call_fn_4844161`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_132_layer_call_and_return_conditional_losses_4844316n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_132_layer_call_fn_4844325a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_133_layer_call_and_return_conditional_losses_4844460nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_133_layer_call_fn_4844469aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_134_layer_call_and_return_conditional_losses_4844604nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_134_layer_call_fn_4844613aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_19_layer_call_and_return_conditional_losses_4844779]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_19_layer_call_fn_4844788Pqr0?-
&?#
!?
inputs??????????(
? "???????????
F__inference_flatten_9_layer_call_and_return_conditional_losses_4844763b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
+__inference_flatten_9_layer_call_fn_4844768U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_4844126?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_4844131h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_22_layer_call_fn_4844136?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_22_layer_call_fn_4844141[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_4844290?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_4844295j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_23_layer_call_fn_4844300?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_23_layer_call_fn_4844305]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_4844742?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_4844747j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_24_layer_call_fn_4844752?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_24_layer_call_fn_4844757]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_4843597?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_130_input4?1
conv2d_130_input???????????"3?0
.
dense_19"?
dense_19?????????