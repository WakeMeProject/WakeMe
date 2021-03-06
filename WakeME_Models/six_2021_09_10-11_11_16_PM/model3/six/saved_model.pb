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
conv2d_211/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_211/kernel

%conv2d_211/kernel/Read/ReadVariableOpReadVariableOpconv2d_211/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_211/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_211/bias
o
#conv2d_211/bias/Read/ReadVariableOpReadVariableOpconv2d_211/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_171/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_171/gamma
?
1batch_normalization_171/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_171/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_171/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_171/beta
?
0batch_normalization_171/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_171/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_171/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_171/moving_mean
?
7batch_normalization_171/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_171/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_171/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_171/moving_variance
?
;batch_normalization_171/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_171/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_212/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_212/kernel
?
%conv2d_212/kernel/Read/ReadVariableOpReadVariableOpconv2d_212/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_212/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_212/bias
p
#conv2d_212/bias/Read/ReadVariableOpReadVariableOpconv2d_212/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_172/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_172/gamma
?
1batch_normalization_172/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_172/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_172/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_172/beta
?
0batch_normalization_172/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_172/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_172/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_172/moving_mean
?
7batch_normalization_172/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_172/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_172/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_172/moving_variance
?
;batch_normalization_172/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_172/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_213/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_213/kernel
?
%conv2d_213/kernel/Read/ReadVariableOpReadVariableOpconv2d_213/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_213/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_213/bias
p
#conv2d_213/bias/Read/ReadVariableOpReadVariableOpconv2d_213/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_173/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_173/gamma
?
1batch_normalization_173/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_173/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_173/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_173/beta
?
0batch_normalization_173/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_173/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_173/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_173/moving_mean
?
7batch_normalization_173/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_173/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_173/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_173/moving_variance
?
;batch_normalization_173/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_173/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_214/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_214/kernel
?
%conv2d_214/kernel/Read/ReadVariableOpReadVariableOpconv2d_214/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_214/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_214/bias
p
#conv2d_214/bias/Read/ReadVariableOpReadVariableOpconv2d_214/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_174/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_174/gamma
?
1batch_normalization_174/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_174/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_174/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_174/beta
?
0batch_normalization_174/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_174/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_174/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_174/moving_mean
?
7batch_normalization_174/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_174/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_174/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_174/moving_variance
?
;batch_normalization_174/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_174/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_215/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_215/kernel
?
%conv2d_215/kernel/Read/ReadVariableOpReadVariableOpconv2d_215/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_215/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_215/bias
p
#conv2d_215/bias/Read/ReadVariableOpReadVariableOpconv2d_215/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_175/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_175/gamma
?
1batch_normalization_175/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_175/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_175/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_175/beta
?
0batch_normalization_175/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_175/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_175/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_175/moving_mean
?
7batch_normalization_175/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_175/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_175/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_175/moving_variance
?
;batch_normalization_175/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_175/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_31/kernel
t
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes
:	?(*
dtype0
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
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
VARIABLE_VALUEconv2d_211/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_211/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_171/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_171/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_171/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_171/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_212/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_212/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_172/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_172/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_172/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_172/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_213/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_213/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_173/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_173/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_173/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_173/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_214/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_214/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_174/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_174/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_174/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_174/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_215/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_215/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_175/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_175/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_175/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_175/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_31/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_31/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_211_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_211_inputconv2d_211/kernelconv2d_211/biasbatch_normalization_171/gammabatch_normalization_171/beta#batch_normalization_171/moving_mean'batch_normalization_171/moving_varianceconv2d_212/kernelconv2d_212/biasbatch_normalization_172/gammabatch_normalization_172/beta#batch_normalization_172/moving_mean'batch_normalization_172/moving_varianceconv2d_213/kernelconv2d_213/biasbatch_normalization_173/gammabatch_normalization_173/beta#batch_normalization_173/moving_mean'batch_normalization_173/moving_varianceconv2d_214/kernelconv2d_214/biasbatch_normalization_174/gammabatch_normalization_174/beta#batch_normalization_174/moving_mean'batch_normalization_174/moving_varianceconv2d_215/kernelconv2d_215/biasbatch_normalization_175/gammabatch_normalization_175/beta#batch_normalization_175/moving_mean'batch_normalization_175/moving_variancedense_31/kerneldense_31/bias*,
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
%__inference_signature_wrapper_8421637
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_211/kernel/Read/ReadVariableOp#conv2d_211/bias/Read/ReadVariableOp1batch_normalization_171/gamma/Read/ReadVariableOp0batch_normalization_171/beta/Read/ReadVariableOp7batch_normalization_171/moving_mean/Read/ReadVariableOp;batch_normalization_171/moving_variance/Read/ReadVariableOp%conv2d_212/kernel/Read/ReadVariableOp#conv2d_212/bias/Read/ReadVariableOp1batch_normalization_172/gamma/Read/ReadVariableOp0batch_normalization_172/beta/Read/ReadVariableOp7batch_normalization_172/moving_mean/Read/ReadVariableOp;batch_normalization_172/moving_variance/Read/ReadVariableOp%conv2d_213/kernel/Read/ReadVariableOp#conv2d_213/bias/Read/ReadVariableOp1batch_normalization_173/gamma/Read/ReadVariableOp0batch_normalization_173/beta/Read/ReadVariableOp7batch_normalization_173/moving_mean/Read/ReadVariableOp;batch_normalization_173/moving_variance/Read/ReadVariableOp%conv2d_214/kernel/Read/ReadVariableOp#conv2d_214/bias/Read/ReadVariableOp1batch_normalization_174/gamma/Read/ReadVariableOp0batch_normalization_174/beta/Read/ReadVariableOp7batch_normalization_174/moving_mean/Read/ReadVariableOp;batch_normalization_174/moving_variance/Read/ReadVariableOp%conv2d_215/kernel/Read/ReadVariableOp#conv2d_215/bias/Read/ReadVariableOp1batch_normalization_175/gamma/Read/ReadVariableOp0batch_normalization_175/beta/Read/ReadVariableOp7batch_normalization_175/moving_mean/Read/ReadVariableOp;batch_normalization_175/moving_variance/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_8422971
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_211/kernelconv2d_211/biasbatch_normalization_171/gammabatch_normalization_171/beta#batch_normalization_171/moving_mean'batch_normalization_171/moving_varianceconv2d_212/kernelconv2d_212/biasbatch_normalization_172/gammabatch_normalization_172/beta#batch_normalization_172/moving_mean'batch_normalization_172/moving_varianceconv2d_213/kernelconv2d_213/biasbatch_normalization_173/gammabatch_normalization_173/beta#batch_normalization_173/moving_mean'batch_normalization_173/moving_varianceconv2d_214/kernelconv2d_214/biasbatch_normalization_174/gammabatch_normalization_174/beta#batch_normalization_174/moving_mean'batch_normalization_174/moving_varianceconv2d_215/kernelconv2d_215/biasbatch_normalization_175/gammabatch_normalization_175/beta#batch_normalization_175/moving_mean'batch_normalization_175/moving_variancedense_31/kerneldense_31/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_8423101??
?	
?
9__inference_batch_normalization_171_layer_call_fn_8422148

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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_84205082
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
G__inference_conv2d_215_layer_call_and_return_conditional_losses_8420673

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
?
?
,__inference_alex_net_7_layer_call_fn_8422017

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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_84212602
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
9__inference_batch_normalization_174_layer_call_fn_8422607

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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_84202592
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
G__inference_conv2d_212_layer_call_and_return_conditional_losses_8422192

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
?
N
2__inference_max_pooling2d_37_layer_call_fn_8422176

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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_84199062
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
?
?
*__inference_dense_31_layer_call_fn_8422828

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
E__inference_dense_31_layer_call_and_return_conditional_losses_84207312
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
?
i
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_8422330

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
9__inference_batch_normalization_172_layer_call_fn_8422286

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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_84199412
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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8420089

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
c
G__inference_flatten_15_layer_call_and_return_conditional_losses_8420718

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
?
N
2__inference_max_pooling2d_38_layer_call_fn_8422340

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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_84200542
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
G__inference_conv2d_212_layer_call_and_return_conditional_losses_8420535

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
,__inference_conv2d_211_layer_call_fn_8422037

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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_84204852
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
?
?
%__inference_signature_wrapper_8421637
conv2d_211_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_211_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_84197712
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
_user_specified_nameconv2d_211_input
?	
?
9__inference_batch_normalization_173_layer_call_fn_8422450

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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_84200892
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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8420967

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
9__inference_batch_normalization_174_layer_call_fn_8422633

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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_84209132
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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8420558

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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_8422335

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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8420608

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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8420913

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
9__inference_batch_normalization_175_layer_call_fn_8422738

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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_84203412
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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8420696

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
?
?
,__inference_alex_net_7_layer_call_fn_8420805
conv2d_211_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_211_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_84207382
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
_user_specified_nameconv2d_211_input
?
?
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422273

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
9__inference_batch_normalization_173_layer_call_fn_8422476

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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_84206082
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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8419837

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
9__inference_batch_normalization_174_layer_call_fn_8422620

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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_84206522
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
?T
?
 __inference__traced_save_8422971
file_prefix0
,savev2_conv2d_211_kernel_read_readvariableop.
*savev2_conv2d_211_bias_read_readvariableop<
8savev2_batch_normalization_171_gamma_read_readvariableop;
7savev2_batch_normalization_171_beta_read_readvariableopB
>savev2_batch_normalization_171_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_171_moving_variance_read_readvariableop0
,savev2_conv2d_212_kernel_read_readvariableop.
*savev2_conv2d_212_bias_read_readvariableop<
8savev2_batch_normalization_172_gamma_read_readvariableop;
7savev2_batch_normalization_172_beta_read_readvariableopB
>savev2_batch_normalization_172_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_172_moving_variance_read_readvariableop0
,savev2_conv2d_213_kernel_read_readvariableop.
*savev2_conv2d_213_bias_read_readvariableop<
8savev2_batch_normalization_173_gamma_read_readvariableop;
7savev2_batch_normalization_173_beta_read_readvariableopB
>savev2_batch_normalization_173_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_173_moving_variance_read_readvariableop0
,savev2_conv2d_214_kernel_read_readvariableop.
*savev2_conv2d_214_bias_read_readvariableop<
8savev2_batch_normalization_174_gamma_read_readvariableop;
7savev2_batch_normalization_174_beta_read_readvariableopB
>savev2_batch_normalization_174_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_174_moving_variance_read_readvariableop0
,savev2_conv2d_215_kernel_read_readvariableop.
*savev2_conv2d_215_bias_read_readvariableop<
8savev2_batch_normalization_175_gamma_read_readvariableop;
7savev2_batch_normalization_175_beta_read_readvariableopB
>savev2_batch_normalization_175_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_175_moving_variance_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_211_kernel_read_readvariableop*savev2_conv2d_211_bias_read_readvariableop8savev2_batch_normalization_171_gamma_read_readvariableop7savev2_batch_normalization_171_beta_read_readvariableop>savev2_batch_normalization_171_moving_mean_read_readvariableopBsavev2_batch_normalization_171_moving_variance_read_readvariableop,savev2_conv2d_212_kernel_read_readvariableop*savev2_conv2d_212_bias_read_readvariableop8savev2_batch_normalization_172_gamma_read_readvariableop7savev2_batch_normalization_172_beta_read_readvariableop>savev2_batch_normalization_172_moving_mean_read_readvariableopBsavev2_batch_normalization_172_moving_variance_read_readvariableop,savev2_conv2d_213_kernel_read_readvariableop*savev2_conv2d_213_bias_read_readvariableop8savev2_batch_normalization_173_gamma_read_readvariableop7savev2_batch_normalization_173_beta_read_readvariableop>savev2_batch_normalization_173_moving_mean_read_readvariableopBsavev2_batch_normalization_173_moving_variance_read_readvariableop,savev2_conv2d_214_kernel_read_readvariableop*savev2_conv2d_214_bias_read_readvariableop8savev2_batch_normalization_174_gamma_read_readvariableop7savev2_batch_normalization_174_beta_read_readvariableop>savev2_batch_normalization_174_moving_mean_read_readvariableopBsavev2_batch_normalization_174_moving_variance_read_readvariableop,savev2_conv2d_215_kernel_read_readvariableop*savev2_conv2d_215_bias_read_readvariableop8savev2_batch_normalization_175_gamma_read_readvariableop7savev2_batch_normalization_175_beta_read_readvariableop>savev2_batch_normalization_175_moving_mean_read_readvariableopBsavev2_batch_normalization_175_moving_variance_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422527

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
2__inference_max_pooling2d_39_layer_call_fn_8422792

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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_84204542
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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422689

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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422383

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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422219

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
?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421562
conv2d_211_input,
conv2d_211_8421482:` 
conv2d_211_8421484:`-
batch_normalization_171_8421487:`-
batch_normalization_171_8421489:`-
batch_normalization_171_8421491:`-
batch_normalization_171_8421493:`-
conv2d_212_8421497:`?!
conv2d_212_8421499:	?.
batch_normalization_172_8421502:	?.
batch_normalization_172_8421504:	?.
batch_normalization_172_8421506:	?.
batch_normalization_172_8421508:	?.
conv2d_213_8421512:??!
conv2d_213_8421514:	?.
batch_normalization_173_8421517:	?.
batch_normalization_173_8421519:	?.
batch_normalization_173_8421521:	?.
batch_normalization_173_8421523:	?.
conv2d_214_8421526:??!
conv2d_214_8421528:	?.
batch_normalization_174_8421531:	?.
batch_normalization_174_8421533:	?.
batch_normalization_174_8421535:	?.
batch_normalization_174_8421537:	?.
conv2d_215_8421540:??!
conv2d_215_8421542:	?.
batch_normalization_175_8421545:	?.
batch_normalization_175_8421547:	?.
batch_normalization_175_8421549:	?.
batch_normalization_175_8421551:	?#
dense_31_8421556:	?(
dense_31_8421558:
identity??/batch_normalization_171/StatefulPartitionedCall?/batch_normalization_172/StatefulPartitionedCall?/batch_normalization_173/StatefulPartitionedCall?/batch_normalization_174/StatefulPartitionedCall?/batch_normalization_175/StatefulPartitionedCall?"conv2d_211/StatefulPartitionedCall?"conv2d_212/StatefulPartitionedCall?"conv2d_213/StatefulPartitionedCall?"conv2d_214/StatefulPartitionedCall?"conv2d_215/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
"conv2d_211/StatefulPartitionedCallStatefulPartitionedCallconv2d_211_inputconv2d_211_8421482conv2d_211_8421484*
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_84204852$
"conv2d_211/StatefulPartitionedCall?
/batch_normalization_171/StatefulPartitionedCallStatefulPartitionedCall+conv2d_211/StatefulPartitionedCall:output:0batch_normalization_171_8421487batch_normalization_171_8421489batch_normalization_171_8421491batch_normalization_171_8421493*
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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_842108521
/batch_normalization_171/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall8batch_normalization_171/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_84205222"
 max_pooling2d_37/PartitionedCall?
"conv2d_212/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_212_8421497conv2d_212_8421499*
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
G__inference_conv2d_212_layer_call_and_return_conditional_losses_84205352$
"conv2d_212/StatefulPartitionedCall?
/batch_normalization_172/StatefulPartitionedCallStatefulPartitionedCall+conv2d_212/StatefulPartitionedCall:output:0batch_normalization_172_8421502batch_normalization_172_8421504batch_normalization_172_8421506batch_normalization_172_8421508*
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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_842102621
/batch_normalization_172/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall8batch_normalization_172/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_84205722"
 max_pooling2d_38/PartitionedCall?
"conv2d_213/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_213_8421512conv2d_213_8421514*
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
G__inference_conv2d_213_layer_call_and_return_conditional_losses_84205852$
"conv2d_213/StatefulPartitionedCall?
/batch_normalization_173/StatefulPartitionedCallStatefulPartitionedCall+conv2d_213/StatefulPartitionedCall:output:0batch_normalization_173_8421517batch_normalization_173_8421519batch_normalization_173_8421521batch_normalization_173_8421523*
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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_842096721
/batch_normalization_173/StatefulPartitionedCall?
"conv2d_214/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_173/StatefulPartitionedCall:output:0conv2d_214_8421526conv2d_214_8421528*
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
G__inference_conv2d_214_layer_call_and_return_conditional_losses_84206292$
"conv2d_214/StatefulPartitionedCall?
/batch_normalization_174/StatefulPartitionedCallStatefulPartitionedCall+conv2d_214/StatefulPartitionedCall:output:0batch_normalization_174_8421531batch_normalization_174_8421533batch_normalization_174_8421535batch_normalization_174_8421537*
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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_842091321
/batch_normalization_174/StatefulPartitionedCall?
"conv2d_215/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_174/StatefulPartitionedCall:output:0conv2d_215_8421540conv2d_215_8421542*
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
G__inference_conv2d_215_layer_call_and_return_conditional_losses_84206732$
"conv2d_215/StatefulPartitionedCall?
/batch_normalization_175/StatefulPartitionedCallStatefulPartitionedCall+conv2d_215/StatefulPartitionedCall:output:0batch_normalization_175_8421545batch_normalization_175_8421547batch_normalization_175_8421549batch_normalization_175_8421551*
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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_842085921
/batch_normalization_175/StatefulPartitionedCall?
 max_pooling2d_39/PartitionedCallPartitionedCall8batch_normalization_175/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_84207102"
 max_pooling2d_39/PartitionedCall?
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
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
G__inference_flatten_15_layer_call_and_return_conditional_losses_84207182
flatten_15/PartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_31_8421556dense_31_8421558*
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
E__inference_dense_31_layer_call_and_return_conditional_losses_84207312"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_171/StatefulPartitionedCall0^batch_normalization_172/StatefulPartitionedCall0^batch_normalization_173/StatefulPartitionedCall0^batch_normalization_174/StatefulPartitionedCall0^batch_normalization_175/StatefulPartitionedCall#^conv2d_211/StatefulPartitionedCall#^conv2d_212/StatefulPartitionedCall#^conv2d_213/StatefulPartitionedCall#^conv2d_214/StatefulPartitionedCall#^conv2d_215/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_171/StatefulPartitionedCall/batch_normalization_171/StatefulPartitionedCall2b
/batch_normalization_172/StatefulPartitionedCall/batch_normalization_172/StatefulPartitionedCall2b
/batch_normalization_173/StatefulPartitionedCall/batch_normalization_173/StatefulPartitionedCall2b
/batch_normalization_174/StatefulPartitionedCall/batch_normalization_174/StatefulPartitionedCall2b
/batch_normalization_175/StatefulPartitionedCall/batch_normalization_175/StatefulPartitionedCall2H
"conv2d_211/StatefulPartitionedCall"conv2d_211/StatefulPartitionedCall2H
"conv2d_212/StatefulPartitionedCall"conv2d_212/StatefulPartitionedCall2H
"conv2d_213/StatefulPartitionedCall"conv2d_213/StatefulPartitionedCall2H
"conv2d_214/StatefulPartitionedCall"conv2d_214/StatefulPartitionedCall2H
"conv2d_215/StatefulPartitionedCall"conv2d_215/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_211_input
?	
?
9__inference_batch_normalization_171_layer_call_fn_8422122

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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_84197932
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
?
N
2__inference_max_pooling2d_38_layer_call_fn_8422345

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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_84205722
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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422419

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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422707

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
E__inference_dense_31_layer_call_and_return_conditional_losses_8420731

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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8420859

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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_8420710

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
?
?
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422437

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
?
?
9__inference_batch_normalization_171_layer_call_fn_8422161

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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_84210852
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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8420133

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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8420652

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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_8420522

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
?Y
?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421479
conv2d_211_input,
conv2d_211_8421399:` 
conv2d_211_8421401:`-
batch_normalization_171_8421404:`-
batch_normalization_171_8421406:`-
batch_normalization_171_8421408:`-
batch_normalization_171_8421410:`-
conv2d_212_8421414:`?!
conv2d_212_8421416:	?.
batch_normalization_172_8421419:	?.
batch_normalization_172_8421421:	?.
batch_normalization_172_8421423:	?.
batch_normalization_172_8421425:	?.
conv2d_213_8421429:??!
conv2d_213_8421431:	?.
batch_normalization_173_8421434:	?.
batch_normalization_173_8421436:	?.
batch_normalization_173_8421438:	?.
batch_normalization_173_8421440:	?.
conv2d_214_8421443:??!
conv2d_214_8421445:	?.
batch_normalization_174_8421448:	?.
batch_normalization_174_8421450:	?.
batch_normalization_174_8421452:	?.
batch_normalization_174_8421454:	?.
conv2d_215_8421457:??!
conv2d_215_8421459:	?.
batch_normalization_175_8421462:	?.
batch_normalization_175_8421464:	?.
batch_normalization_175_8421466:	?.
batch_normalization_175_8421468:	?#
dense_31_8421473:	?(
dense_31_8421475:
identity??/batch_normalization_171/StatefulPartitionedCall?/batch_normalization_172/StatefulPartitionedCall?/batch_normalization_173/StatefulPartitionedCall?/batch_normalization_174/StatefulPartitionedCall?/batch_normalization_175/StatefulPartitionedCall?"conv2d_211/StatefulPartitionedCall?"conv2d_212/StatefulPartitionedCall?"conv2d_213/StatefulPartitionedCall?"conv2d_214/StatefulPartitionedCall?"conv2d_215/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
"conv2d_211/StatefulPartitionedCallStatefulPartitionedCallconv2d_211_inputconv2d_211_8421399conv2d_211_8421401*
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_84204852$
"conv2d_211/StatefulPartitionedCall?
/batch_normalization_171/StatefulPartitionedCallStatefulPartitionedCall+conv2d_211/StatefulPartitionedCall:output:0batch_normalization_171_8421404batch_normalization_171_8421406batch_normalization_171_8421408batch_normalization_171_8421410*
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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_842050821
/batch_normalization_171/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall8batch_normalization_171/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_84205222"
 max_pooling2d_37/PartitionedCall?
"conv2d_212/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_212_8421414conv2d_212_8421416*
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
G__inference_conv2d_212_layer_call_and_return_conditional_losses_84205352$
"conv2d_212/StatefulPartitionedCall?
/batch_normalization_172/StatefulPartitionedCallStatefulPartitionedCall+conv2d_212/StatefulPartitionedCall:output:0batch_normalization_172_8421419batch_normalization_172_8421421batch_normalization_172_8421423batch_normalization_172_8421425*
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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_842055821
/batch_normalization_172/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall8batch_normalization_172/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_84205722"
 max_pooling2d_38/PartitionedCall?
"conv2d_213/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_213_8421429conv2d_213_8421431*
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
G__inference_conv2d_213_layer_call_and_return_conditional_losses_84205852$
"conv2d_213/StatefulPartitionedCall?
/batch_normalization_173/StatefulPartitionedCallStatefulPartitionedCall+conv2d_213/StatefulPartitionedCall:output:0batch_normalization_173_8421434batch_normalization_173_8421436batch_normalization_173_8421438batch_normalization_173_8421440*
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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_842060821
/batch_normalization_173/StatefulPartitionedCall?
"conv2d_214/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_173/StatefulPartitionedCall:output:0conv2d_214_8421443conv2d_214_8421445*
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
G__inference_conv2d_214_layer_call_and_return_conditional_losses_84206292$
"conv2d_214/StatefulPartitionedCall?
/batch_normalization_174/StatefulPartitionedCallStatefulPartitionedCall+conv2d_214/StatefulPartitionedCall:output:0batch_normalization_174_8421448batch_normalization_174_8421450batch_normalization_174_8421452batch_normalization_174_8421454*
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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_842065221
/batch_normalization_174/StatefulPartitionedCall?
"conv2d_215/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_174/StatefulPartitionedCall:output:0conv2d_215_8421457conv2d_215_8421459*
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
G__inference_conv2d_215_layer_call_and_return_conditional_losses_84206732$
"conv2d_215/StatefulPartitionedCall?
/batch_normalization_175/StatefulPartitionedCallStatefulPartitionedCall+conv2d_215/StatefulPartitionedCall:output:0batch_normalization_175_8421462batch_normalization_175_8421464batch_normalization_175_8421466batch_normalization_175_8421468*
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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_842069621
/batch_normalization_175/StatefulPartitionedCall?
 max_pooling2d_39/PartitionedCallPartitionedCall8batch_normalization_175/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_84207102"
 max_pooling2d_39/PartitionedCall?
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
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
G__inference_flatten_15_layer_call_and_return_conditional_losses_84207182
flatten_15/PartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_31_8421473dense_31_8421475*
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
E__inference_dense_31_layer_call_and_return_conditional_losses_84207312"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_171/StatefulPartitionedCall0^batch_normalization_172/StatefulPartitionedCall0^batch_normalization_173/StatefulPartitionedCall0^batch_normalization_174/StatefulPartitionedCall0^batch_normalization_175/StatefulPartitionedCall#^conv2d_211/StatefulPartitionedCall#^conv2d_212/StatefulPartitionedCall#^conv2d_213/StatefulPartitionedCall#^conv2d_214/StatefulPartitionedCall#^conv2d_215/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_171/StatefulPartitionedCall/batch_normalization_171/StatefulPartitionedCall2b
/batch_normalization_172/StatefulPartitionedCall/batch_normalization_172/StatefulPartitionedCall2b
/batch_normalization_173/StatefulPartitionedCall/batch_normalization_173/StatefulPartitionedCall2b
/batch_normalization_174/StatefulPartitionedCall/batch_normalization_174/StatefulPartitionedCall2b
/batch_normalization_175/StatefulPartitionedCall/batch_normalization_175/StatefulPartitionedCall2H
"conv2d_211/StatefulPartitionedCall"conv2d_211/StatefulPartitionedCall2H
"conv2d_212/StatefulPartitionedCall"conv2d_212/StatefulPartitionedCall2H
"conv2d_213/StatefulPartitionedCall"conv2d_213/StatefulPartitionedCall2H
"conv2d_214/StatefulPartitionedCall"conv2d_214/StatefulPartitionedCall2H
"conv2d_215/StatefulPartitionedCall"conv2d_215/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_211_input
?
?
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8420341

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
9__inference_batch_normalization_175_layer_call_fn_8422777

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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_84208592
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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422055

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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_8420054

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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_8422166

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
? 
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421879

inputsC
)conv2d_211_conv2d_readvariableop_resource:`8
*conv2d_211_biasadd_readvariableop_resource:`=
/batch_normalization_171_readvariableop_resource:`?
1batch_normalization_171_readvariableop_1_resource:`N
@batch_normalization_171_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_171_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_212_conv2d_readvariableop_resource:`?9
*conv2d_212_biasadd_readvariableop_resource:	?>
/batch_normalization_172_readvariableop_resource:	?@
1batch_normalization_172_readvariableop_1_resource:	?O
@batch_normalization_172_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_172_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_213_conv2d_readvariableop_resource:??9
*conv2d_213_biasadd_readvariableop_resource:	?>
/batch_normalization_173_readvariableop_resource:	?@
1batch_normalization_173_readvariableop_1_resource:	?O
@batch_normalization_173_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_173_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_214_conv2d_readvariableop_resource:??9
*conv2d_214_biasadd_readvariableop_resource:	?>
/batch_normalization_174_readvariableop_resource:	?@
1batch_normalization_174_readvariableop_1_resource:	?O
@batch_normalization_174_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_174_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_215_conv2d_readvariableop_resource:??9
*conv2d_215_biasadd_readvariableop_resource:	?>
/batch_normalization_175_readvariableop_resource:	?@
1batch_normalization_175_readvariableop_1_resource:	?O
@batch_normalization_175_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_175_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_31_matmul_readvariableop_resource:	?(6
(dense_31_biasadd_readvariableop_resource:
identity??&batch_normalization_171/AssignNewValue?(batch_normalization_171/AssignNewValue_1?7batch_normalization_171/FusedBatchNormV3/ReadVariableOp?9batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_171/ReadVariableOp?(batch_normalization_171/ReadVariableOp_1?&batch_normalization_172/AssignNewValue?(batch_normalization_172/AssignNewValue_1?7batch_normalization_172/FusedBatchNormV3/ReadVariableOp?9batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_172/ReadVariableOp?(batch_normalization_172/ReadVariableOp_1?&batch_normalization_173/AssignNewValue?(batch_normalization_173/AssignNewValue_1?7batch_normalization_173/FusedBatchNormV3/ReadVariableOp?9batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_173/ReadVariableOp?(batch_normalization_173/ReadVariableOp_1?&batch_normalization_174/AssignNewValue?(batch_normalization_174/AssignNewValue_1?7batch_normalization_174/FusedBatchNormV3/ReadVariableOp?9batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_174/ReadVariableOp?(batch_normalization_174/ReadVariableOp_1?&batch_normalization_175/AssignNewValue?(batch_normalization_175/AssignNewValue_1?7batch_normalization_175/FusedBatchNormV3/ReadVariableOp?9batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_175/ReadVariableOp?(batch_normalization_175/ReadVariableOp_1?!conv2d_211/BiasAdd/ReadVariableOp? conv2d_211/Conv2D/ReadVariableOp?!conv2d_212/BiasAdd/ReadVariableOp? conv2d_212/Conv2D/ReadVariableOp?!conv2d_213/BiasAdd/ReadVariableOp? conv2d_213/Conv2D/ReadVariableOp?!conv2d_214/BiasAdd/ReadVariableOp? conv2d_214/Conv2D/ReadVariableOp?!conv2d_215/BiasAdd/ReadVariableOp? conv2d_215/Conv2D/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?
 conv2d_211/Conv2D/ReadVariableOpReadVariableOp)conv2d_211_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_211/Conv2D/ReadVariableOp?
conv2d_211/Conv2DConv2Dinputs(conv2d_211/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_211/Conv2D?
!conv2d_211/BiasAdd/ReadVariableOpReadVariableOp*conv2d_211_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_211/BiasAdd/ReadVariableOp?
conv2d_211/BiasAddBiasAddconv2d_211/Conv2D:output:0)conv2d_211/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_211/BiasAdd?
conv2d_211/ReluReluconv2d_211/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_211/Relu?
&batch_normalization_171/ReadVariableOpReadVariableOp/batch_normalization_171_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_171/ReadVariableOp?
(batch_normalization_171/ReadVariableOp_1ReadVariableOp1batch_normalization_171_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_171/ReadVariableOp_1?
7batch_normalization_171/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_171_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_171/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_171_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_171/FusedBatchNormV3FusedBatchNormV3conv2d_211/Relu:activations:0.batch_normalization_171/ReadVariableOp:value:00batch_normalization_171/ReadVariableOp_1:value:0?batch_normalization_171/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_171/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_171/FusedBatchNormV3?
&batch_normalization_171/AssignNewValueAssignVariableOp@batch_normalization_171_fusedbatchnormv3_readvariableop_resource5batch_normalization_171/FusedBatchNormV3:batch_mean:08^batch_normalization_171/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_171/AssignNewValue?
(batch_normalization_171/AssignNewValue_1AssignVariableOpBbatch_normalization_171_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_171/FusedBatchNormV3:batch_variance:0:^batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_171/AssignNewValue_1?
max_pooling2d_37/MaxPoolMaxPool,batch_normalization_171/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_37/MaxPool?
 conv2d_212/Conv2D/ReadVariableOpReadVariableOp)conv2d_212_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_212/Conv2D/ReadVariableOp?
conv2d_212/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0(conv2d_212/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_212/Conv2D?
!conv2d_212/BiasAdd/ReadVariableOpReadVariableOp*conv2d_212_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_212/BiasAdd/ReadVariableOp?
conv2d_212/BiasAddBiasAddconv2d_212/Conv2D:output:0)conv2d_212/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_212/BiasAdd?
conv2d_212/ReluReluconv2d_212/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_212/Relu?
&batch_normalization_172/ReadVariableOpReadVariableOp/batch_normalization_172_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_172/ReadVariableOp?
(batch_normalization_172/ReadVariableOp_1ReadVariableOp1batch_normalization_172_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_172/ReadVariableOp_1?
7batch_normalization_172/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_172_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_172/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_172_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_172/FusedBatchNormV3FusedBatchNormV3conv2d_212/Relu:activations:0.batch_normalization_172/ReadVariableOp:value:00batch_normalization_172/ReadVariableOp_1:value:0?batch_normalization_172/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_172/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_172/FusedBatchNormV3?
&batch_normalization_172/AssignNewValueAssignVariableOp@batch_normalization_172_fusedbatchnormv3_readvariableop_resource5batch_normalization_172/FusedBatchNormV3:batch_mean:08^batch_normalization_172/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_172/AssignNewValue?
(batch_normalization_172/AssignNewValue_1AssignVariableOpBbatch_normalization_172_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_172/FusedBatchNormV3:batch_variance:0:^batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_172/AssignNewValue_1?
max_pooling2d_38/MaxPoolMaxPool,batch_normalization_172/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_38/MaxPool?
 conv2d_213/Conv2D/ReadVariableOpReadVariableOp)conv2d_213_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_213/Conv2D/ReadVariableOp?
conv2d_213/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0(conv2d_213/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_213/Conv2D?
!conv2d_213/BiasAdd/ReadVariableOpReadVariableOp*conv2d_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_213/BiasAdd/ReadVariableOp?
conv2d_213/BiasAddBiasAddconv2d_213/Conv2D:output:0)conv2d_213/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_213/BiasAdd?
conv2d_213/ReluReluconv2d_213/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_213/Relu?
&batch_normalization_173/ReadVariableOpReadVariableOp/batch_normalization_173_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_173/ReadVariableOp?
(batch_normalization_173/ReadVariableOp_1ReadVariableOp1batch_normalization_173_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_173/ReadVariableOp_1?
7batch_normalization_173/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_173_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_173/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_173_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_173/FusedBatchNormV3FusedBatchNormV3conv2d_213/Relu:activations:0.batch_normalization_173/ReadVariableOp:value:00batch_normalization_173/ReadVariableOp_1:value:0?batch_normalization_173/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_173/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_173/FusedBatchNormV3?
&batch_normalization_173/AssignNewValueAssignVariableOp@batch_normalization_173_fusedbatchnormv3_readvariableop_resource5batch_normalization_173/FusedBatchNormV3:batch_mean:08^batch_normalization_173/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_173/AssignNewValue?
(batch_normalization_173/AssignNewValue_1AssignVariableOpBbatch_normalization_173_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_173/FusedBatchNormV3:batch_variance:0:^batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_173/AssignNewValue_1?
 conv2d_214/Conv2D/ReadVariableOpReadVariableOp)conv2d_214_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_214/Conv2D/ReadVariableOp?
conv2d_214/Conv2DConv2D,batch_normalization_173/FusedBatchNormV3:y:0(conv2d_214/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_214/Conv2D?
!conv2d_214/BiasAdd/ReadVariableOpReadVariableOp*conv2d_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_214/BiasAdd/ReadVariableOp?
conv2d_214/BiasAddBiasAddconv2d_214/Conv2D:output:0)conv2d_214/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_214/BiasAdd?
conv2d_214/ReluReluconv2d_214/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_214/Relu?
&batch_normalization_174/ReadVariableOpReadVariableOp/batch_normalization_174_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_174/ReadVariableOp?
(batch_normalization_174/ReadVariableOp_1ReadVariableOp1batch_normalization_174_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_174/ReadVariableOp_1?
7batch_normalization_174/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_174_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_174/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_174_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_174/FusedBatchNormV3FusedBatchNormV3conv2d_214/Relu:activations:0.batch_normalization_174/ReadVariableOp:value:00batch_normalization_174/ReadVariableOp_1:value:0?batch_normalization_174/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_174/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_174/FusedBatchNormV3?
&batch_normalization_174/AssignNewValueAssignVariableOp@batch_normalization_174_fusedbatchnormv3_readvariableop_resource5batch_normalization_174/FusedBatchNormV3:batch_mean:08^batch_normalization_174/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_174/AssignNewValue?
(batch_normalization_174/AssignNewValue_1AssignVariableOpBbatch_normalization_174_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_174/FusedBatchNormV3:batch_variance:0:^batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_174/AssignNewValue_1?
 conv2d_215/Conv2D/ReadVariableOpReadVariableOp)conv2d_215_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_215/Conv2D/ReadVariableOp?
conv2d_215/Conv2DConv2D,batch_normalization_174/FusedBatchNormV3:y:0(conv2d_215/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_215/Conv2D?
!conv2d_215/BiasAdd/ReadVariableOpReadVariableOp*conv2d_215_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_215/BiasAdd/ReadVariableOp?
conv2d_215/BiasAddBiasAddconv2d_215/Conv2D:output:0)conv2d_215/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_215/BiasAdd?
conv2d_215/ReluReluconv2d_215/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_215/Relu?
&batch_normalization_175/ReadVariableOpReadVariableOp/batch_normalization_175_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_175/ReadVariableOp?
(batch_normalization_175/ReadVariableOp_1ReadVariableOp1batch_normalization_175_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_175/ReadVariableOp_1?
7batch_normalization_175/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_175_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_175/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_175_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_175/FusedBatchNormV3FusedBatchNormV3conv2d_215/Relu:activations:0.batch_normalization_175/ReadVariableOp:value:00batch_normalization_175/ReadVariableOp_1:value:0?batch_normalization_175/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_175/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_175/FusedBatchNormV3?
&batch_normalization_175/AssignNewValueAssignVariableOp@batch_normalization_175_fusedbatchnormv3_readvariableop_resource5batch_normalization_175/FusedBatchNormV3:batch_mean:08^batch_normalization_175/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_175/AssignNewValue?
(batch_normalization_175/AssignNewValue_1AssignVariableOpBbatch_normalization_175_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_175/FusedBatchNormV3:batch_variance:0:^batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_175/AssignNewValue_1?
max_pooling2d_39/MaxPoolMaxPool,batch_normalization_175/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_39/MaxPoolu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_15/Const?
flatten_15/ReshapeReshape!max_pooling2d_39/MaxPool:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_15/Reshape?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMulflatten_15/Reshape:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/BiasAdd|
dense_31/SigmoidSigmoiddense_31/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_31/Sigmoido
IdentityIdentitydense_31/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_171/AssignNewValue)^batch_normalization_171/AssignNewValue_18^batch_normalization_171/FusedBatchNormV3/ReadVariableOp:^batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_171/ReadVariableOp)^batch_normalization_171/ReadVariableOp_1'^batch_normalization_172/AssignNewValue)^batch_normalization_172/AssignNewValue_18^batch_normalization_172/FusedBatchNormV3/ReadVariableOp:^batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_172/ReadVariableOp)^batch_normalization_172/ReadVariableOp_1'^batch_normalization_173/AssignNewValue)^batch_normalization_173/AssignNewValue_18^batch_normalization_173/FusedBatchNormV3/ReadVariableOp:^batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_173/ReadVariableOp)^batch_normalization_173/ReadVariableOp_1'^batch_normalization_174/AssignNewValue)^batch_normalization_174/AssignNewValue_18^batch_normalization_174/FusedBatchNormV3/ReadVariableOp:^batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_174/ReadVariableOp)^batch_normalization_174/ReadVariableOp_1'^batch_normalization_175/AssignNewValue)^batch_normalization_175/AssignNewValue_18^batch_normalization_175/FusedBatchNormV3/ReadVariableOp:^batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_175/ReadVariableOp)^batch_normalization_175/ReadVariableOp_1"^conv2d_211/BiasAdd/ReadVariableOp!^conv2d_211/Conv2D/ReadVariableOp"^conv2d_212/BiasAdd/ReadVariableOp!^conv2d_212/Conv2D/ReadVariableOp"^conv2d_213/BiasAdd/ReadVariableOp!^conv2d_213/Conv2D/ReadVariableOp"^conv2d_214/BiasAdd/ReadVariableOp!^conv2d_214/Conv2D/ReadVariableOp"^conv2d_215/BiasAdd/ReadVariableOp!^conv2d_215/Conv2D/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_171/AssignNewValue&batch_normalization_171/AssignNewValue2T
(batch_normalization_171/AssignNewValue_1(batch_normalization_171/AssignNewValue_12r
7batch_normalization_171/FusedBatchNormV3/ReadVariableOp7batch_normalization_171/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_171/FusedBatchNormV3/ReadVariableOp_19batch_normalization_171/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_171/ReadVariableOp&batch_normalization_171/ReadVariableOp2T
(batch_normalization_171/ReadVariableOp_1(batch_normalization_171/ReadVariableOp_12P
&batch_normalization_172/AssignNewValue&batch_normalization_172/AssignNewValue2T
(batch_normalization_172/AssignNewValue_1(batch_normalization_172/AssignNewValue_12r
7batch_normalization_172/FusedBatchNormV3/ReadVariableOp7batch_normalization_172/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_172/FusedBatchNormV3/ReadVariableOp_19batch_normalization_172/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_172/ReadVariableOp&batch_normalization_172/ReadVariableOp2T
(batch_normalization_172/ReadVariableOp_1(batch_normalization_172/ReadVariableOp_12P
&batch_normalization_173/AssignNewValue&batch_normalization_173/AssignNewValue2T
(batch_normalization_173/AssignNewValue_1(batch_normalization_173/AssignNewValue_12r
7batch_normalization_173/FusedBatchNormV3/ReadVariableOp7batch_normalization_173/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_173/FusedBatchNormV3/ReadVariableOp_19batch_normalization_173/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_173/ReadVariableOp&batch_normalization_173/ReadVariableOp2T
(batch_normalization_173/ReadVariableOp_1(batch_normalization_173/ReadVariableOp_12P
&batch_normalization_174/AssignNewValue&batch_normalization_174/AssignNewValue2T
(batch_normalization_174/AssignNewValue_1(batch_normalization_174/AssignNewValue_12r
7batch_normalization_174/FusedBatchNormV3/ReadVariableOp7batch_normalization_174/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_174/FusedBatchNormV3/ReadVariableOp_19batch_normalization_174/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_174/ReadVariableOp&batch_normalization_174/ReadVariableOp2T
(batch_normalization_174/ReadVariableOp_1(batch_normalization_174/ReadVariableOp_12P
&batch_normalization_175/AssignNewValue&batch_normalization_175/AssignNewValue2T
(batch_normalization_175/AssignNewValue_1(batch_normalization_175/AssignNewValue_12r
7batch_normalization_175/FusedBatchNormV3/ReadVariableOp7batch_normalization_175/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_175/FusedBatchNormV3/ReadVariableOp_19batch_normalization_175/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_175/ReadVariableOp&batch_normalization_175/ReadVariableOp2T
(batch_normalization_175/ReadVariableOp_1(batch_normalization_175/ReadVariableOp_12F
!conv2d_211/BiasAdd/ReadVariableOp!conv2d_211/BiasAdd/ReadVariableOp2D
 conv2d_211/Conv2D/ReadVariableOp conv2d_211/Conv2D/ReadVariableOp2F
!conv2d_212/BiasAdd/ReadVariableOp!conv2d_212/BiasAdd/ReadVariableOp2D
 conv2d_212/Conv2D/ReadVariableOp conv2d_212/Conv2D/ReadVariableOp2F
!conv2d_213/BiasAdd/ReadVariableOp!conv2d_213/BiasAdd/ReadVariableOp2D
 conv2d_213/Conv2D/ReadVariableOp conv2d_213/Conv2D/ReadVariableOp2F
!conv2d_214/BiasAdd/ReadVariableOp!conv2d_214/BiasAdd/ReadVariableOp2D
 conv2d_214/Conv2D/ReadVariableOp conv2d_214/Conv2D/ReadVariableOp2F
!conv2d_215/BiasAdd/ReadVariableOp!conv2d_215/BiasAdd/ReadVariableOp2D
 conv2d_215/Conv2D/ReadVariableOp conv2d_215/Conv2D/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_172_layer_call_fn_8422312

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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_84205582
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
9__inference_batch_normalization_172_layer_call_fn_8422325

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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_84210262
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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8420259

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
G__inference_conv2d_215_layer_call_and_return_conditional_losses_8422644

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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_8420572

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
9__inference_batch_normalization_175_layer_call_fn_8422764

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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_84206962
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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422255

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
?
i
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_8420454

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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_8419906

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
9__inference_batch_normalization_174_layer_call_fn_8422594

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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_84202152
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
H
,__inference_flatten_15_layer_call_fn_8422808

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
G__inference_flatten_15_layer_call_and_return_conditional_losses_84207182
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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8419941

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
9__inference_batch_normalization_173_layer_call_fn_8422489

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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_84209672
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
2__inference_max_pooling2d_37_layer_call_fn_8422181

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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_84205222
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
,__inference_conv2d_212_layer_call_fn_8422201

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
G__inference_conv2d_212_layer_call_and_return_conditional_losses_84205352
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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422581

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
2__inference_max_pooling2d_39_layer_call_fn_8422797

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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_84207102
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
?
i
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_8422171

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
,__inference_alex_net_7_layer_call_fn_8421948

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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_84207382
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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8420215

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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8420508

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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_8420485

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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422545

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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421758

inputsC
)conv2d_211_conv2d_readvariableop_resource:`8
*conv2d_211_biasadd_readvariableop_resource:`=
/batch_normalization_171_readvariableop_resource:`?
1batch_normalization_171_readvariableop_1_resource:`N
@batch_normalization_171_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_171_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_212_conv2d_readvariableop_resource:`?9
*conv2d_212_biasadd_readvariableop_resource:	?>
/batch_normalization_172_readvariableop_resource:	?@
1batch_normalization_172_readvariableop_1_resource:	?O
@batch_normalization_172_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_172_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_213_conv2d_readvariableop_resource:??9
*conv2d_213_biasadd_readvariableop_resource:	?>
/batch_normalization_173_readvariableop_resource:	?@
1batch_normalization_173_readvariableop_1_resource:	?O
@batch_normalization_173_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_173_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_214_conv2d_readvariableop_resource:??9
*conv2d_214_biasadd_readvariableop_resource:	?>
/batch_normalization_174_readvariableop_resource:	?@
1batch_normalization_174_readvariableop_1_resource:	?O
@batch_normalization_174_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_174_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_215_conv2d_readvariableop_resource:??9
*conv2d_215_biasadd_readvariableop_resource:	?>
/batch_normalization_175_readvariableop_resource:	?@
1batch_normalization_175_readvariableop_1_resource:	?O
@batch_normalization_175_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_175_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_31_matmul_readvariableop_resource:	?(6
(dense_31_biasadd_readvariableop_resource:
identity??7batch_normalization_171/FusedBatchNormV3/ReadVariableOp?9batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_171/ReadVariableOp?(batch_normalization_171/ReadVariableOp_1?7batch_normalization_172/FusedBatchNormV3/ReadVariableOp?9batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_172/ReadVariableOp?(batch_normalization_172/ReadVariableOp_1?7batch_normalization_173/FusedBatchNormV3/ReadVariableOp?9batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_173/ReadVariableOp?(batch_normalization_173/ReadVariableOp_1?7batch_normalization_174/FusedBatchNormV3/ReadVariableOp?9batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_174/ReadVariableOp?(batch_normalization_174/ReadVariableOp_1?7batch_normalization_175/FusedBatchNormV3/ReadVariableOp?9batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_175/ReadVariableOp?(batch_normalization_175/ReadVariableOp_1?!conv2d_211/BiasAdd/ReadVariableOp? conv2d_211/Conv2D/ReadVariableOp?!conv2d_212/BiasAdd/ReadVariableOp? conv2d_212/Conv2D/ReadVariableOp?!conv2d_213/BiasAdd/ReadVariableOp? conv2d_213/Conv2D/ReadVariableOp?!conv2d_214/BiasAdd/ReadVariableOp? conv2d_214/Conv2D/ReadVariableOp?!conv2d_215/BiasAdd/ReadVariableOp? conv2d_215/Conv2D/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?
 conv2d_211/Conv2D/ReadVariableOpReadVariableOp)conv2d_211_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_211/Conv2D/ReadVariableOp?
conv2d_211/Conv2DConv2Dinputs(conv2d_211/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_211/Conv2D?
!conv2d_211/BiasAdd/ReadVariableOpReadVariableOp*conv2d_211_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_211/BiasAdd/ReadVariableOp?
conv2d_211/BiasAddBiasAddconv2d_211/Conv2D:output:0)conv2d_211/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_211/BiasAdd?
conv2d_211/ReluReluconv2d_211/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_211/Relu?
&batch_normalization_171/ReadVariableOpReadVariableOp/batch_normalization_171_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_171/ReadVariableOp?
(batch_normalization_171/ReadVariableOp_1ReadVariableOp1batch_normalization_171_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_171/ReadVariableOp_1?
7batch_normalization_171/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_171_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_171/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_171_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_171/FusedBatchNormV3FusedBatchNormV3conv2d_211/Relu:activations:0.batch_normalization_171/ReadVariableOp:value:00batch_normalization_171/ReadVariableOp_1:value:0?batch_normalization_171/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_171/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_171/FusedBatchNormV3?
max_pooling2d_37/MaxPoolMaxPool,batch_normalization_171/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_37/MaxPool?
 conv2d_212/Conv2D/ReadVariableOpReadVariableOp)conv2d_212_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_212/Conv2D/ReadVariableOp?
conv2d_212/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0(conv2d_212/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_212/Conv2D?
!conv2d_212/BiasAdd/ReadVariableOpReadVariableOp*conv2d_212_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_212/BiasAdd/ReadVariableOp?
conv2d_212/BiasAddBiasAddconv2d_212/Conv2D:output:0)conv2d_212/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_212/BiasAdd?
conv2d_212/ReluReluconv2d_212/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_212/Relu?
&batch_normalization_172/ReadVariableOpReadVariableOp/batch_normalization_172_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_172/ReadVariableOp?
(batch_normalization_172/ReadVariableOp_1ReadVariableOp1batch_normalization_172_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_172/ReadVariableOp_1?
7batch_normalization_172/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_172_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_172/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_172_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_172/FusedBatchNormV3FusedBatchNormV3conv2d_212/Relu:activations:0.batch_normalization_172/ReadVariableOp:value:00batch_normalization_172/ReadVariableOp_1:value:0?batch_normalization_172/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_172/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_172/FusedBatchNormV3?
max_pooling2d_38/MaxPoolMaxPool,batch_normalization_172/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_38/MaxPool?
 conv2d_213/Conv2D/ReadVariableOpReadVariableOp)conv2d_213_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_213/Conv2D/ReadVariableOp?
conv2d_213/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0(conv2d_213/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_213/Conv2D?
!conv2d_213/BiasAdd/ReadVariableOpReadVariableOp*conv2d_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_213/BiasAdd/ReadVariableOp?
conv2d_213/BiasAddBiasAddconv2d_213/Conv2D:output:0)conv2d_213/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_213/BiasAdd?
conv2d_213/ReluReluconv2d_213/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_213/Relu?
&batch_normalization_173/ReadVariableOpReadVariableOp/batch_normalization_173_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_173/ReadVariableOp?
(batch_normalization_173/ReadVariableOp_1ReadVariableOp1batch_normalization_173_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_173/ReadVariableOp_1?
7batch_normalization_173/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_173_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_173/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_173_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_173/FusedBatchNormV3FusedBatchNormV3conv2d_213/Relu:activations:0.batch_normalization_173/ReadVariableOp:value:00batch_normalization_173/ReadVariableOp_1:value:0?batch_normalization_173/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_173/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_173/FusedBatchNormV3?
 conv2d_214/Conv2D/ReadVariableOpReadVariableOp)conv2d_214_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_214/Conv2D/ReadVariableOp?
conv2d_214/Conv2DConv2D,batch_normalization_173/FusedBatchNormV3:y:0(conv2d_214/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_214/Conv2D?
!conv2d_214/BiasAdd/ReadVariableOpReadVariableOp*conv2d_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_214/BiasAdd/ReadVariableOp?
conv2d_214/BiasAddBiasAddconv2d_214/Conv2D:output:0)conv2d_214/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_214/BiasAdd?
conv2d_214/ReluReluconv2d_214/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_214/Relu?
&batch_normalization_174/ReadVariableOpReadVariableOp/batch_normalization_174_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_174/ReadVariableOp?
(batch_normalization_174/ReadVariableOp_1ReadVariableOp1batch_normalization_174_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_174/ReadVariableOp_1?
7batch_normalization_174/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_174_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_174/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_174_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_174/FusedBatchNormV3FusedBatchNormV3conv2d_214/Relu:activations:0.batch_normalization_174/ReadVariableOp:value:00batch_normalization_174/ReadVariableOp_1:value:0?batch_normalization_174/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_174/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_174/FusedBatchNormV3?
 conv2d_215/Conv2D/ReadVariableOpReadVariableOp)conv2d_215_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_215/Conv2D/ReadVariableOp?
conv2d_215/Conv2DConv2D,batch_normalization_174/FusedBatchNormV3:y:0(conv2d_215/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_215/Conv2D?
!conv2d_215/BiasAdd/ReadVariableOpReadVariableOp*conv2d_215_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_215/BiasAdd/ReadVariableOp?
conv2d_215/BiasAddBiasAddconv2d_215/Conv2D:output:0)conv2d_215/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_215/BiasAdd?
conv2d_215/ReluReluconv2d_215/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_215/Relu?
&batch_normalization_175/ReadVariableOpReadVariableOp/batch_normalization_175_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_175/ReadVariableOp?
(batch_normalization_175/ReadVariableOp_1ReadVariableOp1batch_normalization_175_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_175/ReadVariableOp_1?
7batch_normalization_175/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_175_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_175/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_175_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_175/FusedBatchNormV3FusedBatchNormV3conv2d_215/Relu:activations:0.batch_normalization_175/ReadVariableOp:value:00batch_normalization_175/ReadVariableOp_1:value:0?batch_normalization_175/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_175/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_175/FusedBatchNormV3?
max_pooling2d_39/MaxPoolMaxPool,batch_normalization_175/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_39/MaxPoolu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_15/Const?
flatten_15/ReshapeReshape!max_pooling2d_39/MaxPool:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_15/Reshape?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMulflatten_15/Reshape:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/BiasAdd|
dense_31/SigmoidSigmoiddense_31/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_31/Sigmoido
IdentityIdentitydense_31/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_171/FusedBatchNormV3/ReadVariableOp:^batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_171/ReadVariableOp)^batch_normalization_171/ReadVariableOp_18^batch_normalization_172/FusedBatchNormV3/ReadVariableOp:^batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_172/ReadVariableOp)^batch_normalization_172/ReadVariableOp_18^batch_normalization_173/FusedBatchNormV3/ReadVariableOp:^batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_173/ReadVariableOp)^batch_normalization_173/ReadVariableOp_18^batch_normalization_174/FusedBatchNormV3/ReadVariableOp:^batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_174/ReadVariableOp)^batch_normalization_174/ReadVariableOp_18^batch_normalization_175/FusedBatchNormV3/ReadVariableOp:^batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_175/ReadVariableOp)^batch_normalization_175/ReadVariableOp_1"^conv2d_211/BiasAdd/ReadVariableOp!^conv2d_211/Conv2D/ReadVariableOp"^conv2d_212/BiasAdd/ReadVariableOp!^conv2d_212/Conv2D/ReadVariableOp"^conv2d_213/BiasAdd/ReadVariableOp!^conv2d_213/Conv2D/ReadVariableOp"^conv2d_214/BiasAdd/ReadVariableOp!^conv2d_214/Conv2D/ReadVariableOp"^conv2d_215/BiasAdd/ReadVariableOp!^conv2d_215/Conv2D/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_171/FusedBatchNormV3/ReadVariableOp7batch_normalization_171/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_171/FusedBatchNormV3/ReadVariableOp_19batch_normalization_171/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_171/ReadVariableOp&batch_normalization_171/ReadVariableOp2T
(batch_normalization_171/ReadVariableOp_1(batch_normalization_171/ReadVariableOp_12r
7batch_normalization_172/FusedBatchNormV3/ReadVariableOp7batch_normalization_172/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_172/FusedBatchNormV3/ReadVariableOp_19batch_normalization_172/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_172/ReadVariableOp&batch_normalization_172/ReadVariableOp2T
(batch_normalization_172/ReadVariableOp_1(batch_normalization_172/ReadVariableOp_12r
7batch_normalization_173/FusedBatchNormV3/ReadVariableOp7batch_normalization_173/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_173/FusedBatchNormV3/ReadVariableOp_19batch_normalization_173/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_173/ReadVariableOp&batch_normalization_173/ReadVariableOp2T
(batch_normalization_173/ReadVariableOp_1(batch_normalization_173/ReadVariableOp_12r
7batch_normalization_174/FusedBatchNormV3/ReadVariableOp7batch_normalization_174/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_174/FusedBatchNormV3/ReadVariableOp_19batch_normalization_174/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_174/ReadVariableOp&batch_normalization_174/ReadVariableOp2T
(batch_normalization_174/ReadVariableOp_1(batch_normalization_174/ReadVariableOp_12r
7batch_normalization_175/FusedBatchNormV3/ReadVariableOp7batch_normalization_175/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_175/FusedBatchNormV3/ReadVariableOp_19batch_normalization_175/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_175/ReadVariableOp&batch_normalization_175/ReadVariableOp2T
(batch_normalization_175/ReadVariableOp_1(batch_normalization_175/ReadVariableOp_12F
!conv2d_211/BiasAdd/ReadVariableOp!conv2d_211/BiasAdd/ReadVariableOp2D
 conv2d_211/Conv2D/ReadVariableOp conv2d_211/Conv2D/ReadVariableOp2F
!conv2d_212/BiasAdd/ReadVariableOp!conv2d_212/BiasAdd/ReadVariableOp2D
 conv2d_212/Conv2D/ReadVariableOp conv2d_212/Conv2D/ReadVariableOp2F
!conv2d_213/BiasAdd/ReadVariableOp!conv2d_213/BiasAdd/ReadVariableOp2D
 conv2d_213/Conv2D/ReadVariableOp conv2d_213/Conv2D/ReadVariableOp2F
!conv2d_214/BiasAdd/ReadVariableOp!conv2d_214/BiasAdd/ReadVariableOp2D
 conv2d_214/Conv2D/ReadVariableOp conv2d_214/Conv2D/ReadVariableOp2F
!conv2d_215/BiasAdd/ReadVariableOp!conv2d_215/BiasAdd/ReadVariableOp2D
 conv2d_215/Conv2D/ReadVariableOp conv2d_215/Conv2D/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_213_layer_call_and_return_conditional_losses_8420585

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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8421085

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
?
?
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8421026

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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422237

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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_8422028

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
,__inference_conv2d_215_layer_call_fn_8422653

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
G__inference_conv2d_215_layer_call_and_return_conditional_losses_84206732
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
?
?
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422401

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
?"
"__inference__wrapped_model_8419771
conv2d_211_inputN
4alex_net_7_conv2d_211_conv2d_readvariableop_resource:`C
5alex_net_7_conv2d_211_biasadd_readvariableop_resource:`H
:alex_net_7_batch_normalization_171_readvariableop_resource:`J
<alex_net_7_batch_normalization_171_readvariableop_1_resource:`Y
Kalex_net_7_batch_normalization_171_fusedbatchnormv3_readvariableop_resource:`[
Malex_net_7_batch_normalization_171_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_7_conv2d_212_conv2d_readvariableop_resource:`?D
5alex_net_7_conv2d_212_biasadd_readvariableop_resource:	?I
:alex_net_7_batch_normalization_172_readvariableop_resource:	?K
<alex_net_7_batch_normalization_172_readvariableop_1_resource:	?Z
Kalex_net_7_batch_normalization_172_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_7_batch_normalization_172_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_7_conv2d_213_conv2d_readvariableop_resource:??D
5alex_net_7_conv2d_213_biasadd_readvariableop_resource:	?I
:alex_net_7_batch_normalization_173_readvariableop_resource:	?K
<alex_net_7_batch_normalization_173_readvariableop_1_resource:	?Z
Kalex_net_7_batch_normalization_173_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_7_batch_normalization_173_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_7_conv2d_214_conv2d_readvariableop_resource:??D
5alex_net_7_conv2d_214_biasadd_readvariableop_resource:	?I
:alex_net_7_batch_normalization_174_readvariableop_resource:	?K
<alex_net_7_batch_normalization_174_readvariableop_1_resource:	?Z
Kalex_net_7_batch_normalization_174_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_7_batch_normalization_174_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_7_conv2d_215_conv2d_readvariableop_resource:??D
5alex_net_7_conv2d_215_biasadd_readvariableop_resource:	?I
:alex_net_7_batch_normalization_175_readvariableop_resource:	?K
<alex_net_7_batch_normalization_175_readvariableop_1_resource:	?Z
Kalex_net_7_batch_normalization_175_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_7_batch_normalization_175_fusedbatchnormv3_readvariableop_1_resource:	?E
2alex_net_7_dense_31_matmul_readvariableop_resource:	?(A
3alex_net_7_dense_31_biasadd_readvariableop_resource:
identity??Balex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_171/ReadVariableOp?3alex_net_7/batch_normalization_171/ReadVariableOp_1?Balex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_172/ReadVariableOp?3alex_net_7/batch_normalization_172/ReadVariableOp_1?Balex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_173/ReadVariableOp?3alex_net_7/batch_normalization_173/ReadVariableOp_1?Balex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_174/ReadVariableOp?3alex_net_7/batch_normalization_174/ReadVariableOp_1?Balex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp?Dalex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1?1alex_net_7/batch_normalization_175/ReadVariableOp?3alex_net_7/batch_normalization_175/ReadVariableOp_1?,alex_net_7/conv2d_211/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_211/Conv2D/ReadVariableOp?,alex_net_7/conv2d_212/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_212/Conv2D/ReadVariableOp?,alex_net_7/conv2d_213/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_213/Conv2D/ReadVariableOp?,alex_net_7/conv2d_214/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_214/Conv2D/ReadVariableOp?,alex_net_7/conv2d_215/BiasAdd/ReadVariableOp?+alex_net_7/conv2d_215/Conv2D/ReadVariableOp?*alex_net_7/dense_31/BiasAdd/ReadVariableOp?)alex_net_7/dense_31/MatMul/ReadVariableOp?
+alex_net_7/conv2d_211/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_211_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_7/conv2d_211/Conv2D/ReadVariableOp?
alex_net_7/conv2d_211/Conv2DConv2Dconv2d_211_input3alex_net_7/conv2d_211/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_7/conv2d_211/Conv2D?
,alex_net_7/conv2d_211/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_211_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_7/conv2d_211/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_211/BiasAddBiasAdd%alex_net_7/conv2d_211/Conv2D:output:04alex_net_7/conv2d_211/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
alex_net_7/conv2d_211/BiasAdd?
alex_net_7/conv2d_211/ReluRelu&alex_net_7/conv2d_211/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_7/conv2d_211/Relu?
1alex_net_7/batch_normalization_171/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_171_readvariableop_resource*
_output_shapes
:`*
dtype023
1alex_net_7/batch_normalization_171/ReadVariableOp?
3alex_net_7/batch_normalization_171/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_171_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3alex_net_7/batch_normalization_171/ReadVariableOp_1?
Balex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_171_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02D
Balex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_171_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02F
Dalex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_171/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_211/Relu:activations:09alex_net_7/batch_normalization_171/ReadVariableOp:value:0;alex_net_7/batch_normalization_171/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_171/FusedBatchNormV3?
#alex_net_7/max_pooling2d_37/MaxPoolMaxPool7alex_net_7/batch_normalization_171/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_7/max_pooling2d_37/MaxPool?
+alex_net_7/conv2d_212/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_212_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02-
+alex_net_7/conv2d_212/Conv2D/ReadVariableOp?
alex_net_7/conv2d_212/Conv2DConv2D,alex_net_7/max_pooling2d_37/MaxPool:output:03alex_net_7/conv2d_212/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_7/conv2d_212/Conv2D?
,alex_net_7/conv2d_212/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_212_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_7/conv2d_212/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_212/BiasAddBiasAdd%alex_net_7/conv2d_212/Conv2D:output:04alex_net_7/conv2d_212/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
alex_net_7/conv2d_212/BiasAdd?
alex_net_7/conv2d_212/ReluRelu&alex_net_7/conv2d_212/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_7/conv2d_212/Relu?
1alex_net_7/batch_normalization_172/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_172_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_7/batch_normalization_172/ReadVariableOp?
3alex_net_7/batch_normalization_172/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_172_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_7/batch_normalization_172/ReadVariableOp_1?
Balex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_172_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_172_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_172/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_212/Relu:activations:09alex_net_7/batch_normalization_172/ReadVariableOp:value:0;alex_net_7/batch_normalization_172/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_172/FusedBatchNormV3?
#alex_net_7/max_pooling2d_38/MaxPoolMaxPool7alex_net_7/batch_normalization_172/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#alex_net_7/max_pooling2d_38/MaxPool?
+alex_net_7/conv2d_213/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_213_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_7/conv2d_213/Conv2D/ReadVariableOp?
alex_net_7/conv2d_213/Conv2DConv2D,alex_net_7/max_pooling2d_38/MaxPool:output:03alex_net_7/conv2d_213/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_7/conv2d_213/Conv2D?
,alex_net_7/conv2d_213/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_7/conv2d_213/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_213/BiasAddBiasAdd%alex_net_7/conv2d_213/Conv2D:output:04alex_net_7/conv2d_213/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_213/BiasAdd?
alex_net_7/conv2d_213/ReluRelu&alex_net_7/conv2d_213/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_213/Relu?
1alex_net_7/batch_normalization_173/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_173_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_7/batch_normalization_173/ReadVariableOp?
3alex_net_7/batch_normalization_173/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_173_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_7/batch_normalization_173/ReadVariableOp_1?
Balex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_173_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_173_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_173/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_213/Relu:activations:09alex_net_7/batch_normalization_173/ReadVariableOp:value:0;alex_net_7/batch_normalization_173/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_173/FusedBatchNormV3?
+alex_net_7/conv2d_214/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_214_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_7/conv2d_214/Conv2D/ReadVariableOp?
alex_net_7/conv2d_214/Conv2DConv2D7alex_net_7/batch_normalization_173/FusedBatchNormV3:y:03alex_net_7/conv2d_214/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_7/conv2d_214/Conv2D?
,alex_net_7/conv2d_214/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_7/conv2d_214/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_214/BiasAddBiasAdd%alex_net_7/conv2d_214/Conv2D:output:04alex_net_7/conv2d_214/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_214/BiasAdd?
alex_net_7/conv2d_214/ReluRelu&alex_net_7/conv2d_214/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_214/Relu?
1alex_net_7/batch_normalization_174/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_174_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_7/batch_normalization_174/ReadVariableOp?
3alex_net_7/batch_normalization_174/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_174_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_7/batch_normalization_174/ReadVariableOp_1?
Balex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_174_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_174_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_174/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_214/Relu:activations:09alex_net_7/batch_normalization_174/ReadVariableOp:value:0;alex_net_7/batch_normalization_174/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_174/FusedBatchNormV3?
+alex_net_7/conv2d_215/Conv2D/ReadVariableOpReadVariableOp4alex_net_7_conv2d_215_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_7/conv2d_215/Conv2D/ReadVariableOp?
alex_net_7/conv2d_215/Conv2DConv2D7alex_net_7/batch_normalization_174/FusedBatchNormV3:y:03alex_net_7/conv2d_215/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_7/conv2d_215/Conv2D?
,alex_net_7/conv2d_215/BiasAdd/ReadVariableOpReadVariableOp5alex_net_7_conv2d_215_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_7/conv2d_215/BiasAdd/ReadVariableOp?
alex_net_7/conv2d_215/BiasAddBiasAdd%alex_net_7/conv2d_215/Conv2D:output:04alex_net_7/conv2d_215/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_215/BiasAdd?
alex_net_7/conv2d_215/ReluRelu&alex_net_7/conv2d_215/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_7/conv2d_215/Relu?
1alex_net_7/batch_normalization_175/ReadVariableOpReadVariableOp:alex_net_7_batch_normalization_175_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_7/batch_normalization_175/ReadVariableOp?
3alex_net_7/batch_normalization_175/ReadVariableOp_1ReadVariableOp<alex_net_7_batch_normalization_175_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_7/batch_normalization_175/ReadVariableOp_1?
Balex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_7_batch_normalization_175_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp?
Dalex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_7_batch_normalization_175_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_7/batch_normalization_175/FusedBatchNormV3FusedBatchNormV3(alex_net_7/conv2d_215/Relu:activations:09alex_net_7/batch_normalization_175/ReadVariableOp:value:0;alex_net_7/batch_normalization_175/ReadVariableOp_1:value:0Jalex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_7/batch_normalization_175/FusedBatchNormV3?
#alex_net_7/max_pooling2d_39/MaxPoolMaxPool7alex_net_7/batch_normalization_175/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2%
#alex_net_7/max_pooling2d_39/MaxPool?
alex_net_7/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_7/flatten_15/Const?
alex_net_7/flatten_15/ReshapeReshape,alex_net_7/max_pooling2d_39/MaxPool:output:0$alex_net_7/flatten_15/Const:output:0*
T0*(
_output_shapes
:??????????(2
alex_net_7/flatten_15/Reshape?
)alex_net_7/dense_31/MatMul/ReadVariableOpReadVariableOp2alex_net_7_dense_31_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02+
)alex_net_7/dense_31/MatMul/ReadVariableOp?
alex_net_7/dense_31/MatMulMatMul&alex_net_7/flatten_15/Reshape:output:01alex_net_7/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_7/dense_31/MatMul?
*alex_net_7/dense_31/BiasAdd/ReadVariableOpReadVariableOp3alex_net_7_dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_7/dense_31/BiasAdd/ReadVariableOp?
alex_net_7/dense_31/BiasAddBiasAdd$alex_net_7/dense_31/MatMul:product:02alex_net_7/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_7/dense_31/BiasAdd?
alex_net_7/dense_31/SigmoidSigmoid$alex_net_7/dense_31/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_7/dense_31/Sigmoidz
IdentityIdentityalex_net_7/dense_31/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpC^alex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_171/ReadVariableOp4^alex_net_7/batch_normalization_171/ReadVariableOp_1C^alex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_172/ReadVariableOp4^alex_net_7/batch_normalization_172/ReadVariableOp_1C^alex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_173/ReadVariableOp4^alex_net_7/batch_normalization_173/ReadVariableOp_1C^alex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_174/ReadVariableOp4^alex_net_7/batch_normalization_174/ReadVariableOp_1C^alex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOpE^alex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp_12^alex_net_7/batch_normalization_175/ReadVariableOp4^alex_net_7/batch_normalization_175/ReadVariableOp_1-^alex_net_7/conv2d_211/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_211/Conv2D/ReadVariableOp-^alex_net_7/conv2d_212/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_212/Conv2D/ReadVariableOp-^alex_net_7/conv2d_213/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_213/Conv2D/ReadVariableOp-^alex_net_7/conv2d_214/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_214/Conv2D/ReadVariableOp-^alex_net_7/conv2d_215/BiasAdd/ReadVariableOp,^alex_net_7/conv2d_215/Conv2D/ReadVariableOp+^alex_net_7/dense_31/BiasAdd/ReadVariableOp*^alex_net_7/dense_31/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Balex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_171/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_171/ReadVariableOp1alex_net_7/batch_normalization_171/ReadVariableOp2j
3alex_net_7/batch_normalization_171/ReadVariableOp_13alex_net_7/batch_normalization_171/ReadVariableOp_12?
Balex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_172/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_172/ReadVariableOp1alex_net_7/batch_normalization_172/ReadVariableOp2j
3alex_net_7/batch_normalization_172/ReadVariableOp_13alex_net_7/batch_normalization_172/ReadVariableOp_12?
Balex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_173/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_173/ReadVariableOp1alex_net_7/batch_normalization_173/ReadVariableOp2j
3alex_net_7/batch_normalization_173/ReadVariableOp_13alex_net_7/batch_normalization_173/ReadVariableOp_12?
Balex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_174/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_174/ReadVariableOp1alex_net_7/batch_normalization_174/ReadVariableOp2j
3alex_net_7/batch_normalization_174/ReadVariableOp_13alex_net_7/batch_normalization_174/ReadVariableOp_12?
Balex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOpBalex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp_1Dalex_net_7/batch_normalization_175/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_7/batch_normalization_175/ReadVariableOp1alex_net_7/batch_normalization_175/ReadVariableOp2j
3alex_net_7/batch_normalization_175/ReadVariableOp_13alex_net_7/batch_normalization_175/ReadVariableOp_12\
,alex_net_7/conv2d_211/BiasAdd/ReadVariableOp,alex_net_7/conv2d_211/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_211/Conv2D/ReadVariableOp+alex_net_7/conv2d_211/Conv2D/ReadVariableOp2\
,alex_net_7/conv2d_212/BiasAdd/ReadVariableOp,alex_net_7/conv2d_212/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_212/Conv2D/ReadVariableOp+alex_net_7/conv2d_212/Conv2D/ReadVariableOp2\
,alex_net_7/conv2d_213/BiasAdd/ReadVariableOp,alex_net_7/conv2d_213/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_213/Conv2D/ReadVariableOp+alex_net_7/conv2d_213/Conv2D/ReadVariableOp2\
,alex_net_7/conv2d_214/BiasAdd/ReadVariableOp,alex_net_7/conv2d_214/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_214/Conv2D/ReadVariableOp+alex_net_7/conv2d_214/Conv2D/ReadVariableOp2\
,alex_net_7/conv2d_215/BiasAdd/ReadVariableOp,alex_net_7/conv2d_215/BiasAdd/ReadVariableOp2Z
+alex_net_7/conv2d_215/Conv2D/ReadVariableOp+alex_net_7/conv2d_215/Conv2D/ReadVariableOp2X
*alex_net_7/dense_31/BiasAdd/ReadVariableOp*alex_net_7/dense_31/BiasAdd/ReadVariableOp2V
)alex_net_7/dense_31/MatMul/ReadVariableOp)alex_net_7/dense_31/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_211_input
?
?
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8419985

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
E__inference_dense_31_layer_call_and_return_conditional_losses_8422819

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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8419793

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
,__inference_conv2d_214_layer_call_fn_8422509

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
G__inference_conv2d_214_layer_call_and_return_conditional_losses_84206292
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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422109

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
9__inference_batch_normalization_172_layer_call_fn_8422299

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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_84199852
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
?X
?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8420738

inputs,
conv2d_211_8420486:` 
conv2d_211_8420488:`-
batch_normalization_171_8420509:`-
batch_normalization_171_8420511:`-
batch_normalization_171_8420513:`-
batch_normalization_171_8420515:`-
conv2d_212_8420536:`?!
conv2d_212_8420538:	?.
batch_normalization_172_8420559:	?.
batch_normalization_172_8420561:	?.
batch_normalization_172_8420563:	?.
batch_normalization_172_8420565:	?.
conv2d_213_8420586:??!
conv2d_213_8420588:	?.
batch_normalization_173_8420609:	?.
batch_normalization_173_8420611:	?.
batch_normalization_173_8420613:	?.
batch_normalization_173_8420615:	?.
conv2d_214_8420630:??!
conv2d_214_8420632:	?.
batch_normalization_174_8420653:	?.
batch_normalization_174_8420655:	?.
batch_normalization_174_8420657:	?.
batch_normalization_174_8420659:	?.
conv2d_215_8420674:??!
conv2d_215_8420676:	?.
batch_normalization_175_8420697:	?.
batch_normalization_175_8420699:	?.
batch_normalization_175_8420701:	?.
batch_normalization_175_8420703:	?#
dense_31_8420732:	?(
dense_31_8420734:
identity??/batch_normalization_171/StatefulPartitionedCall?/batch_normalization_172/StatefulPartitionedCall?/batch_normalization_173/StatefulPartitionedCall?/batch_normalization_174/StatefulPartitionedCall?/batch_normalization_175/StatefulPartitionedCall?"conv2d_211/StatefulPartitionedCall?"conv2d_212/StatefulPartitionedCall?"conv2d_213/StatefulPartitionedCall?"conv2d_214/StatefulPartitionedCall?"conv2d_215/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
"conv2d_211/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_211_8420486conv2d_211_8420488*
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_84204852$
"conv2d_211/StatefulPartitionedCall?
/batch_normalization_171/StatefulPartitionedCallStatefulPartitionedCall+conv2d_211/StatefulPartitionedCall:output:0batch_normalization_171_8420509batch_normalization_171_8420511batch_normalization_171_8420513batch_normalization_171_8420515*
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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_842050821
/batch_normalization_171/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall8batch_normalization_171/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_84205222"
 max_pooling2d_37/PartitionedCall?
"conv2d_212/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_212_8420536conv2d_212_8420538*
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
G__inference_conv2d_212_layer_call_and_return_conditional_losses_84205352$
"conv2d_212/StatefulPartitionedCall?
/batch_normalization_172/StatefulPartitionedCallStatefulPartitionedCall+conv2d_212/StatefulPartitionedCall:output:0batch_normalization_172_8420559batch_normalization_172_8420561batch_normalization_172_8420563batch_normalization_172_8420565*
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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_842055821
/batch_normalization_172/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall8batch_normalization_172/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_84205722"
 max_pooling2d_38/PartitionedCall?
"conv2d_213/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_213_8420586conv2d_213_8420588*
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
G__inference_conv2d_213_layer_call_and_return_conditional_losses_84205852$
"conv2d_213/StatefulPartitionedCall?
/batch_normalization_173/StatefulPartitionedCallStatefulPartitionedCall+conv2d_213/StatefulPartitionedCall:output:0batch_normalization_173_8420609batch_normalization_173_8420611batch_normalization_173_8420613batch_normalization_173_8420615*
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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_842060821
/batch_normalization_173/StatefulPartitionedCall?
"conv2d_214/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_173/StatefulPartitionedCall:output:0conv2d_214_8420630conv2d_214_8420632*
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
G__inference_conv2d_214_layer_call_and_return_conditional_losses_84206292$
"conv2d_214/StatefulPartitionedCall?
/batch_normalization_174/StatefulPartitionedCallStatefulPartitionedCall+conv2d_214/StatefulPartitionedCall:output:0batch_normalization_174_8420653batch_normalization_174_8420655batch_normalization_174_8420657batch_normalization_174_8420659*
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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_842065221
/batch_normalization_174/StatefulPartitionedCall?
"conv2d_215/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_174/StatefulPartitionedCall:output:0conv2d_215_8420674conv2d_215_8420676*
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
G__inference_conv2d_215_layer_call_and_return_conditional_losses_84206732$
"conv2d_215/StatefulPartitionedCall?
/batch_normalization_175/StatefulPartitionedCallStatefulPartitionedCall+conv2d_215/StatefulPartitionedCall:output:0batch_normalization_175_8420697batch_normalization_175_8420699batch_normalization_175_8420701batch_normalization_175_8420703*
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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_842069621
/batch_normalization_175/StatefulPartitionedCall?
 max_pooling2d_39/PartitionedCallPartitionedCall8batch_normalization_175/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_84207102"
 max_pooling2d_39/PartitionedCall?
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
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
G__inference_flatten_15_layer_call_and_return_conditional_losses_84207182
flatten_15/PartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_31_8420732dense_31_8420734*
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
E__inference_dense_31_layer_call_and_return_conditional_losses_84207312"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_171/StatefulPartitionedCall0^batch_normalization_172/StatefulPartitionedCall0^batch_normalization_173/StatefulPartitionedCall0^batch_normalization_174/StatefulPartitionedCall0^batch_normalization_175/StatefulPartitionedCall#^conv2d_211/StatefulPartitionedCall#^conv2d_212/StatefulPartitionedCall#^conv2d_213/StatefulPartitionedCall#^conv2d_214/StatefulPartitionedCall#^conv2d_215/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_171/StatefulPartitionedCall/batch_normalization_171/StatefulPartitionedCall2b
/batch_normalization_172/StatefulPartitionedCall/batch_normalization_172/StatefulPartitionedCall2b
/batch_normalization_173/StatefulPartitionedCall/batch_normalization_173/StatefulPartitionedCall2b
/batch_normalization_174/StatefulPartitionedCall/batch_normalization_174/StatefulPartitionedCall2b
/batch_normalization_175/StatefulPartitionedCall/batch_normalization_175/StatefulPartitionedCall2H
"conv2d_211/StatefulPartitionedCall"conv2d_211/StatefulPartitionedCall2H
"conv2d_212/StatefulPartitionedCall"conv2d_212/StatefulPartitionedCall2H
"conv2d_213/StatefulPartitionedCall"conv2d_213/StatefulPartitionedCall2H
"conv2d_214/StatefulPartitionedCall"conv2d_214/StatefulPartitionedCall2H
"conv2d_215/StatefulPartitionedCall"conv2d_215/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_173_layer_call_fn_8422463

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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_84201332
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
G__inference_conv2d_214_layer_call_and_return_conditional_losses_8420629

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
?X
?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421260

inputs,
conv2d_211_8421180:` 
conv2d_211_8421182:`-
batch_normalization_171_8421185:`-
batch_normalization_171_8421187:`-
batch_normalization_171_8421189:`-
batch_normalization_171_8421191:`-
conv2d_212_8421195:`?!
conv2d_212_8421197:	?.
batch_normalization_172_8421200:	?.
batch_normalization_172_8421202:	?.
batch_normalization_172_8421204:	?.
batch_normalization_172_8421206:	?.
conv2d_213_8421210:??!
conv2d_213_8421212:	?.
batch_normalization_173_8421215:	?.
batch_normalization_173_8421217:	?.
batch_normalization_173_8421219:	?.
batch_normalization_173_8421221:	?.
conv2d_214_8421224:??!
conv2d_214_8421226:	?.
batch_normalization_174_8421229:	?.
batch_normalization_174_8421231:	?.
batch_normalization_174_8421233:	?.
batch_normalization_174_8421235:	?.
conv2d_215_8421238:??!
conv2d_215_8421240:	?.
batch_normalization_175_8421243:	?.
batch_normalization_175_8421245:	?.
batch_normalization_175_8421247:	?.
batch_normalization_175_8421249:	?#
dense_31_8421254:	?(
dense_31_8421256:
identity??/batch_normalization_171/StatefulPartitionedCall?/batch_normalization_172/StatefulPartitionedCall?/batch_normalization_173/StatefulPartitionedCall?/batch_normalization_174/StatefulPartitionedCall?/batch_normalization_175/StatefulPartitionedCall?"conv2d_211/StatefulPartitionedCall?"conv2d_212/StatefulPartitionedCall?"conv2d_213/StatefulPartitionedCall?"conv2d_214/StatefulPartitionedCall?"conv2d_215/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
"conv2d_211/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_211_8421180conv2d_211_8421182*
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_84204852$
"conv2d_211/StatefulPartitionedCall?
/batch_normalization_171/StatefulPartitionedCallStatefulPartitionedCall+conv2d_211/StatefulPartitionedCall:output:0batch_normalization_171_8421185batch_normalization_171_8421187batch_normalization_171_8421189batch_normalization_171_8421191*
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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_842108521
/batch_normalization_171/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall8batch_normalization_171/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_84205222"
 max_pooling2d_37/PartitionedCall?
"conv2d_212/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_212_8421195conv2d_212_8421197*
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
G__inference_conv2d_212_layer_call_and_return_conditional_losses_84205352$
"conv2d_212/StatefulPartitionedCall?
/batch_normalization_172/StatefulPartitionedCallStatefulPartitionedCall+conv2d_212/StatefulPartitionedCall:output:0batch_normalization_172_8421200batch_normalization_172_8421202batch_normalization_172_8421204batch_normalization_172_8421206*
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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_842102621
/batch_normalization_172/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall8batch_normalization_172/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_84205722"
 max_pooling2d_38/PartitionedCall?
"conv2d_213/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_213_8421210conv2d_213_8421212*
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
G__inference_conv2d_213_layer_call_and_return_conditional_losses_84205852$
"conv2d_213/StatefulPartitionedCall?
/batch_normalization_173/StatefulPartitionedCallStatefulPartitionedCall+conv2d_213/StatefulPartitionedCall:output:0batch_normalization_173_8421215batch_normalization_173_8421217batch_normalization_173_8421219batch_normalization_173_8421221*
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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_842096721
/batch_normalization_173/StatefulPartitionedCall?
"conv2d_214/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_173/StatefulPartitionedCall:output:0conv2d_214_8421224conv2d_214_8421226*
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
G__inference_conv2d_214_layer_call_and_return_conditional_losses_84206292$
"conv2d_214/StatefulPartitionedCall?
/batch_normalization_174/StatefulPartitionedCallStatefulPartitionedCall+conv2d_214/StatefulPartitionedCall:output:0batch_normalization_174_8421229batch_normalization_174_8421231batch_normalization_174_8421233batch_normalization_174_8421235*
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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_842091321
/batch_normalization_174/StatefulPartitionedCall?
"conv2d_215/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_174/StatefulPartitionedCall:output:0conv2d_215_8421238conv2d_215_8421240*
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
G__inference_conv2d_215_layer_call_and_return_conditional_losses_84206732$
"conv2d_215/StatefulPartitionedCall?
/batch_normalization_175/StatefulPartitionedCallStatefulPartitionedCall+conv2d_215/StatefulPartitionedCall:output:0batch_normalization_175_8421243batch_normalization_175_8421245batch_normalization_175_8421247batch_normalization_175_8421249*
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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_842085921
/batch_normalization_175/StatefulPartitionedCall?
 max_pooling2d_39/PartitionedCallPartitionedCall8batch_normalization_175/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_84207102"
 max_pooling2d_39/PartitionedCall?
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
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
G__inference_flatten_15_layer_call_and_return_conditional_losses_84207182
flatten_15/PartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_31_8421254dense_31_8421256*
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
E__inference_dense_31_layer_call_and_return_conditional_losses_84207312"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_171/StatefulPartitionedCall0^batch_normalization_172/StatefulPartitionedCall0^batch_normalization_173/StatefulPartitionedCall0^batch_normalization_174/StatefulPartitionedCall0^batch_normalization_175/StatefulPartitionedCall#^conv2d_211/StatefulPartitionedCall#^conv2d_212/StatefulPartitionedCall#^conv2d_213/StatefulPartitionedCall#^conv2d_214/StatefulPartitionedCall#^conv2d_215/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_171/StatefulPartitionedCall/batch_normalization_171/StatefulPartitionedCall2b
/batch_normalization_172/StatefulPartitionedCall/batch_normalization_172/StatefulPartitionedCall2b
/batch_normalization_173/StatefulPartitionedCall/batch_normalization_173/StatefulPartitionedCall2b
/batch_normalization_174/StatefulPartitionedCall/batch_normalization_174/StatefulPartitionedCall2b
/batch_normalization_175/StatefulPartitionedCall/batch_normalization_175/StatefulPartitionedCall2H
"conv2d_211/StatefulPartitionedCall"conv2d_211/StatefulPartitionedCall2H
"conv2d_212/StatefulPartitionedCall"conv2d_212/StatefulPartitionedCall2H
"conv2d_213/StatefulPartitionedCall"conv2d_213/StatefulPartitionedCall2H
"conv2d_214/StatefulPartitionedCall"conv2d_214/StatefulPartitionedCall2H
"conv2d_215/StatefulPartitionedCall"conv2d_215/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422091

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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8420385

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
c
G__inference_flatten_15_layer_call_and_return_conditional_losses_8422803

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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422563

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
9__inference_batch_normalization_171_layer_call_fn_8422135

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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_84198372
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
?
#__inference__traced_restore_8423101
file_prefix<
"assignvariableop_conv2d_211_kernel:`0
"assignvariableop_1_conv2d_211_bias:`>
0assignvariableop_2_batch_normalization_171_gamma:`=
/assignvariableop_3_batch_normalization_171_beta:`D
6assignvariableop_4_batch_normalization_171_moving_mean:`H
:assignvariableop_5_batch_normalization_171_moving_variance:`?
$assignvariableop_6_conv2d_212_kernel:`?1
"assignvariableop_7_conv2d_212_bias:	??
0assignvariableop_8_batch_normalization_172_gamma:	?>
/assignvariableop_9_batch_normalization_172_beta:	?F
7assignvariableop_10_batch_normalization_172_moving_mean:	?J
;assignvariableop_11_batch_normalization_172_moving_variance:	?A
%assignvariableop_12_conv2d_213_kernel:??2
#assignvariableop_13_conv2d_213_bias:	?@
1assignvariableop_14_batch_normalization_173_gamma:	??
0assignvariableop_15_batch_normalization_173_beta:	?F
7assignvariableop_16_batch_normalization_173_moving_mean:	?J
;assignvariableop_17_batch_normalization_173_moving_variance:	?A
%assignvariableop_18_conv2d_214_kernel:??2
#assignvariableop_19_conv2d_214_bias:	?@
1assignvariableop_20_batch_normalization_174_gamma:	??
0assignvariableop_21_batch_normalization_174_beta:	?F
7assignvariableop_22_batch_normalization_174_moving_mean:	?J
;assignvariableop_23_batch_normalization_174_moving_variance:	?A
%assignvariableop_24_conv2d_215_kernel:??2
#assignvariableop_25_conv2d_215_bias:	?@
1assignvariableop_26_batch_normalization_175_gamma:	??
0assignvariableop_27_batch_normalization_175_beta:	?F
7assignvariableop_28_batch_normalization_175_moving_mean:	?J
;assignvariableop_29_batch_normalization_175_moving_variance:	?6
#assignvariableop_30_dense_31_kernel:	?(/
!assignvariableop_31_dense_31_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_211_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_211_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_171_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_171_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_171_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_171_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_212_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_212_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_172_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_172_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_172_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_172_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_213_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_213_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_173_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_173_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_173_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_173_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_214_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_214_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_174_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_174_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_174_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_174_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_215_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_215_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_175_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_175_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_175_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_175_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_31_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_31_biasIdentity_31:output:0"/device:CPU:0*
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
?
?
,__inference_conv2d_213_layer_call_fn_8422365

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
G__inference_conv2d_213_layer_call_and_return_conditional_losses_84205852
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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_8422782

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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422725

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
G__inference_conv2d_214_layer_call_and_return_conditional_losses_8422500

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
?
G__inference_conv2d_213_layer_call_and_return_conditional_losses_8422356

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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_8422787

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
9__inference_batch_normalization_175_layer_call_fn_8422751

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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_84203852
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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422671

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
?
?
,__inference_alex_net_7_layer_call_fn_8421396
conv2d_211_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_211_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_84212602
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
_user_specified_nameconv2d_211_input
?
?
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422073

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
conv2d_211_inputC
"serving_default_conv2d_211_input:0???????????<
dense_310
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
+:)`2conv2d_211/kernel
:`2conv2d_211/bias
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
+:)`2batch_normalization_171/gamma
*:(`2batch_normalization_171/beta
3:1` (2#batch_normalization_171/moving_mean
7:5` (2'batch_normalization_171/moving_variance
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
,:*`?2conv2d_212/kernel
:?2conv2d_212/bias
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
,:*?2batch_normalization_172/gamma
+:)?2batch_normalization_172/beta
4:2? (2#batch_normalization_172/moving_mean
8:6? (2'batch_normalization_172/moving_variance
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
-:+??2conv2d_213/kernel
:?2conv2d_213/bias
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
,:*?2batch_normalization_173/gamma
+:)?2batch_normalization_173/beta
4:2? (2#batch_normalization_173/moving_mean
8:6? (2'batch_normalization_173/moving_variance
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
-:+??2conv2d_214/kernel
:?2conv2d_214/bias
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
,:*?2batch_normalization_174/gamma
+:)?2batch_normalization_174/beta
4:2? (2#batch_normalization_174/moving_mean
8:6? (2'batch_normalization_174/moving_variance
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
-:+??2conv2d_215/kernel
:?2conv2d_215/bias
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
,:*?2batch_normalization_175/gamma
+:)?2batch_normalization_175/beta
4:2? (2#batch_normalization_175/moving_mean
8:6? (2'batch_normalization_175/moving_variance
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
": 	?(2dense_31/kernel
:2dense_31/bias
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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421758
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421879
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421479
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421562?
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
"__inference__wrapped_model_8419771conv2d_211_input"?
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
,__inference_alex_net_7_layer_call_fn_8420805
,__inference_alex_net_7_layer_call_fn_8421948
,__inference_alex_net_7_layer_call_fn_8422017
,__inference_alex_net_7_layer_call_fn_8421396?
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_8422028?
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
,__inference_conv2d_211_layer_call_fn_8422037?
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
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422055
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422073
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422091
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422109?
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
9__inference_batch_normalization_171_layer_call_fn_8422122
9__inference_batch_normalization_171_layer_call_fn_8422135
9__inference_batch_normalization_171_layer_call_fn_8422148
9__inference_batch_normalization_171_layer_call_fn_8422161?
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
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_8422166
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_8422171?
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
2__inference_max_pooling2d_37_layer_call_fn_8422176
2__inference_max_pooling2d_37_layer_call_fn_8422181?
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
G__inference_conv2d_212_layer_call_and_return_conditional_losses_8422192?
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
,__inference_conv2d_212_layer_call_fn_8422201?
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
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422219
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422237
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422255
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422273?
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
9__inference_batch_normalization_172_layer_call_fn_8422286
9__inference_batch_normalization_172_layer_call_fn_8422299
9__inference_batch_normalization_172_layer_call_fn_8422312
9__inference_batch_normalization_172_layer_call_fn_8422325?
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
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_8422330
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_8422335?
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
2__inference_max_pooling2d_38_layer_call_fn_8422340
2__inference_max_pooling2d_38_layer_call_fn_8422345?
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
G__inference_conv2d_213_layer_call_and_return_conditional_losses_8422356?
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
,__inference_conv2d_213_layer_call_fn_8422365?
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
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422383
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422401
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422419
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422437?
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
9__inference_batch_normalization_173_layer_call_fn_8422450
9__inference_batch_normalization_173_layer_call_fn_8422463
9__inference_batch_normalization_173_layer_call_fn_8422476
9__inference_batch_normalization_173_layer_call_fn_8422489?
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
G__inference_conv2d_214_layer_call_and_return_conditional_losses_8422500?
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
,__inference_conv2d_214_layer_call_fn_8422509?
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
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422527
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422545
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422563
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422581?
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
9__inference_batch_normalization_174_layer_call_fn_8422594
9__inference_batch_normalization_174_layer_call_fn_8422607
9__inference_batch_normalization_174_layer_call_fn_8422620
9__inference_batch_normalization_174_layer_call_fn_8422633?
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
G__inference_conv2d_215_layer_call_and_return_conditional_losses_8422644?
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
,__inference_conv2d_215_layer_call_fn_8422653?
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
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422671
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422689
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422707
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422725?
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
9__inference_batch_normalization_175_layer_call_fn_8422738
9__inference_batch_normalization_175_layer_call_fn_8422751
9__inference_batch_normalization_175_layer_call_fn_8422764
9__inference_batch_normalization_175_layer_call_fn_8422777?
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
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_8422782
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_8422787?
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
2__inference_max_pooling2d_39_layer_call_fn_8422792
2__inference_max_pooling2d_39_layer_call_fn_8422797?
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
G__inference_flatten_15_layer_call_and_return_conditional_losses_8422803?
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
,__inference_flatten_15_layer_call_fn_8422808?
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
E__inference_dense_31_layer_call_and_return_conditional_losses_8422819?
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
*__inference_dense_31_layer_call_fn_8422828?
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
%__inference_signature_wrapper_8421637conv2d_211_input"?
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
"__inference__wrapped_model_8419771?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_211_input???????????
? "3?0
.
dense_31"?
dense_31??????????
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421479?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_211_input???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421562?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_211_input???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421758?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
G__inference_alex_net_7_layer_call_and_return_conditional_losses_8421879?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
,__inference_alex_net_7_layer_call_fn_8420805?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_211_input???????????
p 

 
? "???????????
,__inference_alex_net_7_layer_call_fn_8421396?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_211_input???????????
p

 
? "???????????
,__inference_alex_net_7_layer_call_fn_8421948  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_alex_net_7_layer_call_fn_8422017  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422055? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422073? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422091r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_171_layer_call_and_return_conditional_losses_8422109r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_171_layer_call_fn_8422122? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_171_layer_call_fn_8422135? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_171_layer_call_fn_8422148e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_171_layer_call_fn_8422161e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422219?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422237?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422255t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_172_layer_call_and_return_conditional_losses_8422273t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_172_layer_call_fn_8422286?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_172_layer_call_fn_8422299?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_172_layer_call_fn_8422312g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_172_layer_call_fn_8422325g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422383?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422401?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422419tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_173_layer_call_and_return_conditional_losses_8422437tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_173_layer_call_fn_8422450?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_173_layer_call_fn_8422463?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_173_layer_call_fn_8422476gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_173_layer_call_fn_8422489gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422527?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422545?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422563tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_174_layer_call_and_return_conditional_losses_8422581tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_174_layer_call_fn_8422594?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_174_layer_call_fn_8422607?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_174_layer_call_fn_8422620gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_174_layer_call_fn_8422633gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422671?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422689?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422707tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_175_layer_call_and_return_conditional_losses_8422725tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_175_layer_call_fn_8422738?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_175_layer_call_fn_8422751?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_175_layer_call_fn_8422764gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_175_layer_call_fn_8422777gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_211_layer_call_and_return_conditional_losses_8422028n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_211_layer_call_fn_8422037a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_212_layer_call_and_return_conditional_losses_8422192m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_212_layer_call_fn_8422201`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_213_layer_call_and_return_conditional_losses_8422356n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_213_layer_call_fn_8422365a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_214_layer_call_and_return_conditional_losses_8422500nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_214_layer_call_fn_8422509aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_215_layer_call_and_return_conditional_losses_8422644nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_215_layer_call_fn_8422653aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_31_layer_call_and_return_conditional_losses_8422819]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_31_layer_call_fn_8422828Pqr0?-
&?#
!?
inputs??????????(
? "???????????
G__inference_flatten_15_layer_call_and_return_conditional_losses_8422803b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
,__inference_flatten_15_layer_call_fn_8422808U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_8422166?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_8422171h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_37_layer_call_fn_8422176?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_37_layer_call_fn_8422181[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_8422330?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_8422335j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_38_layer_call_fn_8422340?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_38_layer_call_fn_8422345]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_8422782?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_8422787j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_39_layer_call_fn_8422792?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_39_layer_call_fn_8422797]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_8421637?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_211_input4?1
conv2d_211_input???????????"3?0
.
dense_31"?
dense_31?????????