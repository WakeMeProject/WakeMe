Ь
мВ
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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
њ
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
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
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

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
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
О
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-0-g919f693420e8ДД

conv2d_157/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_157/kernel

%conv2d_157/kernel/Read/ReadVariableOpReadVariableOpconv2d_157/kernel*&
_output_shapes
:`*
dtype0
v
conv2d_157/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_157/bias
o
#conv2d_157/bias/Read/ReadVariableOpReadVariableOpconv2d_157/bias*
_output_shapes
:`*
dtype0

batch_normalization_127/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namebatch_normalization_127/gamma

1batch_normalization_127/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_127/gamma*
_output_shapes
:`*
dtype0

batch_normalization_127/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_127/beta

0batch_normalization_127/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_127/beta*
_output_shapes
:`*
dtype0

#batch_normalization_127/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#batch_normalization_127/moving_mean

7batch_normalization_127/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_127/moving_mean*
_output_shapes
:`*
dtype0
І
'batch_normalization_127/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*8
shared_name)'batch_normalization_127/moving_variance

;batch_normalization_127/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_127/moving_variance*
_output_shapes
:`*
dtype0

conv2d_158/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_nameconv2d_158/kernel

%conv2d_158/kernel/Read/ReadVariableOpReadVariableOpconv2d_158/kernel*'
_output_shapes
:`*
dtype0
w
conv2d_158/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_158/bias
p
#conv2d_158/bias/Read/ReadVariableOpReadVariableOpconv2d_158/bias*
_output_shapes	
:*
dtype0

batch_normalization_128/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_128/gamma

1batch_normalization_128/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_128/gamma*
_output_shapes	
:*
dtype0

batch_normalization_128/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_128/beta

0batch_normalization_128/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_128/beta*
_output_shapes	
:*
dtype0

#batch_normalization_128/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_128/moving_mean

7batch_normalization_128/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_128/moving_mean*
_output_shapes	
:*
dtype0
Ї
'batch_normalization_128/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_128/moving_variance
 
;batch_normalization_128/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_128/moving_variance*
_output_shapes	
:*
dtype0

conv2d_159/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_159/kernel

%conv2d_159/kernel/Read/ReadVariableOpReadVariableOpconv2d_159/kernel*(
_output_shapes
:*
dtype0
w
conv2d_159/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_159/bias
p
#conv2d_159/bias/Read/ReadVariableOpReadVariableOpconv2d_159/bias*
_output_shapes	
:*
dtype0

batch_normalization_129/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_129/gamma

1batch_normalization_129/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_129/gamma*
_output_shapes	
:*
dtype0

batch_normalization_129/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_129/beta

0batch_normalization_129/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_129/beta*
_output_shapes	
:*
dtype0

#batch_normalization_129/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_129/moving_mean

7batch_normalization_129/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_129/moving_mean*
_output_shapes	
:*
dtype0
Ї
'batch_normalization_129/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_129/moving_variance
 
;batch_normalization_129/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_129/moving_variance*
_output_shapes	
:*
dtype0

conv2d_160/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_160/kernel

%conv2d_160/kernel/Read/ReadVariableOpReadVariableOpconv2d_160/kernel*(
_output_shapes
:*
dtype0
w
conv2d_160/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_160/bias
p
#conv2d_160/bias/Read/ReadVariableOpReadVariableOpconv2d_160/bias*
_output_shapes	
:*
dtype0

batch_normalization_130/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_130/gamma

1batch_normalization_130/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_130/gamma*
_output_shapes	
:*
dtype0

batch_normalization_130/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_130/beta

0batch_normalization_130/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_130/beta*
_output_shapes	
:*
dtype0

#batch_normalization_130/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_130/moving_mean

7batch_normalization_130/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_130/moving_mean*
_output_shapes	
:*
dtype0
Ї
'batch_normalization_130/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_130/moving_variance
 
;batch_normalization_130/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_130/moving_variance*
_output_shapes	
:*
dtype0

conv2d_161/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_161/kernel

%conv2d_161/kernel/Read/ReadVariableOpReadVariableOpconv2d_161/kernel*(
_output_shapes
:*
dtype0
w
conv2d_161/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_161/bias
p
#conv2d_161/bias/Read/ReadVariableOpReadVariableOpconv2d_161/bias*
_output_shapes	
:*
dtype0

batch_normalization_131/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_131/gamma

1batch_normalization_131/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_131/gamma*
_output_shapes	
:*
dtype0

batch_normalization_131/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_131/beta

0batch_normalization_131/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_131/beta*
_output_shapes	
:*
dtype0

#batch_normalization_131/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_131/moving_mean

7batch_normalization_131/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_131/moving_mean*
_output_shapes	
:*
dtype0
Ї
'batch_normalization_131/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_131/moving_variance
 
;batch_normalization_131/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_131/moving_variance*
_output_shapes	
:*
dtype0
{
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(* 
shared_namedense_23/kernel
t
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes
:	(*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
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
ТU
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*§T
valueѓTB№T BщT
и
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

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

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

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

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

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
І
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
і
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
­

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
VARIABLE_VALUEconv2d_157/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_157/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
В
layers
layer_metrics
 layer_regularization_losses
metrics
regularization_losses
non_trainable_variables
trainable_variables
	variables
 
hf
VARIABLE_VALUEbatch_normalization_127/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_127/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_127/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_127/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
2
 3
В
layers
layer_metrics
 layer_regularization_losses
metrics
!regularization_losses
non_trainable_variables
"trainable_variables
#	variables
 
 
 
В
layers
layer_metrics
 layer_regularization_losses
metrics
%regularization_losses
non_trainable_variables
&trainable_variables
'	variables
][
VARIABLE_VALUEconv2d_158/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_158/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
В
layers
layer_metrics
 layer_regularization_losses
metrics
+regularization_losses
non_trainable_variables
,trainable_variables
-	variables
 
hf
VARIABLE_VALUEbatch_normalization_128/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_128/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_128/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_128/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
22
33
В
layers
layer_metrics
 layer_regularization_losses
metrics
4regularization_losses
non_trainable_variables
5trainable_variables
6	variables
 
 
 
В
layers
layer_metrics
 layer_regularization_losses
metrics
8regularization_losses
non_trainable_variables
9trainable_variables
:	variables
][
VARIABLE_VALUEconv2d_159/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_159/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
В
layers
layer_metrics
  layer_regularization_losses
Ёmetrics
>regularization_losses
Ђnon_trainable_variables
?trainable_variables
@	variables
 
hf
VARIABLE_VALUEbatch_normalization_129/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_129/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_129/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_129/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1

C0
D1
E2
F3
В
Ѓlayers
Єlayer_metrics
 Ѕlayer_regularization_losses
Іmetrics
Gregularization_losses
Їnon_trainable_variables
Htrainable_variables
I	variables
][
VARIABLE_VALUEconv2d_160/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_160/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1

K0
L1
В
Јlayers
Љlayer_metrics
 Њlayer_regularization_losses
Ћmetrics
Mregularization_losses
Ќnon_trainable_variables
Ntrainable_variables
O	variables
 
hf
VARIABLE_VALUEbatch_normalization_130/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_130/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_130/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_130/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

R0
S1
T2
U3
В
­layers
Ўlayer_metrics
 Џlayer_regularization_losses
Аmetrics
Vregularization_losses
Бnon_trainable_variables
Wtrainable_variables
X	variables
][
VARIABLE_VALUEconv2d_161/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_161/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Z0
[1

Z0
[1
В
Вlayers
Гlayer_metrics
 Дlayer_regularization_losses
Еmetrics
\regularization_losses
Жnon_trainable_variables
]trainable_variables
^	variables
 
hf
VARIABLE_VALUEbatch_normalization_131/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_131/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_131/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_131/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

a0
b1

a0
b1
c2
d3
В
Зlayers
Иlayer_metrics
 Йlayer_regularization_losses
Кmetrics
eregularization_losses
Лnon_trainable_variables
ftrainable_variables
g	variables
 
 
 
В
Мlayers
Нlayer_metrics
 Оlayer_regularization_losses
Пmetrics
iregularization_losses
Рnon_trainable_variables
jtrainable_variables
k	variables
 
 
 
В
Сlayers
Тlayer_metrics
 Уlayer_regularization_losses
Фmetrics
mregularization_losses
Хnon_trainable_variables
ntrainable_variables
o	variables
\Z
VARIABLE_VALUEdense_23/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_23/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

q0
r1

q0
r1
В
Цlayers
Чlayer_metrics
 Шlayer_regularization_losses
Щmetrics
sregularization_losses
Ъnon_trainable_variables
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
Ы0
Ь1
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

Эtotal

Юcount
Я	variables
а	keras_api
I

бtotal

вcount
г
_fn_kwargs
д	variables
е	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Э0
Ю1

Я	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

б0
в1

д	variables

 serving_default_conv2d_157_inputPlaceholder*1
_output_shapes
:џџџџџџџџџє*
dtype0*&
shape:џџџџџџџџџє


StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_157_inputconv2d_157/kernelconv2d_157/biasbatch_normalization_127/gammabatch_normalization_127/beta#batch_normalization_127/moving_mean'batch_normalization_127/moving_varianceconv2d_158/kernelconv2d_158/biasbatch_normalization_128/gammabatch_normalization_128/beta#batch_normalization_128/moving_mean'batch_normalization_128/moving_varianceconv2d_159/kernelconv2d_159/biasbatch_normalization_129/gammabatch_normalization_129/beta#batch_normalization_129/moving_mean'batch_normalization_129/moving_varianceconv2d_160/kernelconv2d_160/biasbatch_normalization_130/gammabatch_normalization_130/beta#batch_normalization_130/moving_mean'batch_normalization_130/moving_varianceconv2d_161/kernelconv2d_161/biasbatch_normalization_131/gammabatch_normalization_131/beta#batch_normalization_131/moving_mean'batch_normalization_131/moving_variancedense_23/kerneldense_23/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_6039280
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ш
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_157/kernel/Read/ReadVariableOp#conv2d_157/bias/Read/ReadVariableOp1batch_normalization_127/gamma/Read/ReadVariableOp0batch_normalization_127/beta/Read/ReadVariableOp7batch_normalization_127/moving_mean/Read/ReadVariableOp;batch_normalization_127/moving_variance/Read/ReadVariableOp%conv2d_158/kernel/Read/ReadVariableOp#conv2d_158/bias/Read/ReadVariableOp1batch_normalization_128/gamma/Read/ReadVariableOp0batch_normalization_128/beta/Read/ReadVariableOp7batch_normalization_128/moving_mean/Read/ReadVariableOp;batch_normalization_128/moving_variance/Read/ReadVariableOp%conv2d_159/kernel/Read/ReadVariableOp#conv2d_159/bias/Read/ReadVariableOp1batch_normalization_129/gamma/Read/ReadVariableOp0batch_normalization_129/beta/Read/ReadVariableOp7batch_normalization_129/moving_mean/Read/ReadVariableOp;batch_normalization_129/moving_variance/Read/ReadVariableOp%conv2d_160/kernel/Read/ReadVariableOp#conv2d_160/bias/Read/ReadVariableOp1batch_normalization_130/gamma/Read/ReadVariableOp0batch_normalization_130/beta/Read/ReadVariableOp7batch_normalization_130/moving_mean/Read/ReadVariableOp;batch_normalization_130/moving_variance/Read/ReadVariableOp%conv2d_161/kernel/Read/ReadVariableOp#conv2d_161/bias/Read/ReadVariableOp1batch_normalization_131/gamma/Read/ReadVariableOp0batch_normalization_131/beta/Read/ReadVariableOp7batch_normalization_131/moving_mean/Read/ReadVariableOp;batch_normalization_131/moving_variance/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*5
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_6040614
Ѓ

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_157/kernelconv2d_157/biasbatch_normalization_127/gammabatch_normalization_127/beta#batch_normalization_127/moving_mean'batch_normalization_127/moving_varianceconv2d_158/kernelconv2d_158/biasbatch_normalization_128/gammabatch_normalization_128/beta#batch_normalization_128/moving_mean'batch_normalization_128/moving_varianceconv2d_159/kernelconv2d_159/biasbatch_normalization_129/gammabatch_normalization_129/beta#batch_normalization_129/moving_mean'batch_normalization_129/moving_varianceconv2d_160/kernelconv2d_160/biasbatch_normalization_130/gammabatch_normalization_130/beta#batch_normalization_130/moving_mean'batch_normalization_130/moving_varianceconv2d_161/kernelconv2d_161/biasbatch_normalization_131/gammabatch_normalization_131/beta#batch_normalization_131/moving_mean'batch_normalization_131/moving_variancedense_23/kerneldense_23/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*4
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_6040744ју
Њ
Є
,__inference_conv2d_159_layer_call_fn_6040008

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_159_layer_call_and_return_conditional_losses_60382282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
Ѓ
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6038295

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
и
9__inference_batch_normalization_128_layer_call_fn_6039968

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_60386692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ-2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ-: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
Р
i
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6039814

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ-`*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ-`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ[`:W S
/
_output_shapes
:џџџџџџџџџ[`
 
_user_specified_nameinputs
Њ
Ч
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040044

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ

G__inference_conv2d_157_layer_call_and_return_conditional_losses_6039671

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ[`2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџє: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
ђ

G__inference_conv2d_157_layer_call_and_return_conditional_losses_6038128

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ[`2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџє: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
љ

G__inference_conv2d_161_layer_call_and_return_conditional_losses_6038316

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
Ѓ
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040350

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
i
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_6037697

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
­
i
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_6038097

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я	
и
9__inference_batch_normalization_128_layer_call_fn_6039942

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_60376282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
с
Ч
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040368

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1н
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
i
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6039809

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і
Ѓ
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040314

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і
Ѓ
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039862

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
­
i
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6037549

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і
Ѓ
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6037732

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
б
У
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039752

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ[`:`:`:`:`:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ[`2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ[`: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ[`
 
_user_specified_nameinputs
љ

G__inference_conv2d_160_layer_call_and_return_conditional_losses_6038272

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ
д
9__inference_batch_normalization_127_layer_call_fn_6039804

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identityЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_60387282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ[`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ[`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ[`
 
_user_specified_nameinputs
­
i
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_6039973

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
с
Ч
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040080

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1н
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
с
Ч
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6038556

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1н
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б	
и
9__inference_batch_normalization_129_layer_call_fn_6040093

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_60377322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Њ
Ч
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6037902

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
эX
и
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6038903

inputs,
conv2d_157_6038823:` 
conv2d_157_6038825:`-
batch_normalization_127_6038828:`-
batch_normalization_127_6038830:`-
batch_normalization_127_6038832:`-
batch_normalization_127_6038834:`-
conv2d_158_6038838:`!
conv2d_158_6038840:	.
batch_normalization_128_6038843:	.
batch_normalization_128_6038845:	.
batch_normalization_128_6038847:	.
batch_normalization_128_6038849:	.
conv2d_159_6038853:!
conv2d_159_6038855:	.
batch_normalization_129_6038858:	.
batch_normalization_129_6038860:	.
batch_normalization_129_6038862:	.
batch_normalization_129_6038864:	.
conv2d_160_6038867:!
conv2d_160_6038869:	.
batch_normalization_130_6038872:	.
batch_normalization_130_6038874:	.
batch_normalization_130_6038876:	.
batch_normalization_130_6038878:	.
conv2d_161_6038881:!
conv2d_161_6038883:	.
batch_normalization_131_6038886:	.
batch_normalization_131_6038888:	.
batch_normalization_131_6038890:	.
batch_normalization_131_6038892:	#
dense_23_6038897:	(
dense_23_6038899:
identityЂ/batch_normalization_127/StatefulPartitionedCallЂ/batch_normalization_128/StatefulPartitionedCallЂ/batch_normalization_129/StatefulPartitionedCallЂ/batch_normalization_130/StatefulPartitionedCallЂ/batch_normalization_131/StatefulPartitionedCallЂ"conv2d_157/StatefulPartitionedCallЂ"conv2d_158/StatefulPartitionedCallЂ"conv2d_159/StatefulPartitionedCallЂ"conv2d_160/StatefulPartitionedCallЂ"conv2d_161/StatefulPartitionedCallЂ dense_23/StatefulPartitionedCallЌ
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_157_6038823conv2d_157_6038825*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_157_layer_call_and_return_conditional_losses_60381282$
"conv2d_157/StatefulPartitionedCallж
/batch_normalization_127/StatefulPartitionedCallStatefulPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0batch_normalization_127_6038828batch_normalization_127_6038830batch_normalization_127_6038832batch_normalization_127_6038834*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_603872821
/batch_normalization_127/StatefulPartitionedCallЊ
 max_pooling2d_27/PartitionedCallPartitionedCall8batch_normalization_127/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_60381652"
 max_pooling2d_27/PartitionedCallа
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0conv2d_158_6038838conv2d_158_6038840*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_158_layer_call_and_return_conditional_losses_60381782$
"conv2d_158/StatefulPartitionedCallз
/batch_normalization_128/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0batch_normalization_128_6038843batch_normalization_128_6038845batch_normalization_128_6038847batch_normalization_128_6038849*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_603866921
/batch_normalization_128/StatefulPartitionedCallЋ
 max_pooling2d_28/PartitionedCallPartitionedCall8batch_normalization_128/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_60382152"
 max_pooling2d_28/PartitionedCallа
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0conv2d_159_6038853conv2d_159_6038855*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_159_layer_call_and_return_conditional_losses_60382282$
"conv2d_159/StatefulPartitionedCallз
/batch_normalization_129/StatefulPartitionedCallStatefulPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0batch_normalization_129_6038858batch_normalization_129_6038860batch_normalization_129_6038862batch_normalization_129_6038864*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_603861021
/batch_normalization_129/StatefulPartitionedCallп
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_129/StatefulPartitionedCall:output:0conv2d_160_6038867conv2d_160_6038869*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_160_layer_call_and_return_conditional_losses_60382722$
"conv2d_160/StatefulPartitionedCallз
/batch_normalization_130/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0batch_normalization_130_6038872batch_normalization_130_6038874batch_normalization_130_6038876batch_normalization_130_6038878*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_603855621
/batch_normalization_130/StatefulPartitionedCallп
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_130/StatefulPartitionedCall:output:0conv2d_161_6038881conv2d_161_6038883*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_161_layer_call_and_return_conditional_losses_60383162$
"conv2d_161/StatefulPartitionedCallз
/batch_normalization_131/StatefulPartitionedCallStatefulPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0batch_normalization_131_6038886batch_normalization_131_6038888batch_normalization_131_6038890batch_normalization_131_6038892*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_603850221
/batch_normalization_131/StatefulPartitionedCallЋ
 max_pooling2d_29/PartitionedCallPartitionedCall8batch_normalization_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_60383532"
 max_pooling2d_29/PartitionedCall
flatten_11/PartitionedCallPartitionedCall)max_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_60383612
flatten_11/PartitionedCallЗ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_23_6038897dense_23_6038899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_60383742"
 dense_23/StatefulPartitionedCall
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЄ
NoOpNoOp0^batch_normalization_127/StatefulPartitionedCall0^batch_normalization_128/StatefulPartitionedCall0^batch_normalization_129/StatefulPartitionedCall0^batch_normalization_130/StatefulPartitionedCall0^batch_normalization_131/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_127/StatefulPartitionedCall/batch_normalization_127/StatefulPartitionedCall2b
/batch_normalization_128/StatefulPartitionedCall/batch_normalization_128/StatefulPartitionedCall2b
/batch_normalization_129/StatefulPartitionedCall/batch_normalization_129/StatefulPartitionedCall2b
/batch_normalization_130/StatefulPartitionedCall/batch_normalization_130/StatefulPartitionedCall2b
/batch_normalization_131/StatefulPartitionedCall/batch_normalization_131/StatefulPartitionedCall2H
"conv2d_157/StatefulPartitionedCall"conv2d_157/StatefulPartitionedCall2H
"conv2d_158/StatefulPartitionedCall"conv2d_158/StatefulPartitionedCall2H
"conv2d_159/StatefulPartitionedCall"conv2d_159/StatefulPartitionedCall2H
"conv2d_160/StatefulPartitionedCall"conv2d_160/StatefulPartitionedCall2H
"conv2d_161/StatefulPartitionedCall"conv2d_161/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
ё
N
2__inference_max_pooling2d_27_layer_call_fn_6039824

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_60381652
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ-`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ[`:W S
/
_output_shapes
:џџџџџџџџџ[`
 
_user_specified_nameinputs
Ї
Ё
,__inference_conv2d_157_layer_call_fn_6039680

inputs!
unknown:`
	unknown_0:`
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_157_layer_call_and_return_conditional_losses_60381282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ[`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџє: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
	
и
9__inference_batch_normalization_128_layer_call_fn_6039955

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_60382012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ-2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ-: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
с
Ч
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6038669

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1н
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ-:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ-2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ-: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
В
ї
%__inference_signature_wrapper_6039280
conv2d_157_input!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	(

unknown_30:
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallconv2d_157_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_60374142
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџє
*
_user_specified_nameconv2d_157_input
юЩ
з"
"__inference__wrapped_model_6037414
conv2d_157_inputN
4alex_net_5_conv2d_157_conv2d_readvariableop_resource:`C
5alex_net_5_conv2d_157_biasadd_readvariableop_resource:`H
:alex_net_5_batch_normalization_127_readvariableop_resource:`J
<alex_net_5_batch_normalization_127_readvariableop_1_resource:`Y
Kalex_net_5_batch_normalization_127_fusedbatchnormv3_readvariableop_resource:`[
Malex_net_5_batch_normalization_127_fusedbatchnormv3_readvariableop_1_resource:`O
4alex_net_5_conv2d_158_conv2d_readvariableop_resource:`D
5alex_net_5_conv2d_158_biasadd_readvariableop_resource:	I
:alex_net_5_batch_normalization_128_readvariableop_resource:	K
<alex_net_5_batch_normalization_128_readvariableop_1_resource:	Z
Kalex_net_5_batch_normalization_128_fusedbatchnormv3_readvariableop_resource:	\
Malex_net_5_batch_normalization_128_fusedbatchnormv3_readvariableop_1_resource:	P
4alex_net_5_conv2d_159_conv2d_readvariableop_resource:D
5alex_net_5_conv2d_159_biasadd_readvariableop_resource:	I
:alex_net_5_batch_normalization_129_readvariableop_resource:	K
<alex_net_5_batch_normalization_129_readvariableop_1_resource:	Z
Kalex_net_5_batch_normalization_129_fusedbatchnormv3_readvariableop_resource:	\
Malex_net_5_batch_normalization_129_fusedbatchnormv3_readvariableop_1_resource:	P
4alex_net_5_conv2d_160_conv2d_readvariableop_resource:D
5alex_net_5_conv2d_160_biasadd_readvariableop_resource:	I
:alex_net_5_batch_normalization_130_readvariableop_resource:	K
<alex_net_5_batch_normalization_130_readvariableop_1_resource:	Z
Kalex_net_5_batch_normalization_130_fusedbatchnormv3_readvariableop_resource:	\
Malex_net_5_batch_normalization_130_fusedbatchnormv3_readvariableop_1_resource:	P
4alex_net_5_conv2d_161_conv2d_readvariableop_resource:D
5alex_net_5_conv2d_161_biasadd_readvariableop_resource:	I
:alex_net_5_batch_normalization_131_readvariableop_resource:	K
<alex_net_5_batch_normalization_131_readvariableop_1_resource:	Z
Kalex_net_5_batch_normalization_131_fusedbatchnormv3_readvariableop_resource:	\
Malex_net_5_batch_normalization_131_fusedbatchnormv3_readvariableop_1_resource:	E
2alex_net_5_dense_23_matmul_readvariableop_resource:	(A
3alex_net_5_dense_23_biasadd_readvariableop_resource:
identityЂBalex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOpЂDalex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1Ђ1alex_net_5/batch_normalization_127/ReadVariableOpЂ3alex_net_5/batch_normalization_127/ReadVariableOp_1ЂBalex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOpЂDalex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1Ђ1alex_net_5/batch_normalization_128/ReadVariableOpЂ3alex_net_5/batch_normalization_128/ReadVariableOp_1ЂBalex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOpЂDalex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1Ђ1alex_net_5/batch_normalization_129/ReadVariableOpЂ3alex_net_5/batch_normalization_129/ReadVariableOp_1ЂBalex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOpЂDalex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1Ђ1alex_net_5/batch_normalization_130/ReadVariableOpЂ3alex_net_5/batch_normalization_130/ReadVariableOp_1ЂBalex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOpЂDalex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1Ђ1alex_net_5/batch_normalization_131/ReadVariableOpЂ3alex_net_5/batch_normalization_131/ReadVariableOp_1Ђ,alex_net_5/conv2d_157/BiasAdd/ReadVariableOpЂ+alex_net_5/conv2d_157/Conv2D/ReadVariableOpЂ,alex_net_5/conv2d_158/BiasAdd/ReadVariableOpЂ+alex_net_5/conv2d_158/Conv2D/ReadVariableOpЂ,alex_net_5/conv2d_159/BiasAdd/ReadVariableOpЂ+alex_net_5/conv2d_159/Conv2D/ReadVariableOpЂ,alex_net_5/conv2d_160/BiasAdd/ReadVariableOpЂ+alex_net_5/conv2d_160/Conv2D/ReadVariableOpЂ,alex_net_5/conv2d_161/BiasAdd/ReadVariableOpЂ+alex_net_5/conv2d_161/Conv2D/ReadVariableOpЂ*alex_net_5/dense_23/BiasAdd/ReadVariableOpЂ)alex_net_5/dense_23/MatMul/ReadVariableOpз
+alex_net_5/conv2d_157/Conv2D/ReadVariableOpReadVariableOp4alex_net_5_conv2d_157_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+alex_net_5/conv2d_157/Conv2D/ReadVariableOp№
alex_net_5/conv2d_157/Conv2DConv2Dconv2d_157_input3alex_net_5/conv2d_157/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`*
paddingVALID*
strides
2
alex_net_5/conv2d_157/Conv2DЮ
,alex_net_5/conv2d_157/BiasAdd/ReadVariableOpReadVariableOp5alex_net_5_conv2d_157_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02.
,alex_net_5/conv2d_157/BiasAdd/ReadVariableOpр
alex_net_5/conv2d_157/BiasAddBiasAdd%alex_net_5/conv2d_157/Conv2D:output:04alex_net_5/conv2d_157/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2
alex_net_5/conv2d_157/BiasAddЂ
alex_net_5/conv2d_157/ReluRelu&alex_net_5/conv2d_157/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2
alex_net_5/conv2d_157/Reluн
1alex_net_5/batch_normalization_127/ReadVariableOpReadVariableOp:alex_net_5_batch_normalization_127_readvariableop_resource*
_output_shapes
:`*
dtype023
1alex_net_5/batch_normalization_127/ReadVariableOpу
3alex_net_5/batch_normalization_127/ReadVariableOp_1ReadVariableOp<alex_net_5_batch_normalization_127_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3alex_net_5/batch_normalization_127/ReadVariableOp_1
Balex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_5_batch_normalization_127_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02D
Balex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp
Dalex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_5_batch_normalization_127_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02F
Dalex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1О
3alex_net_5/batch_normalization_127/FusedBatchNormV3FusedBatchNormV3(alex_net_5/conv2d_157/Relu:activations:09alex_net_5/batch_normalization_127/ReadVariableOp:value:0;alex_net_5/batch_normalization_127/ReadVariableOp_1:value:0Jalex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ[`:`:`:`:`:*
epsilon%o:*
is_training( 25
3alex_net_5/batch_normalization_127/FusedBatchNormV3ћ
#alex_net_5/max_pooling2d_27/MaxPoolMaxPool7alex_net_5/batch_normalization_127/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ-`*
ksize
*
paddingVALID*
strides
2%
#alex_net_5/max_pooling2d_27/MaxPoolи
+alex_net_5/conv2d_158/Conv2D/ReadVariableOpReadVariableOp4alex_net_5_conv2d_158_conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02-
+alex_net_5/conv2d_158/Conv2D/ReadVariableOp
alex_net_5/conv2d_158/Conv2DConv2D,alex_net_5/max_pooling2d_27/MaxPool:output:03alex_net_5/conv2d_158/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides
2
alex_net_5/conv2d_158/Conv2DЯ
,alex_net_5/conv2d_158/BiasAdd/ReadVariableOpReadVariableOp5alex_net_5_conv2d_158_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,alex_net_5/conv2d_158/BiasAdd/ReadVariableOpс
alex_net_5/conv2d_158/BiasAddBiasAdd%alex_net_5/conv2d_158/Conv2D:output:04alex_net_5/conv2d_158/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-2
alex_net_5/conv2d_158/BiasAddЃ
alex_net_5/conv2d_158/ReluRelu&alex_net_5/conv2d_158/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ-2
alex_net_5/conv2d_158/Reluо
1alex_net_5/batch_normalization_128/ReadVariableOpReadVariableOp:alex_net_5_batch_normalization_128_readvariableop_resource*
_output_shapes	
:*
dtype023
1alex_net_5/batch_normalization_128/ReadVariableOpф
3alex_net_5/batch_normalization_128/ReadVariableOp_1ReadVariableOp<alex_net_5_batch_normalization_128_readvariableop_1_resource*
_output_shapes	
:*
dtype025
3alex_net_5/batch_normalization_128/ReadVariableOp_1
Balex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_5_batch_normalization_128_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02D
Balex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp
Dalex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_5_batch_normalization_128_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02F
Dalex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1У
3alex_net_5/batch_normalization_128/FusedBatchNormV3FusedBatchNormV3(alex_net_5/conv2d_158/Relu:activations:09alex_net_5/batch_normalization_128/ReadVariableOp:value:0;alex_net_5/batch_normalization_128/ReadVariableOp_1:value:0Jalex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ-:::::*
epsilon%o:*
is_training( 25
3alex_net_5/batch_normalization_128/FusedBatchNormV3ќ
#alex_net_5/max_pooling2d_28/MaxPoolMaxPool7alex_net_5/batch_normalization_128/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2%
#alex_net_5/max_pooling2d_28/MaxPoolй
+alex_net_5/conv2d_159/Conv2D/ReadVariableOpReadVariableOp4alex_net_5_conv2d_159_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02-
+alex_net_5/conv2d_159/Conv2D/ReadVariableOp
alex_net_5/conv2d_159/Conv2DConv2D,alex_net_5/max_pooling2d_28/MaxPool:output:03alex_net_5/conv2d_159/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
alex_net_5/conv2d_159/Conv2DЯ
,alex_net_5/conv2d_159/BiasAdd/ReadVariableOpReadVariableOp5alex_net_5_conv2d_159_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,alex_net_5/conv2d_159/BiasAdd/ReadVariableOpс
alex_net_5/conv2d_159/BiasAddBiasAdd%alex_net_5/conv2d_159/Conv2D:output:04alex_net_5/conv2d_159/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
alex_net_5/conv2d_159/BiasAddЃ
alex_net_5/conv2d_159/ReluRelu&alex_net_5/conv2d_159/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
alex_net_5/conv2d_159/Reluо
1alex_net_5/batch_normalization_129/ReadVariableOpReadVariableOp:alex_net_5_batch_normalization_129_readvariableop_resource*
_output_shapes	
:*
dtype023
1alex_net_5/batch_normalization_129/ReadVariableOpф
3alex_net_5/batch_normalization_129/ReadVariableOp_1ReadVariableOp<alex_net_5_batch_normalization_129_readvariableop_1_resource*
_output_shapes	
:*
dtype025
3alex_net_5/batch_normalization_129/ReadVariableOp_1
Balex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_5_batch_normalization_129_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02D
Balex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp
Dalex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_5_batch_normalization_129_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02F
Dalex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1У
3alex_net_5/batch_normalization_129/FusedBatchNormV3FusedBatchNormV3(alex_net_5/conv2d_159/Relu:activations:09alex_net_5/batch_normalization_129/ReadVariableOp:value:0;alex_net_5/batch_normalization_129/ReadVariableOp_1:value:0Jalex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 25
3alex_net_5/batch_normalization_129/FusedBatchNormV3й
+alex_net_5/conv2d_160/Conv2D/ReadVariableOpReadVariableOp4alex_net_5_conv2d_160_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02-
+alex_net_5/conv2d_160/Conv2D/ReadVariableOp
alex_net_5/conv2d_160/Conv2DConv2D7alex_net_5/batch_normalization_129/FusedBatchNormV3:y:03alex_net_5/conv2d_160/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
alex_net_5/conv2d_160/Conv2DЯ
,alex_net_5/conv2d_160/BiasAdd/ReadVariableOpReadVariableOp5alex_net_5_conv2d_160_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,alex_net_5/conv2d_160/BiasAdd/ReadVariableOpс
alex_net_5/conv2d_160/BiasAddBiasAdd%alex_net_5/conv2d_160/Conv2D:output:04alex_net_5/conv2d_160/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
alex_net_5/conv2d_160/BiasAddЃ
alex_net_5/conv2d_160/ReluRelu&alex_net_5/conv2d_160/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
alex_net_5/conv2d_160/Reluо
1alex_net_5/batch_normalization_130/ReadVariableOpReadVariableOp:alex_net_5_batch_normalization_130_readvariableop_resource*
_output_shapes	
:*
dtype023
1alex_net_5/batch_normalization_130/ReadVariableOpф
3alex_net_5/batch_normalization_130/ReadVariableOp_1ReadVariableOp<alex_net_5_batch_normalization_130_readvariableop_1_resource*
_output_shapes	
:*
dtype025
3alex_net_5/batch_normalization_130/ReadVariableOp_1
Balex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_5_batch_normalization_130_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02D
Balex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp
Dalex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_5_batch_normalization_130_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02F
Dalex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1У
3alex_net_5/batch_normalization_130/FusedBatchNormV3FusedBatchNormV3(alex_net_5/conv2d_160/Relu:activations:09alex_net_5/batch_normalization_130/ReadVariableOp:value:0;alex_net_5/batch_normalization_130/ReadVariableOp_1:value:0Jalex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 25
3alex_net_5/batch_normalization_130/FusedBatchNormV3й
+alex_net_5/conv2d_161/Conv2D/ReadVariableOpReadVariableOp4alex_net_5_conv2d_161_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02-
+alex_net_5/conv2d_161/Conv2D/ReadVariableOp
alex_net_5/conv2d_161/Conv2DConv2D7alex_net_5/batch_normalization_130/FusedBatchNormV3:y:03alex_net_5/conv2d_161/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
alex_net_5/conv2d_161/Conv2DЯ
,alex_net_5/conv2d_161/BiasAdd/ReadVariableOpReadVariableOp5alex_net_5_conv2d_161_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,alex_net_5/conv2d_161/BiasAdd/ReadVariableOpс
alex_net_5/conv2d_161/BiasAddBiasAdd%alex_net_5/conv2d_161/Conv2D:output:04alex_net_5/conv2d_161/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
alex_net_5/conv2d_161/BiasAddЃ
alex_net_5/conv2d_161/ReluRelu&alex_net_5/conv2d_161/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
alex_net_5/conv2d_161/Reluо
1alex_net_5/batch_normalization_131/ReadVariableOpReadVariableOp:alex_net_5_batch_normalization_131_readvariableop_resource*
_output_shapes	
:*
dtype023
1alex_net_5/batch_normalization_131/ReadVariableOpф
3alex_net_5/batch_normalization_131/ReadVariableOp_1ReadVariableOp<alex_net_5_batch_normalization_131_readvariableop_1_resource*
_output_shapes	
:*
dtype025
3alex_net_5/batch_normalization_131/ReadVariableOp_1
Balex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOpReadVariableOpKalex_net_5_batch_normalization_131_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02D
Balex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp
Dalex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMalex_net_5_batch_normalization_131_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02F
Dalex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1У
3alex_net_5/batch_normalization_131/FusedBatchNormV3FusedBatchNormV3(alex_net_5/conv2d_161/Relu:activations:09alex_net_5/batch_normalization_131/ReadVariableOp:value:0;alex_net_5/batch_normalization_131/ReadVariableOp_1:value:0Jalex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp:value:0Lalex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 25
3alex_net_5/batch_normalization_131/FusedBatchNormV3ќ
#alex_net_5/max_pooling2d_29/MaxPoolMaxPool7alex_net_5/batch_normalization_131/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ
*
ksize
*
paddingVALID*
strides
2%
#alex_net_5/max_pooling2d_29/MaxPool
alex_net_5/flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
alex_net_5/flatten_11/Constа
alex_net_5/flatten_11/ReshapeReshape,alex_net_5/max_pooling2d_29/MaxPool:output:0$alex_net_5/flatten_11/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ(2
alex_net_5/flatten_11/ReshapeЪ
)alex_net_5/dense_23/MatMul/ReadVariableOpReadVariableOp2alex_net_5_dense_23_matmul_readvariableop_resource*
_output_shapes
:	(*
dtype02+
)alex_net_5/dense_23/MatMul/ReadVariableOpЯ
alex_net_5/dense_23/MatMulMatMul&alex_net_5/flatten_11/Reshape:output:01alex_net_5/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
alex_net_5/dense_23/MatMulШ
*alex_net_5/dense_23/BiasAdd/ReadVariableOpReadVariableOp3alex_net_5_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*alex_net_5/dense_23/BiasAdd/ReadVariableOpб
alex_net_5/dense_23/BiasAddBiasAdd$alex_net_5/dense_23/MatMul:product:02alex_net_5/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
alex_net_5/dense_23/BiasAdd
alex_net_5/dense_23/SigmoidSigmoid$alex_net_5/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
alex_net_5/dense_23/Sigmoidz
IdentityIdentityalex_net_5/dense_23/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЦ
NoOpNoOpC^alex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOpE^alex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp_12^alex_net_5/batch_normalization_127/ReadVariableOp4^alex_net_5/batch_normalization_127/ReadVariableOp_1C^alex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOpE^alex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp_12^alex_net_5/batch_normalization_128/ReadVariableOp4^alex_net_5/batch_normalization_128/ReadVariableOp_1C^alex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOpE^alex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp_12^alex_net_5/batch_normalization_129/ReadVariableOp4^alex_net_5/batch_normalization_129/ReadVariableOp_1C^alex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOpE^alex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_12^alex_net_5/batch_normalization_130/ReadVariableOp4^alex_net_5/batch_normalization_130/ReadVariableOp_1C^alex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOpE^alex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp_12^alex_net_5/batch_normalization_131/ReadVariableOp4^alex_net_5/batch_normalization_131/ReadVariableOp_1-^alex_net_5/conv2d_157/BiasAdd/ReadVariableOp,^alex_net_5/conv2d_157/Conv2D/ReadVariableOp-^alex_net_5/conv2d_158/BiasAdd/ReadVariableOp,^alex_net_5/conv2d_158/Conv2D/ReadVariableOp-^alex_net_5/conv2d_159/BiasAdd/ReadVariableOp,^alex_net_5/conv2d_159/Conv2D/ReadVariableOp-^alex_net_5/conv2d_160/BiasAdd/ReadVariableOp,^alex_net_5/conv2d_160/Conv2D/ReadVariableOp-^alex_net_5/conv2d_161/BiasAdd/ReadVariableOp,^alex_net_5/conv2d_161/Conv2D/ReadVariableOp+^alex_net_5/dense_23/BiasAdd/ReadVariableOp*^alex_net_5/dense_23/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2
Balex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOpBalex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp2
Dalex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1Dalex_net_5/batch_normalization_127/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_5/batch_normalization_127/ReadVariableOp1alex_net_5/batch_normalization_127/ReadVariableOp2j
3alex_net_5/batch_normalization_127/ReadVariableOp_13alex_net_5/batch_normalization_127/ReadVariableOp_12
Balex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOpBalex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp2
Dalex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1Dalex_net_5/batch_normalization_128/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_5/batch_normalization_128/ReadVariableOp1alex_net_5/batch_normalization_128/ReadVariableOp2j
3alex_net_5/batch_normalization_128/ReadVariableOp_13alex_net_5/batch_normalization_128/ReadVariableOp_12
Balex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOpBalex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp2
Dalex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1Dalex_net_5/batch_normalization_129/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_5/batch_normalization_129/ReadVariableOp1alex_net_5/batch_normalization_129/ReadVariableOp2j
3alex_net_5/batch_normalization_129/ReadVariableOp_13alex_net_5/batch_normalization_129/ReadVariableOp_12
Balex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOpBalex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp2
Dalex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1Dalex_net_5/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_5/batch_normalization_130/ReadVariableOp1alex_net_5/batch_normalization_130/ReadVariableOp2j
3alex_net_5/batch_normalization_130/ReadVariableOp_13alex_net_5/batch_normalization_130/ReadVariableOp_12
Balex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOpBalex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp2
Dalex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1Dalex_net_5/batch_normalization_131/FusedBatchNormV3/ReadVariableOp_12f
1alex_net_5/batch_normalization_131/ReadVariableOp1alex_net_5/batch_normalization_131/ReadVariableOp2j
3alex_net_5/batch_normalization_131/ReadVariableOp_13alex_net_5/batch_normalization_131/ReadVariableOp_12\
,alex_net_5/conv2d_157/BiasAdd/ReadVariableOp,alex_net_5/conv2d_157/BiasAdd/ReadVariableOp2Z
+alex_net_5/conv2d_157/Conv2D/ReadVariableOp+alex_net_5/conv2d_157/Conv2D/ReadVariableOp2\
,alex_net_5/conv2d_158/BiasAdd/ReadVariableOp,alex_net_5/conv2d_158/BiasAdd/ReadVariableOp2Z
+alex_net_5/conv2d_158/Conv2D/ReadVariableOp+alex_net_5/conv2d_158/Conv2D/ReadVariableOp2\
,alex_net_5/conv2d_159/BiasAdd/ReadVariableOp,alex_net_5/conv2d_159/BiasAdd/ReadVariableOp2Z
+alex_net_5/conv2d_159/Conv2D/ReadVariableOp+alex_net_5/conv2d_159/Conv2D/ReadVariableOp2\
,alex_net_5/conv2d_160/BiasAdd/ReadVariableOp,alex_net_5/conv2d_160/BiasAdd/ReadVariableOp2Z
+alex_net_5/conv2d_160/Conv2D/ReadVariableOp+alex_net_5/conv2d_160/Conv2D/ReadVariableOp2\
,alex_net_5/conv2d_161/BiasAdd/ReadVariableOp,alex_net_5/conv2d_161/BiasAdd/ReadVariableOp2Z
+alex_net_5/conv2d_161/Conv2D/ReadVariableOp+alex_net_5/conv2d_161/Conv2D/ReadVariableOp2X
*alex_net_5/dense_23/BiasAdd/ReadVariableOp*alex_net_5/dense_23/BiasAdd/ReadVariableOp2V
)alex_net_5/dense_23/MatMul/ReadVariableOp)alex_net_5/dense_23/MatMul/ReadVariableOp:c _
1
_output_shapes
:џџџџџџџџџє
*
_user_specified_nameconv2d_157_input
с
Ч
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6038502

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1н
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б	
и
9__inference_batch_normalization_128_layer_call_fn_6039929

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_60375842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і
Ѓ
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6037858

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ч	
д
9__inference_batch_normalization_127_layer_call_fn_6039778

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identityЂStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_60374802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
ы
c
G__inference_flatten_11_layer_call_and_return_conditional_losses_6040446

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ(2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ
:X T
0
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
й
H
,__inference_flatten_11_layer_call_fn_6040451

inputs
identityЩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_60383612
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ
:X T
0
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ѕ

G__inference_conv2d_158_layer_call_and_return_conditional_losses_6039835

inputs9
conv2d_readvariableop_resource:`.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ-2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ-2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ-`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ-`
 
_user_specified_nameinputs
	
и
9__inference_batch_normalization_131_layer_call_fn_6040407

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_60383392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
Ч
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6037776

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
д
ў
,__inference_alex_net_5_layer_call_fn_6039039
conv2d_157_input!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	(

unknown_30:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_157_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_alex_net_5_layer_call_and_return_conditional_losses_60389032
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџє
*
_user_specified_nameconv2d_157_input
ѕ
N
2__inference_max_pooling2d_28_layer_call_fn_6039988

inputs
identityз
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_60382152
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ-:X T
0
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
­
Ѓ
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040062

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
Є
,__inference_conv2d_160_layer_call_fn_6040152

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_160_layer_call_and_return_conditional_losses_60382722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
Ч
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6038028

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Р
є
,__inference_alex_net_5_layer_call_fn_6039591

inputs!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	(

unknown_30:
identityЂStatefulPartitionedCall
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
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_alex_net_5_layer_call_and_return_conditional_losses_60383812
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
о
N
2__inference_max_pooling2d_28_layer_call_fn_6039983

inputs
identityё
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_60376972
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ї
E__inference_dense_23_layer_call_and_return_conditional_losses_6038374

inputs1
matmul_readvariableop_resource:	(-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
і
Ѓ
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6037584

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ї
Ѓ
,__inference_conv2d_158_layer_call_fn_6039844

inputs"
unknown:`
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_158_layer_call_and_return_conditional_losses_60381782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ-2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ-`: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ-`
 
_user_specified_nameinputs
­
Ѓ
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039898

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ-:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ-2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ-: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs

У
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6037480

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`:`:`:`:`:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
Ф
i
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_6038215

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ-:X T
0
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
б
У
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6038728

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ[`:`:`:`:`:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ[`2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ[`: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ[`
 
_user_specified_nameinputs
љ

G__inference_conv2d_159_layer_call_and_return_conditional_losses_6039999

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
Ѓ
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040206

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б	
и
9__inference_batch_normalization_130_layer_call_fn_6040237

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_60378582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
­
Ѓ
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6038251

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і
Ѓ
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040170

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ѕT
І
 __inference__traced_save_6040614
file_prefix0
,savev2_conv2d_157_kernel_read_readvariableop.
*savev2_conv2d_157_bias_read_readvariableop<
8savev2_batch_normalization_127_gamma_read_readvariableop;
7savev2_batch_normalization_127_beta_read_readvariableopB
>savev2_batch_normalization_127_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_127_moving_variance_read_readvariableop0
,savev2_conv2d_158_kernel_read_readvariableop.
*savev2_conv2d_158_bias_read_readvariableop<
8savev2_batch_normalization_128_gamma_read_readvariableop;
7savev2_batch_normalization_128_beta_read_readvariableopB
>savev2_batch_normalization_128_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_128_moving_variance_read_readvariableop0
,savev2_conv2d_159_kernel_read_readvariableop.
*savev2_conv2d_159_bias_read_readvariableop<
8savev2_batch_normalization_129_gamma_read_readvariableop;
7savev2_batch_normalization_129_beta_read_readvariableopB
>savev2_batch_normalization_129_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_129_moving_variance_read_readvariableop0
,savev2_conv2d_160_kernel_read_readvariableop.
*savev2_conv2d_160_bias_read_readvariableop<
8savev2_batch_normalization_130_gamma_read_readvariableop;
7savev2_batch_normalization_130_beta_read_readvariableopB
>savev2_batch_normalization_130_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_130_moving_variance_read_readvariableop0
,savev2_conv2d_161_kernel_read_readvariableop.
*savev2_conv2d_161_bias_read_readvariableop<
8savev2_batch_normalization_131_gamma_read_readvariableop;
7savev2_batch_normalization_131_beta_read_readvariableopB
>savev2_batch_normalization_131_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_131_moving_variance_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameр
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ђ
valueшBх)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesк
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesћ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_157_kernel_read_readvariableop*savev2_conv2d_157_bias_read_readvariableop8savev2_batch_normalization_127_gamma_read_readvariableop7savev2_batch_normalization_127_beta_read_readvariableop>savev2_batch_normalization_127_moving_mean_read_readvariableopBsavev2_batch_normalization_127_moving_variance_read_readvariableop,savev2_conv2d_158_kernel_read_readvariableop*savev2_conv2d_158_bias_read_readvariableop8savev2_batch_normalization_128_gamma_read_readvariableop7savev2_batch_normalization_128_beta_read_readvariableop>savev2_batch_normalization_128_moving_mean_read_readvariableopBsavev2_batch_normalization_128_moving_variance_read_readvariableop,savev2_conv2d_159_kernel_read_readvariableop*savev2_conv2d_159_bias_read_readvariableop8savev2_batch_normalization_129_gamma_read_readvariableop7savev2_batch_normalization_129_beta_read_readvariableop>savev2_batch_normalization_129_moving_mean_read_readvariableopBsavev2_batch_normalization_129_moving_variance_read_readvariableop,savev2_conv2d_160_kernel_read_readvariableop*savev2_conv2d_160_bias_read_readvariableop8savev2_batch_normalization_130_gamma_read_readvariableop7savev2_batch_normalization_130_beta_read_readvariableop>savev2_batch_normalization_130_moving_mean_read_readvariableopBsavev2_batch_normalization_130_moving_variance_read_readvariableop,savev2_conv2d_161_kernel_read_readvariableop*savev2_conv2d_161_bias_read_readvariableop8savev2_batch_normalization_131_gamma_read_readvariableop7savev2_batch_normalization_131_beta_read_readvariableop>savev2_batch_normalization_131_moving_mean_read_readvariableopBsavev2_batch_normalization_131_moving_variance_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*Х
_input_shapesГ
А: :`:`:`:`:`:`:`::::::::::::::::::::::::	(:: : : : : : : : : 2(
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
:`:!

_output_shapes	
::!	

_output_shapes	
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	(:  
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
	
д
9__inference_batch_normalization_127_layer_call_fn_6039791

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identityЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_60381512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ[`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ[`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ[`
 
_user_specified_nameinputs
Ф
i
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_6040430

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:џџџџџџџџџ
*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
о
N
2__inference_max_pooling2d_27_layer_call_fn_6039819

inputs
identityё
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_60375492
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
и
9__inference_batch_normalization_131_layer_call_fn_6040420

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_60385022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039734

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ[`:`:`:`:`:*
epsilon%o:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ[`2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ[`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ[`
 
_user_specified_nameinputs
ѕ

G__inference_conv2d_158_layer_call_and_return_conditional_losses_6038178

inputs9
conv2d_readvariableop_resource:`.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ-2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ-2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ-`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ-`
 
_user_specified_nameinputs
Ж
є
,__inference_alex_net_5_layer_call_fn_6039660

inputs!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	(

unknown_30:
identityЂStatefulPartitionedCall
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
:џџџџџџџџџ*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_alex_net_5_layer_call_and_return_conditional_losses_60389032
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
Њ
Ч
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039880

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я	
и
9__inference_batch_normalization_131_layer_call_fn_6040394

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_60380282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

У
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039716

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`:`:`:`:`:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
­
Ѓ
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6038339

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЙЌ

#__inference__traced_restore_6040744
file_prefix<
"assignvariableop_conv2d_157_kernel:`0
"assignvariableop_1_conv2d_157_bias:`>
0assignvariableop_2_batch_normalization_127_gamma:`=
/assignvariableop_3_batch_normalization_127_beta:`D
6assignvariableop_4_batch_normalization_127_moving_mean:`H
:assignvariableop_5_batch_normalization_127_moving_variance:`?
$assignvariableop_6_conv2d_158_kernel:`1
"assignvariableop_7_conv2d_158_bias:	?
0assignvariableop_8_batch_normalization_128_gamma:	>
/assignvariableop_9_batch_normalization_128_beta:	F
7assignvariableop_10_batch_normalization_128_moving_mean:	J
;assignvariableop_11_batch_normalization_128_moving_variance:	A
%assignvariableop_12_conv2d_159_kernel:2
#assignvariableop_13_conv2d_159_bias:	@
1assignvariableop_14_batch_normalization_129_gamma:	?
0assignvariableop_15_batch_normalization_129_beta:	F
7assignvariableop_16_batch_normalization_129_moving_mean:	J
;assignvariableop_17_batch_normalization_129_moving_variance:	A
%assignvariableop_18_conv2d_160_kernel:2
#assignvariableop_19_conv2d_160_bias:	@
1assignvariableop_20_batch_normalization_130_gamma:	?
0assignvariableop_21_batch_normalization_130_beta:	F
7assignvariableop_22_batch_normalization_130_moving_mean:	J
;assignvariableop_23_batch_normalization_130_moving_variance:	A
%assignvariableop_24_conv2d_161_kernel:2
#assignvariableop_25_conv2d_161_bias:	@
1assignvariableop_26_batch_normalization_131_gamma:	?
0assignvariableop_27_batch_normalization_131_beta:	F
7assignvariableop_28_batch_normalization_131_moving_mean:	J
;assignvariableop_29_batch_normalization_131_moving_variance:	6
#assignvariableop_30_dense_23_kernel:	(/
!assignvariableop_31_dense_23_bias:&
assignvariableop_32_sgd_iter:	 '
assignvariableop_33_sgd_decay: /
%assignvariableop_34_sgd_learning_rate: *
 assignvariableop_35_sgd_momentum: #
assignvariableop_36_total: #
assignvariableop_37_count: %
assignvariableop_38_total_1: %
assignvariableop_39_count_1: 
identity_41ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ц
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ђ
valueшBх)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesр
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesћ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesЇ
Є:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЁ
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_157_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ї
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_157_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Е
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_127_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Д
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_127_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Л
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_127_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5П
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_127_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Љ
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_158_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ї
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_158_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Е
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_128_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Д
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_128_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10П
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_128_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11У
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_128_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12­
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_159_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ћ
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_159_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Й
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_129_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15И
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_129_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16П
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_129_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17У
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_129_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18­
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_160_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ћ
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_160_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Й
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_130_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21И
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_130_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22П
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_130_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23У
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_130_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24­
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_161_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ћ
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_161_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Й
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_131_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27И
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_131_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28П
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_131_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29У
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_131_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ћ
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_23_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Љ
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_23_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_32Є
AssignVariableOp_32AssignVariableOpassignvariableop_32_sgd_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ѕ
AssignVariableOp_33AssignVariableOpassignvariableop_33_sgd_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34­
AssignVariableOp_34AssignVariableOp%assignvariableop_34_sgd_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Ј
AssignVariableOp_35AssignVariableOp assignvariableop_35_sgd_momentumIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ё
AssignVariableOp_36AssignVariableOpassignvariableop_36_totalIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Ё
AssignVariableOp_37AssignVariableOpassignvariableop_37_countIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ѓ
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Ѓ
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_399
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЮ
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_40f
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_41Ж
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


T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6038151

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ[`:`:`:`:`:*
epsilon%o:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ[`2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ[`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ[`
 
_user_specified_nameinputs
Я	
и
9__inference_batch_normalization_130_layer_call_fn_6040250

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_60379022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
и
9__inference_batch_normalization_129_layer_call_fn_6040132

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_60386102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Р
i
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6038165

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ-`*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ-`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ[`:W S
/
_output_shapes
:џџџџџџџџџ[`
 
_user_specified_nameinputs
Њ
Ч
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6037628

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
с
Ч
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040224

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1н
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ф
i
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_6038353

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:џџџџџџџџџ
*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
i
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_6040425

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
­
Ѓ
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6038201

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ-:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ-2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ-: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
ы
c
G__inference_flatten_11_layer_call_and_return_conditional_losses_6038361

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ(2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ
:X T
0
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
б	
и
9__inference_batch_normalization_131_layer_call_fn_6040381

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_60379842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ц

T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039698

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`:`:`:`:`:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
с
Ч
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039916

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1н
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ-:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ-2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ-: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
	
и
9__inference_batch_normalization_129_layer_call_fn_6040119

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_60382512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
Є
,__inference_conv2d_161_layer_call_fn_6040296

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_161_layer_call_and_return_conditional_losses_60383162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
о
N
2__inference_max_pooling2d_29_layer_call_fn_6040435

inputs
identityё
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_60380972
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ

*__inference_dense_23_layer_call_fn_6040471

inputs
unknown:	(
	unknown_0:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_60383742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ(: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
Я	
и
9__inference_batch_normalization_129_layer_call_fn_6040106

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_60377762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Y
т
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039122
conv2d_157_input,
conv2d_157_6039042:` 
conv2d_157_6039044:`-
batch_normalization_127_6039047:`-
batch_normalization_127_6039049:`-
batch_normalization_127_6039051:`-
batch_normalization_127_6039053:`-
conv2d_158_6039057:`!
conv2d_158_6039059:	.
batch_normalization_128_6039062:	.
batch_normalization_128_6039064:	.
batch_normalization_128_6039066:	.
batch_normalization_128_6039068:	.
conv2d_159_6039072:!
conv2d_159_6039074:	.
batch_normalization_129_6039077:	.
batch_normalization_129_6039079:	.
batch_normalization_129_6039081:	.
batch_normalization_129_6039083:	.
conv2d_160_6039086:!
conv2d_160_6039088:	.
batch_normalization_130_6039091:	.
batch_normalization_130_6039093:	.
batch_normalization_130_6039095:	.
batch_normalization_130_6039097:	.
conv2d_161_6039100:!
conv2d_161_6039102:	.
batch_normalization_131_6039105:	.
batch_normalization_131_6039107:	.
batch_normalization_131_6039109:	.
batch_normalization_131_6039111:	#
dense_23_6039116:	(
dense_23_6039118:
identityЂ/batch_normalization_127/StatefulPartitionedCallЂ/batch_normalization_128/StatefulPartitionedCallЂ/batch_normalization_129/StatefulPartitionedCallЂ/batch_normalization_130/StatefulPartitionedCallЂ/batch_normalization_131/StatefulPartitionedCallЂ"conv2d_157/StatefulPartitionedCallЂ"conv2d_158/StatefulPartitionedCallЂ"conv2d_159/StatefulPartitionedCallЂ"conv2d_160/StatefulPartitionedCallЂ"conv2d_161/StatefulPartitionedCallЂ dense_23/StatefulPartitionedCallЖ
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCallconv2d_157_inputconv2d_157_6039042conv2d_157_6039044*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_157_layer_call_and_return_conditional_losses_60381282$
"conv2d_157/StatefulPartitionedCallи
/batch_normalization_127/StatefulPartitionedCallStatefulPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0batch_normalization_127_6039047batch_normalization_127_6039049batch_normalization_127_6039051batch_normalization_127_6039053*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_603815121
/batch_normalization_127/StatefulPartitionedCallЊ
 max_pooling2d_27/PartitionedCallPartitionedCall8batch_normalization_127/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_60381652"
 max_pooling2d_27/PartitionedCallа
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0conv2d_158_6039057conv2d_158_6039059*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_158_layer_call_and_return_conditional_losses_60381782$
"conv2d_158/StatefulPartitionedCallй
/batch_normalization_128/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0batch_normalization_128_6039062batch_normalization_128_6039064batch_normalization_128_6039066batch_normalization_128_6039068*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_603820121
/batch_normalization_128/StatefulPartitionedCallЋ
 max_pooling2d_28/PartitionedCallPartitionedCall8batch_normalization_128/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_60382152"
 max_pooling2d_28/PartitionedCallа
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0conv2d_159_6039072conv2d_159_6039074*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_159_layer_call_and_return_conditional_losses_60382282$
"conv2d_159/StatefulPartitionedCallй
/batch_normalization_129/StatefulPartitionedCallStatefulPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0batch_normalization_129_6039077batch_normalization_129_6039079batch_normalization_129_6039081batch_normalization_129_6039083*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_603825121
/batch_normalization_129/StatefulPartitionedCallп
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_129/StatefulPartitionedCall:output:0conv2d_160_6039086conv2d_160_6039088*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_160_layer_call_and_return_conditional_losses_60382722$
"conv2d_160/StatefulPartitionedCallй
/batch_normalization_130/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0batch_normalization_130_6039091batch_normalization_130_6039093batch_normalization_130_6039095batch_normalization_130_6039097*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_603829521
/batch_normalization_130/StatefulPartitionedCallп
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_130/StatefulPartitionedCall:output:0conv2d_161_6039100conv2d_161_6039102*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_161_layer_call_and_return_conditional_losses_60383162$
"conv2d_161/StatefulPartitionedCallй
/batch_normalization_131/StatefulPartitionedCallStatefulPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0batch_normalization_131_6039105batch_normalization_131_6039107batch_normalization_131_6039109batch_normalization_131_6039111*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_603833921
/batch_normalization_131/StatefulPartitionedCallЋ
 max_pooling2d_29/PartitionedCallPartitionedCall8batch_normalization_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_60383532"
 max_pooling2d_29/PartitionedCall
flatten_11/PartitionedCallPartitionedCall)max_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_60383612
flatten_11/PartitionedCallЗ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_23_6039116dense_23_6039118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_60383742"
 dense_23/StatefulPartitionedCall
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЄ
NoOpNoOp0^batch_normalization_127/StatefulPartitionedCall0^batch_normalization_128/StatefulPartitionedCall0^batch_normalization_129/StatefulPartitionedCall0^batch_normalization_130/StatefulPartitionedCall0^batch_normalization_131/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_127/StatefulPartitionedCall/batch_normalization_127/StatefulPartitionedCall2b
/batch_normalization_128/StatefulPartitionedCall/batch_normalization_128/StatefulPartitionedCall2b
/batch_normalization_129/StatefulPartitionedCall/batch_normalization_129/StatefulPartitionedCall2b
/batch_normalization_130/StatefulPartitionedCall/batch_normalization_130/StatefulPartitionedCall2b
/batch_normalization_131/StatefulPartitionedCall/batch_normalization_131/StatefulPartitionedCall2H
"conv2d_157/StatefulPartitionedCall"conv2d_157/StatefulPartitionedCall2H
"conv2d_158/StatefulPartitionedCall"conv2d_158/StatefulPartitionedCall2H
"conv2d_159/StatefulPartitionedCall"conv2d_159/StatefulPartitionedCall2H
"conv2d_160/StatefulPartitionedCall"conv2d_160/StatefulPartitionedCall2H
"conv2d_161/StatefulPartitionedCall"conv2d_161/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџє
*
_user_specified_nameconv2d_157_input
	
и
9__inference_batch_normalization_130_layer_call_fn_6040263

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_60382952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ

G__inference_conv2d_161_layer_call_and_return_conditional_losses_6040287

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ф
i
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_6039978

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ-:X T
0
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
і
Ѓ
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040026

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
їX
и
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6038381

inputs,
conv2d_157_6038129:` 
conv2d_157_6038131:`-
batch_normalization_127_6038152:`-
batch_normalization_127_6038154:`-
batch_normalization_127_6038156:`-
batch_normalization_127_6038158:`-
conv2d_158_6038179:`!
conv2d_158_6038181:	.
batch_normalization_128_6038202:	.
batch_normalization_128_6038204:	.
batch_normalization_128_6038206:	.
batch_normalization_128_6038208:	.
conv2d_159_6038229:!
conv2d_159_6038231:	.
batch_normalization_129_6038252:	.
batch_normalization_129_6038254:	.
batch_normalization_129_6038256:	.
batch_normalization_129_6038258:	.
conv2d_160_6038273:!
conv2d_160_6038275:	.
batch_normalization_130_6038296:	.
batch_normalization_130_6038298:	.
batch_normalization_130_6038300:	.
batch_normalization_130_6038302:	.
conv2d_161_6038317:!
conv2d_161_6038319:	.
batch_normalization_131_6038340:	.
batch_normalization_131_6038342:	.
batch_normalization_131_6038344:	.
batch_normalization_131_6038346:	#
dense_23_6038375:	(
dense_23_6038377:
identityЂ/batch_normalization_127/StatefulPartitionedCallЂ/batch_normalization_128/StatefulPartitionedCallЂ/batch_normalization_129/StatefulPartitionedCallЂ/batch_normalization_130/StatefulPartitionedCallЂ/batch_normalization_131/StatefulPartitionedCallЂ"conv2d_157/StatefulPartitionedCallЂ"conv2d_158/StatefulPartitionedCallЂ"conv2d_159/StatefulPartitionedCallЂ"conv2d_160/StatefulPartitionedCallЂ"conv2d_161/StatefulPartitionedCallЂ dense_23/StatefulPartitionedCallЌ
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_157_6038129conv2d_157_6038131*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_157_layer_call_and_return_conditional_losses_60381282$
"conv2d_157/StatefulPartitionedCallи
/batch_normalization_127/StatefulPartitionedCallStatefulPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0batch_normalization_127_6038152batch_normalization_127_6038154batch_normalization_127_6038156batch_normalization_127_6038158*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_603815121
/batch_normalization_127/StatefulPartitionedCallЊ
 max_pooling2d_27/PartitionedCallPartitionedCall8batch_normalization_127/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_60381652"
 max_pooling2d_27/PartitionedCallа
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0conv2d_158_6038179conv2d_158_6038181*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_158_layer_call_and_return_conditional_losses_60381782$
"conv2d_158/StatefulPartitionedCallй
/batch_normalization_128/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0batch_normalization_128_6038202batch_normalization_128_6038204batch_normalization_128_6038206batch_normalization_128_6038208*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_603820121
/batch_normalization_128/StatefulPartitionedCallЋ
 max_pooling2d_28/PartitionedCallPartitionedCall8batch_normalization_128/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_60382152"
 max_pooling2d_28/PartitionedCallа
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0conv2d_159_6038229conv2d_159_6038231*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_159_layer_call_and_return_conditional_losses_60382282$
"conv2d_159/StatefulPartitionedCallй
/batch_normalization_129/StatefulPartitionedCallStatefulPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0batch_normalization_129_6038252batch_normalization_129_6038254batch_normalization_129_6038256batch_normalization_129_6038258*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_603825121
/batch_normalization_129/StatefulPartitionedCallп
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_129/StatefulPartitionedCall:output:0conv2d_160_6038273conv2d_160_6038275*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_160_layer_call_and_return_conditional_losses_60382722$
"conv2d_160/StatefulPartitionedCallй
/batch_normalization_130/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0batch_normalization_130_6038296batch_normalization_130_6038298batch_normalization_130_6038300batch_normalization_130_6038302*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_603829521
/batch_normalization_130/StatefulPartitionedCallп
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_130/StatefulPartitionedCall:output:0conv2d_161_6038317conv2d_161_6038319*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_161_layer_call_and_return_conditional_losses_60383162$
"conv2d_161/StatefulPartitionedCallй
/batch_normalization_131/StatefulPartitionedCallStatefulPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0batch_normalization_131_6038340batch_normalization_131_6038342batch_normalization_131_6038344batch_normalization_131_6038346*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_603833921
/batch_normalization_131/StatefulPartitionedCallЋ
 max_pooling2d_29/PartitionedCallPartitionedCall8batch_normalization_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_60383532"
 max_pooling2d_29/PartitionedCall
flatten_11/PartitionedCallPartitionedCall)max_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_60383612
flatten_11/PartitionedCallЗ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_23_6038375dense_23_6038377*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_60383742"
 dense_23/StatefulPartitionedCall
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЄ
NoOpNoOp0^batch_normalization_127/StatefulPartitionedCall0^batch_normalization_128/StatefulPartitionedCall0^batch_normalization_129/StatefulPartitionedCall0^batch_normalization_130/StatefulPartitionedCall0^batch_normalization_131/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_127/StatefulPartitionedCall/batch_normalization_127/StatefulPartitionedCall2b
/batch_normalization_128/StatefulPartitionedCall/batch_normalization_128/StatefulPartitionedCall2b
/batch_normalization_129/StatefulPartitionedCall/batch_normalization_129/StatefulPartitionedCall2b
/batch_normalization_130/StatefulPartitionedCall/batch_normalization_130/StatefulPartitionedCall2b
/batch_normalization_131/StatefulPartitionedCall/batch_normalization_131/StatefulPartitionedCall2H
"conv2d_157/StatefulPartitionedCall"conv2d_157/StatefulPartitionedCall2H
"conv2d_158/StatefulPartitionedCall"conv2d_158/StatefulPartitionedCall2H
"conv2d_159/StatefulPartitionedCall"conv2d_159/StatefulPartitionedCall2H
"conv2d_160/StatefulPartitionedCall"conv2d_160/StatefulPartitionedCall2H
"conv2d_161/StatefulPartitionedCall"conv2d_161/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
	
и
9__inference_batch_normalization_130_layer_call_fn_6040276

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_60385562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ

G__inference_conv2d_159_layer_call_and_return_conditional_losses_6038228

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Щ	
д
9__inference_batch_normalization_127_layer_call_fn_6039765

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identityЂStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_60374362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
Y
т
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039205
conv2d_157_input,
conv2d_157_6039125:` 
conv2d_157_6039127:`-
batch_normalization_127_6039130:`-
batch_normalization_127_6039132:`-
batch_normalization_127_6039134:`-
batch_normalization_127_6039136:`-
conv2d_158_6039140:`!
conv2d_158_6039142:	.
batch_normalization_128_6039145:	.
batch_normalization_128_6039147:	.
batch_normalization_128_6039149:	.
batch_normalization_128_6039151:	.
conv2d_159_6039155:!
conv2d_159_6039157:	.
batch_normalization_129_6039160:	.
batch_normalization_129_6039162:	.
batch_normalization_129_6039164:	.
batch_normalization_129_6039166:	.
conv2d_160_6039169:!
conv2d_160_6039171:	.
batch_normalization_130_6039174:	.
batch_normalization_130_6039176:	.
batch_normalization_130_6039178:	.
batch_normalization_130_6039180:	.
conv2d_161_6039183:!
conv2d_161_6039185:	.
batch_normalization_131_6039188:	.
batch_normalization_131_6039190:	.
batch_normalization_131_6039192:	.
batch_normalization_131_6039194:	#
dense_23_6039199:	(
dense_23_6039201:
identityЂ/batch_normalization_127/StatefulPartitionedCallЂ/batch_normalization_128/StatefulPartitionedCallЂ/batch_normalization_129/StatefulPartitionedCallЂ/batch_normalization_130/StatefulPartitionedCallЂ/batch_normalization_131/StatefulPartitionedCallЂ"conv2d_157/StatefulPartitionedCallЂ"conv2d_158/StatefulPartitionedCallЂ"conv2d_159/StatefulPartitionedCallЂ"conv2d_160/StatefulPartitionedCallЂ"conv2d_161/StatefulPartitionedCallЂ dense_23/StatefulPartitionedCallЖ
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCallconv2d_157_inputconv2d_157_6039125conv2d_157_6039127*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_157_layer_call_and_return_conditional_losses_60381282$
"conv2d_157/StatefulPartitionedCallж
/batch_normalization_127/StatefulPartitionedCallStatefulPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0batch_normalization_127_6039130batch_normalization_127_6039132batch_normalization_127_6039134batch_normalization_127_6039136*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ[`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_603872821
/batch_normalization_127/StatefulPartitionedCallЊ
 max_pooling2d_27/PartitionedCallPartitionedCall8batch_normalization_127/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_60381652"
 max_pooling2d_27/PartitionedCallа
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0conv2d_158_6039140conv2d_158_6039142*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_158_layer_call_and_return_conditional_losses_60381782$
"conv2d_158/StatefulPartitionedCallз
/batch_normalization_128/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0batch_normalization_128_6039145batch_normalization_128_6039147batch_normalization_128_6039149batch_normalization_128_6039151*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_603866921
/batch_normalization_128/StatefulPartitionedCallЋ
 max_pooling2d_28/PartitionedCallPartitionedCall8batch_normalization_128/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_60382152"
 max_pooling2d_28/PartitionedCallа
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0conv2d_159_6039155conv2d_159_6039157*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_159_layer_call_and_return_conditional_losses_60382282$
"conv2d_159/StatefulPartitionedCallз
/batch_normalization_129/StatefulPartitionedCallStatefulPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0batch_normalization_129_6039160batch_normalization_129_6039162batch_normalization_129_6039164batch_normalization_129_6039166*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_603861021
/batch_normalization_129/StatefulPartitionedCallп
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_129/StatefulPartitionedCall:output:0conv2d_160_6039169conv2d_160_6039171*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_160_layer_call_and_return_conditional_losses_60382722$
"conv2d_160/StatefulPartitionedCallз
/batch_normalization_130/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0batch_normalization_130_6039174batch_normalization_130_6039176batch_normalization_130_6039178batch_normalization_130_6039180*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_603855621
/batch_normalization_130/StatefulPartitionedCallп
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_130/StatefulPartitionedCall:output:0conv2d_161_6039183conv2d_161_6039185*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_161_layer_call_and_return_conditional_losses_60383162$
"conv2d_161/StatefulPartitionedCallз
/batch_normalization_131/StatefulPartitionedCallStatefulPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0batch_normalization_131_6039188batch_normalization_131_6039190batch_normalization_131_6039192batch_normalization_131_6039194*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_603850221
/batch_normalization_131/StatefulPartitionedCallЋ
 max_pooling2d_29/PartitionedCallPartitionedCall8batch_normalization_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_60383532"
 max_pooling2d_29/PartitionedCall
flatten_11/PartitionedCallPartitionedCall)max_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_60383612
flatten_11/PartitionedCallЗ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_23_6039199dense_23_6039201*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_60383742"
 dense_23/StatefulPartitionedCall
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЄ
NoOpNoOp0^batch_normalization_127/StatefulPartitionedCall0^batch_normalization_128/StatefulPartitionedCall0^batch_normalization_129/StatefulPartitionedCall0^batch_normalization_130/StatefulPartitionedCall0^batch_normalization_131/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_127/StatefulPartitionedCall/batch_normalization_127/StatefulPartitionedCall2b
/batch_normalization_128/StatefulPartitionedCall/batch_normalization_128/StatefulPartitionedCall2b
/batch_normalization_129/StatefulPartitionedCall/batch_normalization_129/StatefulPartitionedCall2b
/batch_normalization_130/StatefulPartitionedCall/batch_normalization_130/StatefulPartitionedCall2b
/batch_normalization_131/StatefulPartitionedCall/batch_normalization_131/StatefulPartitionedCall2H
"conv2d_157/StatefulPartitionedCall"conv2d_157/StatefulPartitionedCall2H
"conv2d_158/StatefulPartitionedCall"conv2d_158/StatefulPartitionedCall2H
"conv2d_159/StatefulPartitionedCall"conv2d_159/StatefulPartitionedCall2H
"conv2d_160/StatefulPartitionedCall"conv2d_160/StatefulPartitionedCall2H
"conv2d_161/StatefulPartitionedCall"conv2d_161/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџє
*
_user_specified_nameconv2d_157_input
Њ
Ч
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040332

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
эЉ
В
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039401

inputsC
)conv2d_157_conv2d_readvariableop_resource:`8
*conv2d_157_biasadd_readvariableop_resource:`=
/batch_normalization_127_readvariableop_resource:`?
1batch_normalization_127_readvariableop_1_resource:`N
@batch_normalization_127_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_127_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_158_conv2d_readvariableop_resource:`9
*conv2d_158_biasadd_readvariableop_resource:	>
/batch_normalization_128_readvariableop_resource:	@
1batch_normalization_128_readvariableop_1_resource:	O
@batch_normalization_128_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_128_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_159_conv2d_readvariableop_resource:9
*conv2d_159_biasadd_readvariableop_resource:	>
/batch_normalization_129_readvariableop_resource:	@
1batch_normalization_129_readvariableop_1_resource:	O
@batch_normalization_129_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_129_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_160_conv2d_readvariableop_resource:9
*conv2d_160_biasadd_readvariableop_resource:	>
/batch_normalization_130_readvariableop_resource:	@
1batch_normalization_130_readvariableop_1_resource:	O
@batch_normalization_130_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_161_conv2d_readvariableop_resource:9
*conv2d_161_biasadd_readvariableop_resource:	>
/batch_normalization_131_readvariableop_resource:	@
1batch_normalization_131_readvariableop_1_resource:	O
@batch_normalization_131_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_131_fusedbatchnormv3_readvariableop_1_resource:	:
'dense_23_matmul_readvariableop_resource:	(6
(dense_23_biasadd_readvariableop_resource:
identityЂ7batch_normalization_127/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_127/ReadVariableOpЂ(batch_normalization_127/ReadVariableOp_1Ђ7batch_normalization_128/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_128/ReadVariableOpЂ(batch_normalization_128/ReadVariableOp_1Ђ7batch_normalization_129/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_129/ReadVariableOpЂ(batch_normalization_129/ReadVariableOp_1Ђ7batch_normalization_130/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_130/ReadVariableOpЂ(batch_normalization_130/ReadVariableOp_1Ђ7batch_normalization_131/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_131/ReadVariableOpЂ(batch_normalization_131/ReadVariableOp_1Ђ!conv2d_157/BiasAdd/ReadVariableOpЂ conv2d_157/Conv2D/ReadVariableOpЂ!conv2d_158/BiasAdd/ReadVariableOpЂ conv2d_158/Conv2D/ReadVariableOpЂ!conv2d_159/BiasAdd/ReadVariableOpЂ conv2d_159/Conv2D/ReadVariableOpЂ!conv2d_160/BiasAdd/ReadVariableOpЂ conv2d_160/Conv2D/ReadVariableOpЂ!conv2d_161/BiasAdd/ReadVariableOpЂ conv2d_161/Conv2D/ReadVariableOpЂdense_23/BiasAdd/ReadVariableOpЂdense_23/MatMul/ReadVariableOpЖ
 conv2d_157/Conv2D/ReadVariableOpReadVariableOp)conv2d_157_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_157/Conv2D/ReadVariableOpХ
conv2d_157/Conv2DConv2Dinputs(conv2d_157/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`*
paddingVALID*
strides
2
conv2d_157/Conv2D­
!conv2d_157/BiasAdd/ReadVariableOpReadVariableOp*conv2d_157_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_157/BiasAdd/ReadVariableOpД
conv2d_157/BiasAddBiasAddconv2d_157/Conv2D:output:0)conv2d_157/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2
conv2d_157/BiasAdd
conv2d_157/ReluReluconv2d_157/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2
conv2d_157/ReluМ
&batch_normalization_127/ReadVariableOpReadVariableOp/batch_normalization_127_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_127/ReadVariableOpТ
(batch_normalization_127/ReadVariableOp_1ReadVariableOp1batch_normalization_127_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_127/ReadVariableOp_1я
7batch_normalization_127/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_127_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_127/FusedBatchNormV3/ReadVariableOpѕ
9batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_127_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1ё
(batch_normalization_127/FusedBatchNormV3FusedBatchNormV3conv2d_157/Relu:activations:0.batch_normalization_127/ReadVariableOp:value:00batch_normalization_127/ReadVariableOp_1:value:0?batch_normalization_127/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_127/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ[`:`:`:`:`:*
epsilon%o:*
is_training( 2*
(batch_normalization_127/FusedBatchNormV3к
max_pooling2d_27/MaxPoolMaxPool,batch_normalization_127/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_27/MaxPoolЗ
 conv2d_158/Conv2D/ReadVariableOpReadVariableOp)conv2d_158_conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02"
 conv2d_158/Conv2D/ReadVariableOpр
conv2d_158/Conv2DConv2D!max_pooling2d_27/MaxPool:output:0(conv2d_158/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides
2
conv2d_158/Conv2DЎ
!conv2d_158/BiasAdd/ReadVariableOpReadVariableOp*conv2d_158_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!conv2d_158/BiasAdd/ReadVariableOpЕ
conv2d_158/BiasAddBiasAddconv2d_158/Conv2D:output:0)conv2d_158/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-2
conv2d_158/BiasAdd
conv2d_158/ReluReluconv2d_158/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ-2
conv2d_158/ReluН
&batch_normalization_128/ReadVariableOpReadVariableOp/batch_normalization_128_readvariableop_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_128/ReadVariableOpУ
(batch_normalization_128/ReadVariableOp_1ReadVariableOp1batch_normalization_128_readvariableop_1_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_128/ReadVariableOp_1№
7batch_normalization_128/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_128_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype029
7batch_normalization_128/FusedBatchNormV3/ReadVariableOpі
9batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_128_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02;
9batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1і
(batch_normalization_128/FusedBatchNormV3FusedBatchNormV3conv2d_158/Relu:activations:0.batch_normalization_128/ReadVariableOp:value:00batch_normalization_128/ReadVariableOp_1:value:0?batch_normalization_128/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_128/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ-:::::*
epsilon%o:*
is_training( 2*
(batch_normalization_128/FusedBatchNormV3л
max_pooling2d_28/MaxPoolMaxPool,batch_normalization_128/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_28/MaxPoolИ
 conv2d_159/Conv2D/ReadVariableOpReadVariableOp)conv2d_159_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02"
 conv2d_159/Conv2D/ReadVariableOpр
conv2d_159/Conv2DConv2D!max_pooling2d_28/MaxPool:output:0(conv2d_159/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_159/Conv2DЎ
!conv2d_159/BiasAdd/ReadVariableOpReadVariableOp*conv2d_159_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!conv2d_159/BiasAdd/ReadVariableOpЕ
conv2d_159/BiasAddBiasAddconv2d_159/Conv2D:output:0)conv2d_159/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_159/BiasAdd
conv2d_159/ReluReluconv2d_159/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_159/ReluН
&batch_normalization_129/ReadVariableOpReadVariableOp/batch_normalization_129_readvariableop_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_129/ReadVariableOpУ
(batch_normalization_129/ReadVariableOp_1ReadVariableOp1batch_normalization_129_readvariableop_1_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_129/ReadVariableOp_1№
7batch_normalization_129/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_129_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype029
7batch_normalization_129/FusedBatchNormV3/ReadVariableOpі
9batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_129_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02;
9batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1і
(batch_normalization_129/FusedBatchNormV3FusedBatchNormV3conv2d_159/Relu:activations:0.batch_normalization_129/ReadVariableOp:value:00batch_normalization_129/ReadVariableOp_1:value:0?batch_normalization_129/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_129/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 2*
(batch_normalization_129/FusedBatchNormV3И
 conv2d_160/Conv2D/ReadVariableOpReadVariableOp)conv2d_160_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02"
 conv2d_160/Conv2D/ReadVariableOpы
conv2d_160/Conv2DConv2D,batch_normalization_129/FusedBatchNormV3:y:0(conv2d_160/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_160/Conv2DЎ
!conv2d_160/BiasAdd/ReadVariableOpReadVariableOp*conv2d_160_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!conv2d_160/BiasAdd/ReadVariableOpЕ
conv2d_160/BiasAddBiasAddconv2d_160/Conv2D:output:0)conv2d_160/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_160/BiasAdd
conv2d_160/ReluReluconv2d_160/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_160/ReluН
&batch_normalization_130/ReadVariableOpReadVariableOp/batch_normalization_130_readvariableop_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_130/ReadVariableOpУ
(batch_normalization_130/ReadVariableOp_1ReadVariableOp1batch_normalization_130_readvariableop_1_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_130/ReadVariableOp_1№
7batch_normalization_130/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_130_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype029
7batch_normalization_130/FusedBatchNormV3/ReadVariableOpі
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02;
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1і
(batch_normalization_130/FusedBatchNormV3FusedBatchNormV3conv2d_160/Relu:activations:0.batch_normalization_130/ReadVariableOp:value:00batch_normalization_130/ReadVariableOp_1:value:0?batch_normalization_130/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_130/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 2*
(batch_normalization_130/FusedBatchNormV3И
 conv2d_161/Conv2D/ReadVariableOpReadVariableOp)conv2d_161_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02"
 conv2d_161/Conv2D/ReadVariableOpы
conv2d_161/Conv2DConv2D,batch_normalization_130/FusedBatchNormV3:y:0(conv2d_161/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_161/Conv2DЎ
!conv2d_161/BiasAdd/ReadVariableOpReadVariableOp*conv2d_161_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!conv2d_161/BiasAdd/ReadVariableOpЕ
conv2d_161/BiasAddBiasAddconv2d_161/Conv2D:output:0)conv2d_161/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_161/BiasAdd
conv2d_161/ReluReluconv2d_161/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_161/ReluН
&batch_normalization_131/ReadVariableOpReadVariableOp/batch_normalization_131_readvariableop_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_131/ReadVariableOpУ
(batch_normalization_131/ReadVariableOp_1ReadVariableOp1batch_normalization_131_readvariableop_1_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_131/ReadVariableOp_1№
7batch_normalization_131/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_131_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype029
7batch_normalization_131/FusedBatchNormV3/ReadVariableOpі
9batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_131_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02;
9batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1і
(batch_normalization_131/FusedBatchNormV3FusedBatchNormV3conv2d_161/Relu:activations:0.batch_normalization_131/ReadVariableOp:value:00batch_normalization_131/ReadVariableOp_1:value:0?batch_normalization_131/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_131/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( 2*
(batch_normalization_131/FusedBatchNormV3л
max_pooling2d_29/MaxPoolMaxPool,batch_normalization_131/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_29/MaxPoolu
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_11/ConstЄ
flatten_11/ReshapeReshape!max_pooling2d_29/MaxPool:output:0flatten_11/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ(2
flatten_11/ReshapeЉ
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	(*
dtype02 
dense_23/MatMul/ReadVariableOpЃ
dense_23/MatMulMatMulflatten_11/Reshape:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/MatMulЇ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpЅ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/BiasAdd|
dense_23/SigmoidSigmoiddense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/Sigmoido
IdentityIdentitydense_23/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityц
NoOpNoOp8^batch_normalization_127/FusedBatchNormV3/ReadVariableOp:^batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_127/ReadVariableOp)^batch_normalization_127/ReadVariableOp_18^batch_normalization_128/FusedBatchNormV3/ReadVariableOp:^batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_128/ReadVariableOp)^batch_normalization_128/ReadVariableOp_18^batch_normalization_129/FusedBatchNormV3/ReadVariableOp:^batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_129/ReadVariableOp)^batch_normalization_129/ReadVariableOp_18^batch_normalization_130/FusedBatchNormV3/ReadVariableOp:^batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_130/ReadVariableOp)^batch_normalization_130/ReadVariableOp_18^batch_normalization_131/FusedBatchNormV3/ReadVariableOp:^batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_131/ReadVariableOp)^batch_normalization_131/ReadVariableOp_1"^conv2d_157/BiasAdd/ReadVariableOp!^conv2d_157/Conv2D/ReadVariableOp"^conv2d_158/BiasAdd/ReadVariableOp!^conv2d_158/Conv2D/ReadVariableOp"^conv2d_159/BiasAdd/ReadVariableOp!^conv2d_159/Conv2D/ReadVariableOp"^conv2d_160/BiasAdd/ReadVariableOp!^conv2d_160/Conv2D/ReadVariableOp"^conv2d_161/BiasAdd/ReadVariableOp!^conv2d_161/Conv2D/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_127/FusedBatchNormV3/ReadVariableOp7batch_normalization_127/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_127/FusedBatchNormV3/ReadVariableOp_19batch_normalization_127/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_127/ReadVariableOp&batch_normalization_127/ReadVariableOp2T
(batch_normalization_127/ReadVariableOp_1(batch_normalization_127/ReadVariableOp_12r
7batch_normalization_128/FusedBatchNormV3/ReadVariableOp7batch_normalization_128/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_128/FusedBatchNormV3/ReadVariableOp_19batch_normalization_128/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_128/ReadVariableOp&batch_normalization_128/ReadVariableOp2T
(batch_normalization_128/ReadVariableOp_1(batch_normalization_128/ReadVariableOp_12r
7batch_normalization_129/FusedBatchNormV3/ReadVariableOp7batch_normalization_129/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_129/FusedBatchNormV3/ReadVariableOp_19batch_normalization_129/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_129/ReadVariableOp&batch_normalization_129/ReadVariableOp2T
(batch_normalization_129/ReadVariableOp_1(batch_normalization_129/ReadVariableOp_12r
7batch_normalization_130/FusedBatchNormV3/ReadVariableOp7batch_normalization_130/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_19batch_normalization_130/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_130/ReadVariableOp&batch_normalization_130/ReadVariableOp2T
(batch_normalization_130/ReadVariableOp_1(batch_normalization_130/ReadVariableOp_12r
7batch_normalization_131/FusedBatchNormV3/ReadVariableOp7batch_normalization_131/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_131/FusedBatchNormV3/ReadVariableOp_19batch_normalization_131/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_131/ReadVariableOp&batch_normalization_131/ReadVariableOp2T
(batch_normalization_131/ReadVariableOp_1(batch_normalization_131/ReadVariableOp_12F
!conv2d_157/BiasAdd/ReadVariableOp!conv2d_157/BiasAdd/ReadVariableOp2D
 conv2d_157/Conv2D/ReadVariableOp conv2d_157/Conv2D/ReadVariableOp2F
!conv2d_158/BiasAdd/ReadVariableOp!conv2d_158/BiasAdd/ReadVariableOp2D
 conv2d_158/Conv2D/ReadVariableOp conv2d_158/Conv2D/ReadVariableOp2F
!conv2d_159/BiasAdd/ReadVariableOp!conv2d_159/BiasAdd/ReadVariableOp2D
 conv2d_159/Conv2D/ReadVariableOp conv2d_159/Conv2D/ReadVariableOp2F
!conv2d_160/BiasAdd/ReadVariableOp!conv2d_160/BiasAdd/ReadVariableOp2D
 conv2d_160/Conv2D/ReadVariableOp conv2d_160/Conv2D/ReadVariableOp2F
!conv2d_161/BiasAdd/ReadVariableOp!conv2d_161/BiasAdd/ReadVariableOp2D
 conv2d_161/Conv2D/ReadVariableOp conv2d_161/Conv2D/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs

ї
E__inference_dense_23_layer_call_and_return_conditional_losses_6040462

inputs1
matmul_readvariableop_resource:	(-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
с
Ч
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6038610

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1н
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
Ч
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040188

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3Т
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueЮ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identityм
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
са
ж 
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039522

inputsC
)conv2d_157_conv2d_readvariableop_resource:`8
*conv2d_157_biasadd_readvariableop_resource:`=
/batch_normalization_127_readvariableop_resource:`?
1batch_normalization_127_readvariableop_1_resource:`N
@batch_normalization_127_fusedbatchnormv3_readvariableop_resource:`P
Bbatch_normalization_127_fusedbatchnormv3_readvariableop_1_resource:`D
)conv2d_158_conv2d_readvariableop_resource:`9
*conv2d_158_biasadd_readvariableop_resource:	>
/batch_normalization_128_readvariableop_resource:	@
1batch_normalization_128_readvariableop_1_resource:	O
@batch_normalization_128_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_128_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_159_conv2d_readvariableop_resource:9
*conv2d_159_biasadd_readvariableop_resource:	>
/batch_normalization_129_readvariableop_resource:	@
1batch_normalization_129_readvariableop_1_resource:	O
@batch_normalization_129_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_129_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_160_conv2d_readvariableop_resource:9
*conv2d_160_biasadd_readvariableop_resource:	>
/batch_normalization_130_readvariableop_resource:	@
1batch_normalization_130_readvariableop_1_resource:	O
@batch_normalization_130_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_161_conv2d_readvariableop_resource:9
*conv2d_161_biasadd_readvariableop_resource:	>
/batch_normalization_131_readvariableop_resource:	@
1batch_normalization_131_readvariableop_1_resource:	O
@batch_normalization_131_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_131_fusedbatchnormv3_readvariableop_1_resource:	:
'dense_23_matmul_readvariableop_resource:	(6
(dense_23_biasadd_readvariableop_resource:
identityЂ&batch_normalization_127/AssignNewValueЂ(batch_normalization_127/AssignNewValue_1Ђ7batch_normalization_127/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_127/ReadVariableOpЂ(batch_normalization_127/ReadVariableOp_1Ђ&batch_normalization_128/AssignNewValueЂ(batch_normalization_128/AssignNewValue_1Ђ7batch_normalization_128/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_128/ReadVariableOpЂ(batch_normalization_128/ReadVariableOp_1Ђ&batch_normalization_129/AssignNewValueЂ(batch_normalization_129/AssignNewValue_1Ђ7batch_normalization_129/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_129/ReadVariableOpЂ(batch_normalization_129/ReadVariableOp_1Ђ&batch_normalization_130/AssignNewValueЂ(batch_normalization_130/AssignNewValue_1Ђ7batch_normalization_130/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_130/ReadVariableOpЂ(batch_normalization_130/ReadVariableOp_1Ђ&batch_normalization_131/AssignNewValueЂ(batch_normalization_131/AssignNewValue_1Ђ7batch_normalization_131/FusedBatchNormV3/ReadVariableOpЂ9batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1Ђ&batch_normalization_131/ReadVariableOpЂ(batch_normalization_131/ReadVariableOp_1Ђ!conv2d_157/BiasAdd/ReadVariableOpЂ conv2d_157/Conv2D/ReadVariableOpЂ!conv2d_158/BiasAdd/ReadVariableOpЂ conv2d_158/Conv2D/ReadVariableOpЂ!conv2d_159/BiasAdd/ReadVariableOpЂ conv2d_159/Conv2D/ReadVariableOpЂ!conv2d_160/BiasAdd/ReadVariableOpЂ conv2d_160/Conv2D/ReadVariableOpЂ!conv2d_161/BiasAdd/ReadVariableOpЂ conv2d_161/Conv2D/ReadVariableOpЂdense_23/BiasAdd/ReadVariableOpЂdense_23/MatMul/ReadVariableOpЖ
 conv2d_157/Conv2D/ReadVariableOpReadVariableOp)conv2d_157_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02"
 conv2d_157/Conv2D/ReadVariableOpХ
conv2d_157/Conv2DConv2Dinputs(conv2d_157/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`*
paddingVALID*
strides
2
conv2d_157/Conv2D­
!conv2d_157/BiasAdd/ReadVariableOpReadVariableOp*conv2d_157_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02#
!conv2d_157/BiasAdd/ReadVariableOpД
conv2d_157/BiasAddBiasAddconv2d_157/Conv2D:output:0)conv2d_157/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2
conv2d_157/BiasAdd
conv2d_157/ReluReluconv2d_157/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ[`2
conv2d_157/ReluМ
&batch_normalization_127/ReadVariableOpReadVariableOp/batch_normalization_127_readvariableop_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_127/ReadVariableOpТ
(batch_normalization_127/ReadVariableOp_1ReadVariableOp1batch_normalization_127_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(batch_normalization_127/ReadVariableOp_1я
7batch_normalization_127/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_127_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7batch_normalization_127/FusedBatchNormV3/ReadVariableOpѕ
9batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_127_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1џ
(batch_normalization_127/FusedBatchNormV3FusedBatchNormV3conv2d_157/Relu:activations:0.batch_normalization_127/ReadVariableOp:value:00batch_normalization_127/ReadVariableOp_1:value:0?batch_normalization_127/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_127/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ[`:`:`:`:`:*
epsilon%o:*
exponential_avg_factor%
з#<2*
(batch_normalization_127/FusedBatchNormV3К
&batch_normalization_127/AssignNewValueAssignVariableOp@batch_normalization_127_fusedbatchnormv3_readvariableop_resource5batch_normalization_127/FusedBatchNormV3:batch_mean:08^batch_normalization_127/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_127/AssignNewValueЦ
(batch_normalization_127/AssignNewValue_1AssignVariableOpBbatch_normalization_127_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_127/FusedBatchNormV3:batch_variance:0:^batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_127/AssignNewValue_1к
max_pooling2d_27/MaxPoolMaxPool,batch_normalization_127/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ-`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_27/MaxPoolЗ
 conv2d_158/Conv2D/ReadVariableOpReadVariableOp)conv2d_158_conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02"
 conv2d_158/Conv2D/ReadVariableOpр
conv2d_158/Conv2DConv2D!max_pooling2d_27/MaxPool:output:0(conv2d_158/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides
2
conv2d_158/Conv2DЎ
!conv2d_158/BiasAdd/ReadVariableOpReadVariableOp*conv2d_158_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!conv2d_158/BiasAdd/ReadVariableOpЕ
conv2d_158/BiasAddBiasAddconv2d_158/Conv2D:output:0)conv2d_158/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ-2
conv2d_158/BiasAdd
conv2d_158/ReluReluconv2d_158/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ-2
conv2d_158/ReluН
&batch_normalization_128/ReadVariableOpReadVariableOp/batch_normalization_128_readvariableop_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_128/ReadVariableOpУ
(batch_normalization_128/ReadVariableOp_1ReadVariableOp1batch_normalization_128_readvariableop_1_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_128/ReadVariableOp_1№
7batch_normalization_128/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_128_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype029
7batch_normalization_128/FusedBatchNormV3/ReadVariableOpі
9batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_128_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02;
9batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1
(batch_normalization_128/FusedBatchNormV3FusedBatchNormV3conv2d_158/Relu:activations:0.batch_normalization_128/ReadVariableOp:value:00batch_normalization_128/ReadVariableOp_1:value:0?batch_normalization_128/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_128/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ-:::::*
epsilon%o:*
exponential_avg_factor%
з#<2*
(batch_normalization_128/FusedBatchNormV3К
&batch_normalization_128/AssignNewValueAssignVariableOp@batch_normalization_128_fusedbatchnormv3_readvariableop_resource5batch_normalization_128/FusedBatchNormV3:batch_mean:08^batch_normalization_128/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_128/AssignNewValueЦ
(batch_normalization_128/AssignNewValue_1AssignVariableOpBbatch_normalization_128_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_128/FusedBatchNormV3:batch_variance:0:^batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_128/AssignNewValue_1л
max_pooling2d_28/MaxPoolMaxPool,batch_normalization_128/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_28/MaxPoolИ
 conv2d_159/Conv2D/ReadVariableOpReadVariableOp)conv2d_159_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02"
 conv2d_159/Conv2D/ReadVariableOpр
conv2d_159/Conv2DConv2D!max_pooling2d_28/MaxPool:output:0(conv2d_159/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_159/Conv2DЎ
!conv2d_159/BiasAdd/ReadVariableOpReadVariableOp*conv2d_159_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!conv2d_159/BiasAdd/ReadVariableOpЕ
conv2d_159/BiasAddBiasAddconv2d_159/Conv2D:output:0)conv2d_159/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_159/BiasAdd
conv2d_159/ReluReluconv2d_159/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_159/ReluН
&batch_normalization_129/ReadVariableOpReadVariableOp/batch_normalization_129_readvariableop_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_129/ReadVariableOpУ
(batch_normalization_129/ReadVariableOp_1ReadVariableOp1batch_normalization_129_readvariableop_1_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_129/ReadVariableOp_1№
7batch_normalization_129/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_129_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype029
7batch_normalization_129/FusedBatchNormV3/ReadVariableOpі
9batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_129_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02;
9batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1
(batch_normalization_129/FusedBatchNormV3FusedBatchNormV3conv2d_159/Relu:activations:0.batch_normalization_129/ReadVariableOp:value:00batch_normalization_129/ReadVariableOp_1:value:0?batch_normalization_129/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_129/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2*
(batch_normalization_129/FusedBatchNormV3К
&batch_normalization_129/AssignNewValueAssignVariableOp@batch_normalization_129_fusedbatchnormv3_readvariableop_resource5batch_normalization_129/FusedBatchNormV3:batch_mean:08^batch_normalization_129/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_129/AssignNewValueЦ
(batch_normalization_129/AssignNewValue_1AssignVariableOpBbatch_normalization_129_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_129/FusedBatchNormV3:batch_variance:0:^batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_129/AssignNewValue_1И
 conv2d_160/Conv2D/ReadVariableOpReadVariableOp)conv2d_160_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02"
 conv2d_160/Conv2D/ReadVariableOpы
conv2d_160/Conv2DConv2D,batch_normalization_129/FusedBatchNormV3:y:0(conv2d_160/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_160/Conv2DЎ
!conv2d_160/BiasAdd/ReadVariableOpReadVariableOp*conv2d_160_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!conv2d_160/BiasAdd/ReadVariableOpЕ
conv2d_160/BiasAddBiasAddconv2d_160/Conv2D:output:0)conv2d_160/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_160/BiasAdd
conv2d_160/ReluReluconv2d_160/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_160/ReluН
&batch_normalization_130/ReadVariableOpReadVariableOp/batch_normalization_130_readvariableop_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_130/ReadVariableOpУ
(batch_normalization_130/ReadVariableOp_1ReadVariableOp1batch_normalization_130_readvariableop_1_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_130/ReadVariableOp_1№
7batch_normalization_130/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_130_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype029
7batch_normalization_130/FusedBatchNormV3/ReadVariableOpі
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02;
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1
(batch_normalization_130/FusedBatchNormV3FusedBatchNormV3conv2d_160/Relu:activations:0.batch_normalization_130/ReadVariableOp:value:00batch_normalization_130/ReadVariableOp_1:value:0?batch_normalization_130/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_130/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2*
(batch_normalization_130/FusedBatchNormV3К
&batch_normalization_130/AssignNewValueAssignVariableOp@batch_normalization_130_fusedbatchnormv3_readvariableop_resource5batch_normalization_130/FusedBatchNormV3:batch_mean:08^batch_normalization_130/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_130/AssignNewValueЦ
(batch_normalization_130/AssignNewValue_1AssignVariableOpBbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_130/FusedBatchNormV3:batch_variance:0:^batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_130/AssignNewValue_1И
 conv2d_161/Conv2D/ReadVariableOpReadVariableOp)conv2d_161_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02"
 conv2d_161/Conv2D/ReadVariableOpы
conv2d_161/Conv2DConv2D,batch_normalization_130/FusedBatchNormV3:y:0(conv2d_161/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_161/Conv2DЎ
!conv2d_161/BiasAdd/ReadVariableOpReadVariableOp*conv2d_161_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!conv2d_161/BiasAdd/ReadVariableOpЕ
conv2d_161/BiasAddBiasAddconv2d_161/Conv2D:output:0)conv2d_161/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_161/BiasAdd
conv2d_161/ReluReluconv2d_161/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_161/ReluН
&batch_normalization_131/ReadVariableOpReadVariableOp/batch_normalization_131_readvariableop_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_131/ReadVariableOpУ
(batch_normalization_131/ReadVariableOp_1ReadVariableOp1batch_normalization_131_readvariableop_1_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_131/ReadVariableOp_1№
7batch_normalization_131/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_131_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype029
7batch_normalization_131/FusedBatchNormV3/ReadVariableOpі
9batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_131_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02;
9batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1
(batch_normalization_131/FusedBatchNormV3FusedBatchNormV3conv2d_161/Relu:activations:0.batch_normalization_131/ReadVariableOp:value:00batch_normalization_131/ReadVariableOp_1:value:0?batch_normalization_131/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_131/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2*
(batch_normalization_131/FusedBatchNormV3К
&batch_normalization_131/AssignNewValueAssignVariableOp@batch_normalization_131_fusedbatchnormv3_readvariableop_resource5batch_normalization_131/FusedBatchNormV3:batch_mean:08^batch_normalization_131/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_131/AssignNewValueЦ
(batch_normalization_131/AssignNewValue_1AssignVariableOpBbatch_normalization_131_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_131/FusedBatchNormV3:batch_variance:0:^batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02*
(batch_normalization_131/AssignNewValue_1л
max_pooling2d_29/MaxPoolMaxPool,batch_normalization_131/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_29/MaxPoolu
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_11/ConstЄ
flatten_11/ReshapeReshape!max_pooling2d_29/MaxPool:output:0flatten_11/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ(2
flatten_11/ReshapeЉ
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	(*
dtype02 
dense_23/MatMul/ReadVariableOpЃ
dense_23/MatMulMatMulflatten_11/Reshape:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/MatMulЇ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpЅ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/BiasAdd|
dense_23/SigmoidSigmoiddense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/Sigmoido
IdentityIdentitydense_23/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp'^batch_normalization_127/AssignNewValue)^batch_normalization_127/AssignNewValue_18^batch_normalization_127/FusedBatchNormV3/ReadVariableOp:^batch_normalization_127/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_127/ReadVariableOp)^batch_normalization_127/ReadVariableOp_1'^batch_normalization_128/AssignNewValue)^batch_normalization_128/AssignNewValue_18^batch_normalization_128/FusedBatchNormV3/ReadVariableOp:^batch_normalization_128/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_128/ReadVariableOp)^batch_normalization_128/ReadVariableOp_1'^batch_normalization_129/AssignNewValue)^batch_normalization_129/AssignNewValue_18^batch_normalization_129/FusedBatchNormV3/ReadVariableOp:^batch_normalization_129/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_129/ReadVariableOp)^batch_normalization_129/ReadVariableOp_1'^batch_normalization_130/AssignNewValue)^batch_normalization_130/AssignNewValue_18^batch_normalization_130/FusedBatchNormV3/ReadVariableOp:^batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_130/ReadVariableOp)^batch_normalization_130/ReadVariableOp_1'^batch_normalization_131/AssignNewValue)^batch_normalization_131/AssignNewValue_18^batch_normalization_131/FusedBatchNormV3/ReadVariableOp:^batch_normalization_131/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_131/ReadVariableOp)^batch_normalization_131/ReadVariableOp_1"^conv2d_157/BiasAdd/ReadVariableOp!^conv2d_157/Conv2D/ReadVariableOp"^conv2d_158/BiasAdd/ReadVariableOp!^conv2d_158/Conv2D/ReadVariableOp"^conv2d_159/BiasAdd/ReadVariableOp!^conv2d_159/Conv2D/ReadVariableOp"^conv2d_160/BiasAdd/ReadVariableOp!^conv2d_160/Conv2D/ReadVariableOp"^conv2d_161/BiasAdd/ReadVariableOp!^conv2d_161/Conv2D/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_127/AssignNewValue&batch_normalization_127/AssignNewValue2T
(batch_normalization_127/AssignNewValue_1(batch_normalization_127/AssignNewValue_12r
7batch_normalization_127/FusedBatchNormV3/ReadVariableOp7batch_normalization_127/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_127/FusedBatchNormV3/ReadVariableOp_19batch_normalization_127/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_127/ReadVariableOp&batch_normalization_127/ReadVariableOp2T
(batch_normalization_127/ReadVariableOp_1(batch_normalization_127/ReadVariableOp_12P
&batch_normalization_128/AssignNewValue&batch_normalization_128/AssignNewValue2T
(batch_normalization_128/AssignNewValue_1(batch_normalization_128/AssignNewValue_12r
7batch_normalization_128/FusedBatchNormV3/ReadVariableOp7batch_normalization_128/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_128/FusedBatchNormV3/ReadVariableOp_19batch_normalization_128/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_128/ReadVariableOp&batch_normalization_128/ReadVariableOp2T
(batch_normalization_128/ReadVariableOp_1(batch_normalization_128/ReadVariableOp_12P
&batch_normalization_129/AssignNewValue&batch_normalization_129/AssignNewValue2T
(batch_normalization_129/AssignNewValue_1(batch_normalization_129/AssignNewValue_12r
7batch_normalization_129/FusedBatchNormV3/ReadVariableOp7batch_normalization_129/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_129/FusedBatchNormV3/ReadVariableOp_19batch_normalization_129/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_129/ReadVariableOp&batch_normalization_129/ReadVariableOp2T
(batch_normalization_129/ReadVariableOp_1(batch_normalization_129/ReadVariableOp_12P
&batch_normalization_130/AssignNewValue&batch_normalization_130/AssignNewValue2T
(batch_normalization_130/AssignNewValue_1(batch_normalization_130/AssignNewValue_12r
7batch_normalization_130/FusedBatchNormV3/ReadVariableOp7batch_normalization_130/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_19batch_normalization_130/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_130/ReadVariableOp&batch_normalization_130/ReadVariableOp2T
(batch_normalization_130/ReadVariableOp_1(batch_normalization_130/ReadVariableOp_12P
&batch_normalization_131/AssignNewValue&batch_normalization_131/AssignNewValue2T
(batch_normalization_131/AssignNewValue_1(batch_normalization_131/AssignNewValue_12r
7batch_normalization_131/FusedBatchNormV3/ReadVariableOp7batch_normalization_131/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_131/FusedBatchNormV3/ReadVariableOp_19batch_normalization_131/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_131/ReadVariableOp&batch_normalization_131/ReadVariableOp2T
(batch_normalization_131/ReadVariableOp_1(batch_normalization_131/ReadVariableOp_12F
!conv2d_157/BiasAdd/ReadVariableOp!conv2d_157/BiasAdd/ReadVariableOp2D
 conv2d_157/Conv2D/ReadVariableOp conv2d_157/Conv2D/ReadVariableOp2F
!conv2d_158/BiasAdd/ReadVariableOp!conv2d_158/BiasAdd/ReadVariableOp2D
 conv2d_158/Conv2D/ReadVariableOp conv2d_158/Conv2D/ReadVariableOp2F
!conv2d_159/BiasAdd/ReadVariableOp!conv2d_159/BiasAdd/ReadVariableOp2D
 conv2d_159/Conv2D/ReadVariableOp conv2d_159/Conv2D/ReadVariableOp2F
!conv2d_160/BiasAdd/ReadVariableOp!conv2d_160/BiasAdd/ReadVariableOp2D
 conv2d_160/Conv2D/ReadVariableOp conv2d_160/Conv2D/ReadVariableOp2F
!conv2d_161/BiasAdd/ReadVariableOp!conv2d_161/BiasAdd/ReadVariableOp2D
 conv2d_161/Conv2D/ReadVariableOp conv2d_161/Conv2D/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
ц

T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6037436

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`:`:`:`:`:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
о
ў
,__inference_alex_net_5_layer_call_fn_6038448
conv2d_157_input!
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
	unknown_3:`
	unknown_4:`$
	unknown_5:`
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	(

unknown_30:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_157_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_alex_net_5_layer_call_and_return_conditional_losses_60383812
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџє: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџє
*
_user_specified_nameconv2d_157_input
і
Ѓ
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6037984

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1Ј
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOpЎ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ѕ
N
2__inference_max_pooling2d_29_layer_call_fn_6040440

inputs
identityз
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_60383532
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ

G__inference_conv2d_160_layer_call_and_return_conditional_losses_6040143

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ч
serving_defaultГ
W
conv2d_157_inputC
"serving_default_conv2d_157_input:0џџџџџџџџџє<
dense_230
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ИЬ
а
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
+ж&call_and_return_all_conditional_losses
з_default_save_signature
и__call__"
_tf_keras_sequential
Н

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+й&call_and_return_all_conditional_losses
к__call__"
_tf_keras_layer
ь
axis
	gamma
beta
moving_mean
 moving_variance
!regularization_losses
"trainable_variables
#	variables
$	keras_api
+л&call_and_return_all_conditional_losses
м__call__"
_tf_keras_layer
Ї
%regularization_losses
&trainable_variables
'	variables
(	keras_api
+н&call_and_return_all_conditional_losses
о__call__"
_tf_keras_layer
Н

)kernel
*bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
+п&call_and_return_all_conditional_losses
р__call__"
_tf_keras_layer
ь
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4regularization_losses
5trainable_variables
6	variables
7	keras_api
+с&call_and_return_all_conditional_losses
т__call__"
_tf_keras_layer
Ї
8regularization_losses
9trainable_variables
:	variables
;	keras_api
+у&call_and_return_all_conditional_losses
ф__call__"
_tf_keras_layer
Н

<kernel
=bias
>regularization_losses
?trainable_variables
@	variables
A	keras_api
+х&call_and_return_all_conditional_losses
ц__call__"
_tf_keras_layer
ь
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
+ч&call_and_return_all_conditional_losses
ш__call__"
_tf_keras_layer
Н

Kkernel
Lbias
Mregularization_losses
Ntrainable_variables
O	variables
P	keras_api
+щ&call_and_return_all_conditional_losses
ъ__call__"
_tf_keras_layer
ь
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
+ы&call_and_return_all_conditional_losses
ь__call__"
_tf_keras_layer
Н

Zkernel
[bias
\regularization_losses
]trainable_variables
^	variables
_	keras_api
+э&call_and_return_all_conditional_losses
ю__call__"
_tf_keras_layer
ь
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
+я&call_and_return_all_conditional_losses
№__call__"
_tf_keras_layer
Ї
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
+ё&call_and_return_all_conditional_losses
ђ__call__"
_tf_keras_layer
Ї
mregularization_losses
ntrainable_variables
o	variables
p	keras_api
+ѓ&call_and_return_all_conditional_losses
є__call__"
_tf_keras_layer
Н

qkernel
rbias
sregularization_losses
ttrainable_variables
u	variables
v	keras_api
+ѕ&call_and_return_all_conditional_losses
і__call__"
_tf_keras_layer
I
witer
	xdecay
ylearning_rate
zmomentum"
	optimizer
 "
trackable_list_wrapper
Ц
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

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
Ю

{layers
|layer_metrics
}layer_regularization_losses
~metrics
regularization_losses
non_trainable_variables
trainable_variables
	variables
и__call__
з_default_save_signature
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
-
їserving_default"
signature_map
+:)`2conv2d_157/kernel
:`2conv2d_157/bias
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
Е
layers
layer_metrics
 layer_regularization_losses
metrics
regularization_losses
non_trainable_variables
trainable_variables
	variables
к__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)`2batch_normalization_127/gamma
*:(`2batch_normalization_127/beta
3:1` (2#batch_normalization_127/moving_mean
7:5` (2'batch_normalization_127/moving_variance
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
Е
layers
layer_metrics
 layer_regularization_losses
metrics
!regularization_losses
non_trainable_variables
"trainable_variables
#	variables
м__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
layers
layer_metrics
 layer_regularization_losses
metrics
%regularization_losses
non_trainable_variables
&trainable_variables
'	variables
о__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
,:*`2conv2d_158/kernel
:2conv2d_158/bias
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
Е
layers
layer_metrics
 layer_regularization_losses
metrics
+regularization_losses
non_trainable_variables
,trainable_variables
-	variables
р__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*2batch_normalization_128/gamma
+:)2batch_normalization_128/beta
4:2 (2#batch_normalization_128/moving_mean
8:6 (2'batch_normalization_128/moving_variance
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
Е
layers
layer_metrics
 layer_regularization_losses
metrics
4regularization_losses
non_trainable_variables
5trainable_variables
6	variables
т__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
layers
layer_metrics
 layer_regularization_losses
metrics
8regularization_losses
non_trainable_variables
9trainable_variables
:	variables
ф__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
-:+2conv2d_159/kernel
:2conv2d_159/bias
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
Е
layers
layer_metrics
  layer_regularization_losses
Ёmetrics
>regularization_losses
Ђnon_trainable_variables
?trainable_variables
@	variables
ц__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*2batch_normalization_129/gamma
+:)2batch_normalization_129/beta
4:2 (2#batch_normalization_129/moving_mean
8:6 (2'batch_normalization_129/moving_variance
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
Е
Ѓlayers
Єlayer_metrics
 Ѕlayer_regularization_losses
Іmetrics
Gregularization_losses
Їnon_trainable_variables
Htrainable_variables
I	variables
ш__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
-:+2conv2d_160/kernel
:2conv2d_160/bias
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
Е
Јlayers
Љlayer_metrics
 Њlayer_regularization_losses
Ћmetrics
Mregularization_losses
Ќnon_trainable_variables
Ntrainable_variables
O	variables
ъ__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*2batch_normalization_130/gamma
+:)2batch_normalization_130/beta
4:2 (2#batch_normalization_130/moving_mean
8:6 (2'batch_normalization_130/moving_variance
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
Е
­layers
Ўlayer_metrics
 Џlayer_regularization_losses
Аmetrics
Vregularization_losses
Бnon_trainable_variables
Wtrainable_variables
X	variables
ь__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
-:+2conv2d_161/kernel
:2conv2d_161/bias
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
Е
Вlayers
Гlayer_metrics
 Дlayer_regularization_losses
Еmetrics
\regularization_losses
Жnon_trainable_variables
]trainable_variables
^	variables
ю__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*2batch_normalization_131/gamma
+:)2batch_normalization_131/beta
4:2 (2#batch_normalization_131/moving_mean
8:6 (2'batch_normalization_131/moving_variance
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
Е
Зlayers
Иlayer_metrics
 Йlayer_regularization_losses
Кmetrics
eregularization_losses
Лnon_trainable_variables
ftrainable_variables
g	variables
№__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Мlayers
Нlayer_metrics
 Оlayer_regularization_losses
Пmetrics
iregularization_losses
Рnon_trainable_variables
jtrainable_variables
k	variables
ђ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Сlayers
Тlayer_metrics
 Уlayer_regularization_losses
Фmetrics
mregularization_losses
Хnon_trainable_variables
ntrainable_variables
o	variables
є__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
": 	(2dense_23/kernel
:2dense_23/bias
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
Е
Цlayers
Чlayer_metrics
 Шlayer_regularization_losses
Щmetrics
sregularization_losses
Ъnon_trainable_variables
ttrainable_variables
u	variables
і__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum

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
Ы0
Ь1"
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

Эtotal

Юcount
Я	variables
а	keras_api"
_tf_keras_metric
c

бtotal

вcount
г
_fn_kwargs
д	variables
е	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
Э0
Ю1"
trackable_list_wrapper
.
Я	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
б0
в1"
trackable_list_wrapper
.
д	variables"
_generic_user_object
ъ2ч
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039401
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039522
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039122
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039205Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
жBг
"__inference__wrapped_model_6037414conv2d_157_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ў2ћ
,__inference_alex_net_5_layer_call_fn_6038448
,__inference_alex_net_5_layer_call_fn_6039591
,__inference_alex_net_5_layer_call_fn_6039660
,__inference_alex_net_5_layer_call_fn_6039039Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ё2ю
G__inference_conv2d_157_layer_call_and_return_conditional_losses_6039671Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv2d_157_layer_call_fn_6039680Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039698
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039716
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039734
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039752Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
І2Ѓ
9__inference_batch_normalization_127_layer_call_fn_6039765
9__inference_batch_normalization_127_layer_call_fn_6039778
9__inference_batch_normalization_127_layer_call_fn_6039791
9__inference_batch_normalization_127_layer_call_fn_6039804Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ц2У
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6039809
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6039814Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
2__inference_max_pooling2d_27_layer_call_fn_6039819
2__inference_max_pooling2d_27_layer_call_fn_6039824Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv2d_158_layer_call_and_return_conditional_losses_6039835Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv2d_158_layer_call_fn_6039844Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039862
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039880
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039898
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039916Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
І2Ѓ
9__inference_batch_normalization_128_layer_call_fn_6039929
9__inference_batch_normalization_128_layer_call_fn_6039942
9__inference_batch_normalization_128_layer_call_fn_6039955
9__inference_batch_normalization_128_layer_call_fn_6039968Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ц2У
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_6039973
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_6039978Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
2__inference_max_pooling2d_28_layer_call_fn_6039983
2__inference_max_pooling2d_28_layer_call_fn_6039988Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv2d_159_layer_call_and_return_conditional_losses_6039999Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv2d_159_layer_call_fn_6040008Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040026
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040044
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040062
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040080Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
І2Ѓ
9__inference_batch_normalization_129_layer_call_fn_6040093
9__inference_batch_normalization_129_layer_call_fn_6040106
9__inference_batch_normalization_129_layer_call_fn_6040119
9__inference_batch_normalization_129_layer_call_fn_6040132Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ё2ю
G__inference_conv2d_160_layer_call_and_return_conditional_losses_6040143Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv2d_160_layer_call_fn_6040152Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040170
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040188
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040206
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040224Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
І2Ѓ
9__inference_batch_normalization_130_layer_call_fn_6040237
9__inference_batch_normalization_130_layer_call_fn_6040250
9__inference_batch_normalization_130_layer_call_fn_6040263
9__inference_batch_normalization_130_layer_call_fn_6040276Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ё2ю
G__inference_conv2d_161_layer_call_and_return_conditional_losses_6040287Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv2d_161_layer_call_fn_6040296Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040314
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040332
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040350
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040368Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
І2Ѓ
9__inference_batch_normalization_131_layer_call_fn_6040381
9__inference_batch_normalization_131_layer_call_fn_6040394
9__inference_batch_normalization_131_layer_call_fn_6040407
9__inference_batch_normalization_131_layer_call_fn_6040420Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ц2У
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_6040425
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_6040430Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
2__inference_max_pooling2d_29_layer_call_fn_6040435
2__inference_max_pooling2d_29_layer_call_fn_6040440Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_flatten_11_layer_call_and_return_conditional_losses_6040446Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_flatten_11_layer_call_fn_6040451Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_23_layer_call_and_return_conditional_losses_6040462Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_dense_23_layer_call_fn_6040471Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
еBв
%__inference_signature_wrapper_6039280conv2d_157_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 У
"__inference__wrapped_model_6037414  )*0123<=CDEFKLRSTUZ[abcdqrCЂ@
9Ђ6
41
conv2d_157_inputџџџџџџџџџє
Њ "3Њ0
.
dense_23"
dense_23џџџџџџџџџт
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039122  )*0123<=CDEFKLRSTUZ[abcdqrKЂH
AЂ>
41
conv2d_157_inputџџџџџџџџџє
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 т
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039205  )*0123<=CDEFKLRSTUZ[abcdqrKЂH
AЂ>
41
conv2d_157_inputџџџџџџџџџє
p

 
Њ "%Ђ"

0џџџџџџџџџ
 и
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039401  )*0123<=CDEFKLRSTUZ[abcdqrAЂ>
7Ђ4
*'
inputsџџџџџџџџџє
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 и
G__inference_alex_net_5_layer_call_and_return_conditional_losses_6039522  )*0123<=CDEFKLRSTUZ[abcdqrAЂ>
7Ђ4
*'
inputsџџџџџџџџџє
p

 
Њ "%Ђ"

0џџџџџџџџџ
 К
,__inference_alex_net_5_layer_call_fn_6038448  )*0123<=CDEFKLRSTUZ[abcdqrKЂH
AЂ>
41
conv2d_157_inputџџџџџџџџџє
p 

 
Њ "џџџџџџџџџК
,__inference_alex_net_5_layer_call_fn_6039039  )*0123<=CDEFKLRSTUZ[abcdqrKЂH
AЂ>
41
conv2d_157_inputџџџџџџџџџє
p

 
Њ "џџџџџџџџџЏ
,__inference_alex_net_5_layer_call_fn_6039591  )*0123<=CDEFKLRSTUZ[abcdqrAЂ>
7Ђ4
*'
inputsџџџџџџџџџє
p 

 
Њ "џџџџџџџџџЏ
,__inference_alex_net_5_layer_call_fn_6039660  )*0123<=CDEFKLRSTUZ[abcdqrAЂ>
7Ђ4
*'
inputsџџџџџџџџџє
p

 
Њ "џџџџџџџџџя
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039698 MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 я
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039716 MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 Ъ
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039734r ;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ[`
p 
Њ "-Ђ*
# 
0џџџџџџџџџ[`
 Ъ
T__inference_batch_normalization_127_layer_call_and_return_conditional_losses_6039752r ;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ[`
p
Њ "-Ђ*
# 
0џџџџџџџџџ[`
 Ч
9__inference_batch_normalization_127_layer_call_fn_6039765 MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`Ч
9__inference_batch_normalization_127_layer_call_fn_6039778 MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`Ђ
9__inference_batch_normalization_127_layer_call_fn_6039791e ;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ[`
p 
Њ " џџџџџџџџџ[`Ђ
9__inference_batch_normalization_127_layer_call_fn_6039804e ;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ[`
p
Њ " џџџџџџџџџ[`ё
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_60398620123NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ё
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_60398800123NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039898t0123<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ-
p 
Њ ".Ђ+
$!
0џџџџџџџџџ-
 Ь
T__inference_batch_normalization_128_layer_call_and_return_conditional_losses_6039916t0123<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ-
p
Њ ".Ђ+
$!
0џџџџџџџџџ-
 Щ
9__inference_batch_normalization_128_layer_call_fn_60399290123NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЩ
9__inference_batch_normalization_128_layer_call_fn_60399420123NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЄ
9__inference_batch_normalization_128_layer_call_fn_6039955g0123<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ-
p 
Њ "!џџџџџџџџџ-Є
9__inference_batch_normalization_128_layer_call_fn_6039968g0123<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ-
p
Њ "!џџџџџџџџџ-ё
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040026CDEFNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ё
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040044CDEFNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040062tCDEF<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ ".Ђ+
$!
0џџџџџџџџџ
 Ь
T__inference_batch_normalization_129_layer_call_and_return_conditional_losses_6040080tCDEF<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ ".Ђ+
$!
0џџџџџџџџџ
 Щ
9__inference_batch_normalization_129_layer_call_fn_6040093CDEFNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЩ
9__inference_batch_normalization_129_layer_call_fn_6040106CDEFNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЄ
9__inference_batch_normalization_129_layer_call_fn_6040119gCDEF<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ "!џџџџџџџџџЄ
9__inference_batch_normalization_129_layer_call_fn_6040132gCDEF<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ "!џџџџџџџџџё
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040170RSTUNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ё
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040188RSTUNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040206tRSTU<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ ".Ђ+
$!
0џџџџџџџџџ
 Ь
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_6040224tRSTU<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ ".Ђ+
$!
0џџџџџџџџџ
 Щ
9__inference_batch_normalization_130_layer_call_fn_6040237RSTUNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЩ
9__inference_batch_normalization_130_layer_call_fn_6040250RSTUNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЄ
9__inference_batch_normalization_130_layer_call_fn_6040263gRSTU<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ "!џџџџџџџџџЄ
9__inference_batch_normalization_130_layer_call_fn_6040276gRSTU<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ "!џџџџџџџџџё
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040314abcdNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ё
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040332abcdNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040350tabcd<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ ".Ђ+
$!
0џџџџџџџџџ
 Ь
T__inference_batch_normalization_131_layer_call_and_return_conditional_losses_6040368tabcd<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ ".Ђ+
$!
0џџџџџџџџџ
 Щ
9__inference_batch_normalization_131_layer_call_fn_6040381abcdNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЩ
9__inference_batch_normalization_131_layer_call_fn_6040394abcdNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЄ
9__inference_batch_normalization_131_layer_call_fn_6040407gabcd<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ "!џџџџџџџџџЄ
9__inference_batch_normalization_131_layer_call_fn_6040420gabcd<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ "!џџџџџџџџџЙ
G__inference_conv2d_157_layer_call_and_return_conditional_losses_6039671n9Ђ6
/Ђ,
*'
inputsџџџџџџџџџє
Њ "-Ђ*
# 
0џџџџџџџџџ[`
 
,__inference_conv2d_157_layer_call_fn_6039680a9Ђ6
/Ђ,
*'
inputsџџџџџџџџџє
Њ " џџџџџџџџџ[`И
G__inference_conv2d_158_layer_call_and_return_conditional_losses_6039835m)*7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ-`
Њ ".Ђ+
$!
0џџџџџџџџџ-
 
,__inference_conv2d_158_layer_call_fn_6039844`)*7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ-`
Њ "!џџџџџџџџџ-Й
G__inference_conv2d_159_layer_call_and_return_conditional_losses_6039999n<=8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
,__inference_conv2d_159_layer_call_fn_6040008a<=8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџЙ
G__inference_conv2d_160_layer_call_and_return_conditional_losses_6040143nKL8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
,__inference_conv2d_160_layer_call_fn_6040152aKL8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџЙ
G__inference_conv2d_161_layer_call_and_return_conditional_losses_6040287nZ[8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
,__inference_conv2d_161_layer_call_fn_6040296aZ[8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџІ
E__inference_dense_23_layer_call_and_return_conditional_losses_6040462]qr0Ђ-
&Ђ#
!
inputsџџџџџџџџџ(
Њ "%Ђ"

0џџџџџџџџџ
 ~
*__inference_dense_23_layer_call_fn_6040471Pqr0Ђ-
&Ђ#
!
inputsџџџџџџџџџ(
Њ "џџџџџџџџџ­
G__inference_flatten_11_layer_call_and_return_conditional_losses_6040446b8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ

Њ "&Ђ#

0џџџџџџџџџ(
 
,__inference_flatten_11_layer_call_fn_6040451U8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ

Њ "џџџџџџџџџ(№
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6039809RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Й
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6039814h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ[`
Њ "-Ђ*
# 
0џџџџџџџџџ-`
 Ш
2__inference_max_pooling2d_27_layer_call_fn_6039819RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2__inference_max_pooling2d_27_layer_call_fn_6039824[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ[`
Њ " џџџџџџџџџ-`№
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_6039973RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Л
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_6039978j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ-
Њ ".Ђ+
$!
0џџџџџџџџџ
 Ш
2__inference_max_pooling2d_28_layer_call_fn_6039983RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2__inference_max_pooling2d_28_layer_call_fn_6039988]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ-
Њ "!џџџџџџџџџ№
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_6040425RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Л
M__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_6040430j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ

 Ш
2__inference_max_pooling2d_29_layer_call_fn_6040435RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2__inference_max_pooling2d_29_layer_call_fn_6040440]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџ
к
%__inference_signature_wrapper_6039280А  )*0123<=CDEFKLRSTUZ[abcdqrWЂT
Ђ 
MЊJ
H
conv2d_157_input41
conv2d_157_inputџџџџџџџџџє"3Њ0
.
dense_23"
dense_23џџџџџџџџџ