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
conv2d_339/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_339/kernel

%conv2d_339/kernel/Read/ReadVariableOpReadVariableOpconv2d_339/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_339/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_339/bias
o
#conv2d_339/bias/Read/ReadVariableOpReadVariableOpconv2d_339/bias*
_output_shapes
:`*
dtype0
?
batch_normalization_266/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_266/gamma
?
1batch_normalization_266/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_266/gamma*
_output_shapes
:`*
dtype0
?
batch_normalization_266/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_266/beta
?
0batch_normalization_266/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_266/beta*
_output_shapes
:`*
dtype0
?
#batch_normalization_266/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_266/moving_mean
?
7batch_normalization_266/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_266/moving_mean*
_output_shapes
:`*
dtype0
?
'batch_normalization_266/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_266/moving_variance
?
;batch_normalization_266/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_266/moving_variance*
_output_shapes
:`*
dtype0
?
conv2d_340/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`?*"
shared_nameconv2d_340/kernel
?
%conv2d_340/kernel/Read/ReadVariableOpReadVariableOpconv2d_340/kernel*'
_output_shapes
:`?*
dtype0
w
conv2d_340/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_340/bias
p
#conv2d_340/bias/Read/ReadVariableOpReadVariableOpconv2d_340/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_267/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_267/gamma
?
1batch_normalization_267/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_267/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_267/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_267/beta
?
0batch_normalization_267/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_267/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_267/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_267/moving_mean
?
7batch_normalization_267/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_267/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_267/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_267/moving_variance
?
;batch_normalization_267/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_267/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_341/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_341/kernel
?
%conv2d_341/kernel/Read/ReadVariableOpReadVariableOpconv2d_341/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_341/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_341/bias
p
#conv2d_341/bias/Read/ReadVariableOpReadVariableOpconv2d_341/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_268/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_268/gamma
?
1batch_normalization_268/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_268/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_268/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_268/beta
?
0batch_normalization_268/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_268/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_268/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_268/moving_mean
?
7batch_normalization_268/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_268/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_268/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_268/moving_variance
?
;batch_normalization_268/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_268/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_342/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_342/kernel
?
%conv2d_342/kernel/Read/ReadVariableOpReadVariableOpconv2d_342/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_342/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_342/bias
p
#conv2d_342/bias/Read/ReadVariableOpReadVariableOpconv2d_342/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_269/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_269/gamma
?
1batch_normalization_269/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_269/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_269/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_269/beta
?
0batch_normalization_269/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_269/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_269/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_269/moving_mean
?
7batch_normalization_269/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_269/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_269/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_269/moving_variance
?
;batch_normalization_269/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_269/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_343/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_343/kernel
?
%conv2d_343/kernel/Read/ReadVariableOpReadVariableOpconv2d_343/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_343/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_343/bias
p
#conv2d_343/bias/Read/ReadVariableOpReadVariableOpconv2d_343/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_270/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_270/gamma
?
1batch_normalization_270/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_270/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_270/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_270/beta
?
0batch_normalization_270/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_270/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_270/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_270/moving_mean
?
7batch_normalization_270/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_270/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_270/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_270/moving_variance
?
;batch_normalization_270/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_270/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(* 
shared_namedense_56/kernel
t
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes
:	?(*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
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
VARIABLE_VALUEconv2d_339/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_339/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_266/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_266/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_266/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_266/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_340/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_340/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_267/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_267/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_267/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_267/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_341/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_341/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_268/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_268/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_268/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_268/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_342/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_342/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_269/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_269/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_269/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_269/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_343/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_343/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_270/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_270/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_270/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_270/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_56/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_56/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_339_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_339_inputconv2d_339/kernelconv2d_339/biasbatch_normalization_266/gammabatch_normalization_266/beta#batch_normalization_266/moving_mean'batch_normalization_266/moving_varianceconv2d_340/kernelconv2d_340/biasbatch_normalization_267/gammabatch_normalization_267/beta#batch_normalization_267/moving_mean'batch_normalization_267/moving_varianceconv2d_341/kernelconv2d_341/biasbatch_normalization_268/gammabatch_normalization_268/beta#batch_normalization_268/moving_mean'batch_normalization_268/moving_varianceconv2d_342/kernelconv2d_342/biasbatch_normalization_269/gammabatch_normalization_269/beta#batch_normalization_269/moving_mean'batch_normalization_269/moving_varianceconv2d_343/kernelconv2d_343/biasbatch_normalization_270/gammabatch_normalization_270/beta#batch_normalization_270/moving_mean'batch_normalization_270/moving_variancedense_56/kerneldense_56/bias*,
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
%__inference_signature_wrapper_5952938
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_339/kernel/Read/ReadVariableOp#conv2d_339/bias/Read/ReadVariableOp1batch_normalization_266/gamma/Read/ReadVariableOp0batch_normalization_266/beta/Read/ReadVariableOp7batch_normalization_266/moving_mean/Read/ReadVariableOp;batch_normalization_266/moving_variance/Read/ReadVariableOp%conv2d_340/kernel/Read/ReadVariableOp#conv2d_340/bias/Read/ReadVariableOp1batch_normalization_267/gamma/Read/ReadVariableOp0batch_normalization_267/beta/Read/ReadVariableOp7batch_normalization_267/moving_mean/Read/ReadVariableOp;batch_normalization_267/moving_variance/Read/ReadVariableOp%conv2d_341/kernel/Read/ReadVariableOp#conv2d_341/bias/Read/ReadVariableOp1batch_normalization_268/gamma/Read/ReadVariableOp0batch_normalization_268/beta/Read/ReadVariableOp7batch_normalization_268/moving_mean/Read/ReadVariableOp;batch_normalization_268/moving_variance/Read/ReadVariableOp%conv2d_342/kernel/Read/ReadVariableOp#conv2d_342/bias/Read/ReadVariableOp1batch_normalization_269/gamma/Read/ReadVariableOp0batch_normalization_269/beta/Read/ReadVariableOp7batch_normalization_269/moving_mean/Read/ReadVariableOp;batch_normalization_269/moving_variance/Read/ReadVariableOp%conv2d_343/kernel/Read/ReadVariableOp#conv2d_343/bias/Read/ReadVariableOp1batch_normalization_270/gamma/Read/ReadVariableOp0batch_normalization_270/beta/Read/ReadVariableOp7batch_normalization_270/moving_mean/Read/ReadVariableOp;batch_normalization_270/moving_variance/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5954272
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_339/kernelconv2d_339/biasbatch_normalization_266/gammabatch_normalization_266/beta#batch_normalization_266/moving_mean'batch_normalization_266/moving_varianceconv2d_340/kernelconv2d_340/biasbatch_normalization_267/gammabatch_normalization_267/beta#batch_normalization_267/moving_mean'batch_normalization_267/moving_varianceconv2d_341/kernelconv2d_341/biasbatch_normalization_268/gammabatch_normalization_268/beta#batch_normalization_268/moving_mean'batch_normalization_268/moving_varianceconv2d_342/kernelconv2d_342/biasbatch_normalization_269/gammabatch_normalization_269/beta#batch_normalization_269/moving_mean'batch_normalization_269/moving_varianceconv2d_343/kernelconv2d_343/biasbatch_normalization_270/gammabatch_normalization_270/beta#batch_normalization_270/moving_mean'batch_normalization_270/moving_variancedense_56/kerneldense_56/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
#__inference__traced_restore_5954402??
?
i
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_5953636

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
9__inference_batch_normalization_268_layer_call_fn_5953790

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_59522682
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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_5951930

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5951809

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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_5953801

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953720

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
G__inference_conv2d_339_layer_call_and_return_conditional_losses_5951786

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
9__inference_batch_normalization_266_layer_call_fn_5953449

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_59518092
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
G__inference_conv2d_340_layer_call_and_return_conditional_losses_5953493

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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953864

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
9__inference_batch_normalization_268_layer_call_fn_5953777

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_59519092
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
9__inference_batch_normalization_270_layer_call_fn_5954065

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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_59519972
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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953828

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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5954026

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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_5951873

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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953574

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
?
N
2__inference_max_pooling2d_58_layer_call_fn_5953641

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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_59513552
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
9__inference_batch_normalization_269_layer_call_fn_5953921

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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_59519532
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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5951138

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
H
,__inference_flatten_26_layer_call_fn_5954109

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
G__inference_flatten_26_layer_call_and_return_conditional_losses_59520192
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
?
?
,__inference_conv2d_340_layer_call_fn_5953502

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
G__inference_conv2d_340_layer_call_and_return_conditional_losses_59518362
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
c
G__inference_flatten_26_layer_call_and_return_conditional_losses_5954104

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
,__inference_conv2d_339_layer_call_fn_5953338

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
G__inference_conv2d_339_layer_call_and_return_conditional_losses_59517862
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
i
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_5954088

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5951909

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
 __inference__traced_save_5954272
file_prefix0
,savev2_conv2d_339_kernel_read_readvariableop.
*savev2_conv2d_339_bias_read_readvariableop<
8savev2_batch_normalization_266_gamma_read_readvariableop;
7savev2_batch_normalization_266_beta_read_readvariableopB
>savev2_batch_normalization_266_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_266_moving_variance_read_readvariableop0
,savev2_conv2d_340_kernel_read_readvariableop.
*savev2_conv2d_340_bias_read_readvariableop<
8savev2_batch_normalization_267_gamma_read_readvariableop;
7savev2_batch_normalization_267_beta_read_readvariableopB
>savev2_batch_normalization_267_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_267_moving_variance_read_readvariableop0
,savev2_conv2d_341_kernel_read_readvariableop.
*savev2_conv2d_341_bias_read_readvariableop<
8savev2_batch_normalization_268_gamma_read_readvariableop;
7savev2_batch_normalization_268_beta_read_readvariableopB
>savev2_batch_normalization_268_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_268_moving_variance_read_readvariableop0
,savev2_conv2d_342_kernel_read_readvariableop.
*savev2_conv2d_342_bias_read_readvariableop<
8savev2_batch_normalization_269_gamma_read_readvariableop;
7savev2_batch_normalization_269_beta_read_readvariableopB
>savev2_batch_normalization_269_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_269_moving_variance_read_readvariableop0
,savev2_conv2d_343_kernel_read_readvariableop.
*savev2_conv2d_343_bias_read_readvariableop<
8savev2_batch_normalization_270_gamma_read_readvariableop;
7savev2_batch_normalization_270_beta_read_readvariableopB
>savev2_batch_normalization_270_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_270_moving_variance_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_339_kernel_read_readvariableop*savev2_conv2d_339_bias_read_readvariableop8savev2_batch_normalization_266_gamma_read_readvariableop7savev2_batch_normalization_266_beta_read_readvariableop>savev2_batch_normalization_266_moving_mean_read_readvariableopBsavev2_batch_normalization_266_moving_variance_read_readvariableop,savev2_conv2d_340_kernel_read_readvariableop*savev2_conv2d_340_bias_read_readvariableop8savev2_batch_normalization_267_gamma_read_readvariableop7savev2_batch_normalization_267_beta_read_readvariableop>savev2_batch_normalization_267_moving_mean_read_readvariableopBsavev2_batch_normalization_267_moving_variance_read_readvariableop,savev2_conv2d_341_kernel_read_readvariableop*savev2_conv2d_341_bias_read_readvariableop8savev2_batch_normalization_268_gamma_read_readvariableop7savev2_batch_normalization_268_beta_read_readvariableop>savev2_batch_normalization_268_moving_mean_read_readvariableopBsavev2_batch_normalization_268_moving_variance_read_readvariableop,savev2_conv2d_342_kernel_read_readvariableop*savev2_conv2d_342_bias_read_readvariableop8savev2_batch_normalization_269_gamma_read_readvariableop7savev2_batch_normalization_269_beta_read_readvariableop>savev2_batch_normalization_269_moving_mean_read_readvariableopBsavev2_batch_normalization_269_moving_variance_read_readvariableop,savev2_conv2d_343_kernel_read_readvariableop*savev2_conv2d_343_bias_read_readvariableop8savev2_batch_normalization_270_gamma_read_readvariableop7savev2_batch_normalization_270_beta_read_readvariableop>savev2_batch_normalization_270_moving_mean_read_readvariableopBsavev2_batch_normalization_270_moving_variance_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5951560

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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953538

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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5952214

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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_5953631

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
9__inference_batch_normalization_266_layer_call_fn_5953436

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_59511382
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
?
?
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5953990

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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5951286

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
N
2__inference_max_pooling2d_57_layer_call_fn_5953482

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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_59518232
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
9__inference_batch_normalization_270_layer_call_fn_5954039

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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_59516422
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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953846

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953392

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
G__inference_conv2d_340_layer_call_and_return_conditional_losses_5951836

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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953520

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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_5953945

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
,__inference_alex_net_9_layer_call_fn_5953318

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
G__inference_alex_net_9_layer_call_and_return_conditional_losses_59525612
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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5952327

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5951390

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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5951953

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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_5951974

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
9__inference_batch_normalization_267_layer_call_fn_5953626

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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_59523272
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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5951642

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953738

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5952268

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5952386

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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953556

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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_5953472

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
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5953059

inputsC
)conv2d_339_conv2d_readvariableop_resource:`8
*conv2d_339_biasadd_readvariableop_resource:`=
/batch_normalization_266_readvariableop_resource:`?
1batch_normalization_266_readvariableop_1_resource:`N
@batch_normalization_266_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_266_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_340_conv2d_readvariableop_resource:`?9
*conv2d_340_biasadd_readvariableop_resource:	?>
/batch_normalization_267_readvariableop_resource:	?@
1batch_normalization_267_readvariableop_1_resource:	?O
@batch_normalization_267_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_267_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_341_conv2d_readvariableop_resource:??9
*conv2d_341_biasadd_readvariableop_resource:	?>
/batch_normalization_268_readvariableop_resource:	?@
1batch_normalization_268_readvariableop_1_resource:	?O
@batch_normalization_268_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_268_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_342_conv2d_readvariableop_resource:??9
*conv2d_342_biasadd_readvariableop_resource:	?>
/batch_normalization_269_readvariableop_resource:	?@
1batch_normalization_269_readvariableop_1_resource:	?O
@batch_normalization_269_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_269_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_343_conv2d_readvariableop_resource:??9
*conv2d_343_biasadd_readvariableop_resource:	?>
/batch_normalization_270_readvariableop_resource:	?@
1batch_normalization_270_readvariableop_1_resource:	?O
@batch_normalization_270_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_270_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_56_matmul_readvariableop_resource:	?(6
(dense_56_biasadd_readvariableop_resource:
identity??7batch_normalization_266/FusedBatchNormV3/ReadVariableOp?9batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_266/ReadVariableOp?(batch_normalization_266/ReadVariableOp_1?7batch_normalization_267/FusedBatchNormV3/ReadVariableOp?9batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_267/ReadVariableOp?(batch_normalization_267/ReadVariableOp_1?7batch_normalization_268/FusedBatchNormV3/ReadVariableOp?9batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_268/ReadVariableOp?(batch_normalization_268/ReadVariableOp_1?7batch_normalization_269/FusedBatchNormV3/ReadVariableOp?9batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_269/ReadVariableOp?(batch_normalization_269/ReadVariableOp_1?7batch_normalization_270/FusedBatchNormV3/ReadVariableOp?9batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_270/ReadVariableOp?(batch_normalization_270/ReadVariableOp_1?!conv2d_339/BiasAdd/ReadVariableOp? conv2d_339/Conv2D/ReadVariableOp?!conv2d_340/BiasAdd/ReadVariableOp? conv2d_340/Conv2D/ReadVariableOp?!conv2d_341/BiasAdd/ReadVariableOp? conv2d_341/Conv2D/ReadVariableOp?!conv2d_342/BiasAdd/ReadVariableOp? conv2d_342/Conv2D/ReadVariableOp?!conv2d_343/BiasAdd/ReadVariableOp? conv2d_343/Conv2D/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?
 conv2d_339/Conv2D/ReadVariableOpReadVariableOp)conv2d_339_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_339/Conv2D/ReadVariableOp?
conv2d_339/Conv2DConv2Dinputs(conv2d_339/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_339/Conv2D?
!conv2d_339/BiasAdd/ReadVariableOpReadVariableOp*conv2d_339_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_339/BiasAdd/ReadVariableOp?
conv2d_339/BiasAddBiasAddconv2d_339/Conv2D:output:0)conv2d_339/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_339/BiasAdd?
conv2d_339/ReluReluconv2d_339/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_339/Relu?
&batch_normalization_266/ReadVariableOpReadVariableOp/batch_normalization_266_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_266/ReadVariableOp?
(batch_normalization_266/ReadVariableOp_1ReadVariableOp1batch_normalization_266_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_266/ReadVariableOp_1?
7batch_normalization_266/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_266_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_266/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_266_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_266/FusedBatchNormV3FusedBatchNormV3conv2d_339/Relu:activations:0.batch_normalization_266/ReadVariableOp:value:00batch_normalization_266/ReadVariableOp_1:value:0?batch_normalization_266/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_266/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(batch_normalization_266/FusedBatchNormV3?
max_pooling2d_57/MaxPoolMaxPool,batch_normalization_266/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_57/MaxPool?
 conv2d_340/Conv2D/ReadVariableOpReadVariableOp)conv2d_340_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_340/Conv2D/ReadVariableOp?
conv2d_340/Conv2DConv2D!max_pooling2d_57/MaxPool:output:0(conv2d_340/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_340/Conv2D?
!conv2d_340/BiasAdd/ReadVariableOpReadVariableOp*conv2d_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_340/BiasAdd/ReadVariableOp?
conv2d_340/BiasAddBiasAddconv2d_340/Conv2D:output:0)conv2d_340/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_340/BiasAdd?
conv2d_340/ReluReluconv2d_340/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_340/Relu?
&batch_normalization_267/ReadVariableOpReadVariableOp/batch_normalization_267_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_267/ReadVariableOp?
(batch_normalization_267/ReadVariableOp_1ReadVariableOp1batch_normalization_267_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_267/ReadVariableOp_1?
7batch_normalization_267/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_267_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_267/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_267_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_267/FusedBatchNormV3FusedBatchNormV3conv2d_340/Relu:activations:0.batch_normalization_267/ReadVariableOp:value:00batch_normalization_267/ReadVariableOp_1:value:0?batch_normalization_267/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_267/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_267/FusedBatchNormV3?
max_pooling2d_58/MaxPoolMaxPool,batch_normalization_267/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_58/MaxPool?
 conv2d_341/Conv2D/ReadVariableOpReadVariableOp)conv2d_341_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_341/Conv2D/ReadVariableOp?
conv2d_341/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0(conv2d_341/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_341/Conv2D?
!conv2d_341/BiasAdd/ReadVariableOpReadVariableOp*conv2d_341_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_341/BiasAdd/ReadVariableOp?
conv2d_341/BiasAddBiasAddconv2d_341/Conv2D:output:0)conv2d_341/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_341/BiasAdd?
conv2d_341/ReluReluconv2d_341/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_341/Relu?
&batch_normalization_268/ReadVariableOpReadVariableOp/batch_normalization_268_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_268/ReadVariableOp?
(batch_normalization_268/ReadVariableOp_1ReadVariableOp1batch_normalization_268_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_268/ReadVariableOp_1?
7batch_normalization_268/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_268_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_268/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_268_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_268/FusedBatchNormV3FusedBatchNormV3conv2d_341/Relu:activations:0.batch_normalization_268/ReadVariableOp:value:00batch_normalization_268/ReadVariableOp_1:value:0?batch_normalization_268/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_268/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_268/FusedBatchNormV3?
 conv2d_342/Conv2D/ReadVariableOpReadVariableOp)conv2d_342_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_342/Conv2D/ReadVariableOp?
conv2d_342/Conv2DConv2D,batch_normalization_268/FusedBatchNormV3:y:0(conv2d_342/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_342/Conv2D?
!conv2d_342/BiasAdd/ReadVariableOpReadVariableOp*conv2d_342_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_342/BiasAdd/ReadVariableOp?
conv2d_342/BiasAddBiasAddconv2d_342/Conv2D:output:0)conv2d_342/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_342/BiasAdd?
conv2d_342/ReluReluconv2d_342/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_342/Relu?
&batch_normalization_269/ReadVariableOpReadVariableOp/batch_normalization_269_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_269/ReadVariableOp?
(batch_normalization_269/ReadVariableOp_1ReadVariableOp1batch_normalization_269_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_269/ReadVariableOp_1?
7batch_normalization_269/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_269_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_269/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_269_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_269/FusedBatchNormV3FusedBatchNormV3conv2d_342/Relu:activations:0.batch_normalization_269/ReadVariableOp:value:00batch_normalization_269/ReadVariableOp_1:value:0?batch_normalization_269/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_269/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_269/FusedBatchNormV3?
 conv2d_343/Conv2D/ReadVariableOpReadVariableOp)conv2d_343_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_343/Conv2D/ReadVariableOp?
conv2d_343/Conv2DConv2D,batch_normalization_269/FusedBatchNormV3:y:0(conv2d_343/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_343/Conv2D?
!conv2d_343/BiasAdd/ReadVariableOpReadVariableOp*conv2d_343_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_343/BiasAdd/ReadVariableOp?
conv2d_343/BiasAddBiasAddconv2d_343/Conv2D:output:0)conv2d_343/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_343/BiasAdd?
conv2d_343/ReluReluconv2d_343/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_343/Relu?
&batch_normalization_270/ReadVariableOpReadVariableOp/batch_normalization_270_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_270/ReadVariableOp?
(batch_normalization_270/ReadVariableOp_1ReadVariableOp1batch_normalization_270_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_270/ReadVariableOp_1?
7batch_normalization_270/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_270_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_270/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_270_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_270/FusedBatchNormV3FusedBatchNormV3conv2d_343/Relu:activations:0.batch_normalization_270/ReadVariableOp:value:00batch_normalization_270/ReadVariableOp_1:value:0?batch_normalization_270/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_270/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_270/FusedBatchNormV3?
max_pooling2d_59/MaxPoolMaxPool,batch_normalization_270/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_59/MaxPoolu
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_26/Const?
flatten_26/ReshapeReshape!max_pooling2d_59/MaxPool:output:0flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_26/Reshape?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMulflatten_26/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/BiasAdd|
dense_56/SigmoidSigmoiddense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_56/Sigmoido
IdentityIdentitydense_56/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp8^batch_normalization_266/FusedBatchNormV3/ReadVariableOp:^batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_266/ReadVariableOp)^batch_normalization_266/ReadVariableOp_18^batch_normalization_267/FusedBatchNormV3/ReadVariableOp:^batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_267/ReadVariableOp)^batch_normalization_267/ReadVariableOp_18^batch_normalization_268/FusedBatchNormV3/ReadVariableOp:^batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_268/ReadVariableOp)^batch_normalization_268/ReadVariableOp_18^batch_normalization_269/FusedBatchNormV3/ReadVariableOp:^batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_269/ReadVariableOp)^batch_normalization_269/ReadVariableOp_18^batch_normalization_270/FusedBatchNormV3/ReadVariableOp:^batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_270/ReadVariableOp)^batch_normalization_270/ReadVariableOp_1"^conv2d_339/BiasAdd/ReadVariableOp!^conv2d_339/Conv2D/ReadVariableOp"^conv2d_340/BiasAdd/ReadVariableOp!^conv2d_340/Conv2D/ReadVariableOp"^conv2d_341/BiasAdd/ReadVariableOp!^conv2d_341/Conv2D/ReadVariableOp"^conv2d_342/BiasAdd/ReadVariableOp!^conv2d_342/Conv2D/ReadVariableOp"^conv2d_343/BiasAdd/ReadVariableOp!^conv2d_343/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_266/FusedBatchNormV3/ReadVariableOp7batch_normalization_266/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_266/FusedBatchNormV3/ReadVariableOp_19batch_normalization_266/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_266/ReadVariableOp&batch_normalization_266/ReadVariableOp2T
(batch_normalization_266/ReadVariableOp_1(batch_normalization_266/ReadVariableOp_12r
7batch_normalization_267/FusedBatchNormV3/ReadVariableOp7batch_normalization_267/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_267/FusedBatchNormV3/ReadVariableOp_19batch_normalization_267/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_267/ReadVariableOp&batch_normalization_267/ReadVariableOp2T
(batch_normalization_267/ReadVariableOp_1(batch_normalization_267/ReadVariableOp_12r
7batch_normalization_268/FusedBatchNormV3/ReadVariableOp7batch_normalization_268/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_268/FusedBatchNormV3/ReadVariableOp_19batch_normalization_268/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_268/ReadVariableOp&batch_normalization_268/ReadVariableOp2T
(batch_normalization_268/ReadVariableOp_1(batch_normalization_268/ReadVariableOp_12r
7batch_normalization_269/FusedBatchNormV3/ReadVariableOp7batch_normalization_269/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_269/FusedBatchNormV3/ReadVariableOp_19batch_normalization_269/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_269/ReadVariableOp&batch_normalization_269/ReadVariableOp2T
(batch_normalization_269/ReadVariableOp_1(batch_normalization_269/ReadVariableOp_12r
7batch_normalization_270/FusedBatchNormV3/ReadVariableOp7batch_normalization_270/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_270/FusedBatchNormV3/ReadVariableOp_19batch_normalization_270/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_270/ReadVariableOp&batch_normalization_270/ReadVariableOp2T
(batch_normalization_270/ReadVariableOp_1(batch_normalization_270/ReadVariableOp_12F
!conv2d_339/BiasAdd/ReadVariableOp!conv2d_339/BiasAdd/ReadVariableOp2D
 conv2d_339/Conv2D/ReadVariableOp conv2d_339/Conv2D/ReadVariableOp2F
!conv2d_340/BiasAdd/ReadVariableOp!conv2d_340/BiasAdd/ReadVariableOp2D
 conv2d_340/Conv2D/ReadVariableOp conv2d_340/Conv2D/ReadVariableOp2F
!conv2d_341/BiasAdd/ReadVariableOp!conv2d_341/BiasAdd/ReadVariableOp2D
 conv2d_341/Conv2D/ReadVariableOp conv2d_341/Conv2D/ReadVariableOp2F
!conv2d_342/BiasAdd/ReadVariableOp!conv2d_342/BiasAdd/ReadVariableOp2D
 conv2d_342/Conv2D/ReadVariableOp conv2d_342/Conv2D/ReadVariableOp2F
!conv2d_343/BiasAdd/ReadVariableOp!conv2d_343/BiasAdd/ReadVariableOp2D
 conv2d_343/Conv2D/ReadVariableOp conv2d_343/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?X
?
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5952561

inputs,
conv2d_339_5952481:` 
conv2d_339_5952483:`-
batch_normalization_266_5952486:`-
batch_normalization_266_5952488:`-
batch_normalization_266_5952490:`-
batch_normalization_266_5952492:`-
conv2d_340_5952496:`?!
conv2d_340_5952498:	?.
batch_normalization_267_5952501:	?.
batch_normalization_267_5952503:	?.
batch_normalization_267_5952505:	?.
batch_normalization_267_5952507:	?.
conv2d_341_5952511:??!
conv2d_341_5952513:	?.
batch_normalization_268_5952516:	?.
batch_normalization_268_5952518:	?.
batch_normalization_268_5952520:	?.
batch_normalization_268_5952522:	?.
conv2d_342_5952525:??!
conv2d_342_5952527:	?.
batch_normalization_269_5952530:	?.
batch_normalization_269_5952532:	?.
batch_normalization_269_5952534:	?.
batch_normalization_269_5952536:	?.
conv2d_343_5952539:??!
conv2d_343_5952541:	?.
batch_normalization_270_5952544:	?.
batch_normalization_270_5952546:	?.
batch_normalization_270_5952548:	?.
batch_normalization_270_5952550:	?#
dense_56_5952555:	?(
dense_56_5952557:
identity??/batch_normalization_266/StatefulPartitionedCall?/batch_normalization_267/StatefulPartitionedCall?/batch_normalization_268/StatefulPartitionedCall?/batch_normalization_269/StatefulPartitionedCall?/batch_normalization_270/StatefulPartitionedCall?"conv2d_339/StatefulPartitionedCall?"conv2d_340/StatefulPartitionedCall?"conv2d_341/StatefulPartitionedCall?"conv2d_342/StatefulPartitionedCall?"conv2d_343/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
"conv2d_339/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_339_5952481conv2d_339_5952483*
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
G__inference_conv2d_339_layer_call_and_return_conditional_losses_59517862$
"conv2d_339/StatefulPartitionedCall?
/batch_normalization_266/StatefulPartitionedCallStatefulPartitionedCall+conv2d_339/StatefulPartitionedCall:output:0batch_normalization_266_5952486batch_normalization_266_5952488batch_normalization_266_5952490batch_normalization_266_5952492*
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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_595238621
/batch_normalization_266/StatefulPartitionedCall?
 max_pooling2d_57/PartitionedCallPartitionedCall8batch_normalization_266/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_59518232"
 max_pooling2d_57/PartitionedCall?
"conv2d_340/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_340_5952496conv2d_340_5952498*
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
G__inference_conv2d_340_layer_call_and_return_conditional_losses_59518362$
"conv2d_340/StatefulPartitionedCall?
/batch_normalization_267/StatefulPartitionedCallStatefulPartitionedCall+conv2d_340/StatefulPartitionedCall:output:0batch_normalization_267_5952501batch_normalization_267_5952503batch_normalization_267_5952505batch_normalization_267_5952507*
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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_595232721
/batch_normalization_267/StatefulPartitionedCall?
 max_pooling2d_58/PartitionedCallPartitionedCall8batch_normalization_267/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_59518732"
 max_pooling2d_58/PartitionedCall?
"conv2d_341/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_341_5952511conv2d_341_5952513*
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
G__inference_conv2d_341_layer_call_and_return_conditional_losses_59518862$
"conv2d_341/StatefulPartitionedCall?
/batch_normalization_268/StatefulPartitionedCallStatefulPartitionedCall+conv2d_341/StatefulPartitionedCall:output:0batch_normalization_268_5952516batch_normalization_268_5952518batch_normalization_268_5952520batch_normalization_268_5952522*
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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_595226821
/batch_normalization_268/StatefulPartitionedCall?
"conv2d_342/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_268/StatefulPartitionedCall:output:0conv2d_342_5952525conv2d_342_5952527*
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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_59519302$
"conv2d_342/StatefulPartitionedCall?
/batch_normalization_269/StatefulPartitionedCallStatefulPartitionedCall+conv2d_342/StatefulPartitionedCall:output:0batch_normalization_269_5952530batch_normalization_269_5952532batch_normalization_269_5952534batch_normalization_269_5952536*
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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_595221421
/batch_normalization_269/StatefulPartitionedCall?
"conv2d_343/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_269/StatefulPartitionedCall:output:0conv2d_343_5952539conv2d_343_5952541*
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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_59519742$
"conv2d_343/StatefulPartitionedCall?
/batch_normalization_270/StatefulPartitionedCallStatefulPartitionedCall+conv2d_343/StatefulPartitionedCall:output:0batch_normalization_270_5952544batch_normalization_270_5952546batch_normalization_270_5952548batch_normalization_270_5952550*
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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_595216021
/batch_normalization_270/StatefulPartitionedCall?
 max_pooling2d_59/PartitionedCallPartitionedCall8batch_normalization_270/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_59520112"
 max_pooling2d_59/PartitionedCall?
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_59/PartitionedCall:output:0*
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_59520192
flatten_26/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_56_5952555dense_56_5952557*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_59520322"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_266/StatefulPartitionedCall0^batch_normalization_267/StatefulPartitionedCall0^batch_normalization_268/StatefulPartitionedCall0^batch_normalization_269/StatefulPartitionedCall0^batch_normalization_270/StatefulPartitionedCall#^conv2d_339/StatefulPartitionedCall#^conv2d_340/StatefulPartitionedCall#^conv2d_341/StatefulPartitionedCall#^conv2d_342/StatefulPartitionedCall#^conv2d_343/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_266/StatefulPartitionedCall/batch_normalization_266/StatefulPartitionedCall2b
/batch_normalization_267/StatefulPartitionedCall/batch_normalization_267/StatefulPartitionedCall2b
/batch_normalization_268/StatefulPartitionedCall/batch_normalization_268/StatefulPartitionedCall2b
/batch_normalization_269/StatefulPartitionedCall/batch_normalization_269/StatefulPartitionedCall2b
/batch_normalization_270/StatefulPartitionedCall/batch_normalization_270/StatefulPartitionedCall2H
"conv2d_339/StatefulPartitionedCall"conv2d_339/StatefulPartitionedCall2H
"conv2d_340/StatefulPartitionedCall"conv2d_340/StatefulPartitionedCall2H
"conv2d_341/StatefulPartitionedCall"conv2d_341/StatefulPartitionedCall2H
"conv2d_342/StatefulPartitionedCall"conv2d_342/StatefulPartitionedCall2H
"conv2d_343/StatefulPartitionedCall"conv2d_343/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_5954402
file_prefix<
"assignvariableop_conv2d_339_kernel:`0
"assignvariableop_1_conv2d_339_bias:`>
0assignvariableop_2_batch_normalization_266_gamma:`=
/assignvariableop_3_batch_normalization_266_beta:`D
6assignvariableop_4_batch_normalization_266_moving_mean:`H
:assignvariableop_5_batch_normalization_266_moving_variance:`?
$assignvariableop_6_conv2d_340_kernel:`?1
"assignvariableop_7_conv2d_340_bias:	??
0assignvariableop_8_batch_normalization_267_gamma:	?>
/assignvariableop_9_batch_normalization_267_beta:	?F
7assignvariableop_10_batch_normalization_267_moving_mean:	?J
;assignvariableop_11_batch_normalization_267_moving_variance:	?A
%assignvariableop_12_conv2d_341_kernel:??2
#assignvariableop_13_conv2d_341_bias:	?@
1assignvariableop_14_batch_normalization_268_gamma:	??
0assignvariableop_15_batch_normalization_268_beta:	?F
7assignvariableop_16_batch_normalization_268_moving_mean:	?J
;assignvariableop_17_batch_normalization_268_moving_variance:	?A
%assignvariableop_18_conv2d_342_kernel:??2
#assignvariableop_19_conv2d_342_bias:	?@
1assignvariableop_20_batch_normalization_269_gamma:	??
0assignvariableop_21_batch_normalization_269_beta:	?F
7assignvariableop_22_batch_normalization_269_moving_mean:	?J
;assignvariableop_23_batch_normalization_269_moving_variance:	?A
%assignvariableop_24_conv2d_343_kernel:??2
#assignvariableop_25_conv2d_343_bias:	?@
1assignvariableop_26_batch_normalization_270_gamma:	??
0assignvariableop_27_batch_normalization_270_beta:	?F
7assignvariableop_28_batch_normalization_270_moving_mean:	?J
;assignvariableop_29_batch_normalization_270_moving_variance:	?6
#assignvariableop_30_dense_56_kernel:	?(/
!assignvariableop_31_dense_56_bias:&
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_339_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_339_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_266_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_266_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_266_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_266_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_340_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_340_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_267_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_267_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_267_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_267_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_341_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_341_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_268_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_268_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_268_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_268_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_342_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_342_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_269_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_269_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_269_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_269_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_343_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_343_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_270_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_270_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_270_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_270_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_56_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_56_biasIdentity_31:output:0"/device:CPU:0*
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
G__inference_conv2d_341_layer_call_and_return_conditional_losses_5951886

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
2__inference_max_pooling2d_58_layer_call_fn_5953646

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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_59518732
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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5951859

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
?
N
2__inference_max_pooling2d_57_layer_call_fn_5953477

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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_59512072
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
9__inference_batch_normalization_268_layer_call_fn_5953751

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_59513902
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
,__inference_conv2d_341_layer_call_fn_5953666

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
G__inference_conv2d_341_layer_call_and_return_conditional_losses_59518862
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
?Y
?
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5952863
conv2d_339_input,
conv2d_339_5952783:` 
conv2d_339_5952785:`-
batch_normalization_266_5952788:`-
batch_normalization_266_5952790:`-
batch_normalization_266_5952792:`-
batch_normalization_266_5952794:`-
conv2d_340_5952798:`?!
conv2d_340_5952800:	?.
batch_normalization_267_5952803:	?.
batch_normalization_267_5952805:	?.
batch_normalization_267_5952807:	?.
batch_normalization_267_5952809:	?.
conv2d_341_5952813:??!
conv2d_341_5952815:	?.
batch_normalization_268_5952818:	?.
batch_normalization_268_5952820:	?.
batch_normalization_268_5952822:	?.
batch_normalization_268_5952824:	?.
conv2d_342_5952827:??!
conv2d_342_5952829:	?.
batch_normalization_269_5952832:	?.
batch_normalization_269_5952834:	?.
batch_normalization_269_5952836:	?.
batch_normalization_269_5952838:	?.
conv2d_343_5952841:??!
conv2d_343_5952843:	?.
batch_normalization_270_5952846:	?.
batch_normalization_270_5952848:	?.
batch_normalization_270_5952850:	?.
batch_normalization_270_5952852:	?#
dense_56_5952857:	?(
dense_56_5952859:
identity??/batch_normalization_266/StatefulPartitionedCall?/batch_normalization_267/StatefulPartitionedCall?/batch_normalization_268/StatefulPartitionedCall?/batch_normalization_269/StatefulPartitionedCall?/batch_normalization_270/StatefulPartitionedCall?"conv2d_339/StatefulPartitionedCall?"conv2d_340/StatefulPartitionedCall?"conv2d_341/StatefulPartitionedCall?"conv2d_342/StatefulPartitionedCall?"conv2d_343/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
"conv2d_339/StatefulPartitionedCallStatefulPartitionedCallconv2d_339_inputconv2d_339_5952783conv2d_339_5952785*
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
G__inference_conv2d_339_layer_call_and_return_conditional_losses_59517862$
"conv2d_339/StatefulPartitionedCall?
/batch_normalization_266/StatefulPartitionedCallStatefulPartitionedCall+conv2d_339/StatefulPartitionedCall:output:0batch_normalization_266_5952788batch_normalization_266_5952790batch_normalization_266_5952792batch_normalization_266_5952794*
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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_595238621
/batch_normalization_266/StatefulPartitionedCall?
 max_pooling2d_57/PartitionedCallPartitionedCall8batch_normalization_266/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_59518232"
 max_pooling2d_57/PartitionedCall?
"conv2d_340/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_340_5952798conv2d_340_5952800*
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
G__inference_conv2d_340_layer_call_and_return_conditional_losses_59518362$
"conv2d_340/StatefulPartitionedCall?
/batch_normalization_267/StatefulPartitionedCallStatefulPartitionedCall+conv2d_340/StatefulPartitionedCall:output:0batch_normalization_267_5952803batch_normalization_267_5952805batch_normalization_267_5952807batch_normalization_267_5952809*
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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_595232721
/batch_normalization_267/StatefulPartitionedCall?
 max_pooling2d_58/PartitionedCallPartitionedCall8batch_normalization_267/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_59518732"
 max_pooling2d_58/PartitionedCall?
"conv2d_341/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_341_5952813conv2d_341_5952815*
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
G__inference_conv2d_341_layer_call_and_return_conditional_losses_59518862$
"conv2d_341/StatefulPartitionedCall?
/batch_normalization_268/StatefulPartitionedCallStatefulPartitionedCall+conv2d_341/StatefulPartitionedCall:output:0batch_normalization_268_5952818batch_normalization_268_5952820batch_normalization_268_5952822batch_normalization_268_5952824*
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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_595226821
/batch_normalization_268/StatefulPartitionedCall?
"conv2d_342/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_268/StatefulPartitionedCall:output:0conv2d_342_5952827conv2d_342_5952829*
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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_59519302$
"conv2d_342/StatefulPartitionedCall?
/batch_normalization_269/StatefulPartitionedCallStatefulPartitionedCall+conv2d_342/StatefulPartitionedCall:output:0batch_normalization_269_5952832batch_normalization_269_5952834batch_normalization_269_5952836batch_normalization_269_5952838*
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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_595221421
/batch_normalization_269/StatefulPartitionedCall?
"conv2d_343/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_269/StatefulPartitionedCall:output:0conv2d_343_5952841conv2d_343_5952843*
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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_59519742$
"conv2d_343/StatefulPartitionedCall?
/batch_normalization_270/StatefulPartitionedCallStatefulPartitionedCall+conv2d_343/StatefulPartitionedCall:output:0batch_normalization_270_5952846batch_normalization_270_5952848batch_normalization_270_5952850batch_normalization_270_5952852*
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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_595216021
/batch_normalization_270/StatefulPartitionedCall?
 max_pooling2d_59/PartitionedCallPartitionedCall8batch_normalization_270/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_59520112"
 max_pooling2d_59/PartitionedCall?
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_59/PartitionedCall:output:0*
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_59520192
flatten_26/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_56_5952857dense_56_5952859*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_59520322"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_266/StatefulPartitionedCall0^batch_normalization_267/StatefulPartitionedCall0^batch_normalization_268/StatefulPartitionedCall0^batch_normalization_269/StatefulPartitionedCall0^batch_normalization_270/StatefulPartitionedCall#^conv2d_339/StatefulPartitionedCall#^conv2d_340/StatefulPartitionedCall#^conv2d_341/StatefulPartitionedCall#^conv2d_342/StatefulPartitionedCall#^conv2d_343/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_266/StatefulPartitionedCall/batch_normalization_266/StatefulPartitionedCall2b
/batch_normalization_267/StatefulPartitionedCall/batch_normalization_267/StatefulPartitionedCall2b
/batch_normalization_268/StatefulPartitionedCall/batch_normalization_268/StatefulPartitionedCall2b
/batch_normalization_269/StatefulPartitionedCall/batch_normalization_269/StatefulPartitionedCall2b
/batch_normalization_270/StatefulPartitionedCall/batch_normalization_270/StatefulPartitionedCall2H
"conv2d_339/StatefulPartitionedCall"conv2d_339/StatefulPartitionedCall2H
"conv2d_340/StatefulPartitionedCall"conv2d_340/StatefulPartitionedCall2H
"conv2d_341/StatefulPartitionedCall"conv2d_341/StatefulPartitionedCall2H
"conv2d_342/StatefulPartitionedCall"conv2d_342/StatefulPartitionedCall2H
"conv2d_343/StatefulPartitionedCall"conv2d_343/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_339_input
?	
?
9__inference_batch_normalization_268_layer_call_fn_5953764

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_59514342
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
9__inference_batch_normalization_269_layer_call_fn_5953895

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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_59515162
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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5952160

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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953702

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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5951997

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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5954008

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
?X
?
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5952039

inputs,
conv2d_339_5951787:` 
conv2d_339_5951789:`-
batch_normalization_266_5951810:`-
batch_normalization_266_5951812:`-
batch_normalization_266_5951814:`-
batch_normalization_266_5951816:`-
conv2d_340_5951837:`?!
conv2d_340_5951839:	?.
batch_normalization_267_5951860:	?.
batch_normalization_267_5951862:	?.
batch_normalization_267_5951864:	?.
batch_normalization_267_5951866:	?.
conv2d_341_5951887:??!
conv2d_341_5951889:	?.
batch_normalization_268_5951910:	?.
batch_normalization_268_5951912:	?.
batch_normalization_268_5951914:	?.
batch_normalization_268_5951916:	?.
conv2d_342_5951931:??!
conv2d_342_5951933:	?.
batch_normalization_269_5951954:	?.
batch_normalization_269_5951956:	?.
batch_normalization_269_5951958:	?.
batch_normalization_269_5951960:	?.
conv2d_343_5951975:??!
conv2d_343_5951977:	?.
batch_normalization_270_5951998:	?.
batch_normalization_270_5952000:	?.
batch_normalization_270_5952002:	?.
batch_normalization_270_5952004:	?#
dense_56_5952033:	?(
dense_56_5952035:
identity??/batch_normalization_266/StatefulPartitionedCall?/batch_normalization_267/StatefulPartitionedCall?/batch_normalization_268/StatefulPartitionedCall?/batch_normalization_269/StatefulPartitionedCall?/batch_normalization_270/StatefulPartitionedCall?"conv2d_339/StatefulPartitionedCall?"conv2d_340/StatefulPartitionedCall?"conv2d_341/StatefulPartitionedCall?"conv2d_342/StatefulPartitionedCall?"conv2d_343/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
"conv2d_339/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_339_5951787conv2d_339_5951789*
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
G__inference_conv2d_339_layer_call_and_return_conditional_losses_59517862$
"conv2d_339/StatefulPartitionedCall?
/batch_normalization_266/StatefulPartitionedCallStatefulPartitionedCall+conv2d_339/StatefulPartitionedCall:output:0batch_normalization_266_5951810batch_normalization_266_5951812batch_normalization_266_5951814batch_normalization_266_5951816*
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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_595180921
/batch_normalization_266/StatefulPartitionedCall?
 max_pooling2d_57/PartitionedCallPartitionedCall8batch_normalization_266/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_59518232"
 max_pooling2d_57/PartitionedCall?
"conv2d_340/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_340_5951837conv2d_340_5951839*
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
G__inference_conv2d_340_layer_call_and_return_conditional_losses_59518362$
"conv2d_340/StatefulPartitionedCall?
/batch_normalization_267/StatefulPartitionedCallStatefulPartitionedCall+conv2d_340/StatefulPartitionedCall:output:0batch_normalization_267_5951860batch_normalization_267_5951862batch_normalization_267_5951864batch_normalization_267_5951866*
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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_595185921
/batch_normalization_267/StatefulPartitionedCall?
 max_pooling2d_58/PartitionedCallPartitionedCall8batch_normalization_267/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_59518732"
 max_pooling2d_58/PartitionedCall?
"conv2d_341/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_341_5951887conv2d_341_5951889*
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
G__inference_conv2d_341_layer_call_and_return_conditional_losses_59518862$
"conv2d_341/StatefulPartitionedCall?
/batch_normalization_268/StatefulPartitionedCallStatefulPartitionedCall+conv2d_341/StatefulPartitionedCall:output:0batch_normalization_268_5951910batch_normalization_268_5951912batch_normalization_268_5951914batch_normalization_268_5951916*
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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_595190921
/batch_normalization_268/StatefulPartitionedCall?
"conv2d_342/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_268/StatefulPartitionedCall:output:0conv2d_342_5951931conv2d_342_5951933*
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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_59519302$
"conv2d_342/StatefulPartitionedCall?
/batch_normalization_269/StatefulPartitionedCallStatefulPartitionedCall+conv2d_342/StatefulPartitionedCall:output:0batch_normalization_269_5951954batch_normalization_269_5951956batch_normalization_269_5951958batch_normalization_269_5951960*
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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_595195321
/batch_normalization_269/StatefulPartitionedCall?
"conv2d_343/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_269/StatefulPartitionedCall:output:0conv2d_343_5951975conv2d_343_5951977*
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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_59519742$
"conv2d_343/StatefulPartitionedCall?
/batch_normalization_270/StatefulPartitionedCallStatefulPartitionedCall+conv2d_343/StatefulPartitionedCall:output:0batch_normalization_270_5951998batch_normalization_270_5952000batch_normalization_270_5952002batch_normalization_270_5952004*
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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_595199721
/batch_normalization_270/StatefulPartitionedCall?
 max_pooling2d_59/PartitionedCallPartitionedCall8batch_normalization_270/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_59520112"
 max_pooling2d_59/PartitionedCall?
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_59/PartitionedCall:output:0*
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_59520192
flatten_26/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_56_5952033dense_56_5952035*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_59520322"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_266/StatefulPartitionedCall0^batch_normalization_267/StatefulPartitionedCall0^batch_normalization_268/StatefulPartitionedCall0^batch_normalization_269/StatefulPartitionedCall0^batch_normalization_270/StatefulPartitionedCall#^conv2d_339/StatefulPartitionedCall#^conv2d_340/StatefulPartitionedCall#^conv2d_341/StatefulPartitionedCall#^conv2d_342/StatefulPartitionedCall#^conv2d_343/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_266/StatefulPartitionedCall/batch_normalization_266/StatefulPartitionedCall2b
/batch_normalization_267/StatefulPartitionedCall/batch_normalization_267/StatefulPartitionedCall2b
/batch_normalization_268/StatefulPartitionedCall/batch_normalization_268/StatefulPartitionedCall2b
/batch_normalization_269/StatefulPartitionedCall/batch_normalization_269/StatefulPartitionedCall2b
/batch_normalization_270/StatefulPartitionedCall/batch_normalization_270/StatefulPartitionedCall2H
"conv2d_339/StatefulPartitionedCall"conv2d_339/StatefulPartitionedCall2H
"conv2d_340/StatefulPartitionedCall"conv2d_340/StatefulPartitionedCall2H
"conv2d_341/StatefulPartitionedCall"conv2d_341/StatefulPartitionedCall2H
"conv2d_342/StatefulPartitionedCall"conv2d_342/StatefulPartitionedCall2H
"conv2d_343/StatefulPartitionedCall"conv2d_343/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_dense_56_layer_call_and_return_conditional_losses_5952032

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
N
2__inference_max_pooling2d_59_layer_call_fn_5954098

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
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_59520112
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
G__inference_conv2d_339_layer_call_and_return_conditional_losses_5953329

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953356

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
%__inference_signature_wrapper_5952938
conv2d_339_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_339_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_59510722
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
_user_specified_nameconv2d_339_input
?	
?
9__inference_batch_normalization_266_layer_call_fn_5953423

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_59510942
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
?
i
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_5952011

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
9__inference_batch_normalization_267_layer_call_fn_5953587

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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_59512422
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
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5953180

inputsC
)conv2d_339_conv2d_readvariableop_resource:`8
*conv2d_339_biasadd_readvariableop_resource:`=
/batch_normalization_266_readvariableop_resource:`?
1batch_normalization_266_readvariableop_1_resource:`N
@batch_normalization_266_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_266_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_340_conv2d_readvariableop_resource:`?9
*conv2d_340_biasadd_readvariableop_resource:	?>
/batch_normalization_267_readvariableop_resource:	?@
1batch_normalization_267_readvariableop_1_resource:	?O
@batch_normalization_267_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_267_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_341_conv2d_readvariableop_resource:??9
*conv2d_341_biasadd_readvariableop_resource:	?>
/batch_normalization_268_readvariableop_resource:	?@
1batch_normalization_268_readvariableop_1_resource:	?O
@batch_normalization_268_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_268_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_342_conv2d_readvariableop_resource:??9
*conv2d_342_biasadd_readvariableop_resource:	?>
/batch_normalization_269_readvariableop_resource:	?@
1batch_normalization_269_readvariableop_1_resource:	?O
@batch_normalization_269_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_269_fusedbatchnormv3_readvariableop_1_resource:	?E
)conv2d_343_conv2d_readvariableop_resource:??9
*conv2d_343_biasadd_readvariableop_resource:	?>
/batch_normalization_270_readvariableop_resource:	?@
1batch_normalization_270_readvariableop_1_resource:	?O
@batch_normalization_270_fusedbatchnormv3_readvariableop_resource:	?Q
Bbatch_normalization_270_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_56_matmul_readvariableop_resource:	?(6
(dense_56_biasadd_readvariableop_resource:
identity??&batch_normalization_266/AssignNewValue?(batch_normalization_266/AssignNewValue_1?7batch_normalization_266/FusedBatchNormV3/ReadVariableOp?9batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_266/ReadVariableOp?(batch_normalization_266/ReadVariableOp_1?&batch_normalization_267/AssignNewValue?(batch_normalization_267/AssignNewValue_1?7batch_normalization_267/FusedBatchNormV3/ReadVariableOp?9batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_267/ReadVariableOp?(batch_normalization_267/ReadVariableOp_1?&batch_normalization_268/AssignNewValue?(batch_normalization_268/AssignNewValue_1?7batch_normalization_268/FusedBatchNormV3/ReadVariableOp?9batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_268/ReadVariableOp?(batch_normalization_268/ReadVariableOp_1?&batch_normalization_269/AssignNewValue?(batch_normalization_269/AssignNewValue_1?7batch_normalization_269/FusedBatchNormV3/ReadVariableOp?9batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_269/ReadVariableOp?(batch_normalization_269/ReadVariableOp_1?&batch_normalization_270/AssignNewValue?(batch_normalization_270/AssignNewValue_1?7batch_normalization_270/FusedBatchNormV3/ReadVariableOp?9batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_270/ReadVariableOp?(batch_normalization_270/ReadVariableOp_1?!conv2d_339/BiasAdd/ReadVariableOp? conv2d_339/Conv2D/ReadVariableOp?!conv2d_340/BiasAdd/ReadVariableOp? conv2d_340/Conv2D/ReadVariableOp?!conv2d_341/BiasAdd/ReadVariableOp? conv2d_341/Conv2D/ReadVariableOp?!conv2d_342/BiasAdd/ReadVariableOp? conv2d_342/Conv2D/ReadVariableOp?!conv2d_343/BiasAdd/ReadVariableOp? conv2d_343/Conv2D/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?
 conv2d_339/Conv2D/ReadVariableOpReadVariableOp)conv2d_339_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_339/Conv2D/ReadVariableOp?
conv2d_339/Conv2DConv2Dinputs(conv2d_339/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
conv2d_339/Conv2D?
!conv2d_339/BiasAdd/ReadVariableOpReadVariableOp*conv2d_339_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_339/BiasAdd/ReadVariableOp?
conv2d_339/BiasAddBiasAddconv2d_339/Conv2D:output:0)conv2d_339/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
conv2d_339/BiasAdd?
conv2d_339/ReluReluconv2d_339/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
conv2d_339/Relu?
&batch_normalization_266/ReadVariableOpReadVariableOp/batch_normalization_266_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_266/ReadVariableOp?
(batch_normalization_266/ReadVariableOp_1ReadVariableOp1batch_normalization_266_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_266/ReadVariableOp_1?
7batch_normalization_266/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_266_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_266/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_266_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_266/FusedBatchNormV3FusedBatchNormV3conv2d_339/Relu:activations:0.batch_normalization_266/ReadVariableOp:value:00batch_normalization_266/ReadVariableOp_1:value:0?batch_normalization_266/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_266/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_266/FusedBatchNormV3?
&batch_normalization_266/AssignNewValueAssignVariableOp@batch_normalization_266_fusedbatchnormv3_readvariableop_resource5batch_normalization_266/FusedBatchNormV3:batch_mean:08^batch_normalization_266/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_266/AssignNewValue?
(batch_normalization_266/AssignNewValue_1AssignVariableOpBbatch_normalization_266_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_266/FusedBatchNormV3:batch_variance:0:^batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_266/AssignNewValue_1?
max_pooling2d_57/MaxPoolMaxPool,batch_normalization_266/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_57/MaxPool?
 conv2d_340/Conv2D/ReadVariableOpReadVariableOp)conv2d_340_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02"
 conv2d_340/Conv2D/ReadVariableOp?
conv2d_340/Conv2DConv2D!max_pooling2d_57/MaxPool:output:0(conv2d_340/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
conv2d_340/Conv2D?
!conv2d_340/BiasAdd/ReadVariableOpReadVariableOp*conv2d_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_340/BiasAdd/ReadVariableOp?
conv2d_340/BiasAddBiasAddconv2d_340/Conv2D:output:0)conv2d_340/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
conv2d_340/BiasAdd?
conv2d_340/ReluReluconv2d_340/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
conv2d_340/Relu?
&batch_normalization_267/ReadVariableOpReadVariableOp/batch_normalization_267_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_267/ReadVariableOp?
(batch_normalization_267/ReadVariableOp_1ReadVariableOp1batch_normalization_267_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_267/ReadVariableOp_1?
7batch_normalization_267/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_267_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_267/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_267_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_267/FusedBatchNormV3FusedBatchNormV3conv2d_340/Relu:activations:0.batch_normalization_267/ReadVariableOp:value:00batch_normalization_267/ReadVariableOp_1:value:0?batch_normalization_267/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_267/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_267/FusedBatchNormV3?
&batch_normalization_267/AssignNewValueAssignVariableOp@batch_normalization_267_fusedbatchnormv3_readvariableop_resource5batch_normalization_267/FusedBatchNormV3:batch_mean:08^batch_normalization_267/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_267/AssignNewValue?
(batch_normalization_267/AssignNewValue_1AssignVariableOpBbatch_normalization_267_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_267/FusedBatchNormV3:batch_variance:0:^batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_267/AssignNewValue_1?
max_pooling2d_58/MaxPoolMaxPool,batch_normalization_267/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_58/MaxPool?
 conv2d_341/Conv2D/ReadVariableOpReadVariableOp)conv2d_341_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_341/Conv2D/ReadVariableOp?
conv2d_341/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0(conv2d_341/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_341/Conv2D?
!conv2d_341/BiasAdd/ReadVariableOpReadVariableOp*conv2d_341_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_341/BiasAdd/ReadVariableOp?
conv2d_341/BiasAddBiasAddconv2d_341/Conv2D:output:0)conv2d_341/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_341/BiasAdd?
conv2d_341/ReluReluconv2d_341/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_341/Relu?
&batch_normalization_268/ReadVariableOpReadVariableOp/batch_normalization_268_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_268/ReadVariableOp?
(batch_normalization_268/ReadVariableOp_1ReadVariableOp1batch_normalization_268_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_268/ReadVariableOp_1?
7batch_normalization_268/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_268_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_268/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_268_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_268/FusedBatchNormV3FusedBatchNormV3conv2d_341/Relu:activations:0.batch_normalization_268/ReadVariableOp:value:00batch_normalization_268/ReadVariableOp_1:value:0?batch_normalization_268/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_268/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_268/FusedBatchNormV3?
&batch_normalization_268/AssignNewValueAssignVariableOp@batch_normalization_268_fusedbatchnormv3_readvariableop_resource5batch_normalization_268/FusedBatchNormV3:batch_mean:08^batch_normalization_268/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_268/AssignNewValue?
(batch_normalization_268/AssignNewValue_1AssignVariableOpBbatch_normalization_268_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_268/FusedBatchNormV3:batch_variance:0:^batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_268/AssignNewValue_1?
 conv2d_342/Conv2D/ReadVariableOpReadVariableOp)conv2d_342_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_342/Conv2D/ReadVariableOp?
conv2d_342/Conv2DConv2D,batch_normalization_268/FusedBatchNormV3:y:0(conv2d_342/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_342/Conv2D?
!conv2d_342/BiasAdd/ReadVariableOpReadVariableOp*conv2d_342_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_342/BiasAdd/ReadVariableOp?
conv2d_342/BiasAddBiasAddconv2d_342/Conv2D:output:0)conv2d_342/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_342/BiasAdd?
conv2d_342/ReluReluconv2d_342/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_342/Relu?
&batch_normalization_269/ReadVariableOpReadVariableOp/batch_normalization_269_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_269/ReadVariableOp?
(batch_normalization_269/ReadVariableOp_1ReadVariableOp1batch_normalization_269_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_269/ReadVariableOp_1?
7batch_normalization_269/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_269_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_269/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_269_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_269/FusedBatchNormV3FusedBatchNormV3conv2d_342/Relu:activations:0.batch_normalization_269/ReadVariableOp:value:00batch_normalization_269/ReadVariableOp_1:value:0?batch_normalization_269/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_269/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_269/FusedBatchNormV3?
&batch_normalization_269/AssignNewValueAssignVariableOp@batch_normalization_269_fusedbatchnormv3_readvariableop_resource5batch_normalization_269/FusedBatchNormV3:batch_mean:08^batch_normalization_269/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_269/AssignNewValue?
(batch_normalization_269/AssignNewValue_1AssignVariableOpBbatch_normalization_269_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_269/FusedBatchNormV3:batch_variance:0:^batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_269/AssignNewValue_1?
 conv2d_343/Conv2D/ReadVariableOpReadVariableOp)conv2d_343_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_343/Conv2D/ReadVariableOp?
conv2d_343/Conv2DConv2D,batch_normalization_269/FusedBatchNormV3:y:0(conv2d_343/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_343/Conv2D?
!conv2d_343/BiasAdd/ReadVariableOpReadVariableOp*conv2d_343_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_343/BiasAdd/ReadVariableOp?
conv2d_343/BiasAddBiasAddconv2d_343/Conv2D:output:0)conv2d_343/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_343/BiasAdd?
conv2d_343/ReluReluconv2d_343/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_343/Relu?
&batch_normalization_270/ReadVariableOpReadVariableOp/batch_normalization_270_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_270/ReadVariableOp?
(batch_normalization_270/ReadVariableOp_1ReadVariableOp1batch_normalization_270_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_270/ReadVariableOp_1?
7batch_normalization_270/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_270_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_270/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_270_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_270/FusedBatchNormV3FusedBatchNormV3conv2d_343/Relu:activations:0.batch_normalization_270/ReadVariableOp:value:00batch_normalization_270/ReadVariableOp_1:value:0?batch_normalization_270/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_270/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_270/FusedBatchNormV3?
&batch_normalization_270/AssignNewValueAssignVariableOp@batch_normalization_270_fusedbatchnormv3_readvariableop_resource5batch_normalization_270/FusedBatchNormV3:batch_mean:08^batch_normalization_270/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_270/AssignNewValue?
(batch_normalization_270/AssignNewValue_1AssignVariableOpBbatch_normalization_270_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_270/FusedBatchNormV3:batch_variance:0:^batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_270/AssignNewValue_1?
max_pooling2d_59/MaxPoolMaxPool,batch_normalization_270/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_59/MaxPoolu
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_26/Const?
flatten_26/ReshapeReshape!max_pooling2d_59/MaxPool:output:0flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_26/Reshape?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMulflatten_26/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/BiasAdd|
dense_56/SigmoidSigmoiddense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_56/Sigmoido
IdentityIdentitydense_56/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp'^batch_normalization_266/AssignNewValue)^batch_normalization_266/AssignNewValue_18^batch_normalization_266/FusedBatchNormV3/ReadVariableOp:^batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_266/ReadVariableOp)^batch_normalization_266/ReadVariableOp_1'^batch_normalization_267/AssignNewValue)^batch_normalization_267/AssignNewValue_18^batch_normalization_267/FusedBatchNormV3/ReadVariableOp:^batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_267/ReadVariableOp)^batch_normalization_267/ReadVariableOp_1'^batch_normalization_268/AssignNewValue)^batch_normalization_268/AssignNewValue_18^batch_normalization_268/FusedBatchNormV3/ReadVariableOp:^batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_268/ReadVariableOp)^batch_normalization_268/ReadVariableOp_1'^batch_normalization_269/AssignNewValue)^batch_normalization_269/AssignNewValue_18^batch_normalization_269/FusedBatchNormV3/ReadVariableOp:^batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_269/ReadVariableOp)^batch_normalization_269/ReadVariableOp_1'^batch_normalization_270/AssignNewValue)^batch_normalization_270/AssignNewValue_18^batch_normalization_270/FusedBatchNormV3/ReadVariableOp:^batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_270/ReadVariableOp)^batch_normalization_270/ReadVariableOp_1"^conv2d_339/BiasAdd/ReadVariableOp!^conv2d_339/Conv2D/ReadVariableOp"^conv2d_340/BiasAdd/ReadVariableOp!^conv2d_340/Conv2D/ReadVariableOp"^conv2d_341/BiasAdd/ReadVariableOp!^conv2d_341/Conv2D/ReadVariableOp"^conv2d_342/BiasAdd/ReadVariableOp!^conv2d_342/Conv2D/ReadVariableOp"^conv2d_343/BiasAdd/ReadVariableOp!^conv2d_343/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_266/AssignNewValue&batch_normalization_266/AssignNewValue2T
(batch_normalization_266/AssignNewValue_1(batch_normalization_266/AssignNewValue_12r
7batch_normalization_266/FusedBatchNormV3/ReadVariableOp7batch_normalization_266/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_266/FusedBatchNormV3/ReadVariableOp_19batch_normalization_266/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_266/ReadVariableOp&batch_normalization_266/ReadVariableOp2T
(batch_normalization_266/ReadVariableOp_1(batch_normalization_266/ReadVariableOp_12P
&batch_normalization_267/AssignNewValue&batch_normalization_267/AssignNewValue2T
(batch_normalization_267/AssignNewValue_1(batch_normalization_267/AssignNewValue_12r
7batch_normalization_267/FusedBatchNormV3/ReadVariableOp7batch_normalization_267/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_267/FusedBatchNormV3/ReadVariableOp_19batch_normalization_267/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_267/ReadVariableOp&batch_normalization_267/ReadVariableOp2T
(batch_normalization_267/ReadVariableOp_1(batch_normalization_267/ReadVariableOp_12P
&batch_normalization_268/AssignNewValue&batch_normalization_268/AssignNewValue2T
(batch_normalization_268/AssignNewValue_1(batch_normalization_268/AssignNewValue_12r
7batch_normalization_268/FusedBatchNormV3/ReadVariableOp7batch_normalization_268/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_268/FusedBatchNormV3/ReadVariableOp_19batch_normalization_268/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_268/ReadVariableOp&batch_normalization_268/ReadVariableOp2T
(batch_normalization_268/ReadVariableOp_1(batch_normalization_268/ReadVariableOp_12P
&batch_normalization_269/AssignNewValue&batch_normalization_269/AssignNewValue2T
(batch_normalization_269/AssignNewValue_1(batch_normalization_269/AssignNewValue_12r
7batch_normalization_269/FusedBatchNormV3/ReadVariableOp7batch_normalization_269/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_269/FusedBatchNormV3/ReadVariableOp_19batch_normalization_269/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_269/ReadVariableOp&batch_normalization_269/ReadVariableOp2T
(batch_normalization_269/ReadVariableOp_1(batch_normalization_269/ReadVariableOp_12P
&batch_normalization_270/AssignNewValue&batch_normalization_270/AssignNewValue2T
(batch_normalization_270/AssignNewValue_1(batch_normalization_270/AssignNewValue_12r
7batch_normalization_270/FusedBatchNormV3/ReadVariableOp7batch_normalization_270/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_270/FusedBatchNormV3/ReadVariableOp_19batch_normalization_270/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_270/ReadVariableOp&batch_normalization_270/ReadVariableOp2T
(batch_normalization_270/ReadVariableOp_1(batch_normalization_270/ReadVariableOp_12F
!conv2d_339/BiasAdd/ReadVariableOp!conv2d_339/BiasAdd/ReadVariableOp2D
 conv2d_339/Conv2D/ReadVariableOp conv2d_339/Conv2D/ReadVariableOp2F
!conv2d_340/BiasAdd/ReadVariableOp!conv2d_340/BiasAdd/ReadVariableOp2D
 conv2d_340/Conv2D/ReadVariableOp conv2d_340/Conv2D/ReadVariableOp2F
!conv2d_341/BiasAdd/ReadVariableOp!conv2d_341/BiasAdd/ReadVariableOp2D
 conv2d_341/Conv2D/ReadVariableOp conv2d_341/Conv2D/ReadVariableOp2F
!conv2d_342/BiasAdd/ReadVariableOp!conv2d_342/BiasAdd/ReadVariableOp2D
 conv2d_342/Conv2D/ReadVariableOp conv2d_342/Conv2D/ReadVariableOp2F
!conv2d_343/BiasAdd/ReadVariableOp!conv2d_343/BiasAdd/ReadVariableOp2D
 conv2d_343/Conv2D/ReadVariableOp conv2d_343/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_59_layer_call_fn_5954093

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
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_59517552
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
c
G__inference_flatten_26_layer_call_and_return_conditional_losses_5952019

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
?"
"__inference__wrapped_model_5951072
conv2d_339_inputN
4alex_net_9_conv2d_339_conv2d_readvariableop_resource:`C
5alex_net_9_conv2d_339_biasadd_readvariableop_resource:`H
:alex_net_9_batch_normalization_266_readvariableop_resource:`J
<alex_net_9_batch_normalization_266_readvariableop_1_resource:`Y
Kalex_net_9_batch_normalization_266_fusedbatchnormv3_readvariableop_resource:`[
Malex_net_9_batch_normalization_266_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_9_conv2d_340_conv2d_readvariableop_resource:`?D
5alex_net_9_conv2d_340_biasadd_readvariableop_resource:	?I
:alex_net_9_batch_normalization_267_readvariableop_resource:	?K
<alex_net_9_batch_normalization_267_readvariableop_1_resource:	?Z
Kalex_net_9_batch_normalization_267_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_9_batch_normalization_267_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_9_conv2d_341_conv2d_readvariableop_resource:??D
5alex_net_9_conv2d_341_biasadd_readvariableop_resource:	?I
:alex_net_9_batch_normalization_268_readvariableop_resource:	?K
<alex_net_9_batch_normalization_268_readvariableop_1_resource:	?Z
Kalex_net_9_batch_normalization_268_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_9_batch_normalization_268_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_9_conv2d_342_conv2d_readvariableop_resource:??D
5alex_net_9_conv2d_342_biasadd_readvariableop_resource:	?I
:alex_net_9_batch_normalization_269_readvariableop_resource:	?K
<alex_net_9_batch_normalization_269_readvariableop_1_resource:	?Z
Kalex_net_9_batch_normalization_269_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_9_batch_normalization_269_fusedbatchnormv3_readvariableop_1_resource:	?P
4alex_net_9_conv2d_343_conv2d_readvariableop_resource:??D
5alex_net_9_conv2d_343_biasadd_readvariableop_resource:	?I
:alex_net_9_batch_normalization_270_readvariableop_resource:	?K
<alex_net_9_batch_normalization_270_readvariableop_1_resource:	?Z
Kalex_net_9_batch_normalization_270_fusedbatchnormv3_readvariableop_resource:	?\
Malex_net_9_batch_normalization_270_fusedbatchnormv3_readvariableop_1_resource:	?E
2alex_net_9_dense_56_matmul_readvariableop_resource:	?(A
3alex_net_9_dense_56_biasadd_readvariableop_resource:
identity??Balex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_266/ReadVariableOp?3alex_net_9/batch_normalization_266/ReadVariableOp_1?Balex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_267/ReadVariableOp?3alex_net_9/batch_normalization_267/ReadVariableOp_1?Balex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_268/ReadVariableOp?3alex_net_9/batch_normalization_268/ReadVariableOp_1?Balex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_269/ReadVariableOp?3alex_net_9/batch_normalization_269/ReadVariableOp_1?Balex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp?Dalex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1?1alex_net_9/batch_normalization_270/ReadVariableOp?3alex_net_9/batch_normalization_270/ReadVariableOp_1?,alex_net_9/conv2d_339/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_339/Conv2D/ReadVariableOp?,alex_net_9/conv2d_340/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_340/Conv2D/ReadVariableOp?,alex_net_9/conv2d_341/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_341/Conv2D/ReadVariableOp?,alex_net_9/conv2d_342/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_342/Conv2D/ReadVariableOp?,alex_net_9/conv2d_343/BiasAdd/ReadVariableOp?+alex_net_9/conv2d_343/Conv2D/ReadVariableOp?*alex_net_9/dense_56/BiasAdd/ReadVariableOp?)alex_net_9/dense_56/MatMul/ReadVariableOp?
+alex_net_9/conv2d_339/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_339_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_9/conv2d_339/Conv2D/ReadVariableOp?
alex_net_9/conv2d_339/Conv2DConv2Dconv2d_339_input3alex_net_9/conv2d_339/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`*
paddingVALID*
strides
2
alex_net_9/conv2d_339/Conv2D?
,alex_net_9/conv2d_339/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_339_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_9/conv2d_339/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_339/BiasAddBiasAdd%alex_net_9/conv2d_339/Conv2D:output:04alex_net_9/conv2d_339/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[`2
alex_net_9/conv2d_339/BiasAdd?
alex_net_9/conv2d_339/ReluRelu&alex_net_9/conv2d_339/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[`2
alex_net_9/conv2d_339/Relu?
1alex_net_9/batch_normalization_266/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_266_readvariableop_resource*
_output_shapes
:`*
dtype023
1alex_net_9/batch_normalization_266/ReadVariableOp?
3alex_net_9/batch_normalization_266/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_266_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3alex_net_9/batch_normalization_266/ReadVariableOp_1?
Balex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_266_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02D
Balex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_266_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02F
Dalex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_266/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_339/Relu:activations:09alex_net_9/batch_normalization_266/ReadVariableOp:value:0;alex_net_9/batch_normalization_266/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????[`:`:`:`:`:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_266/FusedBatchNormV3?
#alex_net_9/max_pooling2d_57/MaxPoolMaxPool7alex_net_9/batch_normalization_266/FusedBatchNormV3:y:0*/
_output_shapes
:?????????-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_9/max_pooling2d_57/MaxPool?
+alex_net_9/conv2d_340/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_340_conv2d_readvariableop_resource*'
_output_shapes
:`?*
dtype02-
+alex_net_9/conv2d_340/Conv2D/ReadVariableOp?
alex_net_9/conv2d_340/Conv2DConv2D,alex_net_9/max_pooling2d_57/MaxPool:output:03alex_net_9/conv2d_340/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?*
paddingSAME*
strides
2
alex_net_9/conv2d_340/Conv2D?
,alex_net_9/conv2d_340/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_9/conv2d_340/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_340/BiasAddBiasAdd%alex_net_9/conv2d_340/Conv2D:output:04alex_net_9/conv2d_340/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????-?2
alex_net_9/conv2d_340/BiasAdd?
alex_net_9/conv2d_340/ReluRelu&alex_net_9/conv2d_340/BiasAdd:output:0*
T0*0
_output_shapes
:?????????-?2
alex_net_9/conv2d_340/Relu?
1alex_net_9/batch_normalization_267/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_267_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_9/batch_normalization_267/ReadVariableOp?
3alex_net_9/batch_normalization_267/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_267_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_9/batch_normalization_267/ReadVariableOp_1?
Balex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_267_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_267_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_267/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_340/Relu:activations:09alex_net_9/batch_normalization_267/ReadVariableOp:value:0;alex_net_9/batch_normalization_267/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????-?:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_267/FusedBatchNormV3?
#alex_net_9/max_pooling2d_58/MaxPoolMaxPool7alex_net_9/batch_normalization_267/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#alex_net_9/max_pooling2d_58/MaxPool?
+alex_net_9/conv2d_341/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_341_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_9/conv2d_341/Conv2D/ReadVariableOp?
alex_net_9/conv2d_341/Conv2DConv2D,alex_net_9/max_pooling2d_58/MaxPool:output:03alex_net_9/conv2d_341/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_9/conv2d_341/Conv2D?
,alex_net_9/conv2d_341/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_341_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_9/conv2d_341/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_341/BiasAddBiasAdd%alex_net_9/conv2d_341/Conv2D:output:04alex_net_9/conv2d_341/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_341/BiasAdd?
alex_net_9/conv2d_341/ReluRelu&alex_net_9/conv2d_341/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_341/Relu?
1alex_net_9/batch_normalization_268/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_268_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_9/batch_normalization_268/ReadVariableOp?
3alex_net_9/batch_normalization_268/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_268_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_9/batch_normalization_268/ReadVariableOp_1?
Balex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_268_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_268_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_268/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_341/Relu:activations:09alex_net_9/batch_normalization_268/ReadVariableOp:value:0;alex_net_9/batch_normalization_268/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_268/FusedBatchNormV3?
+alex_net_9/conv2d_342/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_342_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_9/conv2d_342/Conv2D/ReadVariableOp?
alex_net_9/conv2d_342/Conv2DConv2D7alex_net_9/batch_normalization_268/FusedBatchNormV3:y:03alex_net_9/conv2d_342/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_9/conv2d_342/Conv2D?
,alex_net_9/conv2d_342/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_342_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_9/conv2d_342/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_342/BiasAddBiasAdd%alex_net_9/conv2d_342/Conv2D:output:04alex_net_9/conv2d_342/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_342/BiasAdd?
alex_net_9/conv2d_342/ReluRelu&alex_net_9/conv2d_342/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_342/Relu?
1alex_net_9/batch_normalization_269/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_269_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_9/batch_normalization_269/ReadVariableOp?
3alex_net_9/batch_normalization_269/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_269_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_9/batch_normalization_269/ReadVariableOp_1?
Balex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_269_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_269_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_269/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_342/Relu:activations:09alex_net_9/batch_normalization_269/ReadVariableOp:value:0;alex_net_9/batch_normalization_269/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_269/FusedBatchNormV3?
+alex_net_9/conv2d_343/Conv2D/ReadVariableOpReadVariableOp4alex_net_9_conv2d_343_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+alex_net_9/conv2d_343/Conv2D/ReadVariableOp?
alex_net_9/conv2d_343/Conv2DConv2D7alex_net_9/batch_normalization_269/FusedBatchNormV3:y:03alex_net_9/conv2d_343/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
alex_net_9/conv2d_343/Conv2D?
,alex_net_9/conv2d_343/BiasAdd/ReadVariableOpReadVariableOp5alex_net_9_conv2d_343_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,alex_net_9/conv2d_343/BiasAdd/ReadVariableOp?
alex_net_9/conv2d_343/BiasAddBiasAdd%alex_net_9/conv2d_343/Conv2D:output:04alex_net_9/conv2d_343/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_343/BiasAdd?
alex_net_9/conv2d_343/ReluRelu&alex_net_9/conv2d_343/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
alex_net_9/conv2d_343/Relu?
1alex_net_9/batch_normalization_270/ReadVariableOpReadVariableOp:alex_net_9_batch_normalization_270_readvariableop_resource*
_output_shapes	
:?*
dtype023
1alex_net_9/batch_normalization_270/ReadVariableOp?
3alex_net_9/batch_normalization_270/ReadVariableOp_1ReadVariableOp<alex_net_9_batch_normalization_270_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3alex_net_9/batch_normalization_270/ReadVariableOp_1?
Balex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_9_batch_normalization_270_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Balex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp?
Dalex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_9_batch_normalization_270_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dalex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1?
3alex_net_9/batch_normalization_270/FusedBatchNormV3FusedBatchNormV3(alex_net_9/conv2d_343/Relu:activations:09alex_net_9/batch_normalization_270/ReadVariableOp:value:0;alex_net_9/batch_normalization_270/ReadVariableOp_1:value:0Jalex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3alex_net_9/batch_normalization_270/FusedBatchNormV3?
#alex_net_9/max_pooling2d_59/MaxPoolMaxPool7alex_net_9/batch_normalization_270/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
ksize
*
paddingVALID*
strides
2%
#alex_net_9/max_pooling2d_59/MaxPool?
alex_net_9/flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
alex_net_9/flatten_26/Const?
alex_net_9/flatten_26/ReshapeReshape,alex_net_9/max_pooling2d_59/MaxPool:output:0$alex_net_9/flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????(2
alex_net_9/flatten_26/Reshape?
)alex_net_9/dense_56/MatMul/ReadVariableOpReadVariableOp2alex_net_9_dense_56_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02+
)alex_net_9/dense_56/MatMul/ReadVariableOp?
alex_net_9/dense_56/MatMulMatMul&alex_net_9/flatten_26/Reshape:output:01alex_net_9/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_9/dense_56/MatMul?
*alex_net_9/dense_56/BiasAdd/ReadVariableOpReadVariableOp3alex_net_9_dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_9/dense_56/BiasAdd/ReadVariableOp?
alex_net_9/dense_56/BiasAddBiasAdd$alex_net_9/dense_56/MatMul:product:02alex_net_9/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
alex_net_9/dense_56/BiasAdd?
alex_net_9/dense_56/SigmoidSigmoid$alex_net_9/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
alex_net_9/dense_56/Sigmoidz
IdentityIdentityalex_net_9/dense_56/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpC^alex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_266/ReadVariableOp4^alex_net_9/batch_normalization_266/ReadVariableOp_1C^alex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_267/ReadVariableOp4^alex_net_9/batch_normalization_267/ReadVariableOp_1C^alex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_268/ReadVariableOp4^alex_net_9/batch_normalization_268/ReadVariableOp_1C^alex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_269/ReadVariableOp4^alex_net_9/batch_normalization_269/ReadVariableOp_1C^alex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOpE^alex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp_12^alex_net_9/batch_normalization_270/ReadVariableOp4^alex_net_9/batch_normalization_270/ReadVariableOp_1-^alex_net_9/conv2d_339/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_339/Conv2D/ReadVariableOp-^alex_net_9/conv2d_340/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_340/Conv2D/ReadVariableOp-^alex_net_9/conv2d_341/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_341/Conv2D/ReadVariableOp-^alex_net_9/conv2d_342/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_342/Conv2D/ReadVariableOp-^alex_net_9/conv2d_343/BiasAdd/ReadVariableOp,^alex_net_9/conv2d_343/Conv2D/ReadVariableOp+^alex_net_9/dense_56/BiasAdd/ReadVariableOp*^alex_net_9/dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Balex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_266/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_266/ReadVariableOp1alex_net_9/batch_normalization_266/ReadVariableOp2j
3alex_net_9/batch_normalization_266/ReadVariableOp_13alex_net_9/batch_normalization_266/ReadVariableOp_12?
Balex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_267/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_267/ReadVariableOp1alex_net_9/batch_normalization_267/ReadVariableOp2j
3alex_net_9/batch_normalization_267/ReadVariableOp_13alex_net_9/batch_normalization_267/ReadVariableOp_12?
Balex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_268/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_268/ReadVariableOp1alex_net_9/batch_normalization_268/ReadVariableOp2j
3alex_net_9/batch_normalization_268/ReadVariableOp_13alex_net_9/batch_normalization_268/ReadVariableOp_12?
Balex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_269/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_269/ReadVariableOp1alex_net_9/batch_normalization_269/ReadVariableOp2j
3alex_net_9/batch_normalization_269/ReadVariableOp_13alex_net_9/batch_normalization_269/ReadVariableOp_12?
Balex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOpBalex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp2?
Dalex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp_1Dalex_net_9/batch_normalization_270/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_9/batch_normalization_270/ReadVariableOp1alex_net_9/batch_normalization_270/ReadVariableOp2j
3alex_net_9/batch_normalization_270/ReadVariableOp_13alex_net_9/batch_normalization_270/ReadVariableOp_12\
,alex_net_9/conv2d_339/BiasAdd/ReadVariableOp,alex_net_9/conv2d_339/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_339/Conv2D/ReadVariableOp+alex_net_9/conv2d_339/Conv2D/ReadVariableOp2\
,alex_net_9/conv2d_340/BiasAdd/ReadVariableOp,alex_net_9/conv2d_340/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_340/Conv2D/ReadVariableOp+alex_net_9/conv2d_340/Conv2D/ReadVariableOp2\
,alex_net_9/conv2d_341/BiasAdd/ReadVariableOp,alex_net_9/conv2d_341/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_341/Conv2D/ReadVariableOp+alex_net_9/conv2d_341/Conv2D/ReadVariableOp2\
,alex_net_9/conv2d_342/BiasAdd/ReadVariableOp,alex_net_9/conv2d_342/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_342/Conv2D/ReadVariableOp+alex_net_9/conv2d_342/Conv2D/ReadVariableOp2\
,alex_net_9/conv2d_343/BiasAdd/ReadVariableOp,alex_net_9/conv2d_343/BiasAdd/ReadVariableOp2Z
+alex_net_9/conv2d_343/Conv2D/ReadVariableOp+alex_net_9/conv2d_343/Conv2D/ReadVariableOp2X
*alex_net_9/dense_56/BiasAdd/ReadVariableOp*alex_net_9/dense_56/BiasAdd/ReadVariableOp2V
)alex_net_9/dense_56/MatMul/ReadVariableOp)alex_net_9/dense_56/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_339_input
?	
?
9__inference_batch_normalization_269_layer_call_fn_5953934

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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_59522142
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
,__inference_conv2d_343_layer_call_fn_5953954

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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_59519742
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
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_5951755

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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5953972

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
E__inference_dense_56_layer_call_and_return_conditional_losses_5954120

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
,__inference_alex_net_9_layer_call_fn_5953249

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
G__inference_alex_net_9_layer_call_and_return_conditional_losses_59520392
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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5951094

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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_5951207

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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5951686

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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5951516

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953410

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
?
?
,__inference_conv2d_342_layer_call_fn_5953810

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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_59519302
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
?
i
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_5954083

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
?Y
?
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5952780
conv2d_339_input,
conv2d_339_5952700:` 
conv2d_339_5952702:`-
batch_normalization_266_5952705:`-
batch_normalization_266_5952707:`-
batch_normalization_266_5952709:`-
batch_normalization_266_5952711:`-
conv2d_340_5952715:`?!
conv2d_340_5952717:	?.
batch_normalization_267_5952720:	?.
batch_normalization_267_5952722:	?.
batch_normalization_267_5952724:	?.
batch_normalization_267_5952726:	?.
conv2d_341_5952730:??!
conv2d_341_5952732:	?.
batch_normalization_268_5952735:	?.
batch_normalization_268_5952737:	?.
batch_normalization_268_5952739:	?.
batch_normalization_268_5952741:	?.
conv2d_342_5952744:??!
conv2d_342_5952746:	?.
batch_normalization_269_5952749:	?.
batch_normalization_269_5952751:	?.
batch_normalization_269_5952753:	?.
batch_normalization_269_5952755:	?.
conv2d_343_5952758:??!
conv2d_343_5952760:	?.
batch_normalization_270_5952763:	?.
batch_normalization_270_5952765:	?.
batch_normalization_270_5952767:	?.
batch_normalization_270_5952769:	?#
dense_56_5952774:	?(
dense_56_5952776:
identity??/batch_normalization_266/StatefulPartitionedCall?/batch_normalization_267/StatefulPartitionedCall?/batch_normalization_268/StatefulPartitionedCall?/batch_normalization_269/StatefulPartitionedCall?/batch_normalization_270/StatefulPartitionedCall?"conv2d_339/StatefulPartitionedCall?"conv2d_340/StatefulPartitionedCall?"conv2d_341/StatefulPartitionedCall?"conv2d_342/StatefulPartitionedCall?"conv2d_343/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
"conv2d_339/StatefulPartitionedCallStatefulPartitionedCallconv2d_339_inputconv2d_339_5952700conv2d_339_5952702*
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
G__inference_conv2d_339_layer_call_and_return_conditional_losses_59517862$
"conv2d_339/StatefulPartitionedCall?
/batch_normalization_266/StatefulPartitionedCallStatefulPartitionedCall+conv2d_339/StatefulPartitionedCall:output:0batch_normalization_266_5952705batch_normalization_266_5952707batch_normalization_266_5952709batch_normalization_266_5952711*
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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_595180921
/batch_normalization_266/StatefulPartitionedCall?
 max_pooling2d_57/PartitionedCallPartitionedCall8batch_normalization_266/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_59518232"
 max_pooling2d_57/PartitionedCall?
"conv2d_340/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_340_5952715conv2d_340_5952717*
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
G__inference_conv2d_340_layer_call_and_return_conditional_losses_59518362$
"conv2d_340/StatefulPartitionedCall?
/batch_normalization_267/StatefulPartitionedCallStatefulPartitionedCall+conv2d_340/StatefulPartitionedCall:output:0batch_normalization_267_5952720batch_normalization_267_5952722batch_normalization_267_5952724batch_normalization_267_5952726*
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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_595185921
/batch_normalization_267/StatefulPartitionedCall?
 max_pooling2d_58/PartitionedCallPartitionedCall8batch_normalization_267/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_59518732"
 max_pooling2d_58/PartitionedCall?
"conv2d_341/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_341_5952730conv2d_341_5952732*
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
G__inference_conv2d_341_layer_call_and_return_conditional_losses_59518862$
"conv2d_341/StatefulPartitionedCall?
/batch_normalization_268/StatefulPartitionedCallStatefulPartitionedCall+conv2d_341/StatefulPartitionedCall:output:0batch_normalization_268_5952735batch_normalization_268_5952737batch_normalization_268_5952739batch_normalization_268_5952741*
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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_595190921
/batch_normalization_268/StatefulPartitionedCall?
"conv2d_342/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_268/StatefulPartitionedCall:output:0conv2d_342_5952744conv2d_342_5952746*
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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_59519302$
"conv2d_342/StatefulPartitionedCall?
/batch_normalization_269/StatefulPartitionedCallStatefulPartitionedCall+conv2d_342/StatefulPartitionedCall:output:0batch_normalization_269_5952749batch_normalization_269_5952751batch_normalization_269_5952753batch_normalization_269_5952755*
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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_595195321
/batch_normalization_269/StatefulPartitionedCall?
"conv2d_343/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_269/StatefulPartitionedCall:output:0conv2d_343_5952758conv2d_343_5952760*
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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_59519742$
"conv2d_343/StatefulPartitionedCall?
/batch_normalization_270/StatefulPartitionedCallStatefulPartitionedCall+conv2d_343/StatefulPartitionedCall:output:0batch_normalization_270_5952763batch_normalization_270_5952765batch_normalization_270_5952767batch_normalization_270_5952769*
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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_595199721
/batch_normalization_270/StatefulPartitionedCall?
 max_pooling2d_59/PartitionedCallPartitionedCall8batch_normalization_270/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_59520112"
 max_pooling2d_59/PartitionedCall?
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_59/PartitionedCall:output:0*
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_59520192
flatten_26/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_56_5952774dense_56_5952776*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_59520322"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^batch_normalization_266/StatefulPartitionedCall0^batch_normalization_267/StatefulPartitionedCall0^batch_normalization_268/StatefulPartitionedCall0^batch_normalization_269/StatefulPartitionedCall0^batch_normalization_270/StatefulPartitionedCall#^conv2d_339/StatefulPartitionedCall#^conv2d_340/StatefulPartitionedCall#^conv2d_341/StatefulPartitionedCall#^conv2d_342/StatefulPartitionedCall#^conv2d_343/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_266/StatefulPartitionedCall/batch_normalization_266/StatefulPartitionedCall2b
/batch_normalization_267/StatefulPartitionedCall/batch_normalization_267/StatefulPartitionedCall2b
/batch_normalization_268/StatefulPartitionedCall/batch_normalization_268/StatefulPartitionedCall2b
/batch_normalization_269/StatefulPartitionedCall/batch_normalization_269/StatefulPartitionedCall2b
/batch_normalization_270/StatefulPartitionedCall/batch_normalization_270/StatefulPartitionedCall2H
"conv2d_339/StatefulPartitionedCall"conv2d_339/StatefulPartitionedCall2H
"conv2d_340/StatefulPartitionedCall"conv2d_340/StatefulPartitionedCall2H
"conv2d_341/StatefulPartitionedCall"conv2d_341/StatefulPartitionedCall2H
"conv2d_342/StatefulPartitionedCall"conv2d_342/StatefulPartitionedCall2H
"conv2d_343/StatefulPartitionedCall"conv2d_343/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_339_input
?
?
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953684

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
9__inference_batch_normalization_269_layer_call_fn_5953908

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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_59515602
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
9__inference_batch_normalization_270_layer_call_fn_5954078

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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_59521602
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
i
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_5951823

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
,__inference_alex_net_9_layer_call_fn_5952697
conv2d_339_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_339_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_9_layer_call_and_return_conditional_losses_59525612
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
_user_specified_nameconv2d_339_input
?
?
,__inference_alex_net_9_layer_call_fn_5952106
conv2d_339_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_339_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
G__inference_alex_net_9_layer_call_and_return_conditional_losses_59520392
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
_user_specified_nameconv2d_339_input
?
?
9__inference_batch_normalization_266_layer_call_fn_5953462

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_59523862
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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5951434

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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_5951355

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
9__inference_batch_normalization_267_layer_call_fn_5953613

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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_59518592
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
9__inference_batch_normalization_270_layer_call_fn_5954052

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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_59516862
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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5951242

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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953882

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
9__inference_batch_normalization_267_layer_call_fn_5953600

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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_59512862
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
G__inference_conv2d_341_layer_call_and_return_conditional_losses_5953657

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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953374

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
?
?
*__inference_dense_56_layer_call_fn_5954129

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
E__inference_dense_56_layer_call_and_return_conditional_losses_59520322
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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_5953467

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
conv2d_339_inputC
"serving_default_conv2d_339_input:0???????????<
dense_560
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
+:)`2conv2d_339/kernel
:`2conv2d_339/bias
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
+:)`2batch_normalization_266/gamma
*:(`2batch_normalization_266/beta
3:1` (2#batch_normalization_266/moving_mean
7:5` (2'batch_normalization_266/moving_variance
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
,:*`?2conv2d_340/kernel
:?2conv2d_340/bias
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
,:*?2batch_normalization_267/gamma
+:)?2batch_normalization_267/beta
4:2? (2#batch_normalization_267/moving_mean
8:6? (2'batch_normalization_267/moving_variance
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
-:+??2conv2d_341/kernel
:?2conv2d_341/bias
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
,:*?2batch_normalization_268/gamma
+:)?2batch_normalization_268/beta
4:2? (2#batch_normalization_268/moving_mean
8:6? (2'batch_normalization_268/moving_variance
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
-:+??2conv2d_342/kernel
:?2conv2d_342/bias
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
,:*?2batch_normalization_269/gamma
+:)?2batch_normalization_269/beta
4:2? (2#batch_normalization_269/moving_mean
8:6? (2'batch_normalization_269/moving_variance
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
-:+??2conv2d_343/kernel
:?2conv2d_343/bias
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
,:*?2batch_normalization_270/gamma
+:)?2batch_normalization_270/beta
4:2? (2#batch_normalization_270/moving_mean
8:6? (2'batch_normalization_270/moving_variance
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
": 	?(2dense_56/kernel
:2dense_56/bias
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
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5953059
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5953180
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5952780
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5952863?
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
"__inference__wrapped_model_5951072conv2d_339_input"?
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
,__inference_alex_net_9_layer_call_fn_5952106
,__inference_alex_net_9_layer_call_fn_5953249
,__inference_alex_net_9_layer_call_fn_5953318
,__inference_alex_net_9_layer_call_fn_5952697?
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
G__inference_conv2d_339_layer_call_and_return_conditional_losses_5953329?
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
,__inference_conv2d_339_layer_call_fn_5953338?
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
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953356
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953374
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953392
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953410?
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
9__inference_batch_normalization_266_layer_call_fn_5953423
9__inference_batch_normalization_266_layer_call_fn_5953436
9__inference_batch_normalization_266_layer_call_fn_5953449
9__inference_batch_normalization_266_layer_call_fn_5953462?
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
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_5953467
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_5953472?
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
2__inference_max_pooling2d_57_layer_call_fn_5953477
2__inference_max_pooling2d_57_layer_call_fn_5953482?
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
G__inference_conv2d_340_layer_call_and_return_conditional_losses_5953493?
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
,__inference_conv2d_340_layer_call_fn_5953502?
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
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953520
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953538
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953556
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953574?
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
9__inference_batch_normalization_267_layer_call_fn_5953587
9__inference_batch_normalization_267_layer_call_fn_5953600
9__inference_batch_normalization_267_layer_call_fn_5953613
9__inference_batch_normalization_267_layer_call_fn_5953626?
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
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_5953631
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_5953636?
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
2__inference_max_pooling2d_58_layer_call_fn_5953641
2__inference_max_pooling2d_58_layer_call_fn_5953646?
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
G__inference_conv2d_341_layer_call_and_return_conditional_losses_5953657?
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
,__inference_conv2d_341_layer_call_fn_5953666?
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
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953684
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953702
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953720
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953738?
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
9__inference_batch_normalization_268_layer_call_fn_5953751
9__inference_batch_normalization_268_layer_call_fn_5953764
9__inference_batch_normalization_268_layer_call_fn_5953777
9__inference_batch_normalization_268_layer_call_fn_5953790?
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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_5953801?
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
,__inference_conv2d_342_layer_call_fn_5953810?
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
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953828
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953846
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953864
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953882?
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
9__inference_batch_normalization_269_layer_call_fn_5953895
9__inference_batch_normalization_269_layer_call_fn_5953908
9__inference_batch_normalization_269_layer_call_fn_5953921
9__inference_batch_normalization_269_layer_call_fn_5953934?
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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_5953945?
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
,__inference_conv2d_343_layer_call_fn_5953954?
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
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5953972
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5953990
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5954008
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5954026?
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
9__inference_batch_normalization_270_layer_call_fn_5954039
9__inference_batch_normalization_270_layer_call_fn_5954052
9__inference_batch_normalization_270_layer_call_fn_5954065
9__inference_batch_normalization_270_layer_call_fn_5954078?
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
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_5954083
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_5954088?
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
2__inference_max_pooling2d_59_layer_call_fn_5954093
2__inference_max_pooling2d_59_layer_call_fn_5954098?
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
G__inference_flatten_26_layer_call_and_return_conditional_losses_5954104?
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
,__inference_flatten_26_layer_call_fn_5954109?
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
E__inference_dense_56_layer_call_and_return_conditional_losses_5954120?
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
*__inference_dense_56_layer_call_fn_5954129?
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
%__inference_signature_wrapper_5952938conv2d_339_input"?
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
"__inference__wrapped_model_5951072?  )*0123<=CDEFKLRSTUZ[abcdqrC?@
9?6
4?1
conv2d_339_input???????????
? "3?0
.
dense_56"?
dense_56??????????
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5952780?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_339_input???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5952863?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_339_input???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5953059?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
G__inference_alex_net_9_layer_call_and_return_conditional_losses_5953180?  )*0123<=CDEFKLRSTUZ[abcdqrA?>
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
,__inference_alex_net_9_layer_call_fn_5952106?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_339_input???????????
p 

 
? "???????????
,__inference_alex_net_9_layer_call_fn_5952697?  )*0123<=CDEFKLRSTUZ[abcdqrK?H
A?>
4?1
conv2d_339_input???????????
p

 
? "???????????
,__inference_alex_net_9_layer_call_fn_5953249  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_alex_net_9_layer_call_fn_5953318  )*0123<=CDEFKLRSTUZ[abcdqrA?>
7?4
*?'
inputs???????????
p

 
? "???????????
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953356? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953374? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953392r ;?8
1?.
(?%
inputs?????????[`
p 
? "-?*
#? 
0?????????[`
? ?
T__inference_batch_normalization_266_layer_call_and_return_conditional_losses_5953410r ;?8
1?.
(?%
inputs?????????[`
p
? "-?*
#? 
0?????????[`
? ?
9__inference_batch_normalization_266_layer_call_fn_5953423? M?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
9__inference_batch_normalization_266_layer_call_fn_5953436? M?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
9__inference_batch_normalization_266_layer_call_fn_5953449e ;?8
1?.
(?%
inputs?????????[`
p 
? " ??????????[`?
9__inference_batch_normalization_266_layer_call_fn_5953462e ;?8
1?.
(?%
inputs?????????[`
p
? " ??????????[`?
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953520?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953538?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953556t0123<?9
2?/
)?&
inputs?????????-?
p 
? ".?+
$?!
0?????????-?
? ?
T__inference_batch_normalization_267_layer_call_and_return_conditional_losses_5953574t0123<?9
2?/
)?&
inputs?????????-?
p
? ".?+
$?!
0?????????-?
? ?
9__inference_batch_normalization_267_layer_call_fn_5953587?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_267_layer_call_fn_5953600?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_267_layer_call_fn_5953613g0123<?9
2?/
)?&
inputs?????????-?
p 
? "!??????????-??
9__inference_batch_normalization_267_layer_call_fn_5953626g0123<?9
2?/
)?&
inputs?????????-?
p
? "!??????????-??
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953684?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953702?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953720tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_268_layer_call_and_return_conditional_losses_5953738tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_268_layer_call_fn_5953751?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_268_layer_call_fn_5953764?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_268_layer_call_fn_5953777gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_268_layer_call_fn_5953790gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953828?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953846?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953864tRSTU<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_269_layer_call_and_return_conditional_losses_5953882tRSTU<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_269_layer_call_fn_5953895?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_269_layer_call_fn_5953908?RSTUN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_269_layer_call_fn_5953921gRSTU<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_269_layer_call_fn_5953934gRSTU<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5953972?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5953990?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5954008tabcd<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_270_layer_call_and_return_conditional_losses_5954026tabcd<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_270_layer_call_fn_5954039?abcdN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_270_layer_call_fn_5954052?abcdN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_270_layer_call_fn_5954065gabcd<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_270_layer_call_fn_5954078gabcd<?9
2?/
)?&
inputs??????????
p
? "!????????????
G__inference_conv2d_339_layer_call_and_return_conditional_losses_5953329n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????[`
? ?
,__inference_conv2d_339_layer_call_fn_5953338a9?6
/?,
*?'
inputs???????????
? " ??????????[`?
G__inference_conv2d_340_layer_call_and_return_conditional_losses_5953493m)*7?4
-?*
(?%
inputs?????????-`
? ".?+
$?!
0?????????-?
? ?
,__inference_conv2d_340_layer_call_fn_5953502`)*7?4
-?*
(?%
inputs?????????-`
? "!??????????-??
G__inference_conv2d_341_layer_call_and_return_conditional_losses_5953657n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_341_layer_call_fn_5953666a<=8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_342_layer_call_and_return_conditional_losses_5953801nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_342_layer_call_fn_5953810aKL8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_343_layer_call_and_return_conditional_losses_5953945nZ[8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_343_layer_call_fn_5953954aZ[8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_56_layer_call_and_return_conditional_losses_5954120]qr0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????
? ~
*__inference_dense_56_layer_call_fn_5954129Pqr0?-
&?#
!?
inputs??????????(
? "???????????
G__inference_flatten_26_layer_call_and_return_conditional_losses_5954104b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
,__inference_flatten_26_layer_call_fn_5954109U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_5953467?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_5953472h7?4
-?*
(?%
inputs?????????[`
? "-?*
#? 
0?????????-`
? ?
2__inference_max_pooling2d_57_layer_call_fn_5953477?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_57_layer_call_fn_5953482[7?4
-?*
(?%
inputs?????????[`
? " ??????????-`?
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_5953631?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_5953636j8?5
.?+
)?&
inputs?????????-?
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_58_layer_call_fn_5953641?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_58_layer_call_fn_5953646]8?5
.?+
)?&
inputs?????????-?
? "!????????????
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_5954083?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_5954088j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
2__inference_max_pooling2d_59_layer_call_fn_5954093?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_59_layer_call_fn_5954098]8?5
.?+
)?&
inputs??????????
? "!??????????
??
%__inference_signature_wrapper_5952938?  )*0123<=CDEFKLRSTUZ[abcdqrW?T
? 
M?J
H
conv2d_339_input4?1
conv2d_339_input???????????"3?0
.
dense_56"?
dense_56?????????