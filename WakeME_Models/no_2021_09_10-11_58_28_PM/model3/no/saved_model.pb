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
conv2d_238/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_238/kernel

%conv2d_238/kernel/Read/ReadVariableOpReadVariableOpconv2d_238/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_238/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_238/bias
o
#conv2d_238/bias/Read/ReadVariableOpReadVariableOpconv2d_238/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_193/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_193/gamma
?
1batch_normalization_193/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_193/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_193/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_193/beta
?
0batch_normalization_193/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_193/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_193/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_193/moving_mean
?
7batch_normalization_193/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_193/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_193/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_193/moving_variance
?
;batch_normalization_193/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_193/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_239/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_239/kernel
?
%conv2d_239/kernel/Read/ReadVariableOpReadVariableOpconv2d_239/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_239/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_239/bias
p
#conv2d_239/bias/Read/ReadVariableOpReadVariableOpconv2d_239/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_194/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_194/gamma
?
1batch_normalization_194/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_194/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_194/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_194/beta
?
0batch_normalization_194/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_194/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_194/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_194/moving_mean
?
7batch_normalization_194/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_194/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_194/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_194/moving_variance
?
;batch_normalization_194/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_194/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_240/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_240/kernel
?
%conv2d_240/kernel/Read/ReadVariableOpReadVariableOpconv2d_240/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_240/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_240/bias
p
#conv2d_240/bias/Read/ReadVariableOpReadVariableOpconv2d_240/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_195/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_195/gamma
?
1batch_normalization_195/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_195/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_195/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_195/beta
?
0batch_normalization_195/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_195/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_195/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_195/moving_mean
?
7batch_normalization_195/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_195/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_195/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_195/moving_variance
?
;batch_normalization_195/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_195/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_241/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_241/kernel
?
%conv2d_241/kernel/Read/ReadVariableOpReadVariableOpconv2d_241/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_241/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_241/bias
p
#conv2d_241/bias/Read/ReadVariableOpReadVariableOpconv2d_241/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_196/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_196/gamma
?
1batch_normalization_196/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_196/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_196/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_196/beta
?
0batch_normalization_196/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_196/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_196/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_196/moving_mean
?
7batch_normalization_196/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_196/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_196/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_196/moving_variance
?
;batch_normalization_196/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_196/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_242/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_242/kernel
?
%conv2d_242/kernel/Read/ReadVariableOpReadVariableOpconv2d_242/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_242/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_242/bias
p
#conv2d_242/bias/Read/ReadVariableOpReadVariableOpconv2d_242/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_197/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_197/gamma
?
1batch_normalization_197/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_197/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_197/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_197/beta
?
0batch_normalization_197/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_197/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_197/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_197/moving_mean
?
7batch_normalization_197/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_197/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_197/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_197/moving_variance
?
;batch_normalization_197/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_197/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_35/kernel
t
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes
:	?(*
dtype0
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
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
VARIABLE_VALUEconv2d_238/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_238/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_193/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_193/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_193/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_193/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_239/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_239/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_194/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_194/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_194/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_194/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_240/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_240/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_195/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_195/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_195/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_195/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_241/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_241/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_196/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_196/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_196/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_196/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_242/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_242/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_197/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_197/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_197/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_197/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_35/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_35/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_238_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_238_inputconv2d_238/kernelconv2d_238/biasbatch_normalization_193/gammabatch_normalization_193/beta#batch_normalization_193/moving_mean'batch_normalization_193/moving_varianceconv2d_239/kernelconv2d_239/biasbatch_normalization_194/gammabatch_normalization_194/beta#batch_normalization_194/moving_mean'batch_normalization_194/moving_varianceconv2d_240/kernelconv2d_240/biasbatch_normalization_195/gammabatch_normalization_195/beta#batch_normalization_195/moving_mean'batch_normalization_195/moving_varianceconv2d_241/kernelconv2d_241/biasbatch_normalization_196/gammabatch_normalization_196/beta#batch_normalization_196/moving_mean'batch_normalization_196/moving_varianceconv2d_242/kernelconv2d_242/biasbatch_normalization_197/gammabatch_normalization_197/beta#batch_normalization_197/moving_mean'batch_normalization_197/moving_variancedense_35/kerneldense_35/bias*,
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
%__inference_signature_wrapper_9615241
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_238/kernel/Read/ReadVariableOp#conv2d_238/bias/Read/ReadVariableOp1batch_normalization_193/gamma/Read/ReadVariableOp0batch_normalization_193/beta/Read/ReadVariableOp7batch_normalization_193/moving_mean/Read/ReadVariableOp;batch_normalization_193/moving_variance/Read/ReadVariableOp%conv2d_239/kernel/Read/ReadVariableOp#conv2d_239/bias/Read/ReadVariableOp1batch_normalization_194/gamma/Read/ReadVariableOp0batch_normalization_194/beta/Read/ReadVariableOp7batch_normalization_194/moving_mean/Read/ReadVariableOp;batch_normalization_194/moving_variance/Read/ReadVariableOp%conv2d_240/kernel/Read/ReadVariableOp#conv2d_240/bias/Read/ReadVariableOp1batch_normalization_195/gamma/Read/ReadVariableOp0batch_normalization_195/beta/Read/ReadVariableOp7batch_normalization_195/moving_mean/Read/ReadVariableOp;batch_normalization_195/moving_variance/Read/ReadVariableOp%conv2d_241/kernel/Read/ReadVariableOp#conv2d_241/bias/Read/ReadVariableOp1batch_normalization_196/gamma/Read/ReadVariableOp0batch_normalization_196/beta/Read/ReadVariableOp7batch_normalization_196/moving_mean/Read/ReadVariableOp;batch_normalization_196/moving_variance/Read/ReadVariableOp%conv2d_242/kernel/Read/ReadVariableOp#conv2d_242/bias/Read/ReadVariableOp1batch_normalization_197/gamma/Read/ReadVariableOp0batch_normalization_197/beta/Read/ReadVariableOp7batch_normalization_197/moving_mean/Read/ReadVariableOp;batch_normalization_197/moving_variance/Read/ReadVariableOp#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_9616575
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_238/kernelconv2d_238/biasbatch_normalization_193/gammabatch_normalization_193/beta#batch_normalization_193/moving_mean'batch_normalization_193/moving_varianceconv2d_239/kernelconv2d_239/biasbatch_normalization_194/gammabatch_normalization_194/beta#batch_normalization_194/moving_mean'batch_normalization_194/moving_varianceconv2d_240/kernelconv2d_240/biasbatch_normalization_195/gammabatch_normalization_195/beta#batch_normalization_195/moving_mean'batch_normalization_195/moving_varianceconv2d_241/kernelconv2d_241/biasbatch_normalization_196/gammabatch_normalization_196/beta#batch_normalization_196/moving_mean'batch_normalization_196/moving_varianceconv2d_242/kernelconv2d_242/biasbatch_normalization_197/gammabatch_normalization_197/beta#batch_normalization_197/moving_mean'batch_normalization_197/moving_variancedense_35/kerneldense_35/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_9616705??
?Y
?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615083
conv2d_238_input,
conv2d_238_9615003:` 
conv2d_238_9615005:`-
batch_normalization_193_9615008:`-
batch_normalization_193_9615010:`-
batch_normalization_193_9615012:`-
batch_normalization_193_9615014:`-
conv2d_239_9615018:`?!
conv2d_239_9615020:	?.
batch_normalization_194_9615023:	?.
batch_normalization_194_9615025:	?.
batch_normalization_194_9615027:	?.
batch_normalization_194_9615029:	?.
conv2d_240_9615033:??!
conv2d_240_9615035:	?.
batch_normalization_195_9615038:	?.
batch_normalization_195_9615040:	?.
batch_normalization_195_9615042:	?.
batch_normalization_195_9615044:	?.
conv2d_241_9615047:??!
conv2d_241_9615049:	?.
batch_normalization_196_9615052:	?.
batch_normalization_196_9615054:	?.
batch_normalization_196_9615056:	?.
batch_normalization_196_9615058:	?.
conv2d_242_9615061:??!
conv2d_242_9615063:	?.
batch_normalization_197_9615066:	?.
batch_normalization_197_9615068:	?.
batch_normalization_197_9615070:	?.
batch_normalization_197_9615072:	?#
dense_35_9615077:	?(
dense_35_9615079:
identity??/batch_normalization_193/StatefulPartitionedCall?/batch_normalization_194/StatefulPartitionedCall?/batch_normalization_195/StatefulPartitionedCall?/batch_normalization_196/StatefulPartitionedCall?/batch_normalization_197/StatefulPartitionedCall?"conv2d_238/StatefulPartitionedCall?"conv2d_239/StatefulPartitionedCall?"conv2d_240/StatefulPartitionedCall?"conv2d_241/StatefulPartitionedCall?"conv2d_242/StatefulPartitionedCall? dense_35/StatefulPartitionedCall?
"conv2d_238/StatefulPartitionedCallStatefulPartitionedCallconv2d_238_inputconv2d_238_9615003conv2d_238_9615005*
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
G__inference_conv2d_238_layer_call_and_return_conditional_losses_96140892$
"conv2d_238/StatefulPartitionedCall?
/batch_normalization_193/StatefulPartitionedCallStatefulPartitionedCall+conv2d_238/StatefulPartitionedCall:output:0batch_normalization_193_9615008batch_normalization_193_9615010batch_normalization_193_9615012batch_normalization_193_9615014*
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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_961411221
/batch_normalization_193/StatefulPartitionedCall?
 max_pooling2d_42/PartitionedCallPartitionedCall8batch_normalization_193/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_96141262"
 max_pooling2d_42/PartitionedCall?
"conv2d_239/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_42/PartitionedCall:output:0conv2d_239_9615018conv2d_239_9615020*
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
G__inference_conv2d_239_layer_call_and_return_conditional_losses_96141392$
"conv2d_239/StatefulPartitionedCall?
/batch_normalization_194/StatefulPartitionedCallStatefulPartitionedCall+conv2d_239/StatefulPartitionedCall:output:0batch_normalization_194_9615023batch_normalization_194_9615025batch_normalization_194_9615027batch_normalization_194_9615029*
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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_961416221
/batch_normalization_194/StatefulPartitionedCall?
 max_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_194/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_96141762"
 max_pooling2d_43/PartitionedCall?
"conv2d_240/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_43/PartitionedCall:output:0conv2d_240_9615033conv2d_240_9615035*
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
G__inference_conv2d_240_layer_call_and_return_conditional_losses_96141892$
"conv2d_240/StatefulPartitionedCall?
/batch_normalization_195/StatefulPartitionedCallStatefulPartitionedCall+conv2d_240/StatefulPartitionedCall:output:0batch_normalization_195_9615038batch_normalization_195_9615040batch_normalization_195_9615042batch_normalization_195_9615044*
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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_961421221
/batch_normalization_195/StatefulPartitionedCall?
"conv2d_241/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_195/StatefulPartitionedCall:output:0conv2d_241_9615047conv2d_241_9615049*
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
G__inference_conv2d_241_layer_call_and_return_conditional_losses_96142332$
"conv2d_241/StatefulPartitionedCall?
/batch_normalization_196/StatefulPartitionedCallStatefulPartitionedCall+conv2d_241/StatefulPartitionedCall:output:0batch_normalization_196_9615052batch_normalization_196_9615054batch_normalization_196_9615056batch_normalization_196_9615058*
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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_961425621
/batch_normalization_196/StatefulPartitionedCall?
"conv2d_242/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_196/StatefulPartitionedCall:output:0conv2d_242_9615061conv2d_242_9615063*
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
G__inference_conv2d_242_layer_call_and_return_conditional_losses_96142772$
"conv2d_242/StatefulPartitionedCall?
/batch_normalization_197/StatefulPartitionedCallStatefulPartitionedCall+conv2d_242/StatefulPartitionedCall:output:0batch_normalization_197_9615066batch_normalization_197_9615068batch_normalization_197_9615070batch_normalization_197_9615072*
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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_961430021
/batch_normalization_197/StatefulPartitionedCall?
 max_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_197/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_96143142"
 max_pooling2d_44/PartitionedCall?
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_96143222
flatten_17/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_35_9615077dense_35_9615079*
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
E__inference_dense_35_layer_call_and_return_conditional_losses_96143352"
 dense_35/StatefulPartitionedCall?
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_193/StatefulPartitionedCall0^batch_normalization_194/StatefulPartitionedCall0^batch_normalization_195/StatefulPartitionedCall0^batch_normalization_196/StatefulPartitionedCall0^batch_normalization_197/StatefulPartitionedCall#^conv2d_238/StatefulPartitionedCall#^conv2d_239/StatefulPartitionedCall#^conv2d_240/StatefulPartitionedCall#^conv2d_241/StatefulPartitionedCall#^conv2d_242/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_193/StatefulPartitionedCall/batch_normalization_193/StatefulPartitionedCall2b
/batch_normalization_194/StatefulPartitionedCall/batch_normalization_194/StatefulPartitionedCall2b
/batch_normalization_195/StatefulPartitionedCall/batch_normalization_195/StatefulPartitionedCall2b
/batch_normalization_196/StatefulPartitionedCall/batch_normalization_196/StatefulPartitionedCall2b
/batch_normalization_197/StatefulPartitionedCall/batch_normalization_197/StatefulPartitionedCall2H
"conv2d_238/StatefulPartitionedCall"conv2d_238/StatefulPartitionedCall2H
"conv2d_239/StatefulPartitionedCall"conv2d_239/StatefulPartitionedCall2H
"conv2d_240/StatefulPartitionedCall"conv2d_240/StatefulPartitionedCall2H
"conv2d_241/StatefulPartitionedCall"conv2d_241/StatefulPartitionedCall2H
"conv2d_242/StatefulPartitionedCall"conv2d_242/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_238_input
?	
?
9__inference_batch_normalization_197_layer_call_fn_9616355

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_96139892
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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9616023

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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9613819

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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_9615775

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
?
?
,__inference_alex_net_8_layer_call_fn_9615000
conv2d_238_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_238_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_96148642
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
_user_specified_nameconv2d_238_input
?
i
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_9616391

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
G__inference_conv2d_240_layer_call_and_return_conditional_losses_9615960

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616293

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
H
,__inference_flatten_17_layer_call_fn_9616412

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
G__inference_flatten_17_layer_call_and_return_conditional_losses_96143222
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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9614256

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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9616041

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
G__inference_conv2d_239_layer_call_and_return_conditional_losses_9614139

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
9__inference_batch_normalization_195_layer_call_fn_9616054

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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_96136932
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
9__inference_batch_normalization_197_layer_call_fn_9616368

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_96143002
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_9616407

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
?X
?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9614342

inputs,
conv2d_238_9614090:` 
conv2d_238_9614092:`-
batch_normalization_193_9614113:`-
batch_normalization_193_9614115:`-
batch_normalization_193_9614117:`-
batch_normalization_193_9614119:`-
conv2d_239_9614140:`?!
conv2d_239_9614142:	?.
batch_normalization_194_9614163:	?.
batch_normalization_194_9614165:	?.
batch_normalization_194_9614167:	?.
batch_normalization_194_9614169:	?.
conv2d_240_9614190:??!
conv2d_240_9614192:	?.
batch_normalization_195_9614213:	?.
batch_normalization_195_9614215:	?.
batch_normalization_195_9614217:	?.
batch_normalization_195_9614219:	?.
conv2d_241_9614234:??!
conv2d_241_9614236:	?.
batch_normalization_196_9614257:	?.
batch_normalization_196_9614259:	?.
batch_normalization_196_9614261:	?.
batch_normalization_196_9614263:	?.
conv2d_242_9614278:??!
conv2d_242_9614280:	?.
batch_normalization_197_9614301:	?.
batch_normalization_197_9614303:	?.
batch_normalization_197_9614305:	?.
batch_normalization_197_9614307:	?#
dense_35_9614336:	?(
dense_35_9614338:
identity??/batch_normalization_193/StatefulPartitionedCall?/batch_normalization_194/StatefulPartitionedCall?/batch_normalization_195/StatefulPartitionedCall?/batch_normalization_196/StatefulPartitionedCall?/batch_normalization_197/StatefulPartitionedCall?"conv2d_238/StatefulPartitionedCall?"conv2d_239/StatefulPartitionedCall?"conv2d_240/StatefulPartitionedCall?"conv2d_241/StatefulPartitionedCall?"conv2d_242/StatefulPartitionedCall? dense_35/StatefulPartitionedCall?
"conv2d_238/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_238_9614090conv2d_238_9614092*
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
G__inference_conv2d_238_layer_call_and_return_conditional_losses_96140892$
"conv2d_238/StatefulPartitionedCall?
/batch_normalization_193/StatefulPartitionedCallStatefulPartitionedCall+conv2d_238/StatefulPartitionedCall:output:0batch_normalization_193_9614113batch_normalization_193_9614115batch_normalization_193_9614117batch_normalization_193_9614119*
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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_961411221
/batch_normalization_193/StatefulPartitionedCall?
 max_pooling2d_42/PartitionedCallPartitionedCall8batch_normalization_193/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_96141262"
 max_pooling2d_42/PartitionedCall?
"conv2d_239/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_42/PartitionedCall:output:0conv2d_239_9614140conv2d_239_9614142*
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
G__inference_conv2d_239_layer_call_and_return_conditional_losses_96141392$
"conv2d_239/StatefulPartitionedCall?
/batch_normalization_194/StatefulPartitionedCallStatefulPartitionedCall+conv2d_239/StatefulPartitionedCall:output:0batch_normalization_194_9614163batch_normalization_194_9614165batch_normalization_194_9614167batch_normalization_194_9614169*
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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_961416221
/batch_normalization_194/StatefulPartitionedCall?
 max_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_194/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_96141762"
 max_pooling2d_43/PartitionedCall?
"conv2d_240/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_43/PartitionedCall:output:0conv2d_240_9614190conv2d_240_9614192*
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
G__inference_conv2d_240_layer_call_and_return_conditional_losses_96141892$
"conv2d_240/StatefulPartitionedCall?
/batch_normalization_195/StatefulPartitionedCallStatefulPartitionedCall+conv2d_240/StatefulPartitionedCall:output:0batch_normalization_195_9614213batch_normalization_195_9614215batch_normalization_195_9614217batch_normalization_195_9614219*
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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_961421221
/batch_normalization_195/StatefulPartitionedCall?
"conv2d_241/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_195/StatefulPartitionedCall:output:0conv2d_241_9614234conv2d_241_9614236*
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
G__inference_conv2d_241_layer_call_and_return_conditional_losses_96142332$
"conv2d_241/StatefulPartitionedCall?
/batch_normalization_196/StatefulPartitionedCallStatefulPartitionedCall+conv2d_241/StatefulPartitionedCall:output:0batch_normalization_196_9614257batch_normalization_196_9614259batch_normalization_196_9614261batch_normalization_196_9614263*
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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_961425621
/batch_normalization_196/StatefulPartitionedCall?
"conv2d_242/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_196/StatefulPartitionedCall:output:0conv2d_242_9614278conv2d_242_9614280*
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
G__inference_conv2d_242_layer_call_and_return_conditional_losses_96142772$
"conv2d_242/StatefulPartitionedCall?
/batch_normalization_197/StatefulPartitionedCallStatefulPartitionedCall+conv2d_242/StatefulPartitionedCall:output:0batch_normalization_197_9614301batch_normalization_197_9614303batch_normalization_197_9614305batch_normalization_197_9614307*
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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_961430021
/batch_normalization_197/StatefulPartitionedCall?
 max_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_197/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_96143142"
 max_pooling2d_44/PartitionedCall?
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_96143222
flatten_17/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_35_9614336dense_35_9614338*
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
E__inference_dense_35_layer_call_and_return_conditional_losses_96143352"
 dense_35/StatefulPartitionedCall?
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_193/StatefulPartitionedCall0^batch_normalization_194/StatefulPartitionedCall0^batch_normalization_195/StatefulPartitionedCall0^batch_normalization_196/StatefulPartitionedCall0^batch_normalization_197/StatefulPartitionedCall#^conv2d_238/StatefulPartitionedCall#^conv2d_239/StatefulPartitionedCall#^conv2d_240/StatefulPartitionedCall#^conv2d_241/StatefulPartitionedCall#^conv2d_242/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_193/StatefulPartitionedCall/batch_normalization_193/StatefulPartitionedCall2b
/batch_normalization_194/StatefulPartitionedCall/batch_normalization_194/StatefulPartitionedCall2b
/batch_normalization_195/StatefulPartitionedCall/batch_normalization_195/StatefulPartitionedCall2b
/batch_normalization_196/StatefulPartitionedCall/batch_normalization_196/StatefulPartitionedCall2b
/batch_normalization_197/StatefulPartitionedCall/batch_normalization_197/StatefulPartitionedCall2H
"conv2d_238/StatefulPartitionedCall"conv2d_238/StatefulPartitionedCall2H
"conv2d_239/StatefulPartitionedCall"conv2d_239/StatefulPartitionedCall2H
"conv2d_240/StatefulPartitionedCall"conv2d_240/StatefulPartitionedCall2H
"conv2d_241/StatefulPartitionedCall"conv2d_241/StatefulPartitionedCall2H
"conv2d_242/StatefulPartitionedCall"conv2d_242/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_241_layer_call_fn_9616113

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
G__inference_conv2d_241_layer_call_and_return_conditional_losses_96142332
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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9615987

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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_9614314

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615677

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
?
N
2__inference_max_pooling2d_43_layer_call_fn_9615944

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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_96136582
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
i
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_9615934

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
,__inference_alex_net_8_layer_call_fn_9615552

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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_96143422
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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615166
conv2d_238_input,
conv2d_238_9615086:` 
conv2d_238_9615088:`-
batch_normalization_193_9615091:`-
batch_normalization_193_9615093:`-
batch_normalization_193_9615095:`-
batch_normalization_193_9615097:`-
conv2d_239_9615101:`?!
conv2d_239_9615103:	?.
batch_normalization_194_9615106:	?.
batch_normalization_194_9615108:	?.
batch_normalization_194_9615110:	?.
batch_normalization_194_9615112:	?.
conv2d_240_9615116:??!
conv2d_240_9615118:	?.
batch_normalization_195_9615121:	?.
batch_normalization_195_9615123:	?.
batch_normalization_195_9615125:	?.
batch_normalization_195_9615127:	?.
conv2d_241_9615130:??!
conv2d_241_9615132:	?.
batch_normalization_196_9615135:	?.
batch_normalization_196_9615137:	?.
batch_normalization_196_9615139:	?.
batch_normalization_196_9615141:	?.
conv2d_242_9615144:??!
conv2d_242_9615146:	?.
batch_normalization_197_9615149:	?.
batch_normalization_197_9615151:	?.
batch_normalization_197_9615153:	?.
batch_normalization_197_9615155:	?#
dense_35_9615160:	?(
dense_35_9615162:
identity??/batch_normalization_193/StatefulPartitionedCall?/batch_normalization_194/StatefulPartitionedCall?/batch_normalization_195/StatefulPartitionedCall?/batch_normalization_196/StatefulPartitionedCall?/batch_normalization_197/StatefulPartitionedCall?"conv2d_238/StatefulPartitionedCall?"conv2d_239/StatefulPartitionedCall?"conv2d_240/StatefulPartitionedCall?"conv2d_241/StatefulPartitionedCall?"conv2d_242/StatefulPartitionedCall? dense_35/StatefulPartitionedCall?
"conv2d_238/StatefulPartitionedCallStatefulPartitionedCallconv2d_238_inputconv2d_238_9615086conv2d_238_9615088*
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
G__inference_conv2d_238_layer_call_and_return_conditional_losses_96140892$
"conv2d_238/StatefulPartitionedCall?
/batch_normalization_193/StatefulPartitionedCallStatefulPartitionedCall+conv2d_238/StatefulPartitionedCall:output:0batch_normalization_193_9615091batch_normalization_193_9615093batch_normalization_193_9615095batch_normalization_193_9615097*
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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_961468921
/batch_normalization_193/StatefulPartitionedCall?
 max_pooling2d_42/PartitionedCallPartitionedCall8batch_normalization_193/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_96141262"
 max_pooling2d_42/PartitionedCall?
"conv2d_239/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_42/PartitionedCall:output:0conv2d_239_9615101conv2d_239_9615103*
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
G__inference_conv2d_239_layer_call_and_return_conditional_losses_96141392$
"conv2d_239/StatefulPartitionedCall?
/batch_normalization_194/StatefulPartitionedCallStatefulPartitionedCall+conv2d_239/StatefulPartitionedCall:output:0batch_normalization_194_9615106batch_normalization_194_9615108batch_normalization_194_9615110batch_normalization_194_9615112*
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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_961463021
/batch_normalization_194/StatefulPartitionedCall?
 max_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_194/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_96141762"
 max_pooling2d_43/PartitionedCall?
"conv2d_240/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_43/PartitionedCall:output:0conv2d_240_9615116conv2d_240_9615118*
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
G__inference_conv2d_240_layer_call_and_return_conditional_losses_96141892$
"conv2d_240/StatefulPartitionedCall?
/batch_normalization_195/StatefulPartitionedCallStatefulPartitionedCall+conv2d_240/StatefulPartitionedCall:output:0batch_normalization_195_9615121batch_normalization_195_9615123batch_normalization_195_9615125batch_normalization_195_9615127*
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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_961457121
/batch_normalization_195/StatefulPartitionedCall?
"conv2d_241/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_195/StatefulPartitionedCall:output:0conv2d_241_9615130conv2d_241_9615132*
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
G__inference_conv2d_241_layer_call_and_return_conditional_losses_96142332$
"conv2d_241/StatefulPartitionedCall?
/batch_normalization_196/StatefulPartitionedCallStatefulPartitionedCall+conv2d_241/StatefulPartitionedCall:output:0batch_normalization_196_9615135batch_normalization_196_9615137batch_normalization_196_9615139batch_normalization_196_9615141*
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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_961451721
/batch_normalization_196/StatefulPartitionedCall?
"conv2d_242/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_196/StatefulPartitionedCall:output:0conv2d_242_9615144conv2d_242_9615146*
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
G__inference_conv2d_242_layer_call_and_return_conditional_losses_96142772$
"conv2d_242/StatefulPartitionedCall?
/batch_normalization_197/StatefulPartitionedCallStatefulPartitionedCall+conv2d_242/StatefulPartitionedCall:output:0batch_normalization_197_9615149batch_normalization_197_9615151batch_normalization_197_9615153batch_normalization_197_9615155*
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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_961446321
/batch_normalization_197/StatefulPartitionedCall?
 max_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_197/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_96143142"
 max_pooling2d_44/PartitionedCall?
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_96143222
flatten_17/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_35_9615160dense_35_9615162*
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
E__inference_dense_35_layer_call_and_return_conditional_losses_96143352"
 dense_35/StatefulPartitionedCall?
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_193/StatefulPartitionedCall0^batch_normalization_194/StatefulPartitionedCall0^batch_normalization_195/StatefulPartitionedCall0^batch_normalization_196/StatefulPartitionedCall0^batch_normalization_197/StatefulPartitionedCall#^conv2d_238/StatefulPartitionedCall#^conv2d_239/StatefulPartitionedCall#^conv2d_240/StatefulPartitionedCall#^conv2d_241/StatefulPartitionedCall#^conv2d_242/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_193/StatefulPartitionedCall/batch_normalization_193/StatefulPartitionedCall2b
/batch_normalization_194/StatefulPartitionedCall/batch_normalization_194/StatefulPartitionedCall2b
/batch_normalization_195/StatefulPartitionedCall/batch_normalization_195/StatefulPartitionedCall2b
/batch_normalization_196/StatefulPartitionedCall/batch_normalization_196/StatefulPartitionedCall2b
/batch_normalization_197/StatefulPartitionedCall/batch_normalization_197/StatefulPartitionedCall2H
"conv2d_238/StatefulPartitionedCall"conv2d_238/StatefulPartitionedCall2H
"conv2d_239/StatefulPartitionedCall"conv2d_239/StatefulPartitionedCall2H
"conv2d_240/StatefulPartitionedCall"conv2d_240/StatefulPartitionedCall2H
"conv2d_241/StatefulPartitionedCall"conv2d_241/StatefulPartitionedCall2H
"conv2d_242/StatefulPartitionedCall"conv2d_242/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_238_input
?
?
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9613863

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
G__inference_flatten_17_layer_call_and_return_conditional_losses_9614322

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
N
2__inference_max_pooling2d_43_layer_call_fn_9615949

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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_96141762
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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9614212

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
G__inference_conv2d_242_layer_call_and_return_conditional_losses_9616248

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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_9615939

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
?
?
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9614689

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
9__inference_batch_normalization_193_layer_call_fn_9615739

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_96134412
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
,__inference_conv2d_240_layer_call_fn_9615969

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
G__inference_conv2d_240_layer_call_and_return_conditional_losses_96141892
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
?
i
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_9614058

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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9614162

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
9__inference_batch_normalization_195_layer_call_fn_9616080

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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_96142122
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
2__inference_max_pooling2d_42_layer_call_fn_9615780

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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_96135102
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
?
?
9__inference_batch_normalization_193_layer_call_fn_9615765

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_96146892
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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9614517

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
2__inference_max_pooling2d_42_layer_call_fn_9615785

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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_96141262
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
,__inference_conv2d_242_layer_call_fn_9616257

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
G__inference_conv2d_242_layer_call_and_return_conditional_losses_96142772
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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9613945

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
9__inference_batch_normalization_194_layer_call_fn_9615890

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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_96135452
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
9__inference_batch_normalization_196_layer_call_fn_9616224

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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_96142562
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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615877

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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9613737

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
?
?
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615841

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
9__inference_batch_normalization_194_layer_call_fn_9615929

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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_96146302
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
G__inference_conv2d_241_layer_call_and_return_conditional_losses_9616104

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616275

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9614300

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
9__inference_batch_normalization_197_layer_call_fn_9616381

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_96144632
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
?
?
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9613589

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
9__inference_batch_normalization_195_layer_call_fn_9616067

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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_96137372
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
%__inference_signature_wrapper_9615241
conv2d_238_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_238_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_96133752
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
_user_specified_nameconv2d_238_input
?
?
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9613693

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
G__inference_conv2d_241_layer_call_and_return_conditional_losses_9614233

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
,__inference_alex_net_8_layer_call_fn_9615621

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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_96148642
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
9__inference_batch_normalization_195_layer_call_fn_9616093

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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_96145712
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
2__inference_max_pooling2d_44_layer_call_fn_9616396

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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_96140582
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
E__inference_dense_35_layer_call_and_return_conditional_losses_9614335

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
?
G__inference_conv2d_238_layer_call_and_return_conditional_losses_9615632

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
G__inference_conv2d_239_layer_call_and_return_conditional_losses_9615796

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
,__inference_conv2d_239_layer_call_fn_9615805

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
G__inference_conv2d_239_layer_call_and_return_conditional_losses_96141392
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
?
i
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_9614126

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
?
?
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9616005

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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_9616386

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615695

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
?
?
,__inference_alex_net_8_layer_call_fn_9614409
conv2d_238_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_238_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_96143422
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
_user_specified_nameconv2d_238_input
?	
?
9__inference_batch_normalization_196_layer_call_fn_9616237

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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_96145172
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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9614571

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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615859

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
G__inference_conv2d_242_layer_call_and_return_conditional_losses_9614277

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
9__inference_batch_normalization_193_layer_call_fn_9615726

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_96133972
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
?
?
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616185

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9613441

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
?
?
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615823

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
?"
"__inference__wrapped_model_9613375
conv2d_238_inputN
4alex_net_8_conv2d_238_conv2d_readvariableop_resource:`C
5alex_net_8_conv2d_238_biasadd_readvariableop_resource:`H
:alex_net_8_batch_normalization_193_readvariableop_resource:`J
<alex_net_8_batch_normalization_193_readvariableop_1_resource:`Y
Kalex_net_8_batch_normalization_193_fusedbatchnormv3_readvariableop_resource:`[
Malex_net_8_batch_normalization_193_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_8_conv2d_239_conv2d_readvariableop_resource:`?D
5alex_net_8_conv2d_239_biasadd_readvariableop_resource:	?I
:alex_net_8_batch_normalization_194_readvariableop_resource:	?K
<alex_net_8_batch_normalization_194_readvariableop_1_resource:	?Z
Kalex_net_8_batch_normalization_194_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_8_batch_normalization_194_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_8_conv2d_240_conv2d_readvariableop_resource:??D
5alex_net_8_conv2d_240_biasadd_readvariableop_resource:	?I
:alex_net_8_batch_normalization_195_readvariableop_resource:	?K
<alex_net_8_batch_normalization_195_readvariableop_1_resource:	?Z
Kalex_net_8_batch_normalization_195_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_8_batch_normalization_195_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_8_conv2d_241_conv2d_readvariableop_resource:??D
5alex_net_8_conv2d_241_biasadd_readvariableop_resource:	?I
:alex_net_8_batch_normalization_196_readvariableop_resource:	?K
<alex_net_8_batch_normalization_196_readvariableop_1_resource:	?Z
Kalex_net_8_batch_normalization_196_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_8_batch_normalization_196_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_8_conv2d_242_conv2d_readvariableop_resource:??D
5alex_net_8_conv2d_242_biasadd_readvariableop_resource:	?I
:alex_net_8_batch_normalization_197_readvariableop_resource:	?K
<alex_net_8_batch_normalization_197_readvariableop_1_resource:	?Z
Kalex_net_8_batch_normalization_197_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_8_batch_normalization_197_fusedbatchnormv3_readvariableop_1_resource:	?E
2alex_net_8_dense_35_matmul_readvariableop_resource:	?(A
3alex_net_8_dense_35_biasadd_readvariableop_resource:
identity??Balex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_193/ReadVariableOp?3alex_net_8/batch_normalization_193/ReadVariableOp_1?Balex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_194/ReadVariableOp?3alex_net_8/batch_normalization_194/ReadVariableOp_1?Balex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_195/ReadVariableOp?3alex_net_8/batch_normalization_195/ReadVariableOp_1?Balex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_196/ReadVariableOp?3alex_net_8/batch_normalization_196/ReadVariableOp_1?Balex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp?Dalex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1?1alex_net_8/batch_normalization_197/ReadVariableOp?3alex_net_8/batch_normalization_197/ReadVariableOp_1?,alex_net_8/conv2d_238/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_238/Conv2D/ReadVariableOp?,alex_net_8/conv2d_239/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_239/Conv2D/ReadVariableOp?,alex_net_8/conv2d_240/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_240/Conv2D/ReadVariableOp?,alex_net_8/conv2d_241/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_241/Conv2D/ReadVariableOp?,alex_net_8/conv2d_242/BiasAdd/ReadVariableOp?+alex_net_8/conv2d_242/Conv2D/ReadVariableOp?*alex_net_8/dense_35/BiasAdd/ReadVariableOp?)alex_net_8/dense_35/MatMul/ReadVariableOp?
+alex_net_8/conv2d_238/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_238_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_8/conv2d_238/Conv2D/ReadVariableOp?
alex_net_8/conv2d_238/Conv2DConv2Dconv2d_238_input3alex_net_8/conv2d_238/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_8/conv2d_238/Conv2D?
,alex_net_8/conv2d_238/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_238_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_8/conv2d_238/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_238/BiasAddBiasAdd%alex_net_8/conv2d_238/Conv2D:output:04alex_net_8/conv2d_238/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
alex_net_8/conv2d_238/BiasAdd?
alex_net_8/conv2d_238/ReluRelu&alex_net_8/conv2d_238/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_8/conv2d_238/Relu?
1alex_net_8/batch_normalization_193/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_193_readvariableop_resource*
_output_shapes
:`*
dtype023
1alex_net_8/batch_normalization_193/ReadVariableOp?
3alex_net_8/batch_normalization_193/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_193_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3alex_net_8/batch_normalization_193/ReadVariableOp_1?
Balex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_193_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02D
Balex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_193_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02F
Dalex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_193/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_238/Relu:activations:09alex_net_8/batch_normalization_193/ReadVariableOp:value:0;alex_net_8/batch_normalization_193/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_193/FusedBatchNormV3?
#alex_net_8/max_pooling2d_42/MaxPoolMaxPool7alex_net_8/batch_normalization_193/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_8/max_pooling2d_42/MaxPool?
+alex_net_8/conv2d_239/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_239_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02-
+alex_net_8/conv2d_239/Conv2D/ReadVariableOp?
alex_net_8/conv2d_239/Conv2DConv2D,alex_net_8/max_pooling2d_42/MaxPool:output:03alex_net_8/conv2d_239/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_8/conv2d_239/Conv2D?
,alex_net_8/conv2d_239/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_239_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_8/conv2d_239/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_239/BiasAddBiasAdd%alex_net_8/conv2d_239/Conv2D:output:04alex_net_8/conv2d_239/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
alex_net_8/conv2d_239/BiasAdd?
alex_net_8/conv2d_239/ReluRelu&alex_net_8/conv2d_239/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_8/conv2d_239/Relu?
1alex_net_8/batch_normalization_194/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_194_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_8/batch_normalization_194/ReadVariableOp?
3alex_net_8/batch_normalization_194/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_194_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_8/batch_normalization_194/ReadVariableOp_1?
Balex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_194_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_194_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_194/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_239/Relu:activations:09alex_net_8/batch_normalization_194/ReadVariableOp:value:0;alex_net_8/batch_normalization_194/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_194/FusedBatchNormV3?
#alex_net_8/max_pooling2d_43/MaxPoolMaxPool7alex_net_8/batch_normalization_194/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#alex_net_8/max_pooling2d_43/MaxPool?
+alex_net_8/conv2d_240/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_240_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_8/conv2d_240/Conv2D/ReadVariableOp?
alex_net_8/conv2d_240/Conv2DConv2D,alex_net_8/max_pooling2d_43/MaxPool:output:03alex_net_8/conv2d_240/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_8/conv2d_240/Conv2D?
,alex_net_8/conv2d_240/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_240_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_8/conv2d_240/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_240/BiasAddBiasAdd%alex_net_8/conv2d_240/Conv2D:output:04alex_net_8/conv2d_240/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_240/BiasAdd?
alex_net_8/conv2d_240/ReluRelu&alex_net_8/conv2d_240/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_240/Relu?
1alex_net_8/batch_normalization_195/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_195_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_8/batch_normalization_195/ReadVariableOp?
3alex_net_8/batch_normalization_195/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_195_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_8/batch_normalization_195/ReadVariableOp_1?
Balex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_195_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_195_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_195/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_240/Relu:activations:09alex_net_8/batch_normalization_195/ReadVariableOp:value:0;alex_net_8/batch_normalization_195/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_195/FusedBatchNormV3?
+alex_net_8/conv2d_241/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_241_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_8/conv2d_241/Conv2D/ReadVariableOp?
alex_net_8/conv2d_241/Conv2DConv2D7alex_net_8/batch_normalization_195/FusedBatchNormV3:y:03alex_net_8/conv2d_241/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_8/conv2d_241/Conv2D?
,alex_net_8/conv2d_241/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_241_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_8/conv2d_241/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_241/BiasAddBiasAdd%alex_net_8/conv2d_241/Conv2D:output:04alex_net_8/conv2d_241/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_241/BiasAdd?
alex_net_8/conv2d_241/ReluRelu&alex_net_8/conv2d_241/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_241/Relu?
1alex_net_8/batch_normalization_196/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_196_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_8/batch_normalization_196/ReadVariableOp?
3alex_net_8/batch_normalization_196/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_196_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_8/batch_normalization_196/ReadVariableOp_1?
Balex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_196_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_196_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_196/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_241/Relu:activations:09alex_net_8/batch_normalization_196/ReadVariableOp:value:0;alex_net_8/batch_normalization_196/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_196/FusedBatchNormV3?
+alex_net_8/conv2d_242/Conv2D/ReadVariableOpReadVariableOp4alex_net_8_conv2d_242_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_8/conv2d_242/Conv2D/ReadVariableOp?
alex_net_8/conv2d_242/Conv2DConv2D7alex_net_8/batch_normalization_196/FusedBatchNormV3:y:03alex_net_8/conv2d_242/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_8/conv2d_242/Conv2D?
,alex_net_8/conv2d_242/BiasAdd/ReadVariableOpReadVariableOp5alex_net_8_conv2d_242_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_8/conv2d_242/BiasAdd/ReadVariableOp?
alex_net_8/conv2d_242/BiasAddBiasAdd%alex_net_8/conv2d_242/Conv2D:output:04alex_net_8/conv2d_242/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_242/BiasAdd?
alex_net_8/conv2d_242/ReluRelu&alex_net_8/conv2d_242/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_8/conv2d_242/Relu?
1alex_net_8/batch_normalization_197/ReadVariableOpReadVariableOp:alex_net_8_batch_normalization_197_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_8/batch_normalization_197/ReadVariableOp?
3alex_net_8/batch_normalization_197/ReadVariableOp_1ReadVariableOp<alex_net_8_batch_normalization_197_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_8/batch_normalization_197/ReadVariableOp_1?
Balex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_8_batch_normalization_197_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp?
Dalex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_8_batch_normalization_197_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_8/batch_normalization_197/FusedBatchNormV3FusedBatchNormV3(alex_net_8/conv2d_242/Relu:activations:09alex_net_8/batch_normalization_197/ReadVariableOp:value:0;alex_net_8/batch_normalization_197/ReadVariableOp_1:value:0Jalex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_8/batch_normalization_197/FusedBatchNormV3?
#alex_net_8/max_pooling2d_44/MaxPoolMaxPool7alex_net_8/batch_normalization_197/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2%
#alex_net_8/max_pooling2d_44/MaxPool?
alex_net_8/flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_8/flatten_17/Const?
alex_net_8/flatten_17/ReshapeReshape,alex_net_8/max_pooling2d_44/MaxPool:output:0$alex_net_8/flatten_17/Const:output:0*
T0*(
_output_shapes
:??????????(2
alex_net_8/flatten_17/Reshape?
)alex_net_8/dense_35/MatMul/ReadVariableOpReadVariableOp2alex_net_8_dense_35_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02+
)alex_net_8/dense_35/MatMul/ReadVariableOp?
alex_net_8/dense_35/MatMulMatMul&alex_net_8/flatten_17/Reshape:output:01alex_net_8/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_8/dense_35/MatMul?
*alex_net_8/dense_35/BiasAdd/ReadVariableOpReadVariableOp3alex_net_8_dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_8/dense_35/BiasAdd/ReadVariableOp?
alex_net_8/dense_35/BiasAddBiasAdd$alex_net_8/dense_35/MatMul:product:02alex_net_8/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_8/dense_35/BiasAdd?
alex_net_8/dense_35/SigmoidSigmoid$alex_net_8/dense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_8/dense_35/Sigmoidz
IdentityIdentityalex_net_8/dense_35/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpC^alex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_193/ReadVariableOp4^alex_net_8/batch_normalization_193/ReadVariableOp_1C^alex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_194/ReadVariableOp4^alex_net_8/batch_normalization_194/ReadVariableOp_1C^alex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_195/ReadVariableOp4^alex_net_8/batch_normalization_195/ReadVariableOp_1C^alex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_196/ReadVariableOp4^alex_net_8/batch_normalization_196/ReadVariableOp_1C^alex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOpE^alex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp_12^alex_net_8/batch_normalization_197/ReadVariableOp4^alex_net_8/batch_normalization_197/ReadVariableOp_1-^alex_net_8/conv2d_238/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_238/Conv2D/ReadVariableOp-^alex_net_8/conv2d_239/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_239/Conv2D/ReadVariableOp-^alex_net_8/conv2d_240/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_240/Conv2D/ReadVariableOp-^alex_net_8/conv2d_241/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_241/Conv2D/ReadVariableOp-^alex_net_8/conv2d_242/BiasAdd/ReadVariableOp,^alex_net_8/conv2d_242/Conv2D/ReadVariableOp+^alex_net_8/dense_35/BiasAdd/ReadVariableOp*^alex_net_8/dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Balex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_193/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_193/ReadVariableOp1alex_net_8/batch_normalization_193/ReadVariableOp2j
3alex_net_8/batch_normalization_193/ReadVariableOp_13alex_net_8/batch_normalization_193/ReadVariableOp_12?
Balex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_194/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_194/ReadVariableOp1alex_net_8/batch_normalization_194/ReadVariableOp2j
3alex_net_8/batch_normalization_194/ReadVariableOp_13alex_net_8/batch_normalization_194/ReadVariableOp_12?
Balex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_195/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_195/ReadVariableOp1alex_net_8/batch_normalization_195/ReadVariableOp2j
3alex_net_8/batch_normalization_195/ReadVariableOp_13alex_net_8/batch_normalization_195/ReadVariableOp_12?
Balex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_196/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_196/ReadVariableOp1alex_net_8/batch_normalization_196/ReadVariableOp2j
3alex_net_8/batch_normalization_196/ReadVariableOp_13alex_net_8/batch_normalization_196/ReadVariableOp_12?
Balex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOpBalex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1Dalex_net_8/batch_normalization_197/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_8/batch_normalization_197/ReadVariableOp1alex_net_8/batch_normalization_197/ReadVariableOp2j
3alex_net_8/batch_normalization_197/ReadVariableOp_13alex_net_8/batch_normalization_197/ReadVariableOp_12\
,alex_net_8/conv2d_238/BiasAdd/ReadVariableOp,alex_net_8/conv2d_238/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_238/Conv2D/ReadVariableOp+alex_net_8/conv2d_238/Conv2D/ReadVariableOp2\
,alex_net_8/conv2d_239/BiasAdd/ReadVariableOp,alex_net_8/conv2d_239/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_239/Conv2D/ReadVariableOp+alex_net_8/conv2d_239/Conv2D/ReadVariableOp2\
,alex_net_8/conv2d_240/BiasAdd/ReadVariableOp,alex_net_8/conv2d_240/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_240/Conv2D/ReadVariableOp+alex_net_8/conv2d_240/Conv2D/ReadVariableOp2\
,alex_net_8/conv2d_241/BiasAdd/ReadVariableOp,alex_net_8/conv2d_241/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_241/Conv2D/ReadVariableOp+alex_net_8/conv2d_241/Conv2D/ReadVariableOp2\
,alex_net_8/conv2d_242/BiasAdd/ReadVariableOp,alex_net_8/conv2d_242/BiasAdd/ReadVariableOp2Z
+alex_net_8/conv2d_242/Conv2D/ReadVariableOp+alex_net_8/conv2d_242/Conv2D/ReadVariableOp2X
*alex_net_8/dense_35/BiasAdd/ReadVariableOp*alex_net_8/dense_35/BiasAdd/ReadVariableOp2V
)alex_net_8/dense_35/MatMul/ReadVariableOp)alex_net_8/dense_35/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_238_input
?
i
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_9615770

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
,__inference_conv2d_238_layer_call_fn_9615641

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
G__inference_conv2d_238_layer_call_and_return_conditional_losses_96140892
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
?
?
*__inference_dense_35_layer_call_fn_9616432

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
E__inference_dense_35_layer_call_and_return_conditional_losses_96143352
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
?X
?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9614864

inputs,
conv2d_238_9614784:` 
conv2d_238_9614786:`-
batch_normalization_193_9614789:`-
batch_normalization_193_9614791:`-
batch_normalization_193_9614793:`-
batch_normalization_193_9614795:`-
conv2d_239_9614799:`?!
conv2d_239_9614801:	?.
batch_normalization_194_9614804:	?.
batch_normalization_194_9614806:	?.
batch_normalization_194_9614808:	?.
batch_normalization_194_9614810:	?.
conv2d_240_9614814:??!
conv2d_240_9614816:	?.
batch_normalization_195_9614819:	?.
batch_normalization_195_9614821:	?.
batch_normalization_195_9614823:	?.
batch_normalization_195_9614825:	?.
conv2d_241_9614828:??!
conv2d_241_9614830:	?.
batch_normalization_196_9614833:	?.
batch_normalization_196_9614835:	?.
batch_normalization_196_9614837:	?.
batch_normalization_196_9614839:	?.
conv2d_242_9614842:??!
conv2d_242_9614844:	?.
batch_normalization_197_9614847:	?.
batch_normalization_197_9614849:	?.
batch_normalization_197_9614851:	?.
batch_normalization_197_9614853:	?#
dense_35_9614858:	?(
dense_35_9614860:
identity??/batch_normalization_193/StatefulPartitionedCall?/batch_normalization_194/StatefulPartitionedCall?/batch_normalization_195/StatefulPartitionedCall?/batch_normalization_196/StatefulPartitionedCall?/batch_normalization_197/StatefulPartitionedCall?"conv2d_238/StatefulPartitionedCall?"conv2d_239/StatefulPartitionedCall?"conv2d_240/StatefulPartitionedCall?"conv2d_241/StatefulPartitionedCall?"conv2d_242/StatefulPartitionedCall? dense_35/StatefulPartitionedCall?
"conv2d_238/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_238_9614784conv2d_238_9614786*
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
G__inference_conv2d_238_layer_call_and_return_conditional_losses_96140892$
"conv2d_238/StatefulPartitionedCall?
/batch_normalization_193/StatefulPartitionedCallStatefulPartitionedCall+conv2d_238/StatefulPartitionedCall:output:0batch_normalization_193_9614789batch_normalization_193_9614791batch_normalization_193_9614793batch_normalization_193_9614795*
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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_961468921
/batch_normalization_193/StatefulPartitionedCall?
 max_pooling2d_42/PartitionedCallPartitionedCall8batch_normalization_193/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_96141262"
 max_pooling2d_42/PartitionedCall?
"conv2d_239/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_42/PartitionedCall:output:0conv2d_239_9614799conv2d_239_9614801*
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
G__inference_conv2d_239_layer_call_and_return_conditional_losses_96141392$
"conv2d_239/StatefulPartitionedCall?
/batch_normalization_194/StatefulPartitionedCallStatefulPartitionedCall+conv2d_239/StatefulPartitionedCall:output:0batch_normalization_194_9614804batch_normalization_194_9614806batch_normalization_194_9614808batch_normalization_194_9614810*
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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_961463021
/batch_normalization_194/StatefulPartitionedCall?
 max_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_194/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_96141762"
 max_pooling2d_43/PartitionedCall?
"conv2d_240/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_43/PartitionedCall:output:0conv2d_240_9614814conv2d_240_9614816*
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
G__inference_conv2d_240_layer_call_and_return_conditional_losses_96141892$
"conv2d_240/StatefulPartitionedCall?
/batch_normalization_195/StatefulPartitionedCallStatefulPartitionedCall+conv2d_240/StatefulPartitionedCall:output:0batch_normalization_195_9614819batch_normalization_195_9614821batch_normalization_195_9614823batch_normalization_195_9614825*
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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_961457121
/batch_normalization_195/StatefulPartitionedCall?
"conv2d_241/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_195/StatefulPartitionedCall:output:0conv2d_241_9614828conv2d_241_9614830*
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
G__inference_conv2d_241_layer_call_and_return_conditional_losses_96142332$
"conv2d_241/StatefulPartitionedCall?
/batch_normalization_196/StatefulPartitionedCallStatefulPartitionedCall+conv2d_241/StatefulPartitionedCall:output:0batch_normalization_196_9614833batch_normalization_196_9614835batch_normalization_196_9614837batch_normalization_196_9614839*
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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_961451721
/batch_normalization_196/StatefulPartitionedCall?
"conv2d_242/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_196/StatefulPartitionedCall:output:0conv2d_242_9614842conv2d_242_9614844*
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
G__inference_conv2d_242_layer_call_and_return_conditional_losses_96142772$
"conv2d_242/StatefulPartitionedCall?
/batch_normalization_197/StatefulPartitionedCallStatefulPartitionedCall+conv2d_242/StatefulPartitionedCall:output:0batch_normalization_197_9614847batch_normalization_197_9614849batch_normalization_197_9614851batch_normalization_197_9614853*
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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_961446321
/batch_normalization_197/StatefulPartitionedCall?
 max_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_197/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_96143142"
 max_pooling2d_44/PartitionedCall?
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_96143222
flatten_17/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_35_9614858dense_35_9614860*
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
E__inference_dense_35_layer_call_and_return_conditional_losses_96143352"
 dense_35/StatefulPartitionedCall?
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_193/StatefulPartitionedCall0^batch_normalization_194/StatefulPartitionedCall0^batch_normalization_195/StatefulPartitionedCall0^batch_normalization_196/StatefulPartitionedCall0^batch_normalization_197/StatefulPartitionedCall#^conv2d_238/StatefulPartitionedCall#^conv2d_239/StatefulPartitionedCall#^conv2d_240/StatefulPartitionedCall#^conv2d_241/StatefulPartitionedCall#^conv2d_242/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_193/StatefulPartitionedCall/batch_normalization_193/StatefulPartitionedCall2b
/batch_normalization_194/StatefulPartitionedCall/batch_normalization_194/StatefulPartitionedCall2b
/batch_normalization_195/StatefulPartitionedCall/batch_normalization_195/StatefulPartitionedCall2b
/batch_normalization_196/StatefulPartitionedCall/batch_normalization_196/StatefulPartitionedCall2b
/batch_normalization_197/StatefulPartitionedCall/batch_normalization_197/StatefulPartitionedCall2H
"conv2d_238/StatefulPartitionedCall"conv2d_238/StatefulPartitionedCall2H
"conv2d_239/StatefulPartitionedCall"conv2d_239/StatefulPartitionedCall2H
"conv2d_240/StatefulPartitionedCall"conv2d_240/StatefulPartitionedCall2H
"conv2d_241/StatefulPartitionedCall"conv2d_241/StatefulPartitionedCall2H
"conv2d_242/StatefulPartitionedCall"conv2d_242/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_238_layer_call_and_return_conditional_losses_9614089

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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615362

inputsC
)conv2d_238_conv2d_readvariableop_resource:`8
*conv2d_238_biasadd_readvariableop_resource:`=
/batch_normalization_193_readvariableop_resource:`?
1batch_normalization_193_readvariableop_1_resource:`N
@batch_normalization_193_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_193_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_239_conv2d_readvariableop_resource:`?9
*conv2d_239_biasadd_readvariableop_resource:	?>
/batch_normalization_194_readvariableop_resource:	?@
1batch_normalization_194_readvariableop_1_resource:	?O
@batch_normalization_194_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_194_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_240_conv2d_readvariableop_resource:??9
*conv2d_240_biasadd_readvariableop_resource:	?>
/batch_normalization_195_readvariableop_resource:	?@
1batch_normalization_195_readvariableop_1_resource:	?O
@batch_normalization_195_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_195_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_241_conv2d_readvariableop_resource:??9
*conv2d_241_biasadd_readvariableop_resource:	?>
/batch_normalization_196_readvariableop_resource:	?@
1batch_normalization_196_readvariableop_1_resource:	?O
@batch_normalization_196_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_196_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_242_conv2d_readvariableop_resource:??9
*conv2d_242_biasadd_readvariableop_resource:	?>
/batch_normalization_197_readvariableop_resource:	?@
1batch_normalization_197_readvariableop_1_resource:	?O
@batch_normalization_197_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_197_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_35_matmul_readvariableop_resource:	?(6
(dense_35_biasadd_readvariableop_resource:
identity??7batch_normalization_193/FusedBatchNormV3/ReadVariableOp?9batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_193/ReadVariableOp?(batch_normalization_193/ReadVariableOp_1?7batch_normalization_194/FusedBatchNormV3/ReadVariableOp?9batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_194/ReadVariableOp?(batch_normalization_194/ReadVariableOp_1?7batch_normalization_195/FusedBatchNormV3/ReadVariableOp?9batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_195/ReadVariableOp?(batch_normalization_195/ReadVariableOp_1?7batch_normalization_196/FusedBatchNormV3/ReadVariableOp?9batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_196/ReadVariableOp?(batch_normalization_196/ReadVariableOp_1?7batch_normalization_197/FusedBatchNormV3/ReadVariableOp?9batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_197/ReadVariableOp?(batch_normalization_197/ReadVariableOp_1?!conv2d_238/BiasAdd/ReadVariableOp? conv2d_238/Conv2D/ReadVariableOp?!conv2d_239/BiasAdd/ReadVariableOp? conv2d_239/Conv2D/ReadVariableOp?!conv2d_240/BiasAdd/ReadVariableOp? conv2d_240/Conv2D/ReadVariableOp?!conv2d_241/BiasAdd/ReadVariableOp? conv2d_241/Conv2D/ReadVariableOp?!conv2d_242/BiasAdd/ReadVariableOp? conv2d_242/Conv2D/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?
 conv2d_238/Conv2D/ReadVariableOpReadVariableOp)conv2d_238_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_238/Conv2D/ReadVariableOp?
conv2d_238/Conv2DConv2Dinputs(conv2d_238/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_238/Conv2D?
!conv2d_238/BiasAdd/ReadVariableOpReadVariableOp*conv2d_238_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_238/BiasAdd/ReadVariableOp?
conv2d_238/BiasAddBiasAddconv2d_238/Conv2D:output:0)conv2d_238/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_238/BiasAdd?
conv2d_238/ReluReluconv2d_238/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_238/Relu?
&batch_normalization_193/ReadVariableOpReadVariableOp/batch_normalization_193_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_193/ReadVariableOp?
(batch_normalization_193/ReadVariableOp_1ReadVariableOp1batch_normalization_193_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_193/ReadVariableOp_1?
7batch_normalization_193/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_193_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_193/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_193_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_193/FusedBatchNormV3FusedBatchNormV3conv2d_238/Relu:activations:0.batch_normalization_193/ReadVariableOp:value:00batch_normalization_193/ReadVariableOp_1:value:0?batch_normalization_193/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_193/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_193/FusedBatchNormV3?
max_pooling2d_42/MaxPoolMaxPool,batch_normalization_193/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_42/MaxPool?
 conv2d_239/Conv2D/ReadVariableOpReadVariableOp)conv2d_239_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_239/Conv2D/ReadVariableOp?
conv2d_239/Conv2DConv2D!max_pooling2d_42/MaxPool:output:0(conv2d_239/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_239/Conv2D?
!conv2d_239/BiasAdd/ReadVariableOpReadVariableOp*conv2d_239_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_239/BiasAdd/ReadVariableOp?
conv2d_239/BiasAddBiasAddconv2d_239/Conv2D:output:0)conv2d_239/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_239/BiasAdd?
conv2d_239/ReluReluconv2d_239/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_239/Relu?
&batch_normalization_194/ReadVariableOpReadVariableOp/batch_normalization_194_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_194/ReadVariableOp?
(batch_normalization_194/ReadVariableOp_1ReadVariableOp1batch_normalization_194_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_194/ReadVariableOp_1?
7batch_normalization_194/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_194_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_194/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_194_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_194/FusedBatchNormV3FusedBatchNormV3conv2d_239/Relu:activations:0.batch_normalization_194/ReadVariableOp:value:00batch_normalization_194/ReadVariableOp_1:value:0?batch_normalization_194/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_194/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_194/FusedBatchNormV3?
max_pooling2d_43/MaxPoolMaxPool,batch_normalization_194/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_43/MaxPool?
 conv2d_240/Conv2D/ReadVariableOpReadVariableOp)conv2d_240_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_240/Conv2D/ReadVariableOp?
conv2d_240/Conv2DConv2D!max_pooling2d_43/MaxPool:output:0(conv2d_240/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_240/Conv2D?
!conv2d_240/BiasAdd/ReadVariableOpReadVariableOp*conv2d_240_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_240/BiasAdd/ReadVariableOp?
conv2d_240/BiasAddBiasAddconv2d_240/Conv2D:output:0)conv2d_240/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_240/BiasAdd?
conv2d_240/ReluReluconv2d_240/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_240/Relu?
&batch_normalization_195/ReadVariableOpReadVariableOp/batch_normalization_195_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_195/ReadVariableOp?
(batch_normalization_195/ReadVariableOp_1ReadVariableOp1batch_normalization_195_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_195/ReadVariableOp_1?
7batch_normalization_195/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_195_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_195/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_195_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_195/FusedBatchNormV3FusedBatchNormV3conv2d_240/Relu:activations:0.batch_normalization_195/ReadVariableOp:value:00batch_normalization_195/ReadVariableOp_1:value:0?batch_normalization_195/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_195/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_195/FusedBatchNormV3?
 conv2d_241/Conv2D/ReadVariableOpReadVariableOp)conv2d_241_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_241/Conv2D/ReadVariableOp?
conv2d_241/Conv2DConv2D,batch_normalization_195/FusedBatchNormV3:y:0(conv2d_241/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_241/Conv2D?
!conv2d_241/BiasAdd/ReadVariableOpReadVariableOp*conv2d_241_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_241/BiasAdd/ReadVariableOp?
conv2d_241/BiasAddBiasAddconv2d_241/Conv2D:output:0)conv2d_241/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_241/BiasAdd?
conv2d_241/ReluReluconv2d_241/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_241/Relu?
&batch_normalization_196/ReadVariableOpReadVariableOp/batch_normalization_196_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_196/ReadVariableOp?
(batch_normalization_196/ReadVariableOp_1ReadVariableOp1batch_normalization_196_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_196/ReadVariableOp_1?
7batch_normalization_196/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_196_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_196/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_196_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_196/FusedBatchNormV3FusedBatchNormV3conv2d_241/Relu:activations:0.batch_normalization_196/ReadVariableOp:value:00batch_normalization_196/ReadVariableOp_1:value:0?batch_normalization_196/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_196/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_196/FusedBatchNormV3?
 conv2d_242/Conv2D/ReadVariableOpReadVariableOp)conv2d_242_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_242/Conv2D/ReadVariableOp?
conv2d_242/Conv2DConv2D,batch_normalization_196/FusedBatchNormV3:y:0(conv2d_242/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_242/Conv2D?
!conv2d_242/BiasAdd/ReadVariableOpReadVariableOp*conv2d_242_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_242/BiasAdd/ReadVariableOp?
conv2d_242/BiasAddBiasAddconv2d_242/Conv2D:output:0)conv2d_242/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_242/BiasAdd?
conv2d_242/ReluReluconv2d_242/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_242/Relu?
&batch_normalization_197/ReadVariableOpReadVariableOp/batch_normalization_197_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_197/ReadVariableOp?
(batch_normalization_197/ReadVariableOp_1ReadVariableOp1batch_normalization_197_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_197/ReadVariableOp_1?
7batch_normalization_197/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_197_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_197/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_197_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_197/FusedBatchNormV3FusedBatchNormV3conv2d_242/Relu:activations:0.batch_normalization_197/ReadVariableOp:value:00batch_normalization_197/ReadVariableOp_1:value:0?batch_normalization_197/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_197/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_197/FusedBatchNormV3?
max_pooling2d_44/MaxPoolMaxPool,batch_normalization_197/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_44/MaxPoolu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_17/Const?
flatten_17/ReshapeReshape!max_pooling2d_44/MaxPool:output:0flatten_17/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_17/Reshape?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_35/MatMul/ReadVariableOp?
dense_35/MatMulMatMulflatten_17/Reshape:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_35/MatMul?
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_35/BiasAdd/ReadVariableOp?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_35/BiasAdd|
dense_35/SigmoidSigmoiddense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_35/Sigmoido
IdentityIdentitydense_35/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_193/FusedBatchNormV3/ReadVariableOp:^batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_193/ReadVariableOp)^batch_normalization_193/ReadVariableOp_18^batch_normalization_194/FusedBatchNormV3/ReadVariableOp:^batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_194/ReadVariableOp)^batch_normalization_194/ReadVariableOp_18^batch_normalization_195/FusedBatchNormV3/ReadVariableOp:^batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_195/ReadVariableOp)^batch_normalization_195/ReadVariableOp_18^batch_normalization_196/FusedBatchNormV3/ReadVariableOp:^batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_196/ReadVariableOp)^batch_normalization_196/ReadVariableOp_18^batch_normalization_197/FusedBatchNormV3/ReadVariableOp:^batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_197/ReadVariableOp)^batch_normalization_197/ReadVariableOp_1"^conv2d_238/BiasAdd/ReadVariableOp!^conv2d_238/Conv2D/ReadVariableOp"^conv2d_239/BiasAdd/ReadVariableOp!^conv2d_239/Conv2D/ReadVariableOp"^conv2d_240/BiasAdd/ReadVariableOp!^conv2d_240/Conv2D/ReadVariableOp"^conv2d_241/BiasAdd/ReadVariableOp!^conv2d_241/Conv2D/ReadVariableOp"^conv2d_242/BiasAdd/ReadVariableOp!^conv2d_242/Conv2D/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_193/FusedBatchNormV3/ReadVariableOp7batch_normalization_193/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_193/FusedBatchNormV3/ReadVariableOp_19batch_normalization_193/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_193/ReadVariableOp&batch_normalization_193/ReadVariableOp2T
(batch_normalization_193/ReadVariableOp_1(batch_normalization_193/ReadVariableOp_12r
7batch_normalization_194/FusedBatchNormV3/ReadVariableOp7batch_normalization_194/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_194/FusedBatchNormV3/ReadVariableOp_19batch_normalization_194/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_194/ReadVariableOp&batch_normalization_194/ReadVariableOp2T
(batch_normalization_194/ReadVariableOp_1(batch_normalization_194/ReadVariableOp_12r
7batch_normalization_195/FusedBatchNormV3/ReadVariableOp7batch_normalization_195/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_195/FusedBatchNormV3/ReadVariableOp_19batch_normalization_195/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_195/ReadVariableOp&batch_normalization_195/ReadVariableOp2T
(batch_normalization_195/ReadVariableOp_1(batch_normalization_195/ReadVariableOp_12r
7batch_normalization_196/FusedBatchNormV3/ReadVariableOp7batch_normalization_196/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_196/FusedBatchNormV3/ReadVariableOp_19batch_normalization_196/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_196/ReadVariableOp&batch_normalization_196/ReadVariableOp2T
(batch_normalization_196/ReadVariableOp_1(batch_normalization_196/ReadVariableOp_12r
7batch_normalization_197/FusedBatchNormV3/ReadVariableOp7batch_normalization_197/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_197/FusedBatchNormV3/ReadVariableOp_19batch_normalization_197/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_197/ReadVariableOp&batch_normalization_197/ReadVariableOp2T
(batch_normalization_197/ReadVariableOp_1(batch_normalization_197/ReadVariableOp_12F
!conv2d_238/BiasAdd/ReadVariableOp!conv2d_238/BiasAdd/ReadVariableOp2D
 conv2d_238/Conv2D/ReadVariableOp conv2d_238/Conv2D/ReadVariableOp2F
!conv2d_239/BiasAdd/ReadVariableOp!conv2d_239/BiasAdd/ReadVariableOp2D
 conv2d_239/Conv2D/ReadVariableOp conv2d_239/Conv2D/ReadVariableOp2F
!conv2d_240/BiasAdd/ReadVariableOp!conv2d_240/BiasAdd/ReadVariableOp2D
 conv2d_240/Conv2D/ReadVariableOp conv2d_240/Conv2D/ReadVariableOp2F
!conv2d_241/BiasAdd/ReadVariableOp!conv2d_241/BiasAdd/ReadVariableOp2D
 conv2d_241/Conv2D/ReadVariableOp conv2d_241/Conv2D/ReadVariableOp2F
!conv2d_242/BiasAdd/ReadVariableOp!conv2d_242/BiasAdd/ReadVariableOp2D
 conv2d_242/Conv2D/ReadVariableOp conv2d_242/Conv2D/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_9613658

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
9__inference_batch_normalization_196_layer_call_fn_9616198

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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_96138192
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
 __inference__traced_save_9616575
file_prefix0
,savev2_conv2d_238_kernel_read_readvariableop.
*savev2_conv2d_238_bias_read_readvariableop<
8savev2_batch_normalization_193_gamma_read_readvariableop;
7savev2_batch_normalization_193_beta_read_readvariableopB
>savev2_batch_normalization_193_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_193_moving_variance_read_readvariableop0
,savev2_conv2d_239_kernel_read_readvariableop.
*savev2_conv2d_239_bias_read_readvariableop<
8savev2_batch_normalization_194_gamma_read_readvariableop;
7savev2_batch_normalization_194_beta_read_readvariableopB
>savev2_batch_normalization_194_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_194_moving_variance_read_readvariableop0
,savev2_conv2d_240_kernel_read_readvariableop.
*savev2_conv2d_240_bias_read_readvariableop<
8savev2_batch_normalization_195_gamma_read_readvariableop;
7savev2_batch_normalization_195_beta_read_readvariableopB
>savev2_batch_normalization_195_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_195_moving_variance_read_readvariableop0
,savev2_conv2d_241_kernel_read_readvariableop.
*savev2_conv2d_241_bias_read_readvariableop<
8savev2_batch_normalization_196_gamma_read_readvariableop;
7savev2_batch_normalization_196_beta_read_readvariableopB
>savev2_batch_normalization_196_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_196_moving_variance_read_readvariableop0
,savev2_conv2d_242_kernel_read_readvariableop.
*savev2_conv2d_242_bias_read_readvariableop<
8savev2_batch_normalization_197_gamma_read_readvariableop;
7savev2_batch_normalization_197_beta_read_readvariableopB
>savev2_batch_normalization_197_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_197_moving_variance_read_readvariableop.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_238_kernel_read_readvariableop*savev2_conv2d_238_bias_read_readvariableop8savev2_batch_normalization_193_gamma_read_readvariableop7savev2_batch_normalization_193_beta_read_readvariableop>savev2_batch_normalization_193_moving_mean_read_readvariableopBsavev2_batch_normalization_193_moving_variance_read_readvariableop,savev2_conv2d_239_kernel_read_readvariableop*savev2_conv2d_239_bias_read_readvariableop8savev2_batch_normalization_194_gamma_read_readvariableop7savev2_batch_normalization_194_beta_read_readvariableop>savev2_batch_normalization_194_moving_mean_read_readvariableopBsavev2_batch_normalization_194_moving_variance_read_readvariableop,savev2_conv2d_240_kernel_read_readvariableop*savev2_conv2d_240_bias_read_readvariableop8savev2_batch_normalization_195_gamma_read_readvariableop7savev2_batch_normalization_195_beta_read_readvariableop>savev2_batch_normalization_195_moving_mean_read_readvariableopBsavev2_batch_normalization_195_moving_variance_read_readvariableop,savev2_conv2d_241_kernel_read_readvariableop*savev2_conv2d_241_bias_read_readvariableop8savev2_batch_normalization_196_gamma_read_readvariableop7savev2_batch_normalization_196_beta_read_readvariableop>savev2_batch_normalization_196_moving_mean_read_readvariableopBsavev2_batch_normalization_196_moving_variance_read_readvariableop,savev2_conv2d_242_kernel_read_readvariableop*savev2_conv2d_242_bias_read_readvariableop8savev2_batch_normalization_197_gamma_read_readvariableop7savev2_batch_normalization_197_beta_read_readvariableop>savev2_batch_normalization_197_moving_mean_read_readvariableopBsavev2_batch_normalization_197_moving_variance_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616131

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
9__inference_batch_normalization_193_layer_call_fn_9615752

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_96141122
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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9613989

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
9__inference_batch_normalization_197_layer_call_fn_9616342

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_96139452
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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9614630

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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9613545

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9614463

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616329

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
G__inference_conv2d_240_layer_call_and_return_conditional_losses_9614189

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9613397

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
??
? 
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615483

inputsC
)conv2d_238_conv2d_readvariableop_resource:`8
*conv2d_238_biasadd_readvariableop_resource:`=
/batch_normalization_193_readvariableop_resource:`?
1batch_normalization_193_readvariableop_1_resource:`N
@batch_normalization_193_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_193_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_239_conv2d_readvariableop_resource:`?9
*conv2d_239_biasadd_readvariableop_resource:	?>
/batch_normalization_194_readvariableop_resource:	?@
1batch_normalization_194_readvariableop_1_resource:	?O
@batch_normalization_194_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_194_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_240_conv2d_readvariableop_resource:??9
*conv2d_240_biasadd_readvariableop_resource:	?>
/batch_normalization_195_readvariableop_resource:	?@
1batch_normalization_195_readvariableop_1_resource:	?O
@batch_normalization_195_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_195_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_241_conv2d_readvariableop_resource:??9
*conv2d_241_biasadd_readvariableop_resource:	?>
/batch_normalization_196_readvariableop_resource:	?@
1batch_normalization_196_readvariableop_1_resource:	?O
@batch_normalization_196_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_196_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_242_conv2d_readvariableop_resource:??9
*conv2d_242_biasadd_readvariableop_resource:	?>
/batch_normalization_197_readvariableop_resource:	?@
1batch_normalization_197_readvariableop_1_resource:	?O
@batch_normalization_197_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_197_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_35_matmul_readvariableop_resource:	?(6
(dense_35_biasadd_readvariableop_resource:
identity??&batch_normalization_193/AssignNewValue?(batch_normalization_193/AssignNewValue_1?7batch_normalization_193/FusedBatchNormV3/ReadVariableOp?9batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_193/ReadVariableOp?(batch_normalization_193/ReadVariableOp_1?&batch_normalization_194/AssignNewValue?(batch_normalization_194/AssignNewValue_1?7batch_normalization_194/FusedBatchNormV3/ReadVariableOp?9batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_194/ReadVariableOp?(batch_normalization_194/ReadVariableOp_1?&batch_normalization_195/AssignNewValue?(batch_normalization_195/AssignNewValue_1?7batch_normalization_195/FusedBatchNormV3/ReadVariableOp?9batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_195/ReadVariableOp?(batch_normalization_195/ReadVariableOp_1?&batch_normalization_196/AssignNewValue?(batch_normalization_196/AssignNewValue_1?7batch_normalization_196/FusedBatchNormV3/ReadVariableOp?9batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_196/ReadVariableOp?(batch_normalization_196/ReadVariableOp_1?&batch_normalization_197/AssignNewValue?(batch_normalization_197/AssignNewValue_1?7batch_normalization_197/FusedBatchNormV3/ReadVariableOp?9batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_197/ReadVariableOp?(batch_normalization_197/ReadVariableOp_1?!conv2d_238/BiasAdd/ReadVariableOp? conv2d_238/Conv2D/ReadVariableOp?!conv2d_239/BiasAdd/ReadVariableOp? conv2d_239/Conv2D/ReadVariableOp?!conv2d_240/BiasAdd/ReadVariableOp? conv2d_240/Conv2D/ReadVariableOp?!conv2d_241/BiasAdd/ReadVariableOp? conv2d_241/Conv2D/ReadVariableOp?!conv2d_242/BiasAdd/ReadVariableOp? conv2d_242/Conv2D/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?
 conv2d_238/Conv2D/ReadVariableOpReadVariableOp)conv2d_238_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_238/Conv2D/ReadVariableOp?
conv2d_238/Conv2DConv2Dinputs(conv2d_238/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_238/Conv2D?
!conv2d_238/BiasAdd/ReadVariableOpReadVariableOp*conv2d_238_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_238/BiasAdd/ReadVariableOp?
conv2d_238/BiasAddBiasAddconv2d_238/Conv2D:output:0)conv2d_238/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_238/BiasAdd?
conv2d_238/ReluReluconv2d_238/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_238/Relu?
&batch_normalization_193/ReadVariableOpReadVariableOp/batch_normalization_193_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_193/ReadVariableOp?
(batch_normalization_193/ReadVariableOp_1ReadVariableOp1batch_normalization_193_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_193/ReadVariableOp_1?
7batch_normalization_193/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_193_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_193/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_193_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_193/FusedBatchNormV3FusedBatchNormV3conv2d_238/Relu:activations:0.batch_normalization_193/ReadVariableOp:value:00batch_normalization_193/ReadVariableOp_1:value:0?batch_normalization_193/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_193/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_193/FusedBatchNormV3?
&batch_normalization_193/AssignNewValueAssignVariableOp@batch_normalization_193_fusedbatchnormv3_readvariableop_resource5batch_normalization_193/FusedBatchNormV3:batch_mean:08^batch_normalization_193/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_193/AssignNewValue?
(batch_normalization_193/AssignNewValue_1AssignVariableOpBbatch_normalization_193_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_193/FusedBatchNormV3:batch_variance:0:^batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_193/AssignNewValue_1?
max_pooling2d_42/MaxPoolMaxPool,batch_normalization_193/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_42/MaxPool?
 conv2d_239/Conv2D/ReadVariableOpReadVariableOp)conv2d_239_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_239/Conv2D/ReadVariableOp?
conv2d_239/Conv2DConv2D!max_pooling2d_42/MaxPool:output:0(conv2d_239/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_239/Conv2D?
!conv2d_239/BiasAdd/ReadVariableOpReadVariableOp*conv2d_239_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_239/BiasAdd/ReadVariableOp?
conv2d_239/BiasAddBiasAddconv2d_239/Conv2D:output:0)conv2d_239/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_239/BiasAdd?
conv2d_239/ReluReluconv2d_239/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_239/Relu?
&batch_normalization_194/ReadVariableOpReadVariableOp/batch_normalization_194_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_194/ReadVariableOp?
(batch_normalization_194/ReadVariableOp_1ReadVariableOp1batch_normalization_194_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_194/ReadVariableOp_1?
7batch_normalization_194/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_194_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_194/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_194_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_194/FusedBatchNormV3FusedBatchNormV3conv2d_239/Relu:activations:0.batch_normalization_194/ReadVariableOp:value:00batch_normalization_194/ReadVariableOp_1:value:0?batch_normalization_194/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_194/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_194/FusedBatchNormV3?
&batch_normalization_194/AssignNewValueAssignVariableOp@batch_normalization_194_fusedbatchnormv3_readvariableop_resource5batch_normalization_194/FusedBatchNormV3:batch_mean:08^batch_normalization_194/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_194/AssignNewValue?
(batch_normalization_194/AssignNewValue_1AssignVariableOpBbatch_normalization_194_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_194/FusedBatchNormV3:batch_variance:0:^batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_194/AssignNewValue_1?
max_pooling2d_43/MaxPoolMaxPool,batch_normalization_194/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_43/MaxPool?
 conv2d_240/Conv2D/ReadVariableOpReadVariableOp)conv2d_240_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_240/Conv2D/ReadVariableOp?
conv2d_240/Conv2DConv2D!max_pooling2d_43/MaxPool:output:0(conv2d_240/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_240/Conv2D?
!conv2d_240/BiasAdd/ReadVariableOpReadVariableOp*conv2d_240_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_240/BiasAdd/ReadVariableOp?
conv2d_240/BiasAddBiasAddconv2d_240/Conv2D:output:0)conv2d_240/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_240/BiasAdd?
conv2d_240/ReluReluconv2d_240/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_240/Relu?
&batch_normalization_195/ReadVariableOpReadVariableOp/batch_normalization_195_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_195/ReadVariableOp?
(batch_normalization_195/ReadVariableOp_1ReadVariableOp1batch_normalization_195_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_195/ReadVariableOp_1?
7batch_normalization_195/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_195_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_195/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_195_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_195/FusedBatchNormV3FusedBatchNormV3conv2d_240/Relu:activations:0.batch_normalization_195/ReadVariableOp:value:00batch_normalization_195/ReadVariableOp_1:value:0?batch_normalization_195/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_195/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_195/FusedBatchNormV3?
&batch_normalization_195/AssignNewValueAssignVariableOp@batch_normalization_195_fusedbatchnormv3_readvariableop_resource5batch_normalization_195/FusedBatchNormV3:batch_mean:08^batch_normalization_195/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_195/AssignNewValue?
(batch_normalization_195/AssignNewValue_1AssignVariableOpBbatch_normalization_195_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_195/FusedBatchNormV3:batch_variance:0:^batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_195/AssignNewValue_1?
 conv2d_241/Conv2D/ReadVariableOpReadVariableOp)conv2d_241_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_241/Conv2D/ReadVariableOp?
conv2d_241/Conv2DConv2D,batch_normalization_195/FusedBatchNormV3:y:0(conv2d_241/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_241/Conv2D?
!conv2d_241/BiasAdd/ReadVariableOpReadVariableOp*conv2d_241_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_241/BiasAdd/ReadVariableOp?
conv2d_241/BiasAddBiasAddconv2d_241/Conv2D:output:0)conv2d_241/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_241/BiasAdd?
conv2d_241/ReluReluconv2d_241/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_241/Relu?
&batch_normalization_196/ReadVariableOpReadVariableOp/batch_normalization_196_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_196/ReadVariableOp?
(batch_normalization_196/ReadVariableOp_1ReadVariableOp1batch_normalization_196_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_196/ReadVariableOp_1?
7batch_normalization_196/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_196_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_196/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_196_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_196/FusedBatchNormV3FusedBatchNormV3conv2d_241/Relu:activations:0.batch_normalization_196/ReadVariableOp:value:00batch_normalization_196/ReadVariableOp_1:value:0?batch_normalization_196/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_196/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_196/FusedBatchNormV3?
&batch_normalization_196/AssignNewValueAssignVariableOp@batch_normalization_196_fusedbatchnormv3_readvariableop_resource5batch_normalization_196/FusedBatchNormV3:batch_mean:08^batch_normalization_196/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_196/AssignNewValue?
(batch_normalization_196/AssignNewValue_1AssignVariableOpBbatch_normalization_196_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_196/FusedBatchNormV3:batch_variance:0:^batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_196/AssignNewValue_1?
 conv2d_242/Conv2D/ReadVariableOpReadVariableOp)conv2d_242_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_242/Conv2D/ReadVariableOp?
conv2d_242/Conv2DConv2D,batch_normalization_196/FusedBatchNormV3:y:0(conv2d_242/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_242/Conv2D?
!conv2d_242/BiasAdd/ReadVariableOpReadVariableOp*conv2d_242_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_242/BiasAdd/ReadVariableOp?
conv2d_242/BiasAddBiasAddconv2d_242/Conv2D:output:0)conv2d_242/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_242/BiasAdd?
conv2d_242/ReluReluconv2d_242/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_242/Relu?
&batch_normalization_197/ReadVariableOpReadVariableOp/batch_normalization_197_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_197/ReadVariableOp?
(batch_normalization_197/ReadVariableOp_1ReadVariableOp1batch_normalization_197_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_197/ReadVariableOp_1?
7batch_normalization_197/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_197_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_197/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_197_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_197/FusedBatchNormV3FusedBatchNormV3conv2d_242/Relu:activations:0.batch_normalization_197/ReadVariableOp:value:00batch_normalization_197/ReadVariableOp_1:value:0?batch_normalization_197/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_197/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_197/FusedBatchNormV3?
&batch_normalization_197/AssignNewValueAssignVariableOp@batch_normalization_197_fusedbatchnormv3_readvariableop_resource5batch_normalization_197/FusedBatchNormV3:batch_mean:08^batch_normalization_197/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_197/AssignNewValue?
(batch_normalization_197/AssignNewValue_1AssignVariableOpBbatch_normalization_197_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_197/FusedBatchNormV3:batch_variance:0:^batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_197/AssignNewValue_1?
max_pooling2d_44/MaxPoolMaxPool,batch_normalization_197/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_44/MaxPoolu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_17/Const?
flatten_17/ReshapeReshape!max_pooling2d_44/MaxPool:output:0flatten_17/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_17/Reshape?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_35/MatMul/ReadVariableOp?
dense_35/MatMulMatMulflatten_17/Reshape:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_35/MatMul?
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_35/BiasAdd/ReadVariableOp?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_35/BiasAdd|
dense_35/SigmoidSigmoiddense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_35/Sigmoido
IdentityIdentitydense_35/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_193/AssignNewValue)^batch_normalization_193/AssignNewValue_18^batch_normalization_193/FusedBatchNormV3/ReadVariableOp:^batch_normalization_193/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_193/ReadVariableOp)^batch_normalization_193/ReadVariableOp_1'^batch_normalization_194/AssignNewValue)^batch_normalization_194/AssignNewValue_18^batch_normalization_194/FusedBatchNormV3/ReadVariableOp:^batch_normalization_194/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_194/ReadVariableOp)^batch_normalization_194/ReadVariableOp_1'^batch_normalization_195/AssignNewValue)^batch_normalization_195/AssignNewValue_18^batch_normalization_195/FusedBatchNormV3/ReadVariableOp:^batch_normalization_195/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_195/ReadVariableOp)^batch_normalization_195/ReadVariableOp_1'^batch_normalization_196/AssignNewValue)^batch_normalization_196/AssignNewValue_18^batch_normalization_196/FusedBatchNormV3/ReadVariableOp:^batch_normalization_196/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_196/ReadVariableOp)^batch_normalization_196/ReadVariableOp_1'^batch_normalization_197/AssignNewValue)^batch_normalization_197/AssignNewValue_18^batch_normalization_197/FusedBatchNormV3/ReadVariableOp:^batch_normalization_197/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_197/ReadVariableOp)^batch_normalization_197/ReadVariableOp_1"^conv2d_238/BiasAdd/ReadVariableOp!^conv2d_238/Conv2D/ReadVariableOp"^conv2d_239/BiasAdd/ReadVariableOp!^conv2d_239/Conv2D/ReadVariableOp"^conv2d_240/BiasAdd/ReadVariableOp!^conv2d_240/Conv2D/ReadVariableOp"^conv2d_241/BiasAdd/ReadVariableOp!^conv2d_241/Conv2D/ReadVariableOp"^conv2d_242/BiasAdd/ReadVariableOp!^conv2d_242/Conv2D/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_193/AssignNewValue&batch_normalization_193/AssignNewValue2T
(batch_normalization_193/AssignNewValue_1(batch_normalization_193/AssignNewValue_12r
7batch_normalization_193/FusedBatchNormV3/ReadVariableOp7batch_normalization_193/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_193/FusedBatchNormV3/ReadVariableOp_19batch_normalization_193/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_193/ReadVariableOp&batch_normalization_193/ReadVariableOp2T
(batch_normalization_193/ReadVariableOp_1(batch_normalization_193/ReadVariableOp_12P
&batch_normalization_194/AssignNewValue&batch_normalization_194/AssignNewValue2T
(batch_normalization_194/AssignNewValue_1(batch_normalization_194/AssignNewValue_12r
7batch_normalization_194/FusedBatchNormV3/ReadVariableOp7batch_normalization_194/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_194/FusedBatchNormV3/ReadVariableOp_19batch_normalization_194/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_194/ReadVariableOp&batch_normalization_194/ReadVariableOp2T
(batch_normalization_194/ReadVariableOp_1(batch_normalization_194/ReadVariableOp_12P
&batch_normalization_195/AssignNewValue&batch_normalization_195/AssignNewValue2T
(batch_normalization_195/AssignNewValue_1(batch_normalization_195/AssignNewValue_12r
7batch_normalization_195/FusedBatchNormV3/ReadVariableOp7batch_normalization_195/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_195/FusedBatchNormV3/ReadVariableOp_19batch_normalization_195/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_195/ReadVariableOp&batch_normalization_195/ReadVariableOp2T
(batch_normalization_195/ReadVariableOp_1(batch_normalization_195/ReadVariableOp_12P
&batch_normalization_196/AssignNewValue&batch_normalization_196/AssignNewValue2T
(batch_normalization_196/AssignNewValue_1(batch_normalization_196/AssignNewValue_12r
7batch_normalization_196/FusedBatchNormV3/ReadVariableOp7batch_normalization_196/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_196/FusedBatchNormV3/ReadVariableOp_19batch_normalization_196/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_196/ReadVariableOp&batch_normalization_196/ReadVariableOp2T
(batch_normalization_196/ReadVariableOp_1(batch_normalization_196/ReadVariableOp_12P
&batch_normalization_197/AssignNewValue&batch_normalization_197/AssignNewValue2T
(batch_normalization_197/AssignNewValue_1(batch_normalization_197/AssignNewValue_12r
7batch_normalization_197/FusedBatchNormV3/ReadVariableOp7batch_normalization_197/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_197/FusedBatchNormV3/ReadVariableOp_19batch_normalization_197/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_197/ReadVariableOp&batch_normalization_197/ReadVariableOp2T
(batch_normalization_197/ReadVariableOp_1(batch_normalization_197/ReadVariableOp_12F
!conv2d_238/BiasAdd/ReadVariableOp!conv2d_238/BiasAdd/ReadVariableOp2D
 conv2d_238/Conv2D/ReadVariableOp conv2d_238/Conv2D/ReadVariableOp2F
!conv2d_239/BiasAdd/ReadVariableOp!conv2d_239/BiasAdd/ReadVariableOp2D
 conv2d_239/Conv2D/ReadVariableOp conv2d_239/Conv2D/ReadVariableOp2F
!conv2d_240/BiasAdd/ReadVariableOp!conv2d_240/BiasAdd/ReadVariableOp2D
 conv2d_240/Conv2D/ReadVariableOp conv2d_240/Conv2D/ReadVariableOp2F
!conv2d_241/BiasAdd/ReadVariableOp!conv2d_241/BiasAdd/ReadVariableOp2D
 conv2d_241/Conv2D/ReadVariableOp conv2d_241/Conv2D/ReadVariableOp2F
!conv2d_242/BiasAdd/ReadVariableOp!conv2d_242/BiasAdd/ReadVariableOp2D
 conv2d_242/Conv2D/ReadVariableOp conv2d_242/Conv2D/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_9614176

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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616311

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
9__inference_batch_normalization_196_layer_call_fn_9616211

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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_96138632
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
9__inference_batch_normalization_194_layer_call_fn_9615916

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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_96141622
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
??
?
#__inference__traced_restore_9616705
file_prefix<
"assignvariableop_conv2d_238_kernel:`0
"assignvariableop_1_conv2d_238_bias:`>
0assignvariableop_2_batch_normalization_193_gamma:`=
/assignvariableop_3_batch_normalization_193_beta:`D
6assignvariableop_4_batch_normalization_193_moving_mean:`H
:assignvariableop_5_batch_normalization_193_moving_variance:`?
$assignvariableop_6_conv2d_239_kernel:`?1
"assignvariableop_7_conv2d_239_bias:	??
0assignvariableop_8_batch_normalization_194_gamma:	?>
/assignvariableop_9_batch_normalization_194_beta:	?F
7assignvariableop_10_batch_normalization_194_moving_mean:	?J
;assignvariableop_11_batch_normalization_194_moving_variance:	?A
%assignvariableop_12_conv2d_240_kernel:??2
#assignvariableop_13_conv2d_240_bias:	?@
1assignvariableop_14_batch_normalization_195_gamma:	??
0assignvariableop_15_batch_normalization_195_beta:	?F
7assignvariableop_16_batch_normalization_195_moving_mean:	?J
;assignvariableop_17_batch_normalization_195_moving_variance:	?A
%assignvariableop_18_conv2d_241_kernel:??2
#assignvariableop_19_conv2d_241_bias:	?@
1assignvariableop_20_batch_normalization_196_gamma:	??
0assignvariableop_21_batch_normalization_196_beta:	?F
7assignvariableop_22_batch_normalization_196_moving_mean:	?J
;assignvariableop_23_batch_normalization_196_moving_variance:	?A
%assignvariableop_24_conv2d_242_kernel:??2
#assignvariableop_25_conv2d_242_bias:	?@
1assignvariableop_26_batch_normalization_197_gamma:	??
0assignvariableop_27_batch_normalization_197_beta:	?F
7assignvariableop_28_batch_normalization_197_moving_mean:	?J
;assignvariableop_29_batch_normalization_197_moving_variance:	?6
#assignvariableop_30_dense_35_kernel:	?(/
!assignvariableop_31_dense_35_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_238_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_238_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_193_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_193_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_193_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_193_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_239_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_239_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_194_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_194_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_194_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_194_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_240_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_240_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_195_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_195_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_195_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_195_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_241_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_241_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_196_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_196_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_196_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_196_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_242_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_242_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_197_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_197_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_197_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_197_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_35_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_35_biasIdentity_31:output:0"/device:CPU:0*
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
?
N
2__inference_max_pooling2d_44_layer_call_fn_9616401

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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_96143142
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
E__inference_dense_35_layer_call_and_return_conditional_losses_9616423

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615659

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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615713

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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616149

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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_9613510

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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616167

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
9__inference_batch_normalization_194_layer_call_fn_9615903

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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_96135892
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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9614112

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
conv2d_238_inputC
"serving_default_conv2d_238_input:0???????????<
dense_350
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
+:)`2conv2d_238/kernel
:`2conv2d_238/bias
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
+:)`2batch_normalization_193/gamma
*:(`2batch_normalization_193/beta
3:1` (2#batch_normalization_193/moving_mean
7:5` (2'batch_normalization_193/moving_variance
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
,:*`?2conv2d_239/kernel
:?2conv2d_239/bias
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
,:*?2batch_normalization_194/gamma
+:)?2batch_normalization_194/beta
4:2? (2#batch_normalization_194/moving_mean
8:6? (2'batch_normalization_194/moving_variance
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
-:+??2conv2d_240/kernel
:?2conv2d_240/bias
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
,:*?2batch_normalization_195/gamma
+:)?2batch_normalization_195/beta
4:2? (2#batch_normalization_195/moving_mean
8:6? (2'batch_normalization_195/moving_variance
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
-:+??2conv2d_241/kernel
:?2conv2d_241/bias
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
,:*?2batch_normalization_196/gamma
+:)?2batch_normalization_196/beta
4:2? (2#batch_normalization_196/moving_mean
8:6? (2'batch_normalization_196/moving_variance
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
-:+??2conv2d_242/kernel
:?2conv2d_242/bias
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
,:*?2batch_normalization_197/gamma
+:)?2batch_normalization_197/beta
4:2? (2#batch_normalization_197/moving_mean
8:6? (2'batch_normalization_197/moving_variance
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
": 	?(2dense_35/kernel
:2dense_35/bias
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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615362
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615483
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615083
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615166?
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
"__inference__wrapped_model_9613375conv2d_238_input"?
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
,__inference_alex_net_8_layer_call_fn_9614409
,__inference_alex_net_8_layer_call_fn_9615552
,__inference_alex_net_8_layer_call_fn_9615621
,__inference_alex_net_8_layer_call_fn_9615000?
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
G__inference_conv2d_238_layer_call_and_return_conditional_losses_9615632?
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
,__inference_conv2d_238_layer_call_fn_9615641?
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
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615659
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615677
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615695
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615713?
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
9__inference_batch_normalization_193_layer_call_fn_9615726
9__inference_batch_normalization_193_layer_call_fn_9615739
9__inference_batch_normalization_193_layer_call_fn_9615752
9__inference_batch_normalization_193_layer_call_fn_9615765?
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
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_9615770
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_9615775?
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
2__inference_max_pooling2d_42_layer_call_fn_9615780
2__inference_max_pooling2d_42_layer_call_fn_9615785?
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
G__inference_conv2d_239_layer_call_and_return_conditional_losses_9615796?
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
,__inference_conv2d_239_layer_call_fn_9615805?
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
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615823
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615841
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615859
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615877?
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
9__inference_batch_normalization_194_layer_call_fn_9615890
9__inference_batch_normalization_194_layer_call_fn_9615903
9__inference_batch_normalization_194_layer_call_fn_9615916
9__inference_batch_normalization_194_layer_call_fn_9615929?
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
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_9615934
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_9615939?
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
2__inference_max_pooling2d_43_layer_call_fn_9615944
2__inference_max_pooling2d_43_layer_call_fn_9615949?
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
G__inference_conv2d_240_layer_call_and_return_conditional_losses_9615960?
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
,__inference_conv2d_240_layer_call_fn_9615969?
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
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9615987
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9616005
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9616023
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9616041?
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
9__inference_batch_normalization_195_layer_call_fn_9616054
9__inference_batch_normalization_195_layer_call_fn_9616067
9__inference_batch_normalization_195_layer_call_fn_9616080
9__inference_batch_normalization_195_layer_call_fn_9616093?
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
G__inference_conv2d_241_layer_call_and_return_conditional_losses_9616104?
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
,__inference_conv2d_241_layer_call_fn_9616113?
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
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616131
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616149
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616167
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616185?
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
9__inference_batch_normalization_196_layer_call_fn_9616198
9__inference_batch_normalization_196_layer_call_fn_9616211
9__inference_batch_normalization_196_layer_call_fn_9616224
9__inference_batch_normalization_196_layer_call_fn_9616237?
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
G__inference_conv2d_242_layer_call_and_return_conditional_losses_9616248?
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
,__inference_conv2d_242_layer_call_fn_9616257?
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
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616275
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616293
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616311
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616329?
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
9__inference_batch_normalization_197_layer_call_fn_9616342
9__inference_batch_normalization_197_layer_call_fn_9616355
9__inference_batch_normalization_197_layer_call_fn_9616368
9__inference_batch_normalization_197_layer_call_fn_9616381?
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
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_9616386
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_9616391?
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
2__inference_max_pooling2d_44_layer_call_fn_9616396
2__inference_max_pooling2d_44_layer_call_fn_9616401?
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_9616407?
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
,__inference_flatten_17_layer_call_fn_9616412?
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
E__inference_dense_35_layer_call_and_return_conditional_losses_9616423?
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
*__inference_dense_35_layer_call_fn_9616432?
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
%__inference_signature_wrapper_9615241conv2d_238_input"?
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
"__inference__wrapped_model_9613375?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_238_input???????????
? "3?0
.
dense_35"?
dense_35??????????
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615083?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_238_input???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615166?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_238_input???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615362?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
G__inference_alex_net_8_layer_call_and_return_conditional_losses_9615483?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
,__inference_alex_net_8_layer_call_fn_9614409?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_238_input???????????
p 

 
? "???????????
,__inference_alex_net_8_layer_call_fn_9615000?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_238_input???????????
p

 
? "???????????
,__inference_alex_net_8_layer_call_fn_9615552  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_alex_net_8_layer_call_fn_9615621  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615659? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615677? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615695r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_193_layer_call_and_return_conditional_losses_9615713r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_193_layer_call_fn_9615726? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_193_layer_call_fn_9615739? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_193_layer_call_fn_9615752e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_193_layer_call_fn_9615765e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615823?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615841?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615859t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_194_layer_call_and_return_conditional_losses_9615877t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_194_layer_call_fn_9615890?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_194_layer_call_fn_9615903?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_194_layer_call_fn_9615916g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_194_layer_call_fn_9615929g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9615987?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9616005?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9616023tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_195_layer_call_and_return_conditional_losses_9616041tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_195_layer_call_fn_9616054?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_195_layer_call_fn_9616067?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_195_layer_call_fn_9616080gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_195_layer_call_fn_9616093gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616131?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616149?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616167tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_196_layer_call_and_return_conditional_losses_9616185tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_196_layer_call_fn_9616198?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_196_layer_call_fn_9616211?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_196_layer_call_fn_9616224gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_196_layer_call_fn_9616237gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616275?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616293?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616311tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_197_layer_call_and_return_conditional_losses_9616329tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_197_layer_call_fn_9616342?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_197_layer_call_fn_9616355?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_197_layer_call_fn_9616368gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_197_layer_call_fn_9616381gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_238_layer_call_and_return_conditional_losses_9615632n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_238_layer_call_fn_9615641a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_239_layer_call_and_return_conditional_losses_9615796m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_239_layer_call_fn_9615805`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_240_layer_call_and_return_conditional_losses_9615960n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_240_layer_call_fn_9615969a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_241_layer_call_and_return_conditional_losses_9616104nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_241_layer_call_fn_9616113aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_242_layer_call_and_return_conditional_losses_9616248nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_242_layer_call_fn_9616257aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_35_layer_call_and_return_conditional_losses_9616423]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_35_layer_call_fn_9616432Pqr0?-
&?#
!?
inputs??????????(
? "???????????
G__inference_flatten_17_layer_call_and_return_conditional_losses_9616407b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
,__inference_flatten_17_layer_call_fn_9616412U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_9615770?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_42_layer_call_and_return_conditional_losses_9615775h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_42_layer_call_fn_9615780?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_42_layer_call_fn_9615785[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_9615934?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_43_layer_call_and_return_conditional_losses_9615939j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_43_layer_call_fn_9615944?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_43_layer_call_fn_9615949]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_9616386?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_9616391j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_44_layer_call_fn_9616396?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_44_layer_call_fn_9616401]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_9615241?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_238_input4?1
conv2d_238_input???????????"3?0
.
dense_35"?
dense_35?????????