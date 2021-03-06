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
conv2d_265/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_265/kernel

%conv2d_265/kernel/Read/ReadVariableOpReadVariableOpconv2d_265/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_265/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_265/bias
o
#conv2d_265/bias/Read/ReadVariableOpReadVariableOpconv2d_265/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_215/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_215/gamma
?
1batch_normalization_215/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_215/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_215/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_215/beta
?
0batch_normalization_215/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_215/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_215/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_215/moving_mean
?
7batch_normalization_215/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_215/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_215/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_215/moving_variance
?
;batch_normalization_215/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_215/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_266/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_266/kernel
?
%conv2d_266/kernel/Read/ReadVariableOpReadVariableOpconv2d_266/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_266/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_266/bias
p
#conv2d_266/bias/Read/ReadVariableOpReadVariableOpconv2d_266/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_216/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_216/gamma
?
1batch_normalization_216/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_216/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_216/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_216/beta
?
0batch_normalization_216/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_216/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_216/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_216/moving_mean
?
7batch_normalization_216/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_216/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_216/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_216/moving_variance
?
;batch_normalization_216/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_216/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_267/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_267/kernel
?
%conv2d_267/kernel/Read/ReadVariableOpReadVariableOpconv2d_267/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_267/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_267/bias
p
#conv2d_267/bias/Read/ReadVariableOpReadVariableOpconv2d_267/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_217/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_217/gamma
?
1batch_normalization_217/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_217/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_217/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_217/beta
?
0batch_normalization_217/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_217/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_217/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_217/moving_mean
?
7batch_normalization_217/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_217/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_217/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_217/moving_variance
?
;batch_normalization_217/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_217/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_268/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_268/kernel
?
%conv2d_268/kernel/Read/ReadVariableOpReadVariableOpconv2d_268/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_268/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_268/bias
p
#conv2d_268/bias/Read/ReadVariableOpReadVariableOpconv2d_268/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_218/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_218/gamma
?
1batch_normalization_218/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_218/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_218/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_218/beta
?
0batch_normalization_218/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_218/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_218/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_218/moving_mean
?
7batch_normalization_218/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_218/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_218/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_218/moving_variance
?
;batch_normalization_218/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_218/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_269/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_269/kernel
?
%conv2d_269/kernel/Read/ReadVariableOpReadVariableOpconv2d_269/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_269/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_269/bias
p
#conv2d_269/bias/Read/ReadVariableOpReadVariableOpconv2d_269/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_219/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_219/gamma
?
1batch_normalization_219/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_219/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_219/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_219/beta
?
0batch_normalization_219/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_219/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_219/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_219/moving_mean
?
7batch_normalization_219/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_219/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_219/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_219/moving_variance
?
;batch_normalization_219/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_219/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_39/kernel
t
#dense_39/kernel/Read/ReadVariableOpReadVariableOpdense_39/kernel*
_output_shapes
:	?(*
dtype0
r
dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_39/bias
k
!dense_39/bias/Read/ReadVariableOpReadVariableOpdense_39/bias*
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
VARIABLE_VALUEconv2d_265/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_265/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_215/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_215/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_215/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_215/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_266/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_266/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_216/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_216/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_216/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_216/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_267/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_267/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_217/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_217/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_217/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_217/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_268/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_268/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_218/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_218/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_218/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_218/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_269/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_269/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_219/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_219/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_219/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_219/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_39/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_39/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_265_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_265_inputconv2d_265/kernelconv2d_265/biasbatch_normalization_215/gammabatch_normalization_215/beta#batch_normalization_215/moving_mean'batch_normalization_215/moving_varianceconv2d_266/kernelconv2d_266/biasbatch_normalization_216/gammabatch_normalization_216/beta#batch_normalization_216/moving_mean'batch_normalization_216/moving_varianceconv2d_267/kernelconv2d_267/biasbatch_normalization_217/gammabatch_normalization_217/beta#batch_normalization_217/moving_mean'batch_normalization_217/moving_varianceconv2d_268/kernelconv2d_268/biasbatch_normalization_218/gammabatch_normalization_218/beta#batch_normalization_218/moving_mean'batch_normalization_218/moving_varianceconv2d_269/kernelconv2d_269/biasbatch_normalization_219/gammabatch_normalization_219/beta#batch_normalization_219/moving_mean'batch_normalization_219/moving_variancedense_39/kerneldense_39/bias*,
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
&__inference_signature_wrapper_10805908
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_265/kernel/Read/ReadVariableOp#conv2d_265/bias/Read/ReadVariableOp1batch_normalization_215/gamma/Read/ReadVariableOp0batch_normalization_215/beta/Read/ReadVariableOp7batch_normalization_215/moving_mean/Read/ReadVariableOp;batch_normalization_215/moving_variance/Read/ReadVariableOp%conv2d_266/kernel/Read/ReadVariableOp#conv2d_266/bias/Read/ReadVariableOp1batch_normalization_216/gamma/Read/ReadVariableOp0batch_normalization_216/beta/Read/ReadVariableOp7batch_normalization_216/moving_mean/Read/ReadVariableOp;batch_normalization_216/moving_variance/Read/ReadVariableOp%conv2d_267/kernel/Read/ReadVariableOp#conv2d_267/bias/Read/ReadVariableOp1batch_normalization_217/gamma/Read/ReadVariableOp0batch_normalization_217/beta/Read/ReadVariableOp7batch_normalization_217/moving_mean/Read/ReadVariableOp;batch_normalization_217/moving_variance/Read/ReadVariableOp%conv2d_268/kernel/Read/ReadVariableOp#conv2d_268/bias/Read/ReadVariableOp1batch_normalization_218/gamma/Read/ReadVariableOp0batch_normalization_218/beta/Read/ReadVariableOp7batch_normalization_218/moving_mean/Read/ReadVariableOp;batch_normalization_218/moving_variance/Read/ReadVariableOp%conv2d_269/kernel/Read/ReadVariableOp#conv2d_269/bias/Read/ReadVariableOp1batch_normalization_219/gamma/Read/ReadVariableOp0batch_normalization_219/beta/Read/ReadVariableOp7batch_normalization_219/moving_mean/Read/ReadVariableOp;batch_normalization_219/moving_variance/Read/ReadVariableOp#dense_39/kernel/Read/ReadVariableOp!dense_39/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
!__inference__traced_save_10807242
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_265/kernelconv2d_265/biasbatch_normalization_215/gammabatch_normalization_215/beta#batch_normalization_215/moving_mean'batch_normalization_215/moving_varianceconv2d_266/kernelconv2d_266/biasbatch_normalization_216/gammabatch_normalization_216/beta#batch_normalization_216/moving_mean'batch_normalization_216/moving_varianceconv2d_267/kernelconv2d_267/biasbatch_normalization_217/gammabatch_normalization_217/beta#batch_normalization_217/moving_mean'batch_normalization_217/moving_varianceconv2d_268/kernelconv2d_268/biasbatch_normalization_218/gammabatch_normalization_218/beta#batch_normalization_218/moving_mean'batch_normalization_218/moving_varianceconv2d_269/kernelconv2d_269/biasbatch_normalization_219/gammabatch_normalization_219/beta#batch_normalization_219/moving_mean'batch_normalization_219/moving_variancedense_39/kerneldense_39/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
$__inference__traced_restore_10807372??
?
j
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_10806442

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
I
-__inference_flatten_19_layer_call_fn_10807079

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
H__inference_flatten_19_layer_call_and_return_conditional_losses_108049892
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
?Y
?
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10805009

inputs-
conv2d_265_10804757:`!
conv2d_265_10804759:`.
 batch_normalization_215_10804780:`.
 batch_normalization_215_10804782:`.
 batch_normalization_215_10804784:`.
 batch_normalization_215_10804786:`.
conv2d_266_10804807:`?"
conv2d_266_10804809:	?/
 batch_normalization_216_10804830:	?/
 batch_normalization_216_10804832:	?/
 batch_normalization_216_10804834:	?/
 batch_normalization_216_10804836:	?/
conv2d_267_10804857:??"
conv2d_267_10804859:	?/
 batch_normalization_217_10804880:	?/
 batch_normalization_217_10804882:	?/
 batch_normalization_217_10804884:	?/
 batch_normalization_217_10804886:	?/
conv2d_268_10804901:??"
conv2d_268_10804903:	?/
 batch_normalization_218_10804924:	?/
 batch_normalization_218_10804926:	?/
 batch_normalization_218_10804928:	?/
 batch_normalization_218_10804930:	?/
conv2d_269_10804945:??"
conv2d_269_10804947:	?/
 batch_normalization_219_10804968:	?/
 batch_normalization_219_10804970:	?/
 batch_normalization_219_10804972:	?/
 batch_normalization_219_10804974:	?$
dense_39_10805003:	?(
dense_39_10805005:
identity??/batch_normalization_215/StatefulPartitionedCall?/batch_normalization_216/StatefulPartitionedCall?/batch_normalization_217/StatefulPartitionedCall?/batch_normalization_218/StatefulPartitionedCall?/batch_normalization_219/StatefulPartitionedCall?"conv2d_265/StatefulPartitionedCall?"conv2d_266/StatefulPartitionedCall?"conv2d_267/StatefulPartitionedCall?"conv2d_268/StatefulPartitionedCall?"conv2d_269/StatefulPartitionedCall? dense_39/StatefulPartitionedCall?
"conv2d_265/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_265_10804757conv2d_265_10804759*
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
H__inference_conv2d_265_layer_call_and_return_conditional_losses_108047562$
"conv2d_265/StatefulPartitionedCall?
/batch_normalization_215/StatefulPartitionedCallStatefulPartitionedCall+conv2d_265/StatefulPartitionedCall:output:0 batch_normalization_215_10804780 batch_normalization_215_10804782 batch_normalization_215_10804784 batch_normalization_215_10804786*
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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_1080477921
/batch_normalization_215/StatefulPartitionedCall?
 max_pooling2d_47/PartitionedCallPartitionedCall8batch_normalization_215/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_108047932"
 max_pooling2d_47/PartitionedCall?
"conv2d_266/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_266_10804807conv2d_266_10804809*
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
H__inference_conv2d_266_layer_call_and_return_conditional_losses_108048062$
"conv2d_266/StatefulPartitionedCall?
/batch_normalization_216/StatefulPartitionedCallStatefulPartitionedCall+conv2d_266/StatefulPartitionedCall:output:0 batch_normalization_216_10804830 batch_normalization_216_10804832 batch_normalization_216_10804834 batch_normalization_216_10804836*
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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_1080482921
/batch_normalization_216/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall8batch_normalization_216/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_108048432"
 max_pooling2d_48/PartitionedCall?
"conv2d_267/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_267_10804857conv2d_267_10804859*
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
H__inference_conv2d_267_layer_call_and_return_conditional_losses_108048562$
"conv2d_267/StatefulPartitionedCall?
/batch_normalization_217/StatefulPartitionedCallStatefulPartitionedCall+conv2d_267/StatefulPartitionedCall:output:0 batch_normalization_217_10804880 batch_normalization_217_10804882 batch_normalization_217_10804884 batch_normalization_217_10804886*
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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_1080487921
/batch_normalization_217/StatefulPartitionedCall?
"conv2d_268/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_217/StatefulPartitionedCall:output:0conv2d_268_10804901conv2d_268_10804903*
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
H__inference_conv2d_268_layer_call_and_return_conditional_losses_108049002$
"conv2d_268/StatefulPartitionedCall?
/batch_normalization_218/StatefulPartitionedCallStatefulPartitionedCall+conv2d_268/StatefulPartitionedCall:output:0 batch_normalization_218_10804924 batch_normalization_218_10804926 batch_normalization_218_10804928 batch_normalization_218_10804930*
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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_1080492321
/batch_normalization_218/StatefulPartitionedCall?
"conv2d_269/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_218/StatefulPartitionedCall:output:0conv2d_269_10804945conv2d_269_10804947*
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
H__inference_conv2d_269_layer_call_and_return_conditional_losses_108049442$
"conv2d_269/StatefulPartitionedCall?
/batch_normalization_219/StatefulPartitionedCallStatefulPartitionedCall+conv2d_269/StatefulPartitionedCall:output:0 batch_normalization_219_10804968 batch_normalization_219_10804970 batch_normalization_219_10804972 batch_normalization_219_10804974*
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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_1080496721
/batch_normalization_219/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall8batch_normalization_219/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_108049812"
 max_pooling2d_49/PartitionedCall?
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
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
H__inference_flatten_19_layer_call_and_return_conditional_losses_108049892
flatten_19/PartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_39_10805003dense_39_10805005*
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
F__inference_dense_39_layer_call_and_return_conditional_losses_108050022"
 dense_39/StatefulPartitionedCall?
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_215/StatefulPartitionedCall0^batch_normalization_216/StatefulPartitionedCall0^batch_normalization_217/StatefulPartitionedCall0^batch_normalization_218/StatefulPartitionedCall0^batch_normalization_219/StatefulPartitionedCall#^conv2d_265/StatefulPartitionedCall#^conv2d_266/StatefulPartitionedCall#^conv2d_267/StatefulPartitionedCall#^conv2d_268/StatefulPartitionedCall#^conv2d_269/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_215/StatefulPartitionedCall/batch_normalization_215/StatefulPartitionedCall2b
/batch_normalization_216/StatefulPartitionedCall/batch_normalization_216/StatefulPartitionedCall2b
/batch_normalization_217/StatefulPartitionedCall/batch_normalization_217/StatefulPartitionedCall2b
/batch_normalization_218/StatefulPartitionedCall/batch_normalization_218/StatefulPartitionedCall2b
/batch_normalization_219/StatefulPartitionedCall/batch_normalization_219/StatefulPartitionedCall2H
"conv2d_265/StatefulPartitionedCall"conv2d_265/StatefulPartitionedCall2H
"conv2d_266/StatefulPartitionedCall"conv2d_266/StatefulPartitionedCall2H
"conv2d_267/StatefulPartitionedCall"conv2d_267/StatefulPartitionedCall2H
"conv2d_268/StatefulPartitionedCall"conv2d_268/StatefulPartitionedCall2H
"conv2d_269/StatefulPartitionedCall"conv2d_269/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806672

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
-__inference_conv2d_266_layer_call_fn_10806472

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
H__inference_conv2d_266_layer_call_and_return_conditional_losses_108048062
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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806690

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
F__inference_dense_39_layer_call_and_return_conditional_losses_10807090

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
-__inference_alex_net_9_layer_call_fn_10806288

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
H__inference_alex_net_9_layer_call_and_return_conditional_losses_108055312
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
?
O
3__inference_max_pooling2d_49_layer_call_fn_10807063

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
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_108047252
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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10805184

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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10804829

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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10804879

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
j
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_10804981

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
?Y
?
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10805531

inputs-
conv2d_265_10805451:`!
conv2d_265_10805453:`.
 batch_normalization_215_10805456:`.
 batch_normalization_215_10805458:`.
 batch_normalization_215_10805460:`.
 batch_normalization_215_10805462:`.
conv2d_266_10805466:`?"
conv2d_266_10805468:	?/
 batch_normalization_216_10805471:	?/
 batch_normalization_216_10805473:	?/
 batch_normalization_216_10805475:	?/
 batch_normalization_216_10805477:	?/
conv2d_267_10805481:??"
conv2d_267_10805483:	?/
 batch_normalization_217_10805486:	?/
 batch_normalization_217_10805488:	?/
 batch_normalization_217_10805490:	?/
 batch_normalization_217_10805492:	?/
conv2d_268_10805495:??"
conv2d_268_10805497:	?/
 batch_normalization_218_10805500:	?/
 batch_normalization_218_10805502:	?/
 batch_normalization_218_10805504:	?/
 batch_normalization_218_10805506:	?/
conv2d_269_10805509:??"
conv2d_269_10805511:	?/
 batch_normalization_219_10805514:	?/
 batch_normalization_219_10805516:	?/
 batch_normalization_219_10805518:	?/
 batch_normalization_219_10805520:	?$
dense_39_10805525:	?(
dense_39_10805527:
identity??/batch_normalization_215/StatefulPartitionedCall?/batch_normalization_216/StatefulPartitionedCall?/batch_normalization_217/StatefulPartitionedCall?/batch_normalization_218/StatefulPartitionedCall?/batch_normalization_219/StatefulPartitionedCall?"conv2d_265/StatefulPartitionedCall?"conv2d_266/StatefulPartitionedCall?"conv2d_267/StatefulPartitionedCall?"conv2d_268/StatefulPartitionedCall?"conv2d_269/StatefulPartitionedCall? dense_39/StatefulPartitionedCall?
"conv2d_265/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_265_10805451conv2d_265_10805453*
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
H__inference_conv2d_265_layer_call_and_return_conditional_losses_108047562$
"conv2d_265/StatefulPartitionedCall?
/batch_normalization_215/StatefulPartitionedCallStatefulPartitionedCall+conv2d_265/StatefulPartitionedCall:output:0 batch_normalization_215_10805456 batch_normalization_215_10805458 batch_normalization_215_10805460 batch_normalization_215_10805462*
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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_1080535621
/batch_normalization_215/StatefulPartitionedCall?
 max_pooling2d_47/PartitionedCallPartitionedCall8batch_normalization_215/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_108047932"
 max_pooling2d_47/PartitionedCall?
"conv2d_266/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_266_10805466conv2d_266_10805468*
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
H__inference_conv2d_266_layer_call_and_return_conditional_losses_108048062$
"conv2d_266/StatefulPartitionedCall?
/batch_normalization_216/StatefulPartitionedCallStatefulPartitionedCall+conv2d_266/StatefulPartitionedCall:output:0 batch_normalization_216_10805471 batch_normalization_216_10805473 batch_normalization_216_10805475 batch_normalization_216_10805477*
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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_1080529721
/batch_normalization_216/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall8batch_normalization_216/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_108048432"
 max_pooling2d_48/PartitionedCall?
"conv2d_267/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_267_10805481conv2d_267_10805483*
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
H__inference_conv2d_267_layer_call_and_return_conditional_losses_108048562$
"conv2d_267/StatefulPartitionedCall?
/batch_normalization_217/StatefulPartitionedCallStatefulPartitionedCall+conv2d_267/StatefulPartitionedCall:output:0 batch_normalization_217_10805486 batch_normalization_217_10805488 batch_normalization_217_10805490 batch_normalization_217_10805492*
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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_1080523821
/batch_normalization_217/StatefulPartitionedCall?
"conv2d_268/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_217/StatefulPartitionedCall:output:0conv2d_268_10805495conv2d_268_10805497*
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
H__inference_conv2d_268_layer_call_and_return_conditional_losses_108049002$
"conv2d_268/StatefulPartitionedCall?
/batch_normalization_218/StatefulPartitionedCallStatefulPartitionedCall+conv2d_268/StatefulPartitionedCall:output:0 batch_normalization_218_10805500 batch_normalization_218_10805502 batch_normalization_218_10805504 batch_normalization_218_10805506*
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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_1080518421
/batch_normalization_218/StatefulPartitionedCall?
"conv2d_269/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_218/StatefulPartitionedCall:output:0conv2d_269_10805509conv2d_269_10805511*
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
H__inference_conv2d_269_layer_call_and_return_conditional_losses_108049442$
"conv2d_269/StatefulPartitionedCall?
/batch_normalization_219/StatefulPartitionedCallStatefulPartitionedCall+conv2d_269/StatefulPartitionedCall:output:0 batch_normalization_219_10805514 batch_normalization_219_10805516 batch_normalization_219_10805518 batch_normalization_219_10805520*
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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_1080513021
/batch_normalization_219/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall8batch_normalization_219/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_108049812"
 max_pooling2d_49/PartitionedCall?
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
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
H__inference_flatten_19_layer_call_and_return_conditional_losses_108049892
flatten_19/PartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_39_10805525dense_39_10805527*
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
F__inference_dense_39_layer_call_and_return_conditional_losses_108050022"
 dense_39/StatefulPartitionedCall?
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_215/StatefulPartitionedCall0^batch_normalization_216/StatefulPartitionedCall0^batch_normalization_217/StatefulPartitionedCall0^batch_normalization_218/StatefulPartitionedCall0^batch_normalization_219/StatefulPartitionedCall#^conv2d_265/StatefulPartitionedCall#^conv2d_266/StatefulPartitionedCall#^conv2d_267/StatefulPartitionedCall#^conv2d_268/StatefulPartitionedCall#^conv2d_269/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_215/StatefulPartitionedCall/batch_normalization_215/StatefulPartitionedCall2b
/batch_normalization_216/StatefulPartitionedCall/batch_normalization_216/StatefulPartitionedCall2b
/batch_normalization_217/StatefulPartitionedCall/batch_normalization_217/StatefulPartitionedCall2b
/batch_normalization_218/StatefulPartitionedCall/batch_normalization_218/StatefulPartitionedCall2b
/batch_normalization_219/StatefulPartitionedCall/batch_normalization_219/StatefulPartitionedCall2H
"conv2d_265/StatefulPartitionedCall"conv2d_265/StatefulPartitionedCall2H
"conv2d_266/StatefulPartitionedCall"conv2d_266/StatefulPartitionedCall2H
"conv2d_267/StatefulPartitionedCall"conv2d_267/StatefulPartitionedCall2H
"conv2d_268/StatefulPartitionedCall"conv2d_268/StatefulPartitionedCall2H
"conv2d_269/StatefulPartitionedCall"conv2d_269/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806798

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
-__inference_alex_net_9_layer_call_fn_10805667
conv2d_265_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_265_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_alex_net_9_layer_call_and_return_conditional_losses_108055312
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
_user_specified_nameconv2d_265_input
?
?
-__inference_conv2d_265_layer_call_fn_10806308

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
H__inference_conv2d_265_layer_call_and_return_conditional_losses_108047562
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
?
j
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_10807058

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
:__inference_batch_normalization_215_layer_call_fn_10806419

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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_108047792
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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806508

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
H__inference_conv2d_267_layer_call_and_return_conditional_losses_10804856

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
?
O
3__inference_max_pooling2d_48_layer_call_fn_10806611

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
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_108043252
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
H__inference_conv2d_269_layer_call_and_return_conditional_losses_10804944

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
?
?
+__inference_dense_39_layer_call_fn_10807099

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
F__inference_dense_39_layer_call_and_return_conditional_losses_108050022
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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806380

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
:__inference_batch_normalization_219_layer_call_fn_10807048

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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_108051302
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
:__inference_batch_normalization_216_layer_call_fn_10806570

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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_108042562
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
-__inference_conv2d_267_layer_call_fn_10806636

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
H__inference_conv2d_267_layer_call_and_return_conditional_losses_108048562
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
?T
?
!__inference__traced_save_10807242
file_prefix0
,savev2_conv2d_265_kernel_read_readvariableop.
*savev2_conv2d_265_bias_read_readvariableop<
8savev2_batch_normalization_215_gamma_read_readvariableop;
7savev2_batch_normalization_215_beta_read_readvariableopB
>savev2_batch_normalization_215_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_215_moving_variance_read_readvariableop0
,savev2_conv2d_266_kernel_read_readvariableop.
*savev2_conv2d_266_bias_read_readvariableop<
8savev2_batch_normalization_216_gamma_read_readvariableop;
7savev2_batch_normalization_216_beta_read_readvariableopB
>savev2_batch_normalization_216_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_216_moving_variance_read_readvariableop0
,savev2_conv2d_267_kernel_read_readvariableop.
*savev2_conv2d_267_bias_read_readvariableop<
8savev2_batch_normalization_217_gamma_read_readvariableop;
7savev2_batch_normalization_217_beta_read_readvariableopB
>savev2_batch_normalization_217_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_217_moving_variance_read_readvariableop0
,savev2_conv2d_268_kernel_read_readvariableop.
*savev2_conv2d_268_bias_read_readvariableop<
8savev2_batch_normalization_218_gamma_read_readvariableop;
7savev2_batch_normalization_218_beta_read_readvariableopB
>savev2_batch_normalization_218_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_218_moving_variance_read_readvariableop0
,savev2_conv2d_269_kernel_read_readvariableop.
*savev2_conv2d_269_bias_read_readvariableop<
8savev2_batch_normalization_219_gamma_read_readvariableop;
7savev2_batch_normalization_219_beta_read_readvariableopB
>savev2_batch_normalization_219_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_219_moving_variance_read_readvariableop.
*savev2_dense_39_kernel_read_readvariableop,
(savev2_dense_39_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_265_kernel_read_readvariableop*savev2_conv2d_265_bias_read_readvariableop8savev2_batch_normalization_215_gamma_read_readvariableop7savev2_batch_normalization_215_beta_read_readvariableop>savev2_batch_normalization_215_moving_mean_read_readvariableopBsavev2_batch_normalization_215_moving_variance_read_readvariableop,savev2_conv2d_266_kernel_read_readvariableop*savev2_conv2d_266_bias_read_readvariableop8savev2_batch_normalization_216_gamma_read_readvariableop7savev2_batch_normalization_216_beta_read_readvariableop>savev2_batch_normalization_216_moving_mean_read_readvariableopBsavev2_batch_normalization_216_moving_variance_read_readvariableop,savev2_conv2d_267_kernel_read_readvariableop*savev2_conv2d_267_bias_read_readvariableop8savev2_batch_normalization_217_gamma_read_readvariableop7savev2_batch_normalization_217_beta_read_readvariableop>savev2_batch_normalization_217_moving_mean_read_readvariableopBsavev2_batch_normalization_217_moving_variance_read_readvariableop,savev2_conv2d_268_kernel_read_readvariableop*savev2_conv2d_268_bias_read_readvariableop8savev2_batch_normalization_218_gamma_read_readvariableop7savev2_batch_normalization_218_beta_read_readvariableop>savev2_batch_normalization_218_moving_mean_read_readvariableopBsavev2_batch_normalization_218_moving_variance_read_readvariableop,savev2_conv2d_269_kernel_read_readvariableop*savev2_conv2d_269_bias_read_readvariableop8savev2_batch_normalization_219_gamma_read_readvariableop7savev2_batch_normalization_219_beta_read_readvariableop>savev2_batch_normalization_219_moving_mean_read_readvariableopBsavev2_batch_normalization_219_moving_variance_read_readvariableop*savev2_dense_39_kernel_read_readvariableop(savev2_dense_39_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
:__inference_batch_normalization_217_layer_call_fn_10806721

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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_108043602
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
:__inference_batch_normalization_216_layer_call_fn_10806557

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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_108042122
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
:__inference_batch_normalization_218_layer_call_fn_10806878

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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_108045302
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
-__inference_alex_net_9_layer_call_fn_10805076
conv2d_265_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_265_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_alex_net_9_layer_call_and_return_conditional_losses_108050092
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
_user_specified_nameconv2d_265_input
?
?
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10804612

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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10804486

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
:__inference_batch_normalization_217_layer_call_fn_10806760

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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_108052382
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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806490

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
:__inference_batch_normalization_218_layer_call_fn_10806891

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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_108049232
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
H__inference_conv2d_269_layer_call_and_return_conditional_losses_10806915

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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10804108

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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10804530

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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10804064

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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10804967

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
??
?"
#__inference__wrapped_model_10804042
conv2d_265_inputN
4alex_net_9_conv2d_265_conv2d_readvariableop_resource:`C
5alex_net_9_conv2d_265_biasadd_readvariableop_resource:`H
:alex_net_9_batch_normalization_215_readvariableop_resource:`J
<alex_net_9_batch_normalization_215_readvariableop_1_resource:`Y
Kalex_net_9_batch_normalization_215_fusedbatchnormv3_readvariableop_resource:`[
Malex_net_9_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_9_conv2d_266_conv2d_readvariableop_resource:`?D
5alex_net_9_conv2d_266_biasadd_readvariableop_resource:	?I
:alex_net_9_batch_normalization_216_readvariableop_resource:	?K
<alex_net_9_batch_normalization_216_readvariableop_1_resource:	?Z
Kalex_net_9_batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_9_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_9_conv2d_267_conv2d_readvariableop_resource:??D
5alex_net_9_conv2d_267_biasadd_readvariableop_resource:	?I
:alex_net_9_batch_normalization_217_readvariableop_resource:	?K
<alex_net_9_batch_normalization_217_readvariableop_1_resource:	?Z
Kalex_net_9_batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_9_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_9_conv2d_268_conv2d_readvariableop_resource:??D
5alex_net_9_conv2d_268_biasadd_readvariableop_resource:	?I
:alex_net_9_batch_normalization_218_readvariableop_resource:	?K
<alex_net_9_batch_normalization_218_readvariableop_1_resource:	?Z
Kalex_net_9_batch_normalization_218_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_9_batch_normalization_218_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_9_conv2d_269_conv2d_readvariableop_resource:??D
5alex_net_9_conv2d_269_biasadd_readvariableop_resource:	?I
:alex_net_9_batch_normalization_219_readvariableop_resource:	?K
<alex_net_9_batch_normalization_219_readvariableop_1_resource:	?Z
Kalex_net_9_batch_normalization_219_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_9_batch_normalization_219_fusedbatchnormv3_readvariableop_1_resource:	?E
2alex_net_9_dense_39_matmul_readvariableop_resource:	?(A
3alex_net_9_dense_39_biasadd_readvariableop_resource:
identity??Balex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_215/ReadVariableOp?3alex_net_9/batch_normalization_215/ReadVariableOp_1?Balex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_216/ReadVariableOp?3alex_net_9/batch_normalization_216/ReadVariableOp_1?Balex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_217/ReadVariableOp?3alex_net_9/batch_normalization_217/ReadVariableOp_1?Balex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_218/ReadVariableOp?3alex_net_9/batch_normalization_218/ReadVariableOp_1?Balex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_219/ReadVariableOp?3alex_net_9/batch_normalization_219/ReadVariableOp_1?,alex_net_9/conv2d_265/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_265/Conv2D/ReadVariableOp?,alex_net_9/conv2d_266/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_266/Conv2D/ReadVariableOp?,alex_net_9/conv2d_267/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_267/Conv2D/ReadVariableOp?,alex_net_9/conv2d_268/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_268/Conv2D/ReadVariableOp?,alex_net_9/conv2d_269/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_269/Conv2D/ReadVariableOp?*alex_net_9/dense_39/BiasAdd/ReadVariableOp?)alex_net_9/dense_39/MatMul/ReadVariableOp?
+alex_net_9/conv2d_265/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_265_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_9/conv2d_265/Conv2D/ReadVariableOp?
alex_net_9/conv2d_265/Conv2DConv2Dconv2d_265_input3alex_net_9/conv2d_265/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_9/conv2d_265/Conv2D?
,alex_net_9/conv2d_265/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_265_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_9/conv2d_265/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_265/BiasAddBiasAdd%alex_net_9/conv2d_265/Conv2D:output:04alex_net_9/conv2d_265/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
alex_net_9/conv2d_265/BiasAdd?
alex_net_9/conv2d_265/ReluRelu&alex_net_9/conv2d_265/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_9/conv2d_265/Relu?
1alex_net_9/batch_normalization_215/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_215_readvariableop_resource*
_output_shapes
:`*
dtype023
1alex_net_9/batch_normalization_215/ReadVariableOp?
3alex_net_9/batch_normalization_215/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_215_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3alex_net_9/batch_normalization_215/ReadVariableOp_1?
Balex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02D
Balex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02F
Dalex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_215/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_265/Relu:activations:09alex_net_9/batch_normalization_215/ReadVariableOp:value:0;alex_net_9/batch_normalization_215/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_215/FusedBatchNormV3?
#alex_net_9/max_pooling2d_47/MaxPoolMaxPool7alex_net_9/batch_normalization_215/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_9/max_pooling2d_47/MaxPool?
+alex_net_9/conv2d_266/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_266_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02-
+alex_net_9/conv2d_266/Conv2D/ReadVariableOp?
alex_net_9/conv2d_266/Conv2DConv2D,alex_net_9/max_pooling2d_47/MaxPool:output:03alex_net_9/conv2d_266/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_9/conv2d_266/Conv2D?
,alex_net_9/conv2d_266/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_266_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_9/conv2d_266/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_266/BiasAddBiasAdd%alex_net_9/conv2d_266/Conv2D:output:04alex_net_9/conv2d_266/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
alex_net_9/conv2d_266/BiasAdd?
alex_net_9/conv2d_266/ReluRelu&alex_net_9/conv2d_266/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_9/conv2d_266/Relu?
1alex_net_9/batch_normalization_216/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_216_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_9/batch_normalization_216/ReadVariableOp?
3alex_net_9/batch_normalization_216/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_9/batch_normalization_216/ReadVariableOp_1?
Balex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_216/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_266/Relu:activations:09alex_net_9/batch_normalization_216/ReadVariableOp:value:0;alex_net_9/batch_normalization_216/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_216/FusedBatchNormV3?
#alex_net_9/max_pooling2d_48/MaxPoolMaxPool7alex_net_9/batch_normalization_216/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#alex_net_9/max_pooling2d_48/MaxPool?
+alex_net_9/conv2d_267/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_267_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_9/conv2d_267/Conv2D/ReadVariableOp?
alex_net_9/conv2d_267/Conv2DConv2D,alex_net_9/max_pooling2d_48/MaxPool:output:03alex_net_9/conv2d_267/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_9/conv2d_267/Conv2D?
,alex_net_9/conv2d_267/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_267_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_9/conv2d_267/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_267/BiasAddBiasAdd%alex_net_9/conv2d_267/Conv2D:output:04alex_net_9/conv2d_267/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_267/BiasAdd?
alex_net_9/conv2d_267/ReluRelu&alex_net_9/conv2d_267/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_267/Relu?
1alex_net_9/batch_normalization_217/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_217_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_9/batch_normalization_217/ReadVariableOp?
3alex_net_9/batch_normalization_217/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_9/batch_normalization_217/ReadVariableOp_1?
Balex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_217/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_267/Relu:activations:09alex_net_9/batch_normalization_217/ReadVariableOp:value:0;alex_net_9/batch_normalization_217/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_217/FusedBatchNormV3?
+alex_net_9/conv2d_268/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_268_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_9/conv2d_268/Conv2D/ReadVariableOp?
alex_net_9/conv2d_268/Conv2DConv2D7alex_net_9/batch_normalization_217/FusedBatchNormV3:y:03alex_net_9/conv2d_268/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_9/conv2d_268/Conv2D?
,alex_net_9/conv2d_268/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_268_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_9/conv2d_268/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_268/BiasAddBiasAdd%alex_net_9/conv2d_268/Conv2D:output:04alex_net_9/conv2d_268/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_268/BiasAdd?
alex_net_9/conv2d_268/ReluRelu&alex_net_9/conv2d_268/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_268/Relu?
1alex_net_9/batch_normalization_218/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_218_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_9/batch_normalization_218/ReadVariableOp?
3alex_net_9/batch_normalization_218/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_218_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_9/batch_normalization_218/ReadVariableOp_1?
Balex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_218_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_218_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_218/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_268/Relu:activations:09alex_net_9/batch_normalization_218/ReadVariableOp:value:0;alex_net_9/batch_normalization_218/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_218/FusedBatchNormV3?
+alex_net_9/conv2d_269/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_269_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_9/conv2d_269/Conv2D/ReadVariableOp?
alex_net_9/conv2d_269/Conv2DConv2D7alex_net_9/batch_normalization_218/FusedBatchNormV3:y:03alex_net_9/conv2d_269/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_9/conv2d_269/Conv2D?
,alex_net_9/conv2d_269/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_269_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_9/conv2d_269/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_269/BiasAddBiasAdd%alex_net_9/conv2d_269/Conv2D:output:04alex_net_9/conv2d_269/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_269/BiasAdd?
alex_net_9/conv2d_269/ReluRelu&alex_net_9/conv2d_269/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_269/Relu?
1alex_net_9/batch_normalization_219/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_219_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_9/batch_normalization_219/ReadVariableOp?
3alex_net_9/batch_normalization_219/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_219_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_9/batch_normalization_219/ReadVariableOp_1?
Balex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_219_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_219_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_219/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_269/Relu:activations:09alex_net_9/batch_normalization_219/ReadVariableOp:value:0;alex_net_9/batch_normalization_219/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_219/FusedBatchNormV3?
#alex_net_9/max_pooling2d_49/MaxPoolMaxPool7alex_net_9/batch_normalization_219/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2%
#alex_net_9/max_pooling2d_49/MaxPool?
alex_net_9/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_9/flatten_19/Const?
alex_net_9/flatten_19/ReshapeReshape,alex_net_9/max_pooling2d_49/MaxPool:output:0$alex_net_9/flatten_19/Const:output:0*
T0*(
_output_shapes
:??????????(2
alex_net_9/flatten_19/Reshape?
)alex_net_9/dense_39/MatMul/ReadVariableOpReadVariableOp2alex_net_9_dense_39_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02+
)alex_net_9/dense_39/MatMul/ReadVariableOp?
alex_net_9/dense_39/MatMulMatMul&alex_net_9/flatten_19/Reshape:output:01alex_net_9/dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_9/dense_39/MatMul?
*alex_net_9/dense_39/BiasAdd/ReadVariableOpReadVariableOp3alex_net_9_dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_9/dense_39/BiasAdd/ReadVariableOp?
alex_net_9/dense_39/BiasAddBiasAdd$alex_net_9/dense_39/MatMul:product:02alex_net_9/dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_9/dense_39/BiasAdd?
alex_net_9/dense_39/SigmoidSigmoid$alex_net_9/dense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_9/dense_39/Sigmoidz
IdentityIdentityalex_net_9/dense_39/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpC^alex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_215/ReadVariableOp4^alex_net_9/batch_normalization_215/ReadVariableOp_1C^alex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_216/ReadVariableOp4^alex_net_9/batch_normalization_216/ReadVariableOp_1C^alex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_217/ReadVariableOp4^alex_net_9/batch_normalization_217/ReadVariableOp_1C^alex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_218/ReadVariableOp4^alex_net_9/batch_normalization_218/ReadVariableOp_1C^alex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_219/ReadVariableOp4^alex_net_9/batch_normalization_219/ReadVariableOp_1-^alex_net_9/conv2d_265/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_265/Conv2D/ReadVariableOp-^alex_net_9/conv2d_266/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_266/Conv2D/ReadVariableOp-^alex_net_9/conv2d_267/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_267/Conv2D/ReadVariableOp-^alex_net_9/conv2d_268/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_268/Conv2D/ReadVariableOp-^alex_net_9/conv2d_269/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_269/Conv2D/ReadVariableOp+^alex_net_9/dense_39/BiasAdd/ReadVariableOp*^alex_net_9/dense_39/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Balex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_215/ReadVariableOp1alex_net_9/batch_normalization_215/ReadVariableOp2j
3alex_net_9/batch_normalization_215/ReadVariableOp_13alex_net_9/batch_normalization_215/ReadVariableOp_12?
Balex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_216/ReadVariableOp1alex_net_9/batch_normalization_216/ReadVariableOp2j
3alex_net_9/batch_normalization_216/ReadVariableOp_13alex_net_9/batch_normalization_216/ReadVariableOp_12?
Balex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_217/ReadVariableOp1alex_net_9/batch_normalization_217/ReadVariableOp2j
3alex_net_9/batch_normalization_217/ReadVariableOp_13alex_net_9/batch_normalization_217/ReadVariableOp_12?
Balex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_218/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_218/ReadVariableOp1alex_net_9/batch_normalization_218/ReadVariableOp2j
3alex_net_9/batch_normalization_218/ReadVariableOp_13alex_net_9/batch_normalization_218/ReadVariableOp_12?
Balex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_219/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_219/ReadVariableOp1alex_net_9/batch_normalization_219/ReadVariableOp2j
3alex_net_9/batch_normalization_219/ReadVariableOp_13alex_net_9/batch_normalization_219/ReadVariableOp_12\
,alex_net_9/conv2d_265/BiasAdd/ReadVariableOp,alex_net_9/conv2d_265/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_265/Conv2D/ReadVariableOp+alex_net_9/conv2d_265/Conv2D/ReadVariableOp2\
,alex_net_9/conv2d_266/BiasAdd/ReadVariableOp,alex_net_9/conv2d_266/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_266/Conv2D/ReadVariableOp+alex_net_9/conv2d_266/Conv2D/ReadVariableOp2\
,alex_net_9/conv2d_267/BiasAdd/ReadVariableOp,alex_net_9/conv2d_267/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_267/Conv2D/ReadVariableOp+alex_net_9/conv2d_267/Conv2D/ReadVariableOp2\
,alex_net_9/conv2d_268/BiasAdd/ReadVariableOp,alex_net_9/conv2d_268/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_268/Conv2D/ReadVariableOp+alex_net_9/conv2d_268/Conv2D/ReadVariableOp2\
,alex_net_9/conv2d_269/BiasAdd/ReadVariableOp,alex_net_9/conv2d_269/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_269/Conv2D/ReadVariableOp+alex_net_9/conv2d_269/Conv2D/ReadVariableOp2X
*alex_net_9/dense_39/BiasAdd/ReadVariableOp*alex_net_9/dense_39/BiasAdd/ReadVariableOp2V
)alex_net_9/dense_39/MatMul/ReadVariableOp)alex_net_9/dense_39/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_265_input
?
O
3__inference_max_pooling2d_47_layer_call_fn_10806447

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
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_108041772
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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806816

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
-__inference_conv2d_269_layer_call_fn_10806924

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
H__inference_conv2d_269_layer_call_and_return_conditional_losses_108049442
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
?
j
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_10804843

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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806852

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
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10806029

inputsC
)conv2d_265_conv2d_readvariableop_resource:`8
*conv2d_265_biasadd_readvariableop_resource:`=
/batch_normalization_215_readvariableop_resource:`?
1batch_normalization_215_readvariableop_1_resource:`N
@batch_normalization_215_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_266_conv2d_readvariableop_resource:`?9
*conv2d_266_biasadd_readvariableop_resource:	?>
/batch_normalization_216_readvariableop_resource:	?@
1batch_normalization_216_readvariableop_1_resource:	?O
@batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_267_conv2d_readvariableop_resource:??9
*conv2d_267_biasadd_readvariableop_resource:	?>
/batch_normalization_217_readvariableop_resource:	?@
1batch_normalization_217_readvariableop_1_resource:	?O
@batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_268_conv2d_readvariableop_resource:??9
*conv2d_268_biasadd_readvariableop_resource:	?>
/batch_normalization_218_readvariableop_resource:	?@
1batch_normalization_218_readvariableop_1_resource:	?O
@batch_normalization_218_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_269_conv2d_readvariableop_resource:??9
*conv2d_269_biasadd_readvariableop_resource:	?>
/batch_normalization_219_readvariableop_resource:	?@
1batch_normalization_219_readvariableop_1_resource:	?O
@batch_normalization_219_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_39_matmul_readvariableop_resource:	?(6
(dense_39_biasadd_readvariableop_resource:
identity??7batch_normalization_215/FusedBatchNormV3/ReadVariableOp?9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_215/ReadVariableOp?(batch_normalization_215/ReadVariableOp_1?7batch_normalization_216/FusedBatchNormV3/ReadVariableOp?9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_216/ReadVariableOp?(batch_normalization_216/ReadVariableOp_1?7batch_normalization_217/FusedBatchNormV3/ReadVariableOp?9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_217/ReadVariableOp?(batch_normalization_217/ReadVariableOp_1?7batch_normalization_218/FusedBatchNormV3/ReadVariableOp?9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_218/ReadVariableOp?(batch_normalization_218/ReadVariableOp_1?7batch_normalization_219/FusedBatchNormV3/ReadVariableOp?9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_219/ReadVariableOp?(batch_normalization_219/ReadVariableOp_1?!conv2d_265/BiasAdd/ReadVariableOp? conv2d_265/Conv2D/ReadVariableOp?!conv2d_266/BiasAdd/ReadVariableOp? conv2d_266/Conv2D/ReadVariableOp?!conv2d_267/BiasAdd/ReadVariableOp? conv2d_267/Conv2D/ReadVariableOp?!conv2d_268/BiasAdd/ReadVariableOp? conv2d_268/Conv2D/ReadVariableOp?!conv2d_269/BiasAdd/ReadVariableOp? conv2d_269/Conv2D/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp?
 conv2d_265/Conv2D/ReadVariableOpReadVariableOp)conv2d_265_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_265/Conv2D/ReadVariableOp?
conv2d_265/Conv2DConv2Dinputs(conv2d_265/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_265/Conv2D?
!conv2d_265/BiasAdd/ReadVariableOpReadVariableOp*conv2d_265_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_265/BiasAdd/ReadVariableOp?
conv2d_265/BiasAddBiasAddconv2d_265/Conv2D:output:0)conv2d_265/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_265/BiasAdd?
conv2d_265/ReluReluconv2d_265/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_265/Relu?
&batch_normalization_215/ReadVariableOpReadVariableOp/batch_normalization_215_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_215/ReadVariableOp?
(batch_normalization_215/ReadVariableOp_1ReadVariableOp1batch_normalization_215_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_215/ReadVariableOp_1?
7batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_215/FusedBatchNormV3FusedBatchNormV3conv2d_265/Relu:activations:0.batch_normalization_215/ReadVariableOp:value:00batch_normalization_215/ReadVariableOp_1:value:0?batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_215/FusedBatchNormV3?
max_pooling2d_47/MaxPoolMaxPool,batch_normalization_215/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPool?
 conv2d_266/Conv2D/ReadVariableOpReadVariableOp)conv2d_266_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_266/Conv2D/ReadVariableOp?
conv2d_266/Conv2DConv2D!max_pooling2d_47/MaxPool:output:0(conv2d_266/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_266/Conv2D?
!conv2d_266/BiasAdd/ReadVariableOpReadVariableOp*conv2d_266_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_266/BiasAdd/ReadVariableOp?
conv2d_266/BiasAddBiasAddconv2d_266/Conv2D:output:0)conv2d_266/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_266/BiasAdd?
conv2d_266/ReluReluconv2d_266/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_266/Relu?
&batch_normalization_216/ReadVariableOpReadVariableOp/batch_normalization_216_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_216/ReadVariableOp?
(batch_normalization_216/ReadVariableOp_1ReadVariableOp1batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_216/ReadVariableOp_1?
7batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_216/FusedBatchNormV3FusedBatchNormV3conv2d_266/Relu:activations:0.batch_normalization_216/ReadVariableOp:value:00batch_normalization_216/ReadVariableOp_1:value:0?batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_216/FusedBatchNormV3?
max_pooling2d_48/MaxPoolMaxPool,batch_normalization_216/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_48/MaxPool?
 conv2d_267/Conv2D/ReadVariableOpReadVariableOp)conv2d_267_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_267/Conv2D/ReadVariableOp?
conv2d_267/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0(conv2d_267/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_267/Conv2D?
!conv2d_267/BiasAdd/ReadVariableOpReadVariableOp*conv2d_267_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_267/BiasAdd/ReadVariableOp?
conv2d_267/BiasAddBiasAddconv2d_267/Conv2D:output:0)conv2d_267/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_267/BiasAdd?
conv2d_267/ReluReluconv2d_267/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_267/Relu?
&batch_normalization_217/ReadVariableOpReadVariableOp/batch_normalization_217_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_217/ReadVariableOp?
(batch_normalization_217/ReadVariableOp_1ReadVariableOp1batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_217/ReadVariableOp_1?
7batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_217/FusedBatchNormV3FusedBatchNormV3conv2d_267/Relu:activations:0.batch_normalization_217/ReadVariableOp:value:00batch_normalization_217/ReadVariableOp_1:value:0?batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_217/FusedBatchNormV3?
 conv2d_268/Conv2D/ReadVariableOpReadVariableOp)conv2d_268_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_268/Conv2D/ReadVariableOp?
conv2d_268/Conv2DConv2D,batch_normalization_217/FusedBatchNormV3:y:0(conv2d_268/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_268/Conv2D?
!conv2d_268/BiasAdd/ReadVariableOpReadVariableOp*conv2d_268_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_268/BiasAdd/ReadVariableOp?
conv2d_268/BiasAddBiasAddconv2d_268/Conv2D:output:0)conv2d_268/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_268/BiasAdd?
conv2d_268/ReluReluconv2d_268/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_268/Relu?
&batch_normalization_218/ReadVariableOpReadVariableOp/batch_normalization_218_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_218/ReadVariableOp?
(batch_normalization_218/ReadVariableOp_1ReadVariableOp1batch_normalization_218_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_218/ReadVariableOp_1?
7batch_normalization_218/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_218_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_218/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_218/FusedBatchNormV3FusedBatchNormV3conv2d_268/Relu:activations:0.batch_normalization_218/ReadVariableOp:value:00batch_normalization_218/ReadVariableOp_1:value:0?batch_normalization_218/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_218/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_218/FusedBatchNormV3?
 conv2d_269/Conv2D/ReadVariableOpReadVariableOp)conv2d_269_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_269/Conv2D/ReadVariableOp?
conv2d_269/Conv2DConv2D,batch_normalization_218/FusedBatchNormV3:y:0(conv2d_269/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_269/Conv2D?
!conv2d_269/BiasAdd/ReadVariableOpReadVariableOp*conv2d_269_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_269/BiasAdd/ReadVariableOp?
conv2d_269/BiasAddBiasAddconv2d_269/Conv2D:output:0)conv2d_269/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_269/BiasAdd?
conv2d_269/ReluReluconv2d_269/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_269/Relu?
&batch_normalization_219/ReadVariableOpReadVariableOp/batch_normalization_219_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_219/ReadVariableOp?
(batch_normalization_219/ReadVariableOp_1ReadVariableOp1batch_normalization_219_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_219/ReadVariableOp_1?
7batch_normalization_219/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_219_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_219/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_219/FusedBatchNormV3FusedBatchNormV3conv2d_269/Relu:activations:0.batch_normalization_219/ReadVariableOp:value:00batch_normalization_219/ReadVariableOp_1:value:0?batch_normalization_219/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_219/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_219/FusedBatchNormV3?
max_pooling2d_49/MaxPoolMaxPool,batch_normalization_219/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPoolu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_19/Const?
flatten_19/ReshapeReshape!max_pooling2d_49/MaxPool:output:0flatten_19/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_19/Reshape?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMulMatMulflatten_19/Reshape:output:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_39/BiasAdd|
dense_39/SigmoidSigmoiddense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_39/Sigmoido
IdentityIdentitydense_39/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_215/FusedBatchNormV3/ReadVariableOp:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_215/ReadVariableOp)^batch_normalization_215/ReadVariableOp_18^batch_normalization_216/FusedBatchNormV3/ReadVariableOp:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_216/ReadVariableOp)^batch_normalization_216/ReadVariableOp_18^batch_normalization_217/FusedBatchNormV3/ReadVariableOp:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_217/ReadVariableOp)^batch_normalization_217/ReadVariableOp_18^batch_normalization_218/FusedBatchNormV3/ReadVariableOp:^batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_218/ReadVariableOp)^batch_normalization_218/ReadVariableOp_18^batch_normalization_219/FusedBatchNormV3/ReadVariableOp:^batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_219/ReadVariableOp)^batch_normalization_219/ReadVariableOp_1"^conv2d_265/BiasAdd/ReadVariableOp!^conv2d_265/Conv2D/ReadVariableOp"^conv2d_266/BiasAdd/ReadVariableOp!^conv2d_266/Conv2D/ReadVariableOp"^conv2d_267/BiasAdd/ReadVariableOp!^conv2d_267/Conv2D/ReadVariableOp"^conv2d_268/BiasAdd/ReadVariableOp!^conv2d_268/Conv2D/ReadVariableOp"^conv2d_269/BiasAdd/ReadVariableOp!^conv2d_269/Conv2D/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp7batch_normalization_215/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_19batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_215/ReadVariableOp&batch_normalization_215/ReadVariableOp2T
(batch_normalization_215/ReadVariableOp_1(batch_normalization_215/ReadVariableOp_12r
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp7batch_normalization_216/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_19batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_216/ReadVariableOp&batch_normalization_216/ReadVariableOp2T
(batch_normalization_216/ReadVariableOp_1(batch_normalization_216/ReadVariableOp_12r
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp7batch_normalization_217/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_19batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_217/ReadVariableOp&batch_normalization_217/ReadVariableOp2T
(batch_normalization_217/ReadVariableOp_1(batch_normalization_217/ReadVariableOp_12r
7batch_normalization_218/FusedBatchNormV3/ReadVariableOp7batch_normalization_218/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_19batch_normalization_218/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_218/ReadVariableOp&batch_normalization_218/ReadVariableOp2T
(batch_normalization_218/ReadVariableOp_1(batch_normalization_218/ReadVariableOp_12r
7batch_normalization_219/FusedBatchNormV3/ReadVariableOp7batch_normalization_219/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_19batch_normalization_219/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_219/ReadVariableOp&batch_normalization_219/ReadVariableOp2T
(batch_normalization_219/ReadVariableOp_1(batch_normalization_219/ReadVariableOp_12F
!conv2d_265/BiasAdd/ReadVariableOp!conv2d_265/BiasAdd/ReadVariableOp2D
 conv2d_265/Conv2D/ReadVariableOp conv2d_265/Conv2D/ReadVariableOp2F
!conv2d_266/BiasAdd/ReadVariableOp!conv2d_266/BiasAdd/ReadVariableOp2D
 conv2d_266/Conv2D/ReadVariableOp conv2d_266/Conv2D/ReadVariableOp2F
!conv2d_267/BiasAdd/ReadVariableOp!conv2d_267/BiasAdd/ReadVariableOp2D
 conv2d_267/Conv2D/ReadVariableOp conv2d_267/Conv2D/ReadVariableOp2F
!conv2d_268/BiasAdd/ReadVariableOp!conv2d_268/BiasAdd/ReadVariableOp2D
 conv2d_268/Conv2D/ReadVariableOp conv2d_268/Conv2D/ReadVariableOp2F
!conv2d_269/BiasAdd/ReadVariableOp!conv2d_269/BiasAdd/ReadVariableOp2D
 conv2d_269/Conv2D/ReadVariableOp conv2d_269/Conv2D/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10805356

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
?Y
?
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10805750
conv2d_265_input-
conv2d_265_10805670:`!
conv2d_265_10805672:`.
 batch_normalization_215_10805675:`.
 batch_normalization_215_10805677:`.
 batch_normalization_215_10805679:`.
 batch_normalization_215_10805681:`.
conv2d_266_10805685:`?"
conv2d_266_10805687:	?/
 batch_normalization_216_10805690:	?/
 batch_normalization_216_10805692:	?/
 batch_normalization_216_10805694:	?/
 batch_normalization_216_10805696:	?/
conv2d_267_10805700:??"
conv2d_267_10805702:	?/
 batch_normalization_217_10805705:	?/
 batch_normalization_217_10805707:	?/
 batch_normalization_217_10805709:	?/
 batch_normalization_217_10805711:	?/
conv2d_268_10805714:??"
conv2d_268_10805716:	?/
 batch_normalization_218_10805719:	?/
 batch_normalization_218_10805721:	?/
 batch_normalization_218_10805723:	?/
 batch_normalization_218_10805725:	?/
conv2d_269_10805728:??"
conv2d_269_10805730:	?/
 batch_normalization_219_10805733:	?/
 batch_normalization_219_10805735:	?/
 batch_normalization_219_10805737:	?/
 batch_normalization_219_10805739:	?$
dense_39_10805744:	?(
dense_39_10805746:
identity??/batch_normalization_215/StatefulPartitionedCall?/batch_normalization_216/StatefulPartitionedCall?/batch_normalization_217/StatefulPartitionedCall?/batch_normalization_218/StatefulPartitionedCall?/batch_normalization_219/StatefulPartitionedCall?"conv2d_265/StatefulPartitionedCall?"conv2d_266/StatefulPartitionedCall?"conv2d_267/StatefulPartitionedCall?"conv2d_268/StatefulPartitionedCall?"conv2d_269/StatefulPartitionedCall? dense_39/StatefulPartitionedCall?
"conv2d_265/StatefulPartitionedCallStatefulPartitionedCallconv2d_265_inputconv2d_265_10805670conv2d_265_10805672*
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
H__inference_conv2d_265_layer_call_and_return_conditional_losses_108047562$
"conv2d_265/StatefulPartitionedCall?
/batch_normalization_215/StatefulPartitionedCallStatefulPartitionedCall+conv2d_265/StatefulPartitionedCall:output:0 batch_normalization_215_10805675 batch_normalization_215_10805677 batch_normalization_215_10805679 batch_normalization_215_10805681*
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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_1080477921
/batch_normalization_215/StatefulPartitionedCall?
 max_pooling2d_47/PartitionedCallPartitionedCall8batch_normalization_215/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_108047932"
 max_pooling2d_47/PartitionedCall?
"conv2d_266/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_266_10805685conv2d_266_10805687*
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
H__inference_conv2d_266_layer_call_and_return_conditional_losses_108048062$
"conv2d_266/StatefulPartitionedCall?
/batch_normalization_216/StatefulPartitionedCallStatefulPartitionedCall+conv2d_266/StatefulPartitionedCall:output:0 batch_normalization_216_10805690 batch_normalization_216_10805692 batch_normalization_216_10805694 batch_normalization_216_10805696*
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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_1080482921
/batch_normalization_216/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall8batch_normalization_216/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_108048432"
 max_pooling2d_48/PartitionedCall?
"conv2d_267/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_267_10805700conv2d_267_10805702*
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
H__inference_conv2d_267_layer_call_and_return_conditional_losses_108048562$
"conv2d_267/StatefulPartitionedCall?
/batch_normalization_217/StatefulPartitionedCallStatefulPartitionedCall+conv2d_267/StatefulPartitionedCall:output:0 batch_normalization_217_10805705 batch_normalization_217_10805707 batch_normalization_217_10805709 batch_normalization_217_10805711*
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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_1080487921
/batch_normalization_217/StatefulPartitionedCall?
"conv2d_268/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_217/StatefulPartitionedCall:output:0conv2d_268_10805714conv2d_268_10805716*
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
H__inference_conv2d_268_layer_call_and_return_conditional_losses_108049002$
"conv2d_268/StatefulPartitionedCall?
/batch_normalization_218/StatefulPartitionedCallStatefulPartitionedCall+conv2d_268/StatefulPartitionedCall:output:0 batch_normalization_218_10805719 batch_normalization_218_10805721 batch_normalization_218_10805723 batch_normalization_218_10805725*
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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_1080492321
/batch_normalization_218/StatefulPartitionedCall?
"conv2d_269/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_218/StatefulPartitionedCall:output:0conv2d_269_10805728conv2d_269_10805730*
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
H__inference_conv2d_269_layer_call_and_return_conditional_losses_108049442$
"conv2d_269/StatefulPartitionedCall?
/batch_normalization_219/StatefulPartitionedCallStatefulPartitionedCall+conv2d_269/StatefulPartitionedCall:output:0 batch_normalization_219_10805733 batch_normalization_219_10805735 batch_normalization_219_10805737 batch_normalization_219_10805739*
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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_1080496721
/batch_normalization_219/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall8batch_normalization_219/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_108049812"
 max_pooling2d_49/PartitionedCall?
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
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
H__inference_flatten_19_layer_call_and_return_conditional_losses_108049892
flatten_19/PartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_39_10805744dense_39_10805746*
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
F__inference_dense_39_layer_call_and_return_conditional_losses_108050022"
 dense_39/StatefulPartitionedCall?
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_215/StatefulPartitionedCall0^batch_normalization_216/StatefulPartitionedCall0^batch_normalization_217/StatefulPartitionedCall0^batch_normalization_218/StatefulPartitionedCall0^batch_normalization_219/StatefulPartitionedCall#^conv2d_265/StatefulPartitionedCall#^conv2d_266/StatefulPartitionedCall#^conv2d_267/StatefulPartitionedCall#^conv2d_268/StatefulPartitionedCall#^conv2d_269/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_215/StatefulPartitionedCall/batch_normalization_215/StatefulPartitionedCall2b
/batch_normalization_216/StatefulPartitionedCall/batch_normalization_216/StatefulPartitionedCall2b
/batch_normalization_217/StatefulPartitionedCall/batch_normalization_217/StatefulPartitionedCall2b
/batch_normalization_218/StatefulPartitionedCall/batch_normalization_218/StatefulPartitionedCall2b
/batch_normalization_219/StatefulPartitionedCall/batch_normalization_219/StatefulPartitionedCall2H
"conv2d_265/StatefulPartitionedCall"conv2d_265/StatefulPartitionedCall2H
"conv2d_266/StatefulPartitionedCall"conv2d_266/StatefulPartitionedCall2H
"conv2d_267/StatefulPartitionedCall"conv2d_267/StatefulPartitionedCall2H
"conv2d_268/StatefulPartitionedCall"conv2d_268/StatefulPartitionedCall2H
"conv2d_269/StatefulPartitionedCall"conv2d_269/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_265_input
?
?
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806362

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
?
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10805833
conv2d_265_input-
conv2d_265_10805753:`!
conv2d_265_10805755:`.
 batch_normalization_215_10805758:`.
 batch_normalization_215_10805760:`.
 batch_normalization_215_10805762:`.
 batch_normalization_215_10805764:`.
conv2d_266_10805768:`?"
conv2d_266_10805770:	?/
 batch_normalization_216_10805773:	?/
 batch_normalization_216_10805775:	?/
 batch_normalization_216_10805777:	?/
 batch_normalization_216_10805779:	?/
conv2d_267_10805783:??"
conv2d_267_10805785:	?/
 batch_normalization_217_10805788:	?/
 batch_normalization_217_10805790:	?/
 batch_normalization_217_10805792:	?/
 batch_normalization_217_10805794:	?/
conv2d_268_10805797:??"
conv2d_268_10805799:	?/
 batch_normalization_218_10805802:	?/
 batch_normalization_218_10805804:	?/
 batch_normalization_218_10805806:	?/
 batch_normalization_218_10805808:	?/
conv2d_269_10805811:??"
conv2d_269_10805813:	?/
 batch_normalization_219_10805816:	?/
 batch_normalization_219_10805818:	?/
 batch_normalization_219_10805820:	?/
 batch_normalization_219_10805822:	?$
dense_39_10805827:	?(
dense_39_10805829:
identity??/batch_normalization_215/StatefulPartitionedCall?/batch_normalization_216/StatefulPartitionedCall?/batch_normalization_217/StatefulPartitionedCall?/batch_normalization_218/StatefulPartitionedCall?/batch_normalization_219/StatefulPartitionedCall?"conv2d_265/StatefulPartitionedCall?"conv2d_266/StatefulPartitionedCall?"conv2d_267/StatefulPartitionedCall?"conv2d_268/StatefulPartitionedCall?"conv2d_269/StatefulPartitionedCall? dense_39/StatefulPartitionedCall?
"conv2d_265/StatefulPartitionedCallStatefulPartitionedCallconv2d_265_inputconv2d_265_10805753conv2d_265_10805755*
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
H__inference_conv2d_265_layer_call_and_return_conditional_losses_108047562$
"conv2d_265/StatefulPartitionedCall?
/batch_normalization_215/StatefulPartitionedCallStatefulPartitionedCall+conv2d_265/StatefulPartitionedCall:output:0 batch_normalization_215_10805758 batch_normalization_215_10805760 batch_normalization_215_10805762 batch_normalization_215_10805764*
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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_1080535621
/batch_normalization_215/StatefulPartitionedCall?
 max_pooling2d_47/PartitionedCallPartitionedCall8batch_normalization_215/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_108047932"
 max_pooling2d_47/PartitionedCall?
"conv2d_266/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_266_10805768conv2d_266_10805770*
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
H__inference_conv2d_266_layer_call_and_return_conditional_losses_108048062$
"conv2d_266/StatefulPartitionedCall?
/batch_normalization_216/StatefulPartitionedCallStatefulPartitionedCall+conv2d_266/StatefulPartitionedCall:output:0 batch_normalization_216_10805773 batch_normalization_216_10805775 batch_normalization_216_10805777 batch_normalization_216_10805779*
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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_1080529721
/batch_normalization_216/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall8batch_normalization_216/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_108048432"
 max_pooling2d_48/PartitionedCall?
"conv2d_267/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_267_10805783conv2d_267_10805785*
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
H__inference_conv2d_267_layer_call_and_return_conditional_losses_108048562$
"conv2d_267/StatefulPartitionedCall?
/batch_normalization_217/StatefulPartitionedCallStatefulPartitionedCall+conv2d_267/StatefulPartitionedCall:output:0 batch_normalization_217_10805788 batch_normalization_217_10805790 batch_normalization_217_10805792 batch_normalization_217_10805794*
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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_1080523821
/batch_normalization_217/StatefulPartitionedCall?
"conv2d_268/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_217/StatefulPartitionedCall:output:0conv2d_268_10805797conv2d_268_10805799*
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
H__inference_conv2d_268_layer_call_and_return_conditional_losses_108049002$
"conv2d_268/StatefulPartitionedCall?
/batch_normalization_218/StatefulPartitionedCallStatefulPartitionedCall+conv2d_268/StatefulPartitionedCall:output:0 batch_normalization_218_10805802 batch_normalization_218_10805804 batch_normalization_218_10805806 batch_normalization_218_10805808*
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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_1080518421
/batch_normalization_218/StatefulPartitionedCall?
"conv2d_269/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_218/StatefulPartitionedCall:output:0conv2d_269_10805811conv2d_269_10805813*
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
H__inference_conv2d_269_layer_call_and_return_conditional_losses_108049442$
"conv2d_269/StatefulPartitionedCall?
/batch_normalization_219/StatefulPartitionedCallStatefulPartitionedCall+conv2d_269/StatefulPartitionedCall:output:0 batch_normalization_219_10805816 batch_normalization_219_10805818 batch_normalization_219_10805820 batch_normalization_219_10805822*
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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_1080513021
/batch_normalization_219/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall8batch_normalization_219/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_108049812"
 max_pooling2d_49/PartitionedCall?
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
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
H__inference_flatten_19_layer_call_and_return_conditional_losses_108049892
flatten_19/PartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_39_10805827dense_39_10805829*
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
F__inference_dense_39_layer_call_and_return_conditional_losses_108050022"
 dense_39/StatefulPartitionedCall?
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_215/StatefulPartitionedCall0^batch_normalization_216/StatefulPartitionedCall0^batch_normalization_217/StatefulPartitionedCall0^batch_normalization_218/StatefulPartitionedCall0^batch_normalization_219/StatefulPartitionedCall#^conv2d_265/StatefulPartitionedCall#^conv2d_266/StatefulPartitionedCall#^conv2d_267/StatefulPartitionedCall#^conv2d_268/StatefulPartitionedCall#^conv2d_269/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_215/StatefulPartitionedCall/batch_normalization_215/StatefulPartitionedCall2b
/batch_normalization_216/StatefulPartitionedCall/batch_normalization_216/StatefulPartitionedCall2b
/batch_normalization_217/StatefulPartitionedCall/batch_normalization_217/StatefulPartitionedCall2b
/batch_normalization_218/StatefulPartitionedCall/batch_normalization_218/StatefulPartitionedCall2b
/batch_normalization_219/StatefulPartitionedCall/batch_normalization_219/StatefulPartitionedCall2H
"conv2d_265/StatefulPartitionedCall"conv2d_265/StatefulPartitionedCall2H
"conv2d_266/StatefulPartitionedCall"conv2d_266/StatefulPartitionedCall2H
"conv2d_267/StatefulPartitionedCall"conv2d_267/StatefulPartitionedCall2H
"conv2d_268/StatefulPartitionedCall"conv2d_268/StatefulPartitionedCall2H
"conv2d_269/StatefulPartitionedCall"conv2d_269/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_265_input
?
?
H__inference_conv2d_266_layer_call_and_return_conditional_losses_10806463

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
:__inference_batch_normalization_218_layer_call_fn_10806904

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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_108051842
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
?
?
&__inference_signature_wrapper_10805908
conv2d_265_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_265_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
#__inference__wrapped_model_108040422
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
_user_specified_nameconv2d_265_input
?
?
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806654

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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10804656

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
:__inference_batch_normalization_215_layer_call_fn_10806406

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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_108041082
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
?
H__inference_conv2d_268_layer_call_and_return_conditional_losses_10804900

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
:__inference_batch_normalization_219_layer_call_fn_10807022

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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_108046562
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
j
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_10806606

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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806834

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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806960

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
j
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_10807053

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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806344

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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806942

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
? 
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10806150

inputsC
)conv2d_265_conv2d_readvariableop_resource:`8
*conv2d_265_biasadd_readvariableop_resource:`=
/batch_normalization_215_readvariableop_resource:`?
1batch_normalization_215_readvariableop_1_resource:`N
@batch_normalization_215_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_266_conv2d_readvariableop_resource:`?9
*conv2d_266_biasadd_readvariableop_resource:	?>
/batch_normalization_216_readvariableop_resource:	?@
1batch_normalization_216_readvariableop_1_resource:	?O
@batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_267_conv2d_readvariableop_resource:??9
*conv2d_267_biasadd_readvariableop_resource:	?>
/batch_normalization_217_readvariableop_resource:	?@
1batch_normalization_217_readvariableop_1_resource:	?O
@batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_268_conv2d_readvariableop_resource:??9
*conv2d_268_biasadd_readvariableop_resource:	?>
/batch_normalization_218_readvariableop_resource:	?@
1batch_normalization_218_readvariableop_1_resource:	?O
@batch_normalization_218_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_269_conv2d_readvariableop_resource:??9
*conv2d_269_biasadd_readvariableop_resource:	?>
/batch_normalization_219_readvariableop_resource:	?@
1batch_normalization_219_readvariableop_1_resource:	?O
@batch_normalization_219_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_39_matmul_readvariableop_resource:	?(6
(dense_39_biasadd_readvariableop_resource:
identity??&batch_normalization_215/AssignNewValue?(batch_normalization_215/AssignNewValue_1?7batch_normalization_215/FusedBatchNormV3/ReadVariableOp?9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_215/ReadVariableOp?(batch_normalization_215/ReadVariableOp_1?&batch_normalization_216/AssignNewValue?(batch_normalization_216/AssignNewValue_1?7batch_normalization_216/FusedBatchNormV3/ReadVariableOp?9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_216/ReadVariableOp?(batch_normalization_216/ReadVariableOp_1?&batch_normalization_217/AssignNewValue?(batch_normalization_217/AssignNewValue_1?7batch_normalization_217/FusedBatchNormV3/ReadVariableOp?9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_217/ReadVariableOp?(batch_normalization_217/ReadVariableOp_1?&batch_normalization_218/AssignNewValue?(batch_normalization_218/AssignNewValue_1?7batch_normalization_218/FusedBatchNormV3/ReadVariableOp?9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_218/ReadVariableOp?(batch_normalization_218/ReadVariableOp_1?&batch_normalization_219/AssignNewValue?(batch_normalization_219/AssignNewValue_1?7batch_normalization_219/FusedBatchNormV3/ReadVariableOp?9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_219/ReadVariableOp?(batch_normalization_219/ReadVariableOp_1?!conv2d_265/BiasAdd/ReadVariableOp? conv2d_265/Conv2D/ReadVariableOp?!conv2d_266/BiasAdd/ReadVariableOp? conv2d_266/Conv2D/ReadVariableOp?!conv2d_267/BiasAdd/ReadVariableOp? conv2d_267/Conv2D/ReadVariableOp?!conv2d_268/BiasAdd/ReadVariableOp? conv2d_268/Conv2D/ReadVariableOp?!conv2d_269/BiasAdd/ReadVariableOp? conv2d_269/Conv2D/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp?
 conv2d_265/Conv2D/ReadVariableOpReadVariableOp)conv2d_265_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_265/Conv2D/ReadVariableOp?
conv2d_265/Conv2DConv2Dinputs(conv2d_265/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_265/Conv2D?
!conv2d_265/BiasAdd/ReadVariableOpReadVariableOp*conv2d_265_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_265/BiasAdd/ReadVariableOp?
conv2d_265/BiasAddBiasAddconv2d_265/Conv2D:output:0)conv2d_265/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_265/BiasAdd?
conv2d_265/ReluReluconv2d_265/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_265/Relu?
&batch_normalization_215/ReadVariableOpReadVariableOp/batch_normalization_215_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_215/ReadVariableOp?
(batch_normalization_215/ReadVariableOp_1ReadVariableOp1batch_normalization_215_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_215/ReadVariableOp_1?
7batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_215/FusedBatchNormV3FusedBatchNormV3conv2d_265/Relu:activations:0.batch_normalization_215/ReadVariableOp:value:00batch_normalization_215/ReadVariableOp_1:value:0?batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_215/FusedBatchNormV3?
&batch_normalization_215/AssignNewValueAssignVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource5batch_normalization_215/FusedBatchNormV3:batch_mean:08^batch_normalization_215/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_215/AssignNewValue?
(batch_normalization_215/AssignNewValue_1AssignVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_215/FusedBatchNormV3:batch_variance:0:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_215/AssignNewValue_1?
max_pooling2d_47/MaxPoolMaxPool,batch_normalization_215/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPool?
 conv2d_266/Conv2D/ReadVariableOpReadVariableOp)conv2d_266_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_266/Conv2D/ReadVariableOp?
conv2d_266/Conv2DConv2D!max_pooling2d_47/MaxPool:output:0(conv2d_266/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_266/Conv2D?
!conv2d_266/BiasAdd/ReadVariableOpReadVariableOp*conv2d_266_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_266/BiasAdd/ReadVariableOp?
conv2d_266/BiasAddBiasAddconv2d_266/Conv2D:output:0)conv2d_266/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_266/BiasAdd?
conv2d_266/ReluReluconv2d_266/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_266/Relu?
&batch_normalization_216/ReadVariableOpReadVariableOp/batch_normalization_216_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_216/ReadVariableOp?
(batch_normalization_216/ReadVariableOp_1ReadVariableOp1batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_216/ReadVariableOp_1?
7batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_216/FusedBatchNormV3FusedBatchNormV3conv2d_266/Relu:activations:0.batch_normalization_216/ReadVariableOp:value:00batch_normalization_216/ReadVariableOp_1:value:0?batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_216/FusedBatchNormV3?
&batch_normalization_216/AssignNewValueAssignVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource5batch_normalization_216/FusedBatchNormV3:batch_mean:08^batch_normalization_216/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_216/AssignNewValue?
(batch_normalization_216/AssignNewValue_1AssignVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_216/FusedBatchNormV3:batch_variance:0:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_216/AssignNewValue_1?
max_pooling2d_48/MaxPoolMaxPool,batch_normalization_216/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_48/MaxPool?
 conv2d_267/Conv2D/ReadVariableOpReadVariableOp)conv2d_267_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_267/Conv2D/ReadVariableOp?
conv2d_267/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0(conv2d_267/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_267/Conv2D?
!conv2d_267/BiasAdd/ReadVariableOpReadVariableOp*conv2d_267_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_267/BiasAdd/ReadVariableOp?
conv2d_267/BiasAddBiasAddconv2d_267/Conv2D:output:0)conv2d_267/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_267/BiasAdd?
conv2d_267/ReluReluconv2d_267/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_267/Relu?
&batch_normalization_217/ReadVariableOpReadVariableOp/batch_normalization_217_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_217/ReadVariableOp?
(batch_normalization_217/ReadVariableOp_1ReadVariableOp1batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_217/ReadVariableOp_1?
7batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_217/FusedBatchNormV3FusedBatchNormV3conv2d_267/Relu:activations:0.batch_normalization_217/ReadVariableOp:value:00batch_normalization_217/ReadVariableOp_1:value:0?batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_217/FusedBatchNormV3?
&batch_normalization_217/AssignNewValueAssignVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource5batch_normalization_217/FusedBatchNormV3:batch_mean:08^batch_normalization_217/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_217/AssignNewValue?
(batch_normalization_217/AssignNewValue_1AssignVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_217/FusedBatchNormV3:batch_variance:0:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_217/AssignNewValue_1?
 conv2d_268/Conv2D/ReadVariableOpReadVariableOp)conv2d_268_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_268/Conv2D/ReadVariableOp?
conv2d_268/Conv2DConv2D,batch_normalization_217/FusedBatchNormV3:y:0(conv2d_268/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_268/Conv2D?
!conv2d_268/BiasAdd/ReadVariableOpReadVariableOp*conv2d_268_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_268/BiasAdd/ReadVariableOp?
conv2d_268/BiasAddBiasAddconv2d_268/Conv2D:output:0)conv2d_268/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_268/BiasAdd?
conv2d_268/ReluReluconv2d_268/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_268/Relu?
&batch_normalization_218/ReadVariableOpReadVariableOp/batch_normalization_218_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_218/ReadVariableOp?
(batch_normalization_218/ReadVariableOp_1ReadVariableOp1batch_normalization_218_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_218/ReadVariableOp_1?
7batch_normalization_218/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_218_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_218/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_218/FusedBatchNormV3FusedBatchNormV3conv2d_268/Relu:activations:0.batch_normalization_218/ReadVariableOp:value:00batch_normalization_218/ReadVariableOp_1:value:0?batch_normalization_218/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_218/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_218/FusedBatchNormV3?
&batch_normalization_218/AssignNewValueAssignVariableOp@batch_normalization_218_fusedbatchnormv3_readvariableop_resource5batch_normalization_218/FusedBatchNormV3:batch_mean:08^batch_normalization_218/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_218/AssignNewValue?
(batch_normalization_218/AssignNewValue_1AssignVariableOpBbatch_normalization_218_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_218/FusedBatchNormV3:batch_variance:0:^batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_218/AssignNewValue_1?
 conv2d_269/Conv2D/ReadVariableOpReadVariableOp)conv2d_269_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_269/Conv2D/ReadVariableOp?
conv2d_269/Conv2DConv2D,batch_normalization_218/FusedBatchNormV3:y:0(conv2d_269/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_269/Conv2D?
!conv2d_269/BiasAdd/ReadVariableOpReadVariableOp*conv2d_269_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_269/BiasAdd/ReadVariableOp?
conv2d_269/BiasAddBiasAddconv2d_269/Conv2D:output:0)conv2d_269/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_269/BiasAdd?
conv2d_269/ReluReluconv2d_269/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_269/Relu?
&batch_normalization_219/ReadVariableOpReadVariableOp/batch_normalization_219_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_219/ReadVariableOp?
(batch_normalization_219/ReadVariableOp_1ReadVariableOp1batch_normalization_219_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_219/ReadVariableOp_1?
7batch_normalization_219/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_219_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_219/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_219/FusedBatchNormV3FusedBatchNormV3conv2d_269/Relu:activations:0.batch_normalization_219/ReadVariableOp:value:00batch_normalization_219/ReadVariableOp_1:value:0?batch_normalization_219/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_219/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_219/FusedBatchNormV3?
&batch_normalization_219/AssignNewValueAssignVariableOp@batch_normalization_219_fusedbatchnormv3_readvariableop_resource5batch_normalization_219/FusedBatchNormV3:batch_mean:08^batch_normalization_219/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_219/AssignNewValue?
(batch_normalization_219/AssignNewValue_1AssignVariableOpBbatch_normalization_219_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_219/FusedBatchNormV3:batch_variance:0:^batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_219/AssignNewValue_1?
max_pooling2d_49/MaxPoolMaxPool,batch_normalization_219/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPoolu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_19/Const?
flatten_19/ReshapeReshape!max_pooling2d_49/MaxPool:output:0flatten_19/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_19/Reshape?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMulMatMulflatten_19/Reshape:output:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_39/BiasAdd|
dense_39/SigmoidSigmoiddense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_39/Sigmoido
IdentityIdentitydense_39/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_215/AssignNewValue)^batch_normalization_215/AssignNewValue_18^batch_normalization_215/FusedBatchNormV3/ReadVariableOp:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_215/ReadVariableOp)^batch_normalization_215/ReadVariableOp_1'^batch_normalization_216/AssignNewValue)^batch_normalization_216/AssignNewValue_18^batch_normalization_216/FusedBatchNormV3/ReadVariableOp:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_216/ReadVariableOp)^batch_normalization_216/ReadVariableOp_1'^batch_normalization_217/AssignNewValue)^batch_normalization_217/AssignNewValue_18^batch_normalization_217/FusedBatchNormV3/ReadVariableOp:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_217/ReadVariableOp)^batch_normalization_217/ReadVariableOp_1'^batch_normalization_218/AssignNewValue)^batch_normalization_218/AssignNewValue_18^batch_normalization_218/FusedBatchNormV3/ReadVariableOp:^batch_normalization_218/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_218/ReadVariableOp)^batch_normalization_218/ReadVariableOp_1'^batch_normalization_219/AssignNewValue)^batch_normalization_219/AssignNewValue_18^batch_normalization_219/FusedBatchNormV3/ReadVariableOp:^batch_normalization_219/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_219/ReadVariableOp)^batch_normalization_219/ReadVariableOp_1"^conv2d_265/BiasAdd/ReadVariableOp!^conv2d_265/Conv2D/ReadVariableOp"^conv2d_266/BiasAdd/ReadVariableOp!^conv2d_266/Conv2D/ReadVariableOp"^conv2d_267/BiasAdd/ReadVariableOp!^conv2d_267/Conv2D/ReadVariableOp"^conv2d_268/BiasAdd/ReadVariableOp!^conv2d_268/Conv2D/ReadVariableOp"^conv2d_269/BiasAdd/ReadVariableOp!^conv2d_269/Conv2D/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_215/AssignNewValue&batch_normalization_215/AssignNewValue2T
(batch_normalization_215/AssignNewValue_1(batch_normalization_215/AssignNewValue_12r
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp7batch_normalization_215/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_19batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_215/ReadVariableOp&batch_normalization_215/ReadVariableOp2T
(batch_normalization_215/ReadVariableOp_1(batch_normalization_215/ReadVariableOp_12P
&batch_normalization_216/AssignNewValue&batch_normalization_216/AssignNewValue2T
(batch_normalization_216/AssignNewValue_1(batch_normalization_216/AssignNewValue_12r
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp7batch_normalization_216/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_19batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_216/ReadVariableOp&batch_normalization_216/ReadVariableOp2T
(batch_normalization_216/ReadVariableOp_1(batch_normalization_216/ReadVariableOp_12P
&batch_normalization_217/AssignNewValue&batch_normalization_217/AssignNewValue2T
(batch_normalization_217/AssignNewValue_1(batch_normalization_217/AssignNewValue_12r
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp7batch_normalization_217/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_19batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_217/ReadVariableOp&batch_normalization_217/ReadVariableOp2T
(batch_normalization_217/ReadVariableOp_1(batch_normalization_217/ReadVariableOp_12P
&batch_normalization_218/AssignNewValue&batch_normalization_218/AssignNewValue2T
(batch_normalization_218/AssignNewValue_1(batch_normalization_218/AssignNewValue_12r
7batch_normalization_218/FusedBatchNormV3/ReadVariableOp7batch_normalization_218/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_218/FusedBatchNormV3/ReadVariableOp_19batch_normalization_218/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_218/ReadVariableOp&batch_normalization_218/ReadVariableOp2T
(batch_normalization_218/ReadVariableOp_1(batch_normalization_218/ReadVariableOp_12P
&batch_normalization_219/AssignNewValue&batch_normalization_219/AssignNewValue2T
(batch_normalization_219/AssignNewValue_1(batch_normalization_219/AssignNewValue_12r
7batch_normalization_219/FusedBatchNormV3/ReadVariableOp7batch_normalization_219/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_219/FusedBatchNormV3/ReadVariableOp_19batch_normalization_219/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_219/ReadVariableOp&batch_normalization_219/ReadVariableOp2T
(batch_normalization_219/ReadVariableOp_1(batch_normalization_219/ReadVariableOp_12F
!conv2d_265/BiasAdd/ReadVariableOp!conv2d_265/BiasAdd/ReadVariableOp2D
 conv2d_265/Conv2D/ReadVariableOp conv2d_265/Conv2D/ReadVariableOp2F
!conv2d_266/BiasAdd/ReadVariableOp!conv2d_266/BiasAdd/ReadVariableOp2D
 conv2d_266/Conv2D/ReadVariableOp conv2d_266/Conv2D/ReadVariableOp2F
!conv2d_267/BiasAdd/ReadVariableOp!conv2d_267/BiasAdd/ReadVariableOp2D
 conv2d_267/Conv2D/ReadVariableOp conv2d_267/Conv2D/ReadVariableOp2F
!conv2d_268/BiasAdd/ReadVariableOp!conv2d_268/BiasAdd/ReadVariableOp2D
 conv2d_268/Conv2D/ReadVariableOp conv2d_268/Conv2D/ReadVariableOp2F
!conv2d_269/BiasAdd/ReadVariableOp!conv2d_269/BiasAdd/ReadVariableOp2D
 conv2d_269/Conv2D/ReadVariableOp conv2d_269/Conv2D/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806326

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
?
$__inference__traced_restore_10807372
file_prefix<
"assignvariableop_conv2d_265_kernel:`0
"assignvariableop_1_conv2d_265_bias:`>
0assignvariableop_2_batch_normalization_215_gamma:`=
/assignvariableop_3_batch_normalization_215_beta:`D
6assignvariableop_4_batch_normalization_215_moving_mean:`H
:assignvariableop_5_batch_normalization_215_moving_variance:`?
$assignvariableop_6_conv2d_266_kernel:`?1
"assignvariableop_7_conv2d_266_bias:	??
0assignvariableop_8_batch_normalization_216_gamma:	?>
/assignvariableop_9_batch_normalization_216_beta:	?F
7assignvariableop_10_batch_normalization_216_moving_mean:	?J
;assignvariableop_11_batch_normalization_216_moving_variance:	?A
%assignvariableop_12_conv2d_267_kernel:??2
#assignvariableop_13_conv2d_267_bias:	?@
1assignvariableop_14_batch_normalization_217_gamma:	??
0assignvariableop_15_batch_normalization_217_beta:	?F
7assignvariableop_16_batch_normalization_217_moving_mean:	?J
;assignvariableop_17_batch_normalization_217_moving_variance:	?A
%assignvariableop_18_conv2d_268_kernel:??2
#assignvariableop_19_conv2d_268_bias:	?@
1assignvariableop_20_batch_normalization_218_gamma:	??
0assignvariableop_21_batch_normalization_218_beta:	?F
7assignvariableop_22_batch_normalization_218_moving_mean:	?J
;assignvariableop_23_batch_normalization_218_moving_variance:	?A
%assignvariableop_24_conv2d_269_kernel:??2
#assignvariableop_25_conv2d_269_bias:	?@
1assignvariableop_26_batch_normalization_219_gamma:	??
0assignvariableop_27_batch_normalization_219_beta:	?F
7assignvariableop_28_batch_normalization_219_moving_mean:	?J
;assignvariableop_29_batch_normalization_219_moving_variance:	?6
#assignvariableop_30_dense_39_kernel:	?(/
!assignvariableop_31_dense_39_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_265_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_265_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_215_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_215_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_215_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_215_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_266_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_266_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_216_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_216_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_216_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_216_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_267_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_267_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_217_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_217_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_217_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_217_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_268_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_268_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_218_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_218_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_218_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_218_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_269_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_269_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_219_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_219_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_219_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_219_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_39_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_39_biasIdentity_31:output:0"/device:CPU:0*
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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10804779

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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10804256

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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10805297

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
?
?
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806544

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
O
3__inference_max_pooling2d_48_layer_call_fn_10806616

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
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_108048432
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
:__inference_batch_normalization_216_layer_call_fn_10806583

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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_108048292
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
O
3__inference_max_pooling2d_47_layer_call_fn_10806452

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
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_108047932
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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10805130

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
:__inference_batch_normalization_215_layer_call_fn_10806393

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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_108040642
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
O
3__inference_max_pooling2d_49_layer_call_fn_10807068

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
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_108049812
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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10804212

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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806708

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
j
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_10806601

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
j
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_10804793

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
?
H__inference_conv2d_267_layer_call_and_return_conditional_losses_10806627

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
:__inference_batch_normalization_219_layer_call_fn_10807035

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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_108049672
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
:__inference_batch_normalization_215_layer_call_fn_10806432

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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_108053562
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
j
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_10804325

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
j
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_10804177

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
H__inference_conv2d_265_layer_call_and_return_conditional_losses_10806299

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
?
j
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_10806437

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
H__inference_conv2d_268_layer_call_and_return_conditional_losses_10806771

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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806526

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
j
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_10804725

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
d
H__inference_flatten_19_layer_call_and_return_conditional_losses_10804989

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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806996

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
H__inference_conv2d_266_layer_call_and_return_conditional_losses_10804806

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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10804923

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
-__inference_conv2d_268_layer_call_fn_10806780

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
H__inference_conv2d_268_layer_call_and_return_conditional_losses_108049002
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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806978

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
H__inference_conv2d_265_layer_call_and_return_conditional_losses_10804756

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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10804360

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
d
H__inference_flatten_19_layer_call_and_return_conditional_losses_10807074

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
:__inference_batch_normalization_217_layer_call_fn_10806734

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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_108044042
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
:__inference_batch_normalization_218_layer_call_fn_10806865

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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_108044862
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
:__inference_batch_normalization_217_layer_call_fn_10806747

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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_108048792
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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10805238

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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10804404

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
:__inference_batch_normalization_219_layer_call_fn_10807009

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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_108046122
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
F__inference_dense_39_layer_call_and_return_conditional_losses_10805002

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
:__inference_batch_normalization_216_layer_call_fn_10806596

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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_108052972
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
?
?
-__inference_alex_net_9_layer_call_fn_10806219

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
H__inference_alex_net_9_layer_call_and_return_conditional_losses_108050092
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
conv2d_265_inputC
"serving_default_conv2d_265_input:0???????????<
dense_390
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
+:)`2conv2d_265/kernel
:`2conv2d_265/bias
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
+:)`2batch_normalization_215/gamma
*:(`2batch_normalization_215/beta
3:1` (2#batch_normalization_215/moving_mean
7:5` (2'batch_normalization_215/moving_variance
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
,:*`?2conv2d_266/kernel
:?2conv2d_266/bias
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
,:*?2batch_normalization_216/gamma
+:)?2batch_normalization_216/beta
4:2? (2#batch_normalization_216/moving_mean
8:6? (2'batch_normalization_216/moving_variance
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
-:+??2conv2d_267/kernel
:?2conv2d_267/bias
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
,:*?2batch_normalization_217/gamma
+:)?2batch_normalization_217/beta
4:2? (2#batch_normalization_217/moving_mean
8:6? (2'batch_normalization_217/moving_variance
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
-:+??2conv2d_268/kernel
:?2conv2d_268/bias
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
,:*?2batch_normalization_218/gamma
+:)?2batch_normalization_218/beta
4:2? (2#batch_normalization_218/moving_mean
8:6? (2'batch_normalization_218/moving_variance
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
-:+??2conv2d_269/kernel
:?2conv2d_269/bias
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
,:*?2batch_normalization_219/gamma
+:)?2batch_normalization_219/beta
4:2? (2#batch_normalization_219/moving_mean
8:6? (2'batch_normalization_219/moving_variance
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
": 	?(2dense_39/kernel
:2dense_39/bias
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
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10806029
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10806150
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10805750
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10805833?
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
#__inference__wrapped_model_10804042conv2d_265_input"?
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
-__inference_alex_net_9_layer_call_fn_10805076
-__inference_alex_net_9_layer_call_fn_10806219
-__inference_alex_net_9_layer_call_fn_10806288
-__inference_alex_net_9_layer_call_fn_10805667?
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
H__inference_conv2d_265_layer_call_and_return_conditional_losses_10806299?
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
-__inference_conv2d_265_layer_call_fn_10806308?
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
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806326
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806344
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806362
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806380?
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
:__inference_batch_normalization_215_layer_call_fn_10806393
:__inference_batch_normalization_215_layer_call_fn_10806406
:__inference_batch_normalization_215_layer_call_fn_10806419
:__inference_batch_normalization_215_layer_call_fn_10806432?
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
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_10806437
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_10806442?
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
3__inference_max_pooling2d_47_layer_call_fn_10806447
3__inference_max_pooling2d_47_layer_call_fn_10806452?
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
H__inference_conv2d_266_layer_call_and_return_conditional_losses_10806463?
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
-__inference_conv2d_266_layer_call_fn_10806472?
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
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806490
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806508
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806526
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806544?
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
:__inference_batch_normalization_216_layer_call_fn_10806557
:__inference_batch_normalization_216_layer_call_fn_10806570
:__inference_batch_normalization_216_layer_call_fn_10806583
:__inference_batch_normalization_216_layer_call_fn_10806596?
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
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_10806601
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_10806606?
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
3__inference_max_pooling2d_48_layer_call_fn_10806611
3__inference_max_pooling2d_48_layer_call_fn_10806616?
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
H__inference_conv2d_267_layer_call_and_return_conditional_losses_10806627?
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
-__inference_conv2d_267_layer_call_fn_10806636?
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
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806654
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806672
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806690
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806708?
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
:__inference_batch_normalization_217_layer_call_fn_10806721
:__inference_batch_normalization_217_layer_call_fn_10806734
:__inference_batch_normalization_217_layer_call_fn_10806747
:__inference_batch_normalization_217_layer_call_fn_10806760?
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
H__inference_conv2d_268_layer_call_and_return_conditional_losses_10806771?
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
-__inference_conv2d_268_layer_call_fn_10806780?
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
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806798
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806816
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806834
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806852?
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
:__inference_batch_normalization_218_layer_call_fn_10806865
:__inference_batch_normalization_218_layer_call_fn_10806878
:__inference_batch_normalization_218_layer_call_fn_10806891
:__inference_batch_normalization_218_layer_call_fn_10806904?
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
H__inference_conv2d_269_layer_call_and_return_conditional_losses_10806915?
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
-__inference_conv2d_269_layer_call_fn_10806924?
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
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806942
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806960
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806978
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806996?
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
:__inference_batch_normalization_219_layer_call_fn_10807009
:__inference_batch_normalization_219_layer_call_fn_10807022
:__inference_batch_normalization_219_layer_call_fn_10807035
:__inference_batch_normalization_219_layer_call_fn_10807048?
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
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_10807053
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_10807058?
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
3__inference_max_pooling2d_49_layer_call_fn_10807063
3__inference_max_pooling2d_49_layer_call_fn_10807068?
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
H__inference_flatten_19_layer_call_and_return_conditional_losses_10807074?
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
-__inference_flatten_19_layer_call_fn_10807079?
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
F__inference_dense_39_layer_call_and_return_conditional_losses_10807090?
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
+__inference_dense_39_layer_call_fn_10807099?
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
&__inference_signature_wrapper_10805908conv2d_265_input"?
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
#__inference__wrapped_model_10804042?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_265_input???????????
? "3?0
.
dense_39"?
dense_39??????????
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10805750?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_265_input???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10805833?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_265_input???????????
p

 
? "%?"
?
0?????????
? ?
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10806029?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
H__inference_alex_net_9_layer_call_and_return_conditional_losses_10806150?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
-__inference_alex_net_9_layer_call_fn_10805076?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_265_input???????????
p 

 
? "???????????
-__inference_alex_net_9_layer_call_fn_10805667?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_265_input???????????
p

 
? "???????????
-__inference_alex_net_9_layer_call_fn_10806219  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
-__inference_alex_net_9_layer_call_fn_10806288  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806326? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806344? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806362r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
U__inference_batch_normalization_215_layer_call_and_return_conditional_losses_10806380r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
:__inference_batch_normalization_215_layer_call_fn_10806393? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
:__inference_batch_normalization_215_layer_call_fn_10806406? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
:__inference_batch_normalization_215_layer_call_fn_10806419e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
:__inference_batch_normalization_215_layer_call_fn_10806432e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806490?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806508?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806526t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
U__inference_batch_normalization_216_layer_call_and_return_conditional_losses_10806544t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
:__inference_batch_normalization_216_layer_call_fn_10806557?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
:__inference_batch_normalization_216_layer_call_fn_10806570?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
:__inference_batch_normalization_216_layer_call_fn_10806583g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
:__inference_batch_normalization_216_layer_call_fn_10806596g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806654?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806672?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806690tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
U__inference_batch_normalization_217_layer_call_and_return_conditional_losses_10806708tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
:__inference_batch_normalization_217_layer_call_fn_10806721?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
:__inference_batch_normalization_217_layer_call_fn_10806734?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
:__inference_batch_normalization_217_layer_call_fn_10806747gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
:__inference_batch_normalization_217_layer_call_fn_10806760gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806798?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806816?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806834tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
U__inference_batch_normalization_218_layer_call_and_return_conditional_losses_10806852tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
:__inference_batch_normalization_218_layer_call_fn_10806865?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
:__inference_batch_normalization_218_layer_call_fn_10806878?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
:__inference_batch_normalization_218_layer_call_fn_10806891gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
:__inference_batch_normalization_218_layer_call_fn_10806904gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806942?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806960?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806978tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
U__inference_batch_normalization_219_layer_call_and_return_conditional_losses_10806996tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
:__inference_batch_normalization_219_layer_call_fn_10807009?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
:__inference_batch_normalization_219_layer_call_fn_10807022?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
:__inference_batch_normalization_219_layer_call_fn_10807035gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
:__inference_batch_normalization_219_layer_call_fn_10807048gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
H__inference_conv2d_265_layer_call_and_return_conditional_losses_10806299n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
-__inference_conv2d_265_layer_call_fn_10806308a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
H__inference_conv2d_266_layer_call_and_return_conditional_losses_10806463m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
-__inference_conv2d_266_layer_call_fn_10806472`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
H__inference_conv2d_267_layer_call_and_return_conditional_losses_10806627n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_conv2d_267_layer_call_fn_10806636a<=8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_conv2d_268_layer_call_and_return_conditional_losses_10806771nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_conv2d_268_layer_call_fn_10806780aKL8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_conv2d_269_layer_call_and_return_conditional_losses_10806915nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_conv2d_269_layer_call_fn_10806924aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
F__inference_dense_39_layer_call_and_return_conditional_losses_10807090]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? 
+__inference_dense_39_layer_call_fn_10807099Pqr0?-
&?#
!?
inputs??????????(
? "???????????
H__inference_flatten_19_layer_call_and_return_conditional_losses_10807074b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
-__inference_flatten_19_layer_call_fn_10807079U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_10806437?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_10806442h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
3__inference_max_pooling2d_47_layer_call_fn_10806447?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_47_layer_call_fn_10806452[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_10806601?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_10806606j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
3__inference_max_pooling2d_48_layer_call_fn_10806611?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_48_layer_call_fn_10806616]8?5
.?+
)?&
inputs?????????-?
? "!????????????
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_10807053?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_10807058j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
3__inference_max_pooling2d_49_layer_call_fn_10807063?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_49_layer_call_fn_10807068]8?5
.?+
)?&
inputs??????????
? "!??????????
??
&__inference_signature_wrapper_10805908?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_265_input4?1
conv2d_265_input???????????"3?0
.
dense_39"?
dense_39?????????