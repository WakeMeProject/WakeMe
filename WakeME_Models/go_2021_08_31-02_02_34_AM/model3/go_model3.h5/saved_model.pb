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
conv2d_312/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_312/kernel

%conv2d_312/kernel/Read/ReadVariableOpReadVariableOpconv2d_312/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_312/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_312/bias
o
#conv2d_312/bias/Read/ReadVariableOpReadVariableOpconv2d_312/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_244/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_244/gamma
?
1batch_normalization_244/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_244/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_244/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_244/beta
?
0batch_normalization_244/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_244/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_244/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_244/moving_mean
?
7batch_normalization_244/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_244/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_244/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_244/moving_variance
?
;batch_normalization_244/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_244/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_313/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_313/kernel
?
%conv2d_313/kernel/Read/ReadVariableOpReadVariableOpconv2d_313/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_313/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_313/bias
p
#conv2d_313/bias/Read/ReadVariableOpReadVariableOpconv2d_313/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_245/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_245/gamma
?
1batch_normalization_245/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_245/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_245/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_245/beta
?
0batch_normalization_245/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_245/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_245/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_245/moving_mean
?
7batch_normalization_245/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_245/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_245/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_245/moving_variance
?
;batch_normalization_245/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_245/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_314/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_314/kernel
?
%conv2d_314/kernel/Read/ReadVariableOpReadVariableOpconv2d_314/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_314/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_314/bias
p
#conv2d_314/bias/Read/ReadVariableOpReadVariableOpconv2d_314/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_246/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_246/gamma
?
1batch_normalization_246/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_246/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_246/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_246/beta
?
0batch_normalization_246/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_246/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_246/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_246/moving_mean
?
7batch_normalization_246/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_246/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_246/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_246/moving_variance
?
;batch_normalization_246/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_246/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_315/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_315/kernel
?
%conv2d_315/kernel/Read/ReadVariableOpReadVariableOpconv2d_315/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_315/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_315/bias
p
#conv2d_315/bias/Read/ReadVariableOpReadVariableOpconv2d_315/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_247/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_247/gamma
?
1batch_normalization_247/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_247/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_247/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_247/beta
?
0batch_normalization_247/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_247/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_247/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_247/moving_mean
?
7batch_normalization_247/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_247/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_247/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_247/moving_variance
?
;batch_normalization_247/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_247/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_316/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_316/kernel
?
%conv2d_316/kernel/Read/ReadVariableOpReadVariableOpconv2d_316/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_316/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_316/bias
p
#conv2d_316/bias/Read/ReadVariableOpReadVariableOpconv2d_316/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_248/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_248/gamma
?
1batch_normalization_248/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_248/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_248/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_248/beta
?
0batch_normalization_248/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_248/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_248/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_248/moving_mean
?
7batch_normalization_248/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_248/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_248/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_248/moving_variance
?
;batch_normalization_248/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_248/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_52/kernel
t
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel*
_output_shapes
:	?(*
dtype0
r
dense_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_52/bias
k
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
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
VARIABLE_VALUEconv2d_312/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_312/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_244/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_244/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_244/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_244/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_313/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_313/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_245/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_245/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_245/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_245/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_314/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_314/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_246/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_246/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_246/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_246/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_315/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_315/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_247/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_247/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_247/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_247/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_316/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_316/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_248/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_248/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_248/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_248/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_52/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_52/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_312_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_312_inputconv2d_312/kernelconv2d_312/biasbatch_normalization_244/gammabatch_normalization_244/beta#batch_normalization_244/moving_mean'batch_normalization_244/moving_varianceconv2d_313/kernelconv2d_313/biasbatch_normalization_245/gammabatch_normalization_245/beta#batch_normalization_245/moving_mean'batch_normalization_245/moving_varianceconv2d_314/kernelconv2d_314/biasbatch_normalization_246/gammabatch_normalization_246/beta#batch_normalization_246/moving_mean'batch_normalization_246/moving_varianceconv2d_315/kernelconv2d_315/biasbatch_normalization_247/gammabatch_normalization_247/beta#batch_normalization_247/moving_mean'batch_normalization_247/moving_varianceconv2d_316/kernelconv2d_316/biasbatch_normalization_248/gammabatch_normalization_248/beta#batch_normalization_248/moving_mean'batch_normalization_248/moving_variancedense_52/kerneldense_52/bias*,
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
%__inference_signature_wrapper_4739090
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_312/kernel/Read/ReadVariableOp#conv2d_312/bias/Read/ReadVariableOp1batch_normalization_244/gamma/Read/ReadVariableOp0batch_normalization_244/beta/Read/ReadVariableOp7batch_normalization_244/moving_mean/Read/ReadVariableOp;batch_normalization_244/moving_variance/Read/ReadVariableOp%conv2d_313/kernel/Read/ReadVariableOp#conv2d_313/bias/Read/ReadVariableOp1batch_normalization_245/gamma/Read/ReadVariableOp0batch_normalization_245/beta/Read/ReadVariableOp7batch_normalization_245/moving_mean/Read/ReadVariableOp;batch_normalization_245/moving_variance/Read/ReadVariableOp%conv2d_314/kernel/Read/ReadVariableOp#conv2d_314/bias/Read/ReadVariableOp1batch_normalization_246/gamma/Read/ReadVariableOp0batch_normalization_246/beta/Read/ReadVariableOp7batch_normalization_246/moving_mean/Read/ReadVariableOp;batch_normalization_246/moving_variance/Read/ReadVariableOp%conv2d_315/kernel/Read/ReadVariableOp#conv2d_315/bias/Read/ReadVariableOp1batch_normalization_247/gamma/Read/ReadVariableOp0batch_normalization_247/beta/Read/ReadVariableOp7batch_normalization_247/moving_mean/Read/ReadVariableOp;batch_normalization_247/moving_variance/Read/ReadVariableOp%conv2d_316/kernel/Read/ReadVariableOp#conv2d_316/bias/Read/ReadVariableOp1batch_normalization_248/gamma/Read/ReadVariableOp0batch_normalization_248/beta/Read/ReadVariableOp7batch_normalization_248/moving_mean/Read/ReadVariableOp;batch_normalization_248/moving_variance/Read/ReadVariableOp#dense_52/kernel/Read/ReadVariableOp!dense_52/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4740424
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_312/kernelconv2d_312/biasbatch_normalization_244/gammabatch_normalization_244/beta#batch_normalization_244/moving_mean'batch_normalization_244/moving_varianceconv2d_313/kernelconv2d_313/biasbatch_normalization_245/gammabatch_normalization_245/beta#batch_normalization_245/moving_mean'batch_normalization_245/moving_varianceconv2d_314/kernelconv2d_314/biasbatch_normalization_246/gammabatch_normalization_246/beta#batch_normalization_246/moving_mean'batch_normalization_246/moving_varianceconv2d_315/kernelconv2d_315/biasbatch_normalization_247/gammabatch_normalization_247/beta#batch_normalization_247/moving_mean'batch_normalization_247/moving_varianceconv2d_316/kernelconv2d_316/biasbatch_normalization_248/gammabatch_normalization_248/beta#batch_normalization_248/moving_mean'batch_normalization_248/moving_variancedense_52/kerneldense_52/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_4740554??
?
?
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4737542

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
9__inference_batch_normalization_244_layer_call_fn_4739575

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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_47372462
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4737668

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
9__inference_batch_normalization_246_layer_call_fn_4739929

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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_47380612
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
i
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_4739788

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4738011

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
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_4738025

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
?X
?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4738713

inputs,
conv2d_312_4738633:` 
conv2d_312_4738635:`-
batch_normalization_244_4738638:`-
batch_normalization_244_4738640:`-
batch_normalization_244_4738642:`-
batch_normalization_244_4738644:`-
conv2d_313_4738648:`?!
conv2d_313_4738650:	?.
batch_normalization_245_4738653:	?.
batch_normalization_245_4738655:	?.
batch_normalization_245_4738657:	?.
batch_normalization_245_4738659:	?.
conv2d_314_4738663:??!
conv2d_314_4738665:	?.
batch_normalization_246_4738668:	?.
batch_normalization_246_4738670:	?.
batch_normalization_246_4738672:	?.
batch_normalization_246_4738674:	?.
conv2d_315_4738677:??!
conv2d_315_4738679:	?.
batch_normalization_247_4738682:	?.
batch_normalization_247_4738684:	?.
batch_normalization_247_4738686:	?.
batch_normalization_247_4738688:	?.
conv2d_316_4738691:??!
conv2d_316_4738693:	?.
batch_normalization_248_4738696:	?.
batch_normalization_248_4738698:	?.
batch_normalization_248_4738700:	?.
batch_normalization_248_4738702:	?#
dense_52_4738707:	?(
dense_52_4738709:
identity??/batch_normalization_244/StatefulPartitionedCall?/batch_normalization_245/StatefulPartitionedCall?/batch_normalization_246/StatefulPartitionedCall?/batch_normalization_247/StatefulPartitionedCall?/batch_normalization_248/StatefulPartitionedCall?"conv2d_312/StatefulPartitionedCall?"conv2d_313/StatefulPartitionedCall?"conv2d_314/StatefulPartitionedCall?"conv2d_315/StatefulPartitionedCall?"conv2d_316/StatefulPartitionedCall? dense_52/StatefulPartitionedCall?
"conv2d_312/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_312_4738633conv2d_312_4738635*
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
G__inference_conv2d_312_layer_call_and_return_conditional_losses_47379382$
"conv2d_312/StatefulPartitionedCall?
/batch_normalization_244/StatefulPartitionedCallStatefulPartitionedCall+conv2d_312/StatefulPartitionedCall:output:0batch_normalization_244_4738638batch_normalization_244_4738640batch_normalization_244_4738642batch_normalization_244_4738644*
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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_473853821
/batch_normalization_244/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall8batch_normalization_244/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_47379752"
 max_pooling2d_52/PartitionedCall?
"conv2d_313/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_313_4738648conv2d_313_4738650*
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
G__inference_conv2d_313_layer_call_and_return_conditional_losses_47379882$
"conv2d_313/StatefulPartitionedCall?
/batch_normalization_245/StatefulPartitionedCallStatefulPartitionedCall+conv2d_313/StatefulPartitionedCall:output:0batch_normalization_245_4738653batch_normalization_245_4738655batch_normalization_245_4738657batch_normalization_245_4738659*
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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_473847921
/batch_normalization_245/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall8batch_normalization_245/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_47380252"
 max_pooling2d_53/PartitionedCall?
"conv2d_314/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_314_4738663conv2d_314_4738665*
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
G__inference_conv2d_314_layer_call_and_return_conditional_losses_47380382$
"conv2d_314/StatefulPartitionedCall?
/batch_normalization_246/StatefulPartitionedCallStatefulPartitionedCall+conv2d_314/StatefulPartitionedCall:output:0batch_normalization_246_4738668batch_normalization_246_4738670batch_normalization_246_4738672batch_normalization_246_4738674*
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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_473842021
/batch_normalization_246/StatefulPartitionedCall?
"conv2d_315/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_246/StatefulPartitionedCall:output:0conv2d_315_4738677conv2d_315_4738679*
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
G__inference_conv2d_315_layer_call_and_return_conditional_losses_47380822$
"conv2d_315/StatefulPartitionedCall?
/batch_normalization_247/StatefulPartitionedCallStatefulPartitionedCall+conv2d_315/StatefulPartitionedCall:output:0batch_normalization_247_4738682batch_normalization_247_4738684batch_normalization_247_4738686batch_normalization_247_4738688*
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_473836621
/batch_normalization_247/StatefulPartitionedCall?
"conv2d_316/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_247/StatefulPartitionedCall:output:0conv2d_316_4738691conv2d_316_4738693*
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
G__inference_conv2d_316_layer_call_and_return_conditional_losses_47381262$
"conv2d_316/StatefulPartitionedCall?
/batch_normalization_248/StatefulPartitionedCallStatefulPartitionedCall+conv2d_316/StatefulPartitionedCall:output:0batch_normalization_248_4738696batch_normalization_248_4738698batch_normalization_248_4738700batch_normalization_248_4738702*
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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_473831221
/batch_normalization_248/StatefulPartitionedCall?
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_248/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_47381632"
 max_pooling2d_54/PartitionedCall?
flatten_24/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
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
G__inference_flatten_24_layer_call_and_return_conditional_losses_47381712
flatten_24/PartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall#flatten_24/PartitionedCall:output:0dense_52_4738707dense_52_4738709*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_47381842"
 dense_52/StatefulPartitionedCall?
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_244/StatefulPartitionedCall0^batch_normalization_245/StatefulPartitionedCall0^batch_normalization_246/StatefulPartitionedCall0^batch_normalization_247/StatefulPartitionedCall0^batch_normalization_248/StatefulPartitionedCall#^conv2d_312/StatefulPartitionedCall#^conv2d_313/StatefulPartitionedCall#^conv2d_314/StatefulPartitionedCall#^conv2d_315/StatefulPartitionedCall#^conv2d_316/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_244/StatefulPartitionedCall/batch_normalization_244/StatefulPartitionedCall2b
/batch_normalization_245/StatefulPartitionedCall/batch_normalization_245/StatefulPartitionedCall2b
/batch_normalization_246/StatefulPartitionedCall/batch_normalization_246/StatefulPartitionedCall2b
/batch_normalization_247/StatefulPartitionedCall/batch_normalization_247/StatefulPartitionedCall2b
/batch_normalization_248/StatefulPartitionedCall/batch_normalization_248/StatefulPartitionedCall2H
"conv2d_312/StatefulPartitionedCall"conv2d_312/StatefulPartitionedCall2H
"conv2d_313/StatefulPartitionedCall"conv2d_313/StatefulPartitionedCall2H
"conv2d_314/StatefulPartitionedCall"conv2d_314/StatefulPartitionedCall2H
"conv2d_315/StatefulPartitionedCall"conv2d_315/StatefulPartitionedCall2H
"conv2d_316/StatefulPartitionedCall"conv2d_316/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_52_layer_call_fn_4739634

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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_47379752
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
?
?
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739726

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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739836

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
?
N
2__inference_max_pooling2d_52_layer_call_fn_4739629

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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_47373592
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
?T
?
 __inference__traced_save_4740424
file_prefix0
,savev2_conv2d_312_kernel_read_readvariableop.
*savev2_conv2d_312_bias_read_readvariableop<
8savev2_batch_normalization_244_gamma_read_readvariableop;
7savev2_batch_normalization_244_beta_read_readvariableopB
>savev2_batch_normalization_244_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_244_moving_variance_read_readvariableop0
,savev2_conv2d_313_kernel_read_readvariableop.
*savev2_conv2d_313_bias_read_readvariableop<
8savev2_batch_normalization_245_gamma_read_readvariableop;
7savev2_batch_normalization_245_beta_read_readvariableopB
>savev2_batch_normalization_245_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_245_moving_variance_read_readvariableop0
,savev2_conv2d_314_kernel_read_readvariableop.
*savev2_conv2d_314_bias_read_readvariableop<
8savev2_batch_normalization_246_gamma_read_readvariableop;
7savev2_batch_normalization_246_beta_read_readvariableopB
>savev2_batch_normalization_246_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_246_moving_variance_read_readvariableop0
,savev2_conv2d_315_kernel_read_readvariableop.
*savev2_conv2d_315_bias_read_readvariableop<
8savev2_batch_normalization_247_gamma_read_readvariableop;
7savev2_batch_normalization_247_beta_read_readvariableopB
>savev2_batch_normalization_247_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_247_moving_variance_read_readvariableop0
,savev2_conv2d_316_kernel_read_readvariableop.
*savev2_conv2d_316_bias_read_readvariableop<
8savev2_batch_normalization_248_gamma_read_readvariableop;
7savev2_batch_normalization_248_beta_read_readvariableopB
>savev2_batch_normalization_248_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_248_moving_variance_read_readvariableop.
*savev2_dense_52_kernel_read_readvariableop,
(savev2_dense_52_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_312_kernel_read_readvariableop*savev2_conv2d_312_bias_read_readvariableop8savev2_batch_normalization_244_gamma_read_readvariableop7savev2_batch_normalization_244_beta_read_readvariableop>savev2_batch_normalization_244_moving_mean_read_readvariableopBsavev2_batch_normalization_244_moving_variance_read_readvariableop,savev2_conv2d_313_kernel_read_readvariableop*savev2_conv2d_313_bias_read_readvariableop8savev2_batch_normalization_245_gamma_read_readvariableop7savev2_batch_normalization_245_beta_read_readvariableop>savev2_batch_normalization_245_moving_mean_read_readvariableopBsavev2_batch_normalization_245_moving_variance_read_readvariableop,savev2_conv2d_314_kernel_read_readvariableop*savev2_conv2d_314_bias_read_readvariableop8savev2_batch_normalization_246_gamma_read_readvariableop7savev2_batch_normalization_246_beta_read_readvariableop>savev2_batch_normalization_246_moving_mean_read_readvariableopBsavev2_batch_normalization_246_moving_variance_read_readvariableop,savev2_conv2d_315_kernel_read_readvariableop*savev2_conv2d_315_bias_read_readvariableop8savev2_batch_normalization_247_gamma_read_readvariableop7savev2_batch_normalization_247_beta_read_readvariableop>savev2_batch_normalization_247_moving_mean_read_readvariableopBsavev2_batch_normalization_247_moving_variance_read_readvariableop,savev2_conv2d_316_kernel_read_readvariableop*savev2_conv2d_316_bias_read_readvariableop8savev2_batch_normalization_248_gamma_read_readvariableop7savev2_batch_normalization_248_beta_read_readvariableop>savev2_batch_normalization_248_moving_mean_read_readvariableopBsavev2_batch_normalization_248_moving_variance_read_readvariableop*savev2_dense_52_kernel_read_readvariableop(savev2_dense_52_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
9__inference_batch_normalization_245_layer_call_fn_4739778

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_47384792
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4739980

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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739562

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4737394

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
G__inference_conv2d_314_layer_call_and_return_conditional_losses_4738038

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
9__inference_batch_normalization_247_layer_call_fn_4740073

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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_47381052
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
E__inference_dense_52_layer_call_and_return_conditional_losses_4738184

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
?
?
,__inference_alex_net_8_layer_call_fn_4739401

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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_47381912
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
i
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_4737359

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
H
,__inference_flatten_24_layer_call_fn_4740261

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
G__inference_flatten_24_layer_call_and_return_conditional_losses_47381712
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
?
?
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4738366

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
9__inference_batch_normalization_246_layer_call_fn_4739903

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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_47375422
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
?Y
?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4738932
conv2d_312_input,
conv2d_312_4738852:` 
conv2d_312_4738854:`-
batch_normalization_244_4738857:`-
batch_normalization_244_4738859:`-
batch_normalization_244_4738861:`-
batch_normalization_244_4738863:`-
conv2d_313_4738867:`?!
conv2d_313_4738869:	?.
batch_normalization_245_4738872:	?.
batch_normalization_245_4738874:	?.
batch_normalization_245_4738876:	?.
batch_normalization_245_4738878:	?.
conv2d_314_4738882:??!
conv2d_314_4738884:	?.
batch_normalization_246_4738887:	?.
batch_normalization_246_4738889:	?.
batch_normalization_246_4738891:	?.
batch_normalization_246_4738893:	?.
conv2d_315_4738896:??!
conv2d_315_4738898:	?.
batch_normalization_247_4738901:	?.
batch_normalization_247_4738903:	?.
batch_normalization_247_4738905:	?.
batch_normalization_247_4738907:	?.
conv2d_316_4738910:??!
conv2d_316_4738912:	?.
batch_normalization_248_4738915:	?.
batch_normalization_248_4738917:	?.
batch_normalization_248_4738919:	?.
batch_normalization_248_4738921:	?#
dense_52_4738926:	?(
dense_52_4738928:
identity??/batch_normalization_244/StatefulPartitionedCall?/batch_normalization_245/StatefulPartitionedCall?/batch_normalization_246/StatefulPartitionedCall?/batch_normalization_247/StatefulPartitionedCall?/batch_normalization_248/StatefulPartitionedCall?"conv2d_312/StatefulPartitionedCall?"conv2d_313/StatefulPartitionedCall?"conv2d_314/StatefulPartitionedCall?"conv2d_315/StatefulPartitionedCall?"conv2d_316/StatefulPartitionedCall? dense_52/StatefulPartitionedCall?
"conv2d_312/StatefulPartitionedCallStatefulPartitionedCallconv2d_312_inputconv2d_312_4738852conv2d_312_4738854*
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
G__inference_conv2d_312_layer_call_and_return_conditional_losses_47379382$
"conv2d_312/StatefulPartitionedCall?
/batch_normalization_244/StatefulPartitionedCallStatefulPartitionedCall+conv2d_312/StatefulPartitionedCall:output:0batch_normalization_244_4738857batch_normalization_244_4738859batch_normalization_244_4738861batch_normalization_244_4738863*
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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_473796121
/batch_normalization_244/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall8batch_normalization_244/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_47379752"
 max_pooling2d_52/PartitionedCall?
"conv2d_313/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_313_4738867conv2d_313_4738869*
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
G__inference_conv2d_313_layer_call_and_return_conditional_losses_47379882$
"conv2d_313/StatefulPartitionedCall?
/batch_normalization_245/StatefulPartitionedCallStatefulPartitionedCall+conv2d_313/StatefulPartitionedCall:output:0batch_normalization_245_4738872batch_normalization_245_4738874batch_normalization_245_4738876batch_normalization_245_4738878*
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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_473801121
/batch_normalization_245/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall8batch_normalization_245/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_47380252"
 max_pooling2d_53/PartitionedCall?
"conv2d_314/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_314_4738882conv2d_314_4738884*
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
G__inference_conv2d_314_layer_call_and_return_conditional_losses_47380382$
"conv2d_314/StatefulPartitionedCall?
/batch_normalization_246/StatefulPartitionedCallStatefulPartitionedCall+conv2d_314/StatefulPartitionedCall:output:0batch_normalization_246_4738887batch_normalization_246_4738889batch_normalization_246_4738891batch_normalization_246_4738893*
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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_473806121
/batch_normalization_246/StatefulPartitionedCall?
"conv2d_315/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_246/StatefulPartitionedCall:output:0conv2d_315_4738896conv2d_315_4738898*
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
G__inference_conv2d_315_layer_call_and_return_conditional_losses_47380822$
"conv2d_315/StatefulPartitionedCall?
/batch_normalization_247/StatefulPartitionedCallStatefulPartitionedCall+conv2d_315/StatefulPartitionedCall:output:0batch_normalization_247_4738901batch_normalization_247_4738903batch_normalization_247_4738905batch_normalization_247_4738907*
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_473810521
/batch_normalization_247/StatefulPartitionedCall?
"conv2d_316/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_247/StatefulPartitionedCall:output:0conv2d_316_4738910conv2d_316_4738912*
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
G__inference_conv2d_316_layer_call_and_return_conditional_losses_47381262$
"conv2d_316/StatefulPartitionedCall?
/batch_normalization_248/StatefulPartitionedCallStatefulPartitionedCall+conv2d_316/StatefulPartitionedCall:output:0batch_normalization_248_4738915batch_normalization_248_4738917batch_normalization_248_4738919batch_normalization_248_4738921*
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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_473814921
/batch_normalization_248/StatefulPartitionedCall?
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_248/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_47381632"
 max_pooling2d_54/PartitionedCall?
flatten_24/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
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
G__inference_flatten_24_layer_call_and_return_conditional_losses_47381712
flatten_24/PartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall#flatten_24/PartitionedCall:output:0dense_52_4738926dense_52_4738928*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_47381842"
 dense_52/StatefulPartitionedCall?
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_244/StatefulPartitionedCall0^batch_normalization_245/StatefulPartitionedCall0^batch_normalization_246/StatefulPartitionedCall0^batch_normalization_247/StatefulPartitionedCall0^batch_normalization_248/StatefulPartitionedCall#^conv2d_312/StatefulPartitionedCall#^conv2d_313/StatefulPartitionedCall#^conv2d_314/StatefulPartitionedCall#^conv2d_315/StatefulPartitionedCall#^conv2d_316/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_244/StatefulPartitionedCall/batch_normalization_244/StatefulPartitionedCall2b
/batch_normalization_245/StatefulPartitionedCall/batch_normalization_245/StatefulPartitionedCall2b
/batch_normalization_246/StatefulPartitionedCall/batch_normalization_246/StatefulPartitionedCall2b
/batch_normalization_247/StatefulPartitionedCall/batch_normalization_247/StatefulPartitionedCall2b
/batch_normalization_248/StatefulPartitionedCall/batch_normalization_248/StatefulPartitionedCall2H
"conv2d_312/StatefulPartitionedCall"conv2d_312/StatefulPartitionedCall2H
"conv2d_313/StatefulPartitionedCall"conv2d_313/StatefulPartitionedCall2H
"conv2d_314/StatefulPartitionedCall"conv2d_314/StatefulPartitionedCall2H
"conv2d_315/StatefulPartitionedCall"conv2d_315/StatefulPartitionedCall2H
"conv2d_316/StatefulPartitionedCall"conv2d_316/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_312_input
?
?
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739872

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
N
2__inference_max_pooling2d_54_layer_call_fn_4740245

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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_47379072
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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4737794

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
9__inference_batch_normalization_247_layer_call_fn_4740060

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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_47377122
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
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_4737507

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
G__inference_conv2d_312_layer_call_and_return_conditional_losses_4739481

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
9__inference_batch_normalization_244_layer_call_fn_4739588

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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_47372902
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
,__inference_conv2d_316_layer_call_fn_4740106

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
G__inference_conv2d_316_layer_call_and_return_conditional_losses_47381262
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
?
?
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739544

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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4737838

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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4740016

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
,__inference_conv2d_313_layer_call_fn_4739654

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
G__inference_conv2d_313_layer_call_and_return_conditional_losses_47379882
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4740034

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739708

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
?
G__inference_conv2d_314_layer_call_and_return_conditional_losses_4739809

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
G__inference_conv2d_316_layer_call_and_return_conditional_losses_4740097

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
c
G__inference_flatten_24_layer_call_and_return_conditional_losses_4738171

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
??
?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4739211

inputsC
)conv2d_312_conv2d_readvariableop_resource:`8
*conv2d_312_biasadd_readvariableop_resource:`=
/batch_normalization_244_readvariableop_resource:`?
1batch_normalization_244_readvariableop_1_resource:`N
@batch_normalization_244_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_244_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_313_conv2d_readvariableop_resource:`?9
*conv2d_313_biasadd_readvariableop_resource:	?>
/batch_normalization_245_readvariableop_resource:	?@
1batch_normalization_245_readvariableop_1_resource:	?O
@batch_normalization_245_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_245_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_314_conv2d_readvariableop_resource:??9
*conv2d_314_biasadd_readvariableop_resource:	?>
/batch_normalization_246_readvariableop_resource:	?@
1batch_normalization_246_readvariableop_1_resource:	?O
@batch_normalization_246_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_246_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_315_conv2d_readvariableop_resource:??9
*conv2d_315_biasadd_readvariableop_resource:	?>
/batch_normalization_247_readvariableop_resource:	?@
1batch_normalization_247_readvariableop_1_resource:	?O
@batch_normalization_247_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_247_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_316_conv2d_readvariableop_resource:??9
*conv2d_316_biasadd_readvariableop_resource:	?>
/batch_normalization_248_readvariableop_resource:	?@
1batch_normalization_248_readvariableop_1_resource:	?O
@batch_normalization_248_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_248_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_52_matmul_readvariableop_resource:	?(6
(dense_52_biasadd_readvariableop_resource:
identity??7batch_normalization_244/FusedBatchNormV3/ReadVariableOp?9batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_244/ReadVariableOp?(batch_normalization_244/ReadVariableOp_1?7batch_normalization_245/FusedBatchNormV3/ReadVariableOp?9batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_245/ReadVariableOp?(batch_normalization_245/ReadVariableOp_1?7batch_normalization_246/FusedBatchNormV3/ReadVariableOp?9batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_246/ReadVariableOp?(batch_normalization_246/ReadVariableOp_1?7batch_normalization_247/FusedBatchNormV3/ReadVariableOp?9batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_247/ReadVariableOp?(batch_normalization_247/ReadVariableOp_1?7batch_normalization_248/FusedBatchNormV3/ReadVariableOp?9batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_248/ReadVariableOp?(batch_normalization_248/ReadVariableOp_1?!conv2d_312/BiasAdd/ReadVariableOp? conv2d_312/Conv2D/ReadVariableOp?!conv2d_313/BiasAdd/ReadVariableOp? conv2d_313/Conv2D/ReadVariableOp?!conv2d_314/BiasAdd/ReadVariableOp? conv2d_314/Conv2D/ReadVariableOp?!conv2d_315/BiasAdd/ReadVariableOp? conv2d_315/Conv2D/ReadVariableOp?!conv2d_316/BiasAdd/ReadVariableOp? conv2d_316/Conv2D/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?
 conv2d_312/Conv2D/ReadVariableOpReadVariableOp)conv2d_312_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_312/Conv2D/ReadVariableOp?
conv2d_312/Conv2DConv2Dinputs(conv2d_312/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_312/Conv2D?
!conv2d_312/BiasAdd/ReadVariableOpReadVariableOp*conv2d_312_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_312/BiasAdd/ReadVariableOp?
conv2d_312/BiasAddBiasAddconv2d_312/Conv2D:output:0)conv2d_312/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_312/BiasAdd?
conv2d_312/ReluReluconv2d_312/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_312/Relu?
&batch_normalization_244/ReadVariableOpReadVariableOp/batch_normalization_244_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_244/ReadVariableOp?
(batch_normalization_244/ReadVariableOp_1ReadVariableOp1batch_normalization_244_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_244/ReadVariableOp_1?
7batch_normalization_244/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_244_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_244/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_244_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_244/FusedBatchNormV3FusedBatchNormV3conv2d_312/Relu:activations:0.batch_normalization_244/ReadVariableOp:value:00batch_normalization_244/ReadVariableOp_1:value:0?batch_normalization_244/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_244/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_244/FusedBatchNormV3?
max_pooling2d_52/MaxPoolMaxPool,batch_normalization_244/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_52/MaxPool?
 conv2d_313/Conv2D/ReadVariableOpReadVariableOp)conv2d_313_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_313/Conv2D/ReadVariableOp?
conv2d_313/Conv2DConv2D!max_pooling2d_52/MaxPool:output:0(conv2d_313/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_313/Conv2D?
!conv2d_313/BiasAdd/ReadVariableOpReadVariableOp*conv2d_313_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_313/BiasAdd/ReadVariableOp?
conv2d_313/BiasAddBiasAddconv2d_313/Conv2D:output:0)conv2d_313/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_313/BiasAdd?
conv2d_313/ReluReluconv2d_313/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_313/Relu?
&batch_normalization_245/ReadVariableOpReadVariableOp/batch_normalization_245_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_245/ReadVariableOp?
(batch_normalization_245/ReadVariableOp_1ReadVariableOp1batch_normalization_245_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_245/ReadVariableOp_1?
7batch_normalization_245/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_245_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_245/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_245_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_245/FusedBatchNormV3FusedBatchNormV3conv2d_313/Relu:activations:0.batch_normalization_245/ReadVariableOp:value:00batch_normalization_245/ReadVariableOp_1:value:0?batch_normalization_245/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_245/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_245/FusedBatchNormV3?
max_pooling2d_53/MaxPoolMaxPool,batch_normalization_245/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_53/MaxPool?
 conv2d_314/Conv2D/ReadVariableOpReadVariableOp)conv2d_314_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_314/Conv2D/ReadVariableOp?
conv2d_314/Conv2DConv2D!max_pooling2d_53/MaxPool:output:0(conv2d_314/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_314/Conv2D?
!conv2d_314/BiasAdd/ReadVariableOpReadVariableOp*conv2d_314_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_314/BiasAdd/ReadVariableOp?
conv2d_314/BiasAddBiasAddconv2d_314/Conv2D:output:0)conv2d_314/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_314/BiasAdd?
conv2d_314/ReluReluconv2d_314/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_314/Relu?
&batch_normalization_246/ReadVariableOpReadVariableOp/batch_normalization_246_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_246/ReadVariableOp?
(batch_normalization_246/ReadVariableOp_1ReadVariableOp1batch_normalization_246_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_246/ReadVariableOp_1?
7batch_normalization_246/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_246_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_246/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_246_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_246/FusedBatchNormV3FusedBatchNormV3conv2d_314/Relu:activations:0.batch_normalization_246/ReadVariableOp:value:00batch_normalization_246/ReadVariableOp_1:value:0?batch_normalization_246/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_246/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_246/FusedBatchNormV3?
 conv2d_315/Conv2D/ReadVariableOpReadVariableOp)conv2d_315_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_315/Conv2D/ReadVariableOp?
conv2d_315/Conv2DConv2D,batch_normalization_246/FusedBatchNormV3:y:0(conv2d_315/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_315/Conv2D?
!conv2d_315/BiasAdd/ReadVariableOpReadVariableOp*conv2d_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_315/BiasAdd/ReadVariableOp?
conv2d_315/BiasAddBiasAddconv2d_315/Conv2D:output:0)conv2d_315/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_315/BiasAdd?
conv2d_315/ReluReluconv2d_315/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_315/Relu?
&batch_normalization_247/ReadVariableOpReadVariableOp/batch_normalization_247_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_247/ReadVariableOp?
(batch_normalization_247/ReadVariableOp_1ReadVariableOp1batch_normalization_247_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_247/ReadVariableOp_1?
7batch_normalization_247/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_247_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_247/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_247_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_247/FusedBatchNormV3FusedBatchNormV3conv2d_315/Relu:activations:0.batch_normalization_247/ReadVariableOp:value:00batch_normalization_247/ReadVariableOp_1:value:0?batch_normalization_247/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_247/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_247/FusedBatchNormV3?
 conv2d_316/Conv2D/ReadVariableOpReadVariableOp)conv2d_316_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_316/Conv2D/ReadVariableOp?
conv2d_316/Conv2DConv2D,batch_normalization_247/FusedBatchNormV3:y:0(conv2d_316/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_316/Conv2D?
!conv2d_316/BiasAdd/ReadVariableOpReadVariableOp*conv2d_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_316/BiasAdd/ReadVariableOp?
conv2d_316/BiasAddBiasAddconv2d_316/Conv2D:output:0)conv2d_316/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_316/BiasAdd?
conv2d_316/ReluReluconv2d_316/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_316/Relu?
&batch_normalization_248/ReadVariableOpReadVariableOp/batch_normalization_248_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_248/ReadVariableOp?
(batch_normalization_248/ReadVariableOp_1ReadVariableOp1batch_normalization_248_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_248/ReadVariableOp_1?
7batch_normalization_248/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_248_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_248/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_248_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_248/FusedBatchNormV3FusedBatchNormV3conv2d_316/Relu:activations:0.batch_normalization_248/ReadVariableOp:value:00batch_normalization_248/ReadVariableOp_1:value:0?batch_normalization_248/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_248/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_248/FusedBatchNormV3?
max_pooling2d_54/MaxPoolMaxPool,batch_normalization_248/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_54/MaxPoolu
flatten_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_24/Const?
flatten_24/ReshapeReshape!max_pooling2d_54/MaxPool:output:0flatten_24/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_24/Reshape?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_52/MatMul/ReadVariableOp?
dense_52/MatMulMatMulflatten_24/Reshape:output:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_52/MatMul?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_52/BiasAdd/ReadVariableOp?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_52/BiasAdd|
dense_52/SigmoidSigmoiddense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_52/Sigmoido
IdentityIdentitydense_52/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_244/FusedBatchNormV3/ReadVariableOp:^batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_244/ReadVariableOp)^batch_normalization_244/ReadVariableOp_18^batch_normalization_245/FusedBatchNormV3/ReadVariableOp:^batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_245/ReadVariableOp)^batch_normalization_245/ReadVariableOp_18^batch_normalization_246/FusedBatchNormV3/ReadVariableOp:^batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_246/ReadVariableOp)^batch_normalization_246/ReadVariableOp_18^batch_normalization_247/FusedBatchNormV3/ReadVariableOp:^batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_247/ReadVariableOp)^batch_normalization_247/ReadVariableOp_18^batch_normalization_248/FusedBatchNormV3/ReadVariableOp:^batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_248/ReadVariableOp)^batch_normalization_248/ReadVariableOp_1"^conv2d_312/BiasAdd/ReadVariableOp!^conv2d_312/Conv2D/ReadVariableOp"^conv2d_313/BiasAdd/ReadVariableOp!^conv2d_313/Conv2D/ReadVariableOp"^conv2d_314/BiasAdd/ReadVariableOp!^conv2d_314/Conv2D/ReadVariableOp"^conv2d_315/BiasAdd/ReadVariableOp!^conv2d_315/Conv2D/ReadVariableOp"^conv2d_316/BiasAdd/ReadVariableOp!^conv2d_316/Conv2D/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_244/FusedBatchNormV3/ReadVariableOp7batch_normalization_244/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_244/FusedBatchNormV3/ReadVariableOp_19batch_normalization_244/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_244/ReadVariableOp&batch_normalization_244/ReadVariableOp2T
(batch_normalization_244/ReadVariableOp_1(batch_normalization_244/ReadVariableOp_12r
7batch_normalization_245/FusedBatchNormV3/ReadVariableOp7batch_normalization_245/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_245/FusedBatchNormV3/ReadVariableOp_19batch_normalization_245/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_245/ReadVariableOp&batch_normalization_245/ReadVariableOp2T
(batch_normalization_245/ReadVariableOp_1(batch_normalization_245/ReadVariableOp_12r
7batch_normalization_246/FusedBatchNormV3/ReadVariableOp7batch_normalization_246/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_246/FusedBatchNormV3/ReadVariableOp_19batch_normalization_246/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_246/ReadVariableOp&batch_normalization_246/ReadVariableOp2T
(batch_normalization_246/ReadVariableOp_1(batch_normalization_246/ReadVariableOp_12r
7batch_normalization_247/FusedBatchNormV3/ReadVariableOp7batch_normalization_247/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_247/FusedBatchNormV3/ReadVariableOp_19batch_normalization_247/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_247/ReadVariableOp&batch_normalization_247/ReadVariableOp2T
(batch_normalization_247/ReadVariableOp_1(batch_normalization_247/ReadVariableOp_12r
7batch_normalization_248/FusedBatchNormV3/ReadVariableOp7batch_normalization_248/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_248/FusedBatchNormV3/ReadVariableOp_19batch_normalization_248/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_248/ReadVariableOp&batch_normalization_248/ReadVariableOp2T
(batch_normalization_248/ReadVariableOp_1(batch_normalization_248/ReadVariableOp_12F
!conv2d_312/BiasAdd/ReadVariableOp!conv2d_312/BiasAdd/ReadVariableOp2D
 conv2d_312/Conv2D/ReadVariableOp conv2d_312/Conv2D/ReadVariableOp2F
!conv2d_313/BiasAdd/ReadVariableOp!conv2d_313/BiasAdd/ReadVariableOp2D
 conv2d_313/Conv2D/ReadVariableOp conv2d_313/Conv2D/ReadVariableOp2F
!conv2d_314/BiasAdd/ReadVariableOp!conv2d_314/BiasAdd/ReadVariableOp2D
 conv2d_314/Conv2D/ReadVariableOp conv2d_314/Conv2D/ReadVariableOp2F
!conv2d_315/BiasAdd/ReadVariableOp!conv2d_315/BiasAdd/ReadVariableOp2D
 conv2d_315/Conv2D/ReadVariableOp conv2d_315/Conv2D/ReadVariableOp2F
!conv2d_316/BiasAdd/ReadVariableOp!conv2d_316/BiasAdd/ReadVariableOp2D
 conv2d_316/Conv2D/ReadVariableOp conv2d_316/Conv2D/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_4739783

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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4737290

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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4738538

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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4738149

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
N
2__inference_max_pooling2d_54_layer_call_fn_4740250

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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_47381632
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
9__inference_batch_normalization_245_layer_call_fn_4739765

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_47380112
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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4737961

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
??
?"
"__inference__wrapped_model_4737224
conv2d_312_inputN
4alex_net_8_conv2d_312_conv2d_readvariableop_resource:`C
5alex_net_8_conv2d_312_biasadd_readvariableop_resource:`H
:alex_net_8_batch_normalization_244_readvariableop_resource:`J
<alex_net_8_batch_normalization_244_readvariableop_1_resource:`Y
Kalex_net_8_batch_normalization_244_fusedbatchnormv3_readvariableop_resource:`[
Malex_net_8_batch_normalization_244_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_8_conv2d_313_conv2d_readvariableop_resource:`?D
5alex_net_8_conv2d_313_biasadd_readvariableop_resource:	?I
:alex_net_8_batch_normalization_245_readvariableop_resource:	?K
<alex_net_8_batch_normalization_245_readvariableop_1_resource:	?Z
Kalex_net_8_batch_normalization_245_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_8_batch_normalization_245_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_8_conv2d_314_conv2d_readvariableop_resource:??D
5alex_net_8_conv2d_314_biasadd_readvariableop_resource:	?I
:alex_net_8_batch_normalization_246_readvariableop_resource:	?K
<alex_net_8_batch_normalization_246_readvariableop_1_resource:	?Z
Kalex_net_8_batch_normalization_246_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_8_batch_normalization_246_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_8_conv2d_315_conv2d_readvariableop_resource:??D
5alex_net_8_conv2d_315_biasadd_readvariableop_resource:	?I
:alex_net_8_batch_normalization_247_readvariableop_resource:	?K
<alex_net_8_batch_normalization_247_readvariableop_1_resource:	?Z
Kalex_net_8_batch_normalization_247_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_8_batch_normalization_247_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_8_conv2d_316_conv2d_readvariableop_resource:??D
5alex_net_8_conv2d_316_biasadd_readvariableop_resource:	?I
:alex_net_8_batch_normalization_248_readvariableop_resource:	?K
<alex_net_8_batch_normalization_248_readvariableop_1_resource:	?Z
Kalex_net_8_batch_normalization_248_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_8_batch_normalization_248_fusedbatchnormv3_readvariableop_1_resource:	?E
2alex_net_8_dense_52_matmul_readvariableop_resource:	?(A
3alex_net_8_dense_52_biasadd_readvariableop_resource:
identity??Balex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_244/ReadVariableOp?3alex_net_8/batch_normalization_244/ReadVariableOp_1?Balex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_245/ReadVariableOp?3alex_net_8/batch_normalization_245/ReadVariableOp_1?Balex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_246/ReadVariableOp?3alex_net_8/batch_normalization_246/ReadVariableOp_1?Balex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_247/ReadVariableOp?3alex_net_8/batch_normalization_247/ReadVariableOp_1?Balex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_248/ReadVariableOp?3alex_net_8/batch_normalization_248/ReadVariableOp_1?,alex_net_8/conv2d_312/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_312/Conv2D/ReadVariableOp?,alex_net_8/conv2d_313/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_313/Conv2D/ReadVariableOp?,alex_net_8/conv2d_314/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_314/Conv2D/ReadVariableOp?,alex_net_8/conv2d_315/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_315/Conv2D/ReadVariableOp?,alex_net_8/conv2d_316/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_316/Conv2D/ReadVariableOp?*alex_net_8/dense_52/BiasAdd/ReadVariableOp?)alex_net_8/dense_52/MatMul/ReadVariableOp?
+alex_net_8/conv2d_312/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_312_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_8/conv2d_312/Conv2D/ReadVariableOp?
alex_net_8/conv2d_312/Conv2DConv2Dconv2d_312_input3alex_net_8/conv2d_312/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_8/conv2d_312/Conv2D?
,alex_net_8/conv2d_312/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_312_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_8/conv2d_312/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_312/BiasAddBiasAdd%alex_net_8/conv2d_312/Conv2D:output:04alex_net_8/conv2d_312/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
alex_net_8/conv2d_312/BiasAdd?
alex_net_8/conv2d_312/ReluRelu&alex_net_8/conv2d_312/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_8/conv2d_312/Relu?
1alex_net_8/batch_normalization_244/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_244_readvariableop_resource*
_output_shapes
:`*
dtype023
1alex_net_8/batch_normalization_244/ReadVariableOp?
3alex_net_8/batch_normalization_244/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_244_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3alex_net_8/batch_normalization_244/ReadVariableOp_1?
Balex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_244_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02D
Balex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_244_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02F
Dalex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_244/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_312/Relu:activations:09alex_net_8/batch_normalization_244/ReadVariableOp:value:0;alex_net_8/batch_normalization_244/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_244/FusedBatchNormV3?
#alex_net_8/max_pooling2d_52/MaxPoolMaxPool7alex_net_8/batch_normalization_244/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_8/max_pooling2d_52/MaxPool?
+alex_net_8/conv2d_313/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_313_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02-
+alex_net_8/conv2d_313/Conv2D/ReadVariableOp?
alex_net_8/conv2d_313/Conv2DConv2D,alex_net_8/max_pooling2d_52/MaxPool:output:03alex_net_8/conv2d_313/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_8/conv2d_313/Conv2D?
,alex_net_8/conv2d_313/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_313_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_8/conv2d_313/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_313/BiasAddBiasAdd%alex_net_8/conv2d_313/Conv2D:output:04alex_net_8/conv2d_313/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
alex_net_8/conv2d_313/BiasAdd?
alex_net_8/conv2d_313/ReluRelu&alex_net_8/conv2d_313/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_8/conv2d_313/Relu?
1alex_net_8/batch_normalization_245/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_245_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_8/batch_normalization_245/ReadVariableOp?
3alex_net_8/batch_normalization_245/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_245_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_8/batch_normalization_245/ReadVariableOp_1?
Balex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_245_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_245_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_245/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_313/Relu:activations:09alex_net_8/batch_normalization_245/ReadVariableOp:value:0;alex_net_8/batch_normalization_245/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_245/FusedBatchNormV3?
#alex_net_8/max_pooling2d_53/MaxPoolMaxPool7alex_net_8/batch_normalization_245/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#alex_net_8/max_pooling2d_53/MaxPool?
+alex_net_8/conv2d_314/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_314_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_8/conv2d_314/Conv2D/ReadVariableOp?
alex_net_8/conv2d_314/Conv2DConv2D,alex_net_8/max_pooling2d_53/MaxPool:output:03alex_net_8/conv2d_314/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_8/conv2d_314/Conv2D?
,alex_net_8/conv2d_314/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_314_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_8/conv2d_314/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_314/BiasAddBiasAdd%alex_net_8/conv2d_314/Conv2D:output:04alex_net_8/conv2d_314/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_314/BiasAdd?
alex_net_8/conv2d_314/ReluRelu&alex_net_8/conv2d_314/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_314/Relu?
1alex_net_8/batch_normalization_246/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_246_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_8/batch_normalization_246/ReadVariableOp?
3alex_net_8/batch_normalization_246/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_246_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_8/batch_normalization_246/ReadVariableOp_1?
Balex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_246_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_246_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_246/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_314/Relu:activations:09alex_net_8/batch_normalization_246/ReadVariableOp:value:0;alex_net_8/batch_normalization_246/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_246/FusedBatchNormV3?
+alex_net_8/conv2d_315/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_315_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_8/conv2d_315/Conv2D/ReadVariableOp?
alex_net_8/conv2d_315/Conv2DConv2D7alex_net_8/batch_normalization_246/FusedBatchNormV3:y:03alex_net_8/conv2d_315/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_8/conv2d_315/Conv2D?
,alex_net_8/conv2d_315/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_8/conv2d_315/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_315/BiasAddBiasAdd%alex_net_8/conv2d_315/Conv2D:output:04alex_net_8/conv2d_315/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_315/BiasAdd?
alex_net_8/conv2d_315/ReluRelu&alex_net_8/conv2d_315/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_315/Relu?
1alex_net_8/batch_normalization_247/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_247_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_8/batch_normalization_247/ReadVariableOp?
3alex_net_8/batch_normalization_247/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_247_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_8/batch_normalization_247/ReadVariableOp_1?
Balex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_247_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_247_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_247/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_315/Relu:activations:09alex_net_8/batch_normalization_247/ReadVariableOp:value:0;alex_net_8/batch_normalization_247/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_247/FusedBatchNormV3?
+alex_net_8/conv2d_316/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_316_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_8/conv2d_316/Conv2D/ReadVariableOp?
alex_net_8/conv2d_316/Conv2DConv2D7alex_net_8/batch_normalization_247/FusedBatchNormV3:y:03alex_net_8/conv2d_316/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_8/conv2d_316/Conv2D?
,alex_net_8/conv2d_316/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_8/conv2d_316/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_316/BiasAddBiasAdd%alex_net_8/conv2d_316/Conv2D:output:04alex_net_8/conv2d_316/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_316/BiasAdd?
alex_net_8/conv2d_316/ReluRelu&alex_net_8/conv2d_316/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_316/Relu?
1alex_net_8/batch_normalization_248/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_248_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_8/batch_normalization_248/ReadVariableOp?
3alex_net_8/batch_normalization_248/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_248_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_8/batch_normalization_248/ReadVariableOp_1?
Balex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_248_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_248_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_248/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_316/Relu:activations:09alex_net_8/batch_normalization_248/ReadVariableOp:value:0;alex_net_8/batch_normalization_248/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_248/FusedBatchNormV3?
#alex_net_8/max_pooling2d_54/MaxPoolMaxPool7alex_net_8/batch_normalization_248/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2%
#alex_net_8/max_pooling2d_54/MaxPool?
alex_net_8/flatten_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_8/flatten_24/Const?
alex_net_8/flatten_24/ReshapeReshape,alex_net_8/max_pooling2d_54/MaxPool:output:0$alex_net_8/flatten_24/Const:output:0*
T0*(
_output_shapes
:??????????(2
alex_net_8/flatten_24/Reshape?
)alex_net_8/dense_52/MatMul/ReadVariableOpReadVariableOp2alex_net_8_dense_52_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02+
)alex_net_8/dense_52/MatMul/ReadVariableOp?
alex_net_8/dense_52/MatMulMatMul&alex_net_8/flatten_24/Reshape:output:01alex_net_8/dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_8/dense_52/MatMul?
*alex_net_8/dense_52/BiasAdd/ReadVariableOpReadVariableOp3alex_net_8_dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_8/dense_52/BiasAdd/ReadVariableOp?
alex_net_8/dense_52/BiasAddBiasAdd$alex_net_8/dense_52/MatMul:product:02alex_net_8/dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_8/dense_52/BiasAdd?
alex_net_8/dense_52/SigmoidSigmoid$alex_net_8/dense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_8/dense_52/Sigmoidz
IdentityIdentityalex_net_8/dense_52/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpC^alex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_244/ReadVariableOp4^alex_net_8/batch_normalization_244/ReadVariableOp_1C^alex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_245/ReadVariableOp4^alex_net_8/batch_normalization_245/ReadVariableOp_1C^alex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_246/ReadVariableOp4^alex_net_8/batch_normalization_246/ReadVariableOp_1C^alex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_247/ReadVariableOp4^alex_net_8/batch_normalization_247/ReadVariableOp_1C^alex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_248/ReadVariableOp4^alex_net_8/batch_normalization_248/ReadVariableOp_1-^alex_net_8/conv2d_312/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_312/Conv2D/ReadVariableOp-^alex_net_8/conv2d_313/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_313/Conv2D/ReadVariableOp-^alex_net_8/conv2d_314/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_314/Conv2D/ReadVariableOp-^alex_net_8/conv2d_315/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_315/Conv2D/ReadVariableOp-^alex_net_8/conv2d_316/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_316/Conv2D/ReadVariableOp+^alex_net_8/dense_52/BiasAdd/ReadVariableOp*^alex_net_8/dense_52/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Balex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_244/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_244/ReadVariableOp1alex_net_8/batch_normalization_244/ReadVariableOp2j
3alex_net_8/batch_normalization_244/ReadVariableOp_13alex_net_8/batch_normalization_244/ReadVariableOp_12?
Balex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_245/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_245/ReadVariableOp1alex_net_8/batch_normalization_245/ReadVariableOp2j
3alex_net_8/batch_normalization_245/ReadVariableOp_13alex_net_8/batch_normalization_245/ReadVariableOp_12?
Balex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_246/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_246/ReadVariableOp1alex_net_8/batch_normalization_246/ReadVariableOp2j
3alex_net_8/batch_normalization_246/ReadVariableOp_13alex_net_8/batch_normalization_246/ReadVariableOp_12?
Balex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_247/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_247/ReadVariableOp1alex_net_8/batch_normalization_247/ReadVariableOp2j
3alex_net_8/batch_normalization_247/ReadVariableOp_13alex_net_8/batch_normalization_247/ReadVariableOp_12?
Balex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_248/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_248/ReadVariableOp1alex_net_8/batch_normalization_248/ReadVariableOp2j
3alex_net_8/batch_normalization_248/ReadVariableOp_13alex_net_8/batch_normalization_248/ReadVariableOp_12\
,alex_net_8/conv2d_312/BiasAdd/ReadVariableOp,alex_net_8/conv2d_312/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_312/Conv2D/ReadVariableOp+alex_net_8/conv2d_312/Conv2D/ReadVariableOp2\
,alex_net_8/conv2d_313/BiasAdd/ReadVariableOp,alex_net_8/conv2d_313/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_313/Conv2D/ReadVariableOp+alex_net_8/conv2d_313/Conv2D/ReadVariableOp2\
,alex_net_8/conv2d_314/BiasAdd/ReadVariableOp,alex_net_8/conv2d_314/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_314/Conv2D/ReadVariableOp+alex_net_8/conv2d_314/Conv2D/ReadVariableOp2\
,alex_net_8/conv2d_315/BiasAdd/ReadVariableOp,alex_net_8/conv2d_315/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_315/Conv2D/ReadVariableOp+alex_net_8/conv2d_315/Conv2D/ReadVariableOp2\
,alex_net_8/conv2d_316/BiasAdd/ReadVariableOp,alex_net_8/conv2d_316/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_316/Conv2D/ReadVariableOp+alex_net_8/conv2d_316/Conv2D/ReadVariableOp2X
*alex_net_8/dense_52/BiasAdd/ReadVariableOp*alex_net_8/dense_52/BiasAdd/ReadVariableOp2V
)alex_net_8/dense_52/MatMul/ReadVariableOp)alex_net_8/dense_52/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_312_input
?
?
%__inference_signature_wrapper_4739090
conv2d_312_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_312_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_47372242
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
_user_specified_nameconv2d_312_input
?
?
G__inference_conv2d_315_layer_call_and_return_conditional_losses_4739953

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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739890

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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4738420

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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740160

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
?
?
,__inference_conv2d_315_layer_call_fn_4739962

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
G__inference_conv2d_315_layer_call_and_return_conditional_losses_47380822
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
?
?
9__inference_batch_normalization_244_layer_call_fn_4739614

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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_47385382
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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739526

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4738479

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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739508

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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4738105

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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_4740240

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4737438

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
#__inference__traced_restore_4740554
file_prefix<
"assignvariableop_conv2d_312_kernel:`0
"assignvariableop_1_conv2d_312_bias:`>
0assignvariableop_2_batch_normalization_244_gamma:`=
/assignvariableop_3_batch_normalization_244_beta:`D
6assignvariableop_4_batch_normalization_244_moving_mean:`H
:assignvariableop_5_batch_normalization_244_moving_variance:`?
$assignvariableop_6_conv2d_313_kernel:`?1
"assignvariableop_7_conv2d_313_bias:	??
0assignvariableop_8_batch_normalization_245_gamma:	?>
/assignvariableop_9_batch_normalization_245_beta:	?F
7assignvariableop_10_batch_normalization_245_moving_mean:	?J
;assignvariableop_11_batch_normalization_245_moving_variance:	?A
%assignvariableop_12_conv2d_314_kernel:??2
#assignvariableop_13_conv2d_314_bias:	?@
1assignvariableop_14_batch_normalization_246_gamma:	??
0assignvariableop_15_batch_normalization_246_beta:	?F
7assignvariableop_16_batch_normalization_246_moving_mean:	?J
;assignvariableop_17_batch_normalization_246_moving_variance:	?A
%assignvariableop_18_conv2d_315_kernel:??2
#assignvariableop_19_conv2d_315_bias:	?@
1assignvariableop_20_batch_normalization_247_gamma:	??
0assignvariableop_21_batch_normalization_247_beta:	?F
7assignvariableop_22_batch_normalization_247_moving_mean:	?J
;assignvariableop_23_batch_normalization_247_moving_variance:	?A
%assignvariableop_24_conv2d_316_kernel:??2
#assignvariableop_25_conv2d_316_bias:	?@
1assignvariableop_26_batch_normalization_248_gamma:	??
0assignvariableop_27_batch_normalization_248_beta:	?F
7assignvariableop_28_batch_normalization_248_moving_mean:	?J
;assignvariableop_29_batch_normalization_248_moving_variance:	?6
#assignvariableop_30_dense_52_kernel:	?(/
!assignvariableop_31_dense_52_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_312_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_312_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_244_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_244_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_244_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_244_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_313_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_313_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_245_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_245_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_245_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_245_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_314_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_314_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_246_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_246_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_246_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_246_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_315_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_315_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_247_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_247_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_247_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_247_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_316_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_316_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_248_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_248_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_248_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_248_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_52_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_52_biasIdentity_31:output:0"/device:CPU:0*
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4737712

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
9__inference_batch_normalization_248_layer_call_fn_4740204

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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_47378382
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
,__inference_conv2d_312_layer_call_fn_4739490

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
G__inference_conv2d_312_layer_call_and_return_conditional_losses_47379382
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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4737246

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
,__inference_alex_net_8_layer_call_fn_4738849
conv2d_312_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_312_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_47387132
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
_user_specified_nameconv2d_312_input
?Y
?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4739015
conv2d_312_input,
conv2d_312_4738935:` 
conv2d_312_4738937:`-
batch_normalization_244_4738940:`-
batch_normalization_244_4738942:`-
batch_normalization_244_4738944:`-
batch_normalization_244_4738946:`-
conv2d_313_4738950:`?!
conv2d_313_4738952:	?.
batch_normalization_245_4738955:	?.
batch_normalization_245_4738957:	?.
batch_normalization_245_4738959:	?.
batch_normalization_245_4738961:	?.
conv2d_314_4738965:??!
conv2d_314_4738967:	?.
batch_normalization_246_4738970:	?.
batch_normalization_246_4738972:	?.
batch_normalization_246_4738974:	?.
batch_normalization_246_4738976:	?.
conv2d_315_4738979:??!
conv2d_315_4738981:	?.
batch_normalization_247_4738984:	?.
batch_normalization_247_4738986:	?.
batch_normalization_247_4738988:	?.
batch_normalization_247_4738990:	?.
conv2d_316_4738993:??!
conv2d_316_4738995:	?.
batch_normalization_248_4738998:	?.
batch_normalization_248_4739000:	?.
batch_normalization_248_4739002:	?.
batch_normalization_248_4739004:	?#
dense_52_4739009:	?(
dense_52_4739011:
identity??/batch_normalization_244/StatefulPartitionedCall?/batch_normalization_245/StatefulPartitionedCall?/batch_normalization_246/StatefulPartitionedCall?/batch_normalization_247/StatefulPartitionedCall?/batch_normalization_248/StatefulPartitionedCall?"conv2d_312/StatefulPartitionedCall?"conv2d_313/StatefulPartitionedCall?"conv2d_314/StatefulPartitionedCall?"conv2d_315/StatefulPartitionedCall?"conv2d_316/StatefulPartitionedCall? dense_52/StatefulPartitionedCall?
"conv2d_312/StatefulPartitionedCallStatefulPartitionedCallconv2d_312_inputconv2d_312_4738935conv2d_312_4738937*
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
G__inference_conv2d_312_layer_call_and_return_conditional_losses_47379382$
"conv2d_312/StatefulPartitionedCall?
/batch_normalization_244/StatefulPartitionedCallStatefulPartitionedCall+conv2d_312/StatefulPartitionedCall:output:0batch_normalization_244_4738940batch_normalization_244_4738942batch_normalization_244_4738944batch_normalization_244_4738946*
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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_473853821
/batch_normalization_244/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall8batch_normalization_244/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_47379752"
 max_pooling2d_52/PartitionedCall?
"conv2d_313/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_313_4738950conv2d_313_4738952*
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
G__inference_conv2d_313_layer_call_and_return_conditional_losses_47379882$
"conv2d_313/StatefulPartitionedCall?
/batch_normalization_245/StatefulPartitionedCallStatefulPartitionedCall+conv2d_313/StatefulPartitionedCall:output:0batch_normalization_245_4738955batch_normalization_245_4738957batch_normalization_245_4738959batch_normalization_245_4738961*
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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_473847921
/batch_normalization_245/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall8batch_normalization_245/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_47380252"
 max_pooling2d_53/PartitionedCall?
"conv2d_314/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_314_4738965conv2d_314_4738967*
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
G__inference_conv2d_314_layer_call_and_return_conditional_losses_47380382$
"conv2d_314/StatefulPartitionedCall?
/batch_normalization_246/StatefulPartitionedCallStatefulPartitionedCall+conv2d_314/StatefulPartitionedCall:output:0batch_normalization_246_4738970batch_normalization_246_4738972batch_normalization_246_4738974batch_normalization_246_4738976*
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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_473842021
/batch_normalization_246/StatefulPartitionedCall?
"conv2d_315/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_246/StatefulPartitionedCall:output:0conv2d_315_4738979conv2d_315_4738981*
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
G__inference_conv2d_315_layer_call_and_return_conditional_losses_47380822$
"conv2d_315/StatefulPartitionedCall?
/batch_normalization_247/StatefulPartitionedCallStatefulPartitionedCall+conv2d_315/StatefulPartitionedCall:output:0batch_normalization_247_4738984batch_normalization_247_4738986batch_normalization_247_4738988batch_normalization_247_4738990*
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_473836621
/batch_normalization_247/StatefulPartitionedCall?
"conv2d_316/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_247/StatefulPartitionedCall:output:0conv2d_316_4738993conv2d_316_4738995*
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
G__inference_conv2d_316_layer_call_and_return_conditional_losses_47381262$
"conv2d_316/StatefulPartitionedCall?
/batch_normalization_248/StatefulPartitionedCallStatefulPartitionedCall+conv2d_316/StatefulPartitionedCall:output:0batch_normalization_248_4738998batch_normalization_248_4739000batch_normalization_248_4739002batch_normalization_248_4739004*
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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_473831221
/batch_normalization_248/StatefulPartitionedCall?
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_248/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_47381632"
 max_pooling2d_54/PartitionedCall?
flatten_24/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
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
G__inference_flatten_24_layer_call_and_return_conditional_losses_47381712
flatten_24/PartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall#flatten_24/PartitionedCall:output:0dense_52_4739009dense_52_4739011*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_47381842"
 dense_52/StatefulPartitionedCall?
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_244/StatefulPartitionedCall0^batch_normalization_245/StatefulPartitionedCall0^batch_normalization_246/StatefulPartitionedCall0^batch_normalization_247/StatefulPartitionedCall0^batch_normalization_248/StatefulPartitionedCall#^conv2d_312/StatefulPartitionedCall#^conv2d_313/StatefulPartitionedCall#^conv2d_314/StatefulPartitionedCall#^conv2d_315/StatefulPartitionedCall#^conv2d_316/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_244/StatefulPartitionedCall/batch_normalization_244/StatefulPartitionedCall2b
/batch_normalization_245/StatefulPartitionedCall/batch_normalization_245/StatefulPartitionedCall2b
/batch_normalization_246/StatefulPartitionedCall/batch_normalization_246/StatefulPartitionedCall2b
/batch_normalization_247/StatefulPartitionedCall/batch_normalization_247/StatefulPartitionedCall2b
/batch_normalization_248/StatefulPartitionedCall/batch_normalization_248/StatefulPartitionedCall2H
"conv2d_312/StatefulPartitionedCall"conv2d_312/StatefulPartitionedCall2H
"conv2d_313/StatefulPartitionedCall"conv2d_313/StatefulPartitionedCall2H
"conv2d_314/StatefulPartitionedCall"conv2d_314/StatefulPartitionedCall2H
"conv2d_315/StatefulPartitionedCall"conv2d_315/StatefulPartitionedCall2H
"conv2d_316/StatefulPartitionedCall"conv2d_316/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_312_input
?	
?
9__inference_batch_normalization_248_layer_call_fn_4740191

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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_47377942
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
G__inference_conv2d_312_layer_call_and_return_conditional_losses_4737938

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
9__inference_batch_normalization_246_layer_call_fn_4739942

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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_47384202
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4739998

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
9__inference_batch_normalization_247_layer_call_fn_4740086

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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_47383662
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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739854

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
G__inference_flatten_24_layer_call_and_return_conditional_losses_4740256

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
9__inference_batch_normalization_244_layer_call_fn_4739601

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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_47379612
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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_4738163

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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4737586

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
,__inference_alex_net_8_layer_call_fn_4738258
conv2d_312_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_312_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_47381912
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
_user_specified_nameconv2d_312_input
?
?
E__inference_dense_52_layer_call_and_return_conditional_losses_4740272

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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4738061

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739690

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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_4737907

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
9__inference_batch_normalization_245_layer_call_fn_4739739

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_47373942
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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_4739624

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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_4737975

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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4739332

inputsC
)conv2d_312_conv2d_readvariableop_resource:`8
*conv2d_312_biasadd_readvariableop_resource:`=
/batch_normalization_244_readvariableop_resource:`?
1batch_normalization_244_readvariableop_1_resource:`N
@batch_normalization_244_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_244_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_313_conv2d_readvariableop_resource:`?9
*conv2d_313_biasadd_readvariableop_resource:	?>
/batch_normalization_245_readvariableop_resource:	?@
1batch_normalization_245_readvariableop_1_resource:	?O
@batch_normalization_245_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_245_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_314_conv2d_readvariableop_resource:??9
*conv2d_314_biasadd_readvariableop_resource:	?>
/batch_normalization_246_readvariableop_resource:	?@
1batch_normalization_246_readvariableop_1_resource:	?O
@batch_normalization_246_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_246_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_315_conv2d_readvariableop_resource:??9
*conv2d_315_biasadd_readvariableop_resource:	?>
/batch_normalization_247_readvariableop_resource:	?@
1batch_normalization_247_readvariableop_1_resource:	?O
@batch_normalization_247_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_247_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_316_conv2d_readvariableop_resource:??9
*conv2d_316_biasadd_readvariableop_resource:	?>
/batch_normalization_248_readvariableop_resource:	?@
1batch_normalization_248_readvariableop_1_resource:	?O
@batch_normalization_248_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_248_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_52_matmul_readvariableop_resource:	?(6
(dense_52_biasadd_readvariableop_resource:
identity??&batch_normalization_244/AssignNewValue?(batch_normalization_244/AssignNewValue_1?7batch_normalization_244/FusedBatchNormV3/ReadVariableOp?9batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_244/ReadVariableOp?(batch_normalization_244/ReadVariableOp_1?&batch_normalization_245/AssignNewValue?(batch_normalization_245/AssignNewValue_1?7batch_normalization_245/FusedBatchNormV3/ReadVariableOp?9batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_245/ReadVariableOp?(batch_normalization_245/ReadVariableOp_1?&batch_normalization_246/AssignNewValue?(batch_normalization_246/AssignNewValue_1?7batch_normalization_246/FusedBatchNormV3/ReadVariableOp?9batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_246/ReadVariableOp?(batch_normalization_246/ReadVariableOp_1?&batch_normalization_247/AssignNewValue?(batch_normalization_247/AssignNewValue_1?7batch_normalization_247/FusedBatchNormV3/ReadVariableOp?9batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_247/ReadVariableOp?(batch_normalization_247/ReadVariableOp_1?&batch_normalization_248/AssignNewValue?(batch_normalization_248/AssignNewValue_1?7batch_normalization_248/FusedBatchNormV3/ReadVariableOp?9batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_248/ReadVariableOp?(batch_normalization_248/ReadVariableOp_1?!conv2d_312/BiasAdd/ReadVariableOp? conv2d_312/Conv2D/ReadVariableOp?!conv2d_313/BiasAdd/ReadVariableOp? conv2d_313/Conv2D/ReadVariableOp?!conv2d_314/BiasAdd/ReadVariableOp? conv2d_314/Conv2D/ReadVariableOp?!conv2d_315/BiasAdd/ReadVariableOp? conv2d_315/Conv2D/ReadVariableOp?!conv2d_316/BiasAdd/ReadVariableOp? conv2d_316/Conv2D/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?
 conv2d_312/Conv2D/ReadVariableOpReadVariableOp)conv2d_312_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_312/Conv2D/ReadVariableOp?
conv2d_312/Conv2DConv2Dinputs(conv2d_312/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_312/Conv2D?
!conv2d_312/BiasAdd/ReadVariableOpReadVariableOp*conv2d_312_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_312/BiasAdd/ReadVariableOp?
conv2d_312/BiasAddBiasAddconv2d_312/Conv2D:output:0)conv2d_312/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_312/BiasAdd?
conv2d_312/ReluReluconv2d_312/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_312/Relu?
&batch_normalization_244/ReadVariableOpReadVariableOp/batch_normalization_244_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_244/ReadVariableOp?
(batch_normalization_244/ReadVariableOp_1ReadVariableOp1batch_normalization_244_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_244/ReadVariableOp_1?
7batch_normalization_244/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_244_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_244/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_244_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_244/FusedBatchNormV3FusedBatchNormV3conv2d_312/Relu:activations:0.batch_normalization_244/ReadVariableOp:value:00batch_normalization_244/ReadVariableOp_1:value:0?batch_normalization_244/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_244/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_244/FusedBatchNormV3?
&batch_normalization_244/AssignNewValueAssignVariableOp@batch_normalization_244_fusedbatchnormv3_readvariableop_resource5batch_normalization_244/FusedBatchNormV3:batch_mean:08^batch_normalization_244/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_244/AssignNewValue?
(batch_normalization_244/AssignNewValue_1AssignVariableOpBbatch_normalization_244_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_244/FusedBatchNormV3:batch_variance:0:^batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_244/AssignNewValue_1?
max_pooling2d_52/MaxPoolMaxPool,batch_normalization_244/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_52/MaxPool?
 conv2d_313/Conv2D/ReadVariableOpReadVariableOp)conv2d_313_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_313/Conv2D/ReadVariableOp?
conv2d_313/Conv2DConv2D!max_pooling2d_52/MaxPool:output:0(conv2d_313/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_313/Conv2D?
!conv2d_313/BiasAdd/ReadVariableOpReadVariableOp*conv2d_313_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_313/BiasAdd/ReadVariableOp?
conv2d_313/BiasAddBiasAddconv2d_313/Conv2D:output:0)conv2d_313/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_313/BiasAdd?
conv2d_313/ReluReluconv2d_313/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_313/Relu?
&batch_normalization_245/ReadVariableOpReadVariableOp/batch_normalization_245_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_245/ReadVariableOp?
(batch_normalization_245/ReadVariableOp_1ReadVariableOp1batch_normalization_245_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_245/ReadVariableOp_1?
7batch_normalization_245/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_245_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_245/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_245_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_245/FusedBatchNormV3FusedBatchNormV3conv2d_313/Relu:activations:0.batch_normalization_245/ReadVariableOp:value:00batch_normalization_245/ReadVariableOp_1:value:0?batch_normalization_245/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_245/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_245/FusedBatchNormV3?
&batch_normalization_245/AssignNewValueAssignVariableOp@batch_normalization_245_fusedbatchnormv3_readvariableop_resource5batch_normalization_245/FusedBatchNormV3:batch_mean:08^batch_normalization_245/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_245/AssignNewValue?
(batch_normalization_245/AssignNewValue_1AssignVariableOpBbatch_normalization_245_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_245/FusedBatchNormV3:batch_variance:0:^batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_245/AssignNewValue_1?
max_pooling2d_53/MaxPoolMaxPool,batch_normalization_245/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_53/MaxPool?
 conv2d_314/Conv2D/ReadVariableOpReadVariableOp)conv2d_314_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_314/Conv2D/ReadVariableOp?
conv2d_314/Conv2DConv2D!max_pooling2d_53/MaxPool:output:0(conv2d_314/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_314/Conv2D?
!conv2d_314/BiasAdd/ReadVariableOpReadVariableOp*conv2d_314_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_314/BiasAdd/ReadVariableOp?
conv2d_314/BiasAddBiasAddconv2d_314/Conv2D:output:0)conv2d_314/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_314/BiasAdd?
conv2d_314/ReluReluconv2d_314/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_314/Relu?
&batch_normalization_246/ReadVariableOpReadVariableOp/batch_normalization_246_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_246/ReadVariableOp?
(batch_normalization_246/ReadVariableOp_1ReadVariableOp1batch_normalization_246_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_246/ReadVariableOp_1?
7batch_normalization_246/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_246_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_246/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_246_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_246/FusedBatchNormV3FusedBatchNormV3conv2d_314/Relu:activations:0.batch_normalization_246/ReadVariableOp:value:00batch_normalization_246/ReadVariableOp_1:value:0?batch_normalization_246/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_246/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_246/FusedBatchNormV3?
&batch_normalization_246/AssignNewValueAssignVariableOp@batch_normalization_246_fusedbatchnormv3_readvariableop_resource5batch_normalization_246/FusedBatchNormV3:batch_mean:08^batch_normalization_246/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_246/AssignNewValue?
(batch_normalization_246/AssignNewValue_1AssignVariableOpBbatch_normalization_246_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_246/FusedBatchNormV3:batch_variance:0:^batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_246/AssignNewValue_1?
 conv2d_315/Conv2D/ReadVariableOpReadVariableOp)conv2d_315_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_315/Conv2D/ReadVariableOp?
conv2d_315/Conv2DConv2D,batch_normalization_246/FusedBatchNormV3:y:0(conv2d_315/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_315/Conv2D?
!conv2d_315/BiasAdd/ReadVariableOpReadVariableOp*conv2d_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_315/BiasAdd/ReadVariableOp?
conv2d_315/BiasAddBiasAddconv2d_315/Conv2D:output:0)conv2d_315/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_315/BiasAdd?
conv2d_315/ReluReluconv2d_315/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_315/Relu?
&batch_normalization_247/ReadVariableOpReadVariableOp/batch_normalization_247_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_247/ReadVariableOp?
(batch_normalization_247/ReadVariableOp_1ReadVariableOp1batch_normalization_247_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_247/ReadVariableOp_1?
7batch_normalization_247/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_247_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_247/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_247_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_247/FusedBatchNormV3FusedBatchNormV3conv2d_315/Relu:activations:0.batch_normalization_247/ReadVariableOp:value:00batch_normalization_247/ReadVariableOp_1:value:0?batch_normalization_247/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_247/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_247/FusedBatchNormV3?
&batch_normalization_247/AssignNewValueAssignVariableOp@batch_normalization_247_fusedbatchnormv3_readvariableop_resource5batch_normalization_247/FusedBatchNormV3:batch_mean:08^batch_normalization_247/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_247/AssignNewValue?
(batch_normalization_247/AssignNewValue_1AssignVariableOpBbatch_normalization_247_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_247/FusedBatchNormV3:batch_variance:0:^batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_247/AssignNewValue_1?
 conv2d_316/Conv2D/ReadVariableOpReadVariableOp)conv2d_316_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_316/Conv2D/ReadVariableOp?
conv2d_316/Conv2DConv2D,batch_normalization_247/FusedBatchNormV3:y:0(conv2d_316/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_316/Conv2D?
!conv2d_316/BiasAdd/ReadVariableOpReadVariableOp*conv2d_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_316/BiasAdd/ReadVariableOp?
conv2d_316/BiasAddBiasAddconv2d_316/Conv2D:output:0)conv2d_316/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_316/BiasAdd?
conv2d_316/ReluReluconv2d_316/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_316/Relu?
&batch_normalization_248/ReadVariableOpReadVariableOp/batch_normalization_248_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_248/ReadVariableOp?
(batch_normalization_248/ReadVariableOp_1ReadVariableOp1batch_normalization_248_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_248/ReadVariableOp_1?
7batch_normalization_248/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_248_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_248/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_248_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_248/FusedBatchNormV3FusedBatchNormV3conv2d_316/Relu:activations:0.batch_normalization_248/ReadVariableOp:value:00batch_normalization_248/ReadVariableOp_1:value:0?batch_normalization_248/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_248/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_248/FusedBatchNormV3?
&batch_normalization_248/AssignNewValueAssignVariableOp@batch_normalization_248_fusedbatchnormv3_readvariableop_resource5batch_normalization_248/FusedBatchNormV3:batch_mean:08^batch_normalization_248/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_248/AssignNewValue?
(batch_normalization_248/AssignNewValue_1AssignVariableOpBbatch_normalization_248_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_248/FusedBatchNormV3:batch_variance:0:^batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_248/AssignNewValue_1?
max_pooling2d_54/MaxPoolMaxPool,batch_normalization_248/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_54/MaxPoolu
flatten_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_24/Const?
flatten_24/ReshapeReshape!max_pooling2d_54/MaxPool:output:0flatten_24/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_24/Reshape?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_52/MatMul/ReadVariableOp?
dense_52/MatMulMatMulflatten_24/Reshape:output:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_52/MatMul?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_52/BiasAdd/ReadVariableOp?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_52/BiasAdd|
dense_52/SigmoidSigmoiddense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_52/Sigmoido
IdentityIdentitydense_52/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_244/AssignNewValue)^batch_normalization_244/AssignNewValue_18^batch_normalization_244/FusedBatchNormV3/ReadVariableOp:^batch_normalization_244/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_244/ReadVariableOp)^batch_normalization_244/ReadVariableOp_1'^batch_normalization_245/AssignNewValue)^batch_normalization_245/AssignNewValue_18^batch_normalization_245/FusedBatchNormV3/ReadVariableOp:^batch_normalization_245/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_245/ReadVariableOp)^batch_normalization_245/ReadVariableOp_1'^batch_normalization_246/AssignNewValue)^batch_normalization_246/AssignNewValue_18^batch_normalization_246/FusedBatchNormV3/ReadVariableOp:^batch_normalization_246/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_246/ReadVariableOp)^batch_normalization_246/ReadVariableOp_1'^batch_normalization_247/AssignNewValue)^batch_normalization_247/AssignNewValue_18^batch_normalization_247/FusedBatchNormV3/ReadVariableOp:^batch_normalization_247/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_247/ReadVariableOp)^batch_normalization_247/ReadVariableOp_1'^batch_normalization_248/AssignNewValue)^batch_normalization_248/AssignNewValue_18^batch_normalization_248/FusedBatchNormV3/ReadVariableOp:^batch_normalization_248/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_248/ReadVariableOp)^batch_normalization_248/ReadVariableOp_1"^conv2d_312/BiasAdd/ReadVariableOp!^conv2d_312/Conv2D/ReadVariableOp"^conv2d_313/BiasAdd/ReadVariableOp!^conv2d_313/Conv2D/ReadVariableOp"^conv2d_314/BiasAdd/ReadVariableOp!^conv2d_314/Conv2D/ReadVariableOp"^conv2d_315/BiasAdd/ReadVariableOp!^conv2d_315/Conv2D/ReadVariableOp"^conv2d_316/BiasAdd/ReadVariableOp!^conv2d_316/Conv2D/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_244/AssignNewValue&batch_normalization_244/AssignNewValue2T
(batch_normalization_244/AssignNewValue_1(batch_normalization_244/AssignNewValue_12r
7batch_normalization_244/FusedBatchNormV3/ReadVariableOp7batch_normalization_244/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_244/FusedBatchNormV3/ReadVariableOp_19batch_normalization_244/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_244/ReadVariableOp&batch_normalization_244/ReadVariableOp2T
(batch_normalization_244/ReadVariableOp_1(batch_normalization_244/ReadVariableOp_12P
&batch_normalization_245/AssignNewValue&batch_normalization_245/AssignNewValue2T
(batch_normalization_245/AssignNewValue_1(batch_normalization_245/AssignNewValue_12r
7batch_normalization_245/FusedBatchNormV3/ReadVariableOp7batch_normalization_245/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_245/FusedBatchNormV3/ReadVariableOp_19batch_normalization_245/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_245/ReadVariableOp&batch_normalization_245/ReadVariableOp2T
(batch_normalization_245/ReadVariableOp_1(batch_normalization_245/ReadVariableOp_12P
&batch_normalization_246/AssignNewValue&batch_normalization_246/AssignNewValue2T
(batch_normalization_246/AssignNewValue_1(batch_normalization_246/AssignNewValue_12r
7batch_normalization_246/FusedBatchNormV3/ReadVariableOp7batch_normalization_246/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_246/FusedBatchNormV3/ReadVariableOp_19batch_normalization_246/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_246/ReadVariableOp&batch_normalization_246/ReadVariableOp2T
(batch_normalization_246/ReadVariableOp_1(batch_normalization_246/ReadVariableOp_12P
&batch_normalization_247/AssignNewValue&batch_normalization_247/AssignNewValue2T
(batch_normalization_247/AssignNewValue_1(batch_normalization_247/AssignNewValue_12r
7batch_normalization_247/FusedBatchNormV3/ReadVariableOp7batch_normalization_247/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_247/FusedBatchNormV3/ReadVariableOp_19batch_normalization_247/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_247/ReadVariableOp&batch_normalization_247/ReadVariableOp2T
(batch_normalization_247/ReadVariableOp_1(batch_normalization_247/ReadVariableOp_12P
&batch_normalization_248/AssignNewValue&batch_normalization_248/AssignNewValue2T
(batch_normalization_248/AssignNewValue_1(batch_normalization_248/AssignNewValue_12r
7batch_normalization_248/FusedBatchNormV3/ReadVariableOp7batch_normalization_248/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_248/FusedBatchNormV3/ReadVariableOp_19batch_normalization_248/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_248/ReadVariableOp&batch_normalization_248/ReadVariableOp2T
(batch_normalization_248/ReadVariableOp_1(batch_normalization_248/ReadVariableOp_12F
!conv2d_312/BiasAdd/ReadVariableOp!conv2d_312/BiasAdd/ReadVariableOp2D
 conv2d_312/Conv2D/ReadVariableOp conv2d_312/Conv2D/ReadVariableOp2F
!conv2d_313/BiasAdd/ReadVariableOp!conv2d_313/BiasAdd/ReadVariableOp2D
 conv2d_313/Conv2D/ReadVariableOp conv2d_313/Conv2D/ReadVariableOp2F
!conv2d_314/BiasAdd/ReadVariableOp!conv2d_314/BiasAdd/ReadVariableOp2D
 conv2d_314/Conv2D/ReadVariableOp conv2d_314/Conv2D/ReadVariableOp2F
!conv2d_315/BiasAdd/ReadVariableOp!conv2d_315/BiasAdd/ReadVariableOp2D
 conv2d_315/Conv2D/ReadVariableOp conv2d_315/Conv2D/ReadVariableOp2F
!conv2d_316/BiasAdd/ReadVariableOp!conv2d_316/BiasAdd/ReadVariableOp2D
 conv2d_316/Conv2D/ReadVariableOp conv2d_316/Conv2D/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_53_layer_call_fn_4739798

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
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_47380252
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
9__inference_batch_normalization_246_layer_call_fn_4739916

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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_47375862
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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739672

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
9__inference_batch_normalization_247_layer_call_fn_4740047

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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_47376682
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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_4739619

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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740142

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
G__inference_conv2d_313_layer_call_and_return_conditional_losses_4739645

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
?X
?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4738191

inputs,
conv2d_312_4737939:` 
conv2d_312_4737941:`-
batch_normalization_244_4737962:`-
batch_normalization_244_4737964:`-
batch_normalization_244_4737966:`-
batch_normalization_244_4737968:`-
conv2d_313_4737989:`?!
conv2d_313_4737991:	?.
batch_normalization_245_4738012:	?.
batch_normalization_245_4738014:	?.
batch_normalization_245_4738016:	?.
batch_normalization_245_4738018:	?.
conv2d_314_4738039:??!
conv2d_314_4738041:	?.
batch_normalization_246_4738062:	?.
batch_normalization_246_4738064:	?.
batch_normalization_246_4738066:	?.
batch_normalization_246_4738068:	?.
conv2d_315_4738083:??!
conv2d_315_4738085:	?.
batch_normalization_247_4738106:	?.
batch_normalization_247_4738108:	?.
batch_normalization_247_4738110:	?.
batch_normalization_247_4738112:	?.
conv2d_316_4738127:??!
conv2d_316_4738129:	?.
batch_normalization_248_4738150:	?.
batch_normalization_248_4738152:	?.
batch_normalization_248_4738154:	?.
batch_normalization_248_4738156:	?#
dense_52_4738185:	?(
dense_52_4738187:
identity??/batch_normalization_244/StatefulPartitionedCall?/batch_normalization_245/StatefulPartitionedCall?/batch_normalization_246/StatefulPartitionedCall?/batch_normalization_247/StatefulPartitionedCall?/batch_normalization_248/StatefulPartitionedCall?"conv2d_312/StatefulPartitionedCall?"conv2d_313/StatefulPartitionedCall?"conv2d_314/StatefulPartitionedCall?"conv2d_315/StatefulPartitionedCall?"conv2d_316/StatefulPartitionedCall? dense_52/StatefulPartitionedCall?
"conv2d_312/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_312_4737939conv2d_312_4737941*
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
G__inference_conv2d_312_layer_call_and_return_conditional_losses_47379382$
"conv2d_312/StatefulPartitionedCall?
/batch_normalization_244/StatefulPartitionedCallStatefulPartitionedCall+conv2d_312/StatefulPartitionedCall:output:0batch_normalization_244_4737962batch_normalization_244_4737964batch_normalization_244_4737966batch_normalization_244_4737968*
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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_473796121
/batch_normalization_244/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall8batch_normalization_244/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_47379752"
 max_pooling2d_52/PartitionedCall?
"conv2d_313/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_313_4737989conv2d_313_4737991*
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
G__inference_conv2d_313_layer_call_and_return_conditional_losses_47379882$
"conv2d_313/StatefulPartitionedCall?
/batch_normalization_245/StatefulPartitionedCallStatefulPartitionedCall+conv2d_313/StatefulPartitionedCall:output:0batch_normalization_245_4738012batch_normalization_245_4738014batch_normalization_245_4738016batch_normalization_245_4738018*
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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_473801121
/batch_normalization_245/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall8batch_normalization_245/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_47380252"
 max_pooling2d_53/PartitionedCall?
"conv2d_314/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_314_4738039conv2d_314_4738041*
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
G__inference_conv2d_314_layer_call_and_return_conditional_losses_47380382$
"conv2d_314/StatefulPartitionedCall?
/batch_normalization_246/StatefulPartitionedCallStatefulPartitionedCall+conv2d_314/StatefulPartitionedCall:output:0batch_normalization_246_4738062batch_normalization_246_4738064batch_normalization_246_4738066batch_normalization_246_4738068*
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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_473806121
/batch_normalization_246/StatefulPartitionedCall?
"conv2d_315/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_246/StatefulPartitionedCall:output:0conv2d_315_4738083conv2d_315_4738085*
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
G__inference_conv2d_315_layer_call_and_return_conditional_losses_47380822$
"conv2d_315/StatefulPartitionedCall?
/batch_normalization_247/StatefulPartitionedCallStatefulPartitionedCall+conv2d_315/StatefulPartitionedCall:output:0batch_normalization_247_4738106batch_normalization_247_4738108batch_normalization_247_4738110batch_normalization_247_4738112*
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_473810521
/batch_normalization_247/StatefulPartitionedCall?
"conv2d_316/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_247/StatefulPartitionedCall:output:0conv2d_316_4738127conv2d_316_4738129*
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
G__inference_conv2d_316_layer_call_and_return_conditional_losses_47381262$
"conv2d_316/StatefulPartitionedCall?
/batch_normalization_248/StatefulPartitionedCallStatefulPartitionedCall+conv2d_316/StatefulPartitionedCall:output:0batch_normalization_248_4738150batch_normalization_248_4738152batch_normalization_248_4738154batch_normalization_248_4738156*
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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_473814921
/batch_normalization_248/StatefulPartitionedCall?
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_248/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_47381632"
 max_pooling2d_54/PartitionedCall?
flatten_24/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
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
G__inference_flatten_24_layer_call_and_return_conditional_losses_47381712
flatten_24/PartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall#flatten_24/PartitionedCall:output:0dense_52_4738185dense_52_4738187*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_47381842"
 dense_52/StatefulPartitionedCall?
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_244/StatefulPartitionedCall0^batch_normalization_245/StatefulPartitionedCall0^batch_normalization_246/StatefulPartitionedCall0^batch_normalization_247/StatefulPartitionedCall0^batch_normalization_248/StatefulPartitionedCall#^conv2d_312/StatefulPartitionedCall#^conv2d_313/StatefulPartitionedCall#^conv2d_314/StatefulPartitionedCall#^conv2d_315/StatefulPartitionedCall#^conv2d_316/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_244/StatefulPartitionedCall/batch_normalization_244/StatefulPartitionedCall2b
/batch_normalization_245/StatefulPartitionedCall/batch_normalization_245/StatefulPartitionedCall2b
/batch_normalization_246/StatefulPartitionedCall/batch_normalization_246/StatefulPartitionedCall2b
/batch_normalization_247/StatefulPartitionedCall/batch_normalization_247/StatefulPartitionedCall2b
/batch_normalization_248/StatefulPartitionedCall/batch_normalization_248/StatefulPartitionedCall2H
"conv2d_312/StatefulPartitionedCall"conv2d_312/StatefulPartitionedCall2H
"conv2d_313/StatefulPartitionedCall"conv2d_313/StatefulPartitionedCall2H
"conv2d_314/StatefulPartitionedCall"conv2d_314/StatefulPartitionedCall2H
"conv2d_315/StatefulPartitionedCall"conv2d_315/StatefulPartitionedCall2H
"conv2d_316/StatefulPartitionedCall"conv2d_316/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4738312

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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740178

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
,__inference_alex_net_8_layer_call_fn_4739470

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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_47387132
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
?
?
*__inference_dense_52_layer_call_fn_4740281

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
E__inference_dense_52_layer_call_and_return_conditional_losses_47381842
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
G__inference_conv2d_313_layer_call_and_return_conditional_losses_4737988

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
i
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_4740235

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
9__inference_batch_normalization_248_layer_call_fn_4740217

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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_47381492
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
9__inference_batch_normalization_248_layer_call_fn_4740230

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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_47383122
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
9__inference_batch_normalization_245_layer_call_fn_4739752

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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_47374382
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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740124

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
G__inference_conv2d_316_layer_call_and_return_conditional_losses_4738126

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
,__inference_conv2d_314_layer_call_fn_4739818

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
G__inference_conv2d_314_layer_call_and_return_conditional_losses_47380382
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
G__inference_conv2d_315_layer_call_and_return_conditional_losses_4738082

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
?
N
2__inference_max_pooling2d_53_layer_call_fn_4739793

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
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_47375072
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
conv2d_312_inputC
"serving_default_conv2d_312_input:0???????????<
dense_520
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
+:)`2conv2d_312/kernel
:`2conv2d_312/bias
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
+:)`2batch_normalization_244/gamma
*:(`2batch_normalization_244/beta
3:1` (2#batch_normalization_244/moving_mean
7:5` (2'batch_normalization_244/moving_variance
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
,:*`?2conv2d_313/kernel
:?2conv2d_313/bias
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
,:*?2batch_normalization_245/gamma
+:)?2batch_normalization_245/beta
4:2? (2#batch_normalization_245/moving_mean
8:6? (2'batch_normalization_245/moving_variance
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
-:+??2conv2d_314/kernel
:?2conv2d_314/bias
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
,:*?2batch_normalization_246/gamma
+:)?2batch_normalization_246/beta
4:2? (2#batch_normalization_246/moving_mean
8:6? (2'batch_normalization_246/moving_variance
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
-:+??2conv2d_315/kernel
:?2conv2d_315/bias
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
,:*?2batch_normalization_247/gamma
+:)?2batch_normalization_247/beta
4:2? (2#batch_normalization_247/moving_mean
8:6? (2'batch_normalization_247/moving_variance
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
-:+??2conv2d_316/kernel
:?2conv2d_316/bias
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
,:*?2batch_normalization_248/gamma
+:)?2batch_normalization_248/beta
4:2? (2#batch_normalization_248/moving_mean
8:6? (2'batch_normalization_248/moving_variance
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
": 	?(2dense_52/kernel
:2dense_52/bias
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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4739211
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4739332
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4738932
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4739015?
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
"__inference__wrapped_model_4737224conv2d_312_input"?
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
,__inference_alex_net_8_layer_call_fn_4738258
,__inference_alex_net_8_layer_call_fn_4739401
,__inference_alex_net_8_layer_call_fn_4739470
,__inference_alex_net_8_layer_call_fn_4738849?
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
G__inference_conv2d_312_layer_call_and_return_conditional_losses_4739481?
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
,__inference_conv2d_312_layer_call_fn_4739490?
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
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739508
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739526
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739544
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739562?
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
9__inference_batch_normalization_244_layer_call_fn_4739575
9__inference_batch_normalization_244_layer_call_fn_4739588
9__inference_batch_normalization_244_layer_call_fn_4739601
9__inference_batch_normalization_244_layer_call_fn_4739614?
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
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_4739619
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_4739624?
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
2__inference_max_pooling2d_52_layer_call_fn_4739629
2__inference_max_pooling2d_52_layer_call_fn_4739634?
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
G__inference_conv2d_313_layer_call_and_return_conditional_losses_4739645?
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
,__inference_conv2d_313_layer_call_fn_4739654?
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
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739672
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739690
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739708
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739726?
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
9__inference_batch_normalization_245_layer_call_fn_4739739
9__inference_batch_normalization_245_layer_call_fn_4739752
9__inference_batch_normalization_245_layer_call_fn_4739765
9__inference_batch_normalization_245_layer_call_fn_4739778?
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
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_4739783
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_4739788?
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
2__inference_max_pooling2d_53_layer_call_fn_4739793
2__inference_max_pooling2d_53_layer_call_fn_4739798?
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
G__inference_conv2d_314_layer_call_and_return_conditional_losses_4739809?
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
,__inference_conv2d_314_layer_call_fn_4739818?
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
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739836
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739854
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739872
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739890?
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
9__inference_batch_normalization_246_layer_call_fn_4739903
9__inference_batch_normalization_246_layer_call_fn_4739916
9__inference_batch_normalization_246_layer_call_fn_4739929
9__inference_batch_normalization_246_layer_call_fn_4739942?
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
G__inference_conv2d_315_layer_call_and_return_conditional_losses_4739953?
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
,__inference_conv2d_315_layer_call_fn_4739962?
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
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4739980
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4739998
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4740016
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4740034?
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
9__inference_batch_normalization_247_layer_call_fn_4740047
9__inference_batch_normalization_247_layer_call_fn_4740060
9__inference_batch_normalization_247_layer_call_fn_4740073
9__inference_batch_normalization_247_layer_call_fn_4740086?
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
G__inference_conv2d_316_layer_call_and_return_conditional_losses_4740097?
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
,__inference_conv2d_316_layer_call_fn_4740106?
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
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740124
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740142
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740160
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740178?
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
9__inference_batch_normalization_248_layer_call_fn_4740191
9__inference_batch_normalization_248_layer_call_fn_4740204
9__inference_batch_normalization_248_layer_call_fn_4740217
9__inference_batch_normalization_248_layer_call_fn_4740230?
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
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_4740235
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_4740240?
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
2__inference_max_pooling2d_54_layer_call_fn_4740245
2__inference_max_pooling2d_54_layer_call_fn_4740250?
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
G__inference_flatten_24_layer_call_and_return_conditional_losses_4740256?
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
,__inference_flatten_24_layer_call_fn_4740261?
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
E__inference_dense_52_layer_call_and_return_conditional_losses_4740272?
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
*__inference_dense_52_layer_call_fn_4740281?
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
%__inference_signature_wrapper_4739090conv2d_312_input"?
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
"__inference__wrapped_model_4737224?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_312_input???????????
? "3?0
.
dense_52"?
dense_52??????????
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4738932?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_312_input???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4739015?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_312_input???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4739211?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_4739332?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
,__inference_alex_net_8_layer_call_fn_4738258?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_312_input???????????
p 

 
? "???????????
,__inference_alex_net_8_layer_call_fn_4738849?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_312_input???????????
p

 
? "???????????
,__inference_alex_net_8_layer_call_fn_4739401  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_alex_net_8_layer_call_fn_4739470  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739508? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739526? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739544r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_244_layer_call_and_return_conditional_losses_4739562r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_244_layer_call_fn_4739575? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_244_layer_call_fn_4739588? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_244_layer_call_fn_4739601e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_244_layer_call_fn_4739614e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739672?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739690?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739708t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_245_layer_call_and_return_conditional_losses_4739726t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_245_layer_call_fn_4739739?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_245_layer_call_fn_4739752?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_245_layer_call_fn_4739765g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_245_layer_call_fn_4739778g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739836?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739854?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739872tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_246_layer_call_and_return_conditional_losses_4739890tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_246_layer_call_fn_4739903?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_246_layer_call_fn_4739916?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_246_layer_call_fn_4739929gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_246_layer_call_fn_4739942gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4739980?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4739998?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4740016tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_247_layer_call_and_return_conditional_losses_4740034tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_247_layer_call_fn_4740047?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_247_layer_call_fn_4740060?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_247_layer_call_fn_4740073gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_247_layer_call_fn_4740086gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740124?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740142?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740160tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_248_layer_call_and_return_conditional_losses_4740178tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_248_layer_call_fn_4740191?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_248_layer_call_fn_4740204?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_248_layer_call_fn_4740217gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_248_layer_call_fn_4740230gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_312_layer_call_and_return_conditional_losses_4739481n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_312_layer_call_fn_4739490a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_313_layer_call_and_return_conditional_losses_4739645m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_313_layer_call_fn_4739654`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_314_layer_call_and_return_conditional_losses_4739809n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_314_layer_call_fn_4739818a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_315_layer_call_and_return_conditional_losses_4739953nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_315_layer_call_fn_4739962aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_316_layer_call_and_return_conditional_losses_4740097nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_316_layer_call_fn_4740106aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_52_layer_call_and_return_conditional_losses_4740272]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_52_layer_call_fn_4740281Pqr0?-
&?#
!?
inputs??????????(
? "???????????
G__inference_flatten_24_layer_call_and_return_conditional_losses_4740256b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
,__inference_flatten_24_layer_call_fn_4740261U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_4739619?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_4739624h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_52_layer_call_fn_4739629?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_52_layer_call_fn_4739634[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_4739783?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_4739788j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_53_layer_call_fn_4739793?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_53_layer_call_fn_4739798]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_4740235?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_4740240j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_54_layer_call_fn_4740245?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_54_layer_call_fn_4740250]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_4739090?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_312_input4?1
conv2d_312_input???????????"3?0
.
dense_52"?
dense_52?????????