╜╗	
у╣
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
Ы
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
В
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
Т
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
-
Sqrt
x"T
y"T"
Ttype:

2
╛
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
executor_typestring И
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.02v2.6.0-0-g919f693420e8╟°
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
Ж
conv2d_243/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_243/kernel

%conv2d_243/kernel/Read/ReadVariableOpReadVariableOpconv2d_243/kernel*&
_output_shapes
: *
dtype0
v
conv2d_243/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_243/bias
o
#conv2d_243/bias/Read/ReadVariableOpReadVariableOpconv2d_243/bias*
_output_shapes
: *
dtype0
Ж
conv2d_244/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_244/kernel

%conv2d_244/kernel/Read/ReadVariableOpReadVariableOpconv2d_244/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_244/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_244/bias
o
#conv2d_244/bias/Read/ReadVariableOpReadVariableOpconv2d_244/bias*
_output_shapes
:@*
dtype0
|
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АbА* 
shared_namedense_36/kernel
u
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel* 
_output_shapes
:
АbА*
dtype0
s
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_36/bias
l
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes	
:А*
dtype0
{
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А* 
shared_namedense_37/kernel
t
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes
:	А*
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
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
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
ConstConst*"
_output_shapes
:*
dtype0*!
valueB*ж>>
d
Const_1Const*"
_output_shapes
:*
dtype0*!
valueB*ёз/?

NoOpNoOp
Ч,
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*╨+
value╞+B├+ B╝+
ї
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
R
regularization_losses
trainable_variables
	variables
	keras_api
е

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api
h

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api
h

#kernel
$bias
%regularization_losses
&trainable_variables
'	variables
(	keras_api
R
)regularization_losses
*trainable_variables
+	variables
,	keras_api
R
-regularization_losses
.trainable_variables
/	variables
0	keras_api
R
1regularization_losses
2trainable_variables
3	variables
4	keras_api
h

5kernel
6bias
7regularization_losses
8trainable_variables
9	variables
:	keras_api
R
;regularization_losses
<trainable_variables
=	variables
>	keras_api
h

?kernel
@bias
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
6
Eiter
	Fdecay
Glearning_rate
Hmomentum
 
8
0
1
#2
$3
54
65
?6
@7
N
0
1
2
3
4
#5
$6
57
68
?9
@10
н

Ilayers
Jlayer_metrics
Klayer_regularization_losses
Lmetrics
regularization_losses
Mnon_trainable_variables
trainable_variables
	variables
 
 
 
 
н

Nlayers
Olayer_metrics
Player_regularization_losses
Qmetrics
regularization_losses
Rnon_trainable_variables
trainable_variables
	variables
 
 
 
 
NL
VARIABLE_VALUEmean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEvariance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEcount5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
][
VARIABLE_VALUEconv2d_243/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_243/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н

Slayers
Tlayer_metrics
Ulayer_regularization_losses
Vmetrics
regularization_losses
Wnon_trainable_variables
 trainable_variables
!	variables
][
VARIABLE_VALUEconv2d_244/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_244/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

#0
$1

#0
$1
н

Xlayers
Ylayer_metrics
Zlayer_regularization_losses
[metrics
%regularization_losses
\non_trainable_variables
&trainable_variables
'	variables
 
 
 
н

]layers
^layer_metrics
_layer_regularization_losses
`metrics
)regularization_losses
anon_trainable_variables
*trainable_variables
+	variables
 
 
 
н

blayers
clayer_metrics
dlayer_regularization_losses
emetrics
-regularization_losses
fnon_trainable_variables
.trainable_variables
/	variables
 
 
 
н

glayers
hlayer_metrics
ilayer_regularization_losses
jmetrics
1regularization_losses
knon_trainable_variables
2trainable_variables
3	variables
[Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_36/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

50
61

50
61
н

llayers
mlayer_metrics
nlayer_regularization_losses
ometrics
7regularization_losses
pnon_trainable_variables
8trainable_variables
9	variables
 
 
 
н

qlayers
rlayer_metrics
slayer_regularization_losses
tmetrics
;regularization_losses
unon_trainable_variables
<trainable_variables
=	variables
[Y
VARIABLE_VALUEdense_37/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_37/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
@1

?0
@1
н

vlayers
wlayer_metrics
xlayer_regularization_losses
ymetrics
Aregularization_losses
znon_trainable_variables
Btrainable_variables
C	variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
F
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
 
 

{0
|1

0
1
2
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
 
 
 
 
 
 
 
5
	}total
	~count
	variables
А	keras_api
I

Бtotal

Вcount
Г
_fn_kwargs
Д	variables
Е	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

}0
~1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Б0
В1

Д	variables
П
serving_default_input_10Placeholder*1
_output_shapes
:         ЇБ*
dtype0*&
shape:         ЇБ
т
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10ConstConst_1conv2d_243/kernelconv2d_243/biasconv2d_244/kernelconv2d_244/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В */
f*R(
&__inference_signature_wrapper_10750098
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
и
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp%conv2d_243/kernel/Read/ReadVariableOp#conv2d_243/bias/Read/ReadVariableOp%conv2d_244/kernel/Read/ReadVariableOp#conv2d_244/bias/Read/ReadVariableOp#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_2/Read/ReadVariableOpConst_2* 
Tin
2		*
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
GPU2*0J 8В **
f%R#
!__inference__traced_save_10750558
е
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountconv2d_243/kernelconv2d_243/biasconv2d_244/kernelconv2d_244/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount_1total_1count_2*
Tin
2*
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
GPU2*0J 8В *-
f(R&
$__inference__traced_restore_10750625ТЩ
К
°
F__inference_dense_37_layer_call_and_return_conditional_losses_10749751

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┘
I
-__inference_flatten_18_layer_call_fn_10750409

inputs
identity╩
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_107497142
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         Аb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┘,
╘
__inference_adapt_step_10750311
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2вIteratorGetNextвReadVariableOpвReadVariableOp_1вReadVariableOp_2вadd/ReadVariableOp╬
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*,
_output_shapes
:         Б*+
output_shapes
:         Б*
output_types
22
IteratorGetNextС
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesй
moments/meanMeanIteratorGetNext:components:0'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/meanА
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient┐
moments/SquaredDifferenceSquaredDifferenceIteratorGetNext:components:0moments/StopGradient:output:0*
T0*,
_output_shapes
:         Б2
moments/SquaredDifferenceЩ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices╢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1j
ShapeShapeIteratorGetNext:components:0*
T0*
_output_shapes
:*
out_type0	2
Shapeu
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB"       2
GatherV2/indices`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axisл
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:2

GatherV2X
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstX
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: 2
Prod|
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	2
add/ReadVariableOp_
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: 2
addS
CastCastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2
CastQ
Cast_1Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2
Cast_1T
truedivRealDivCast:y:0
Cast_1:y:0*
T0*
_output_shapes
: 2	
truedivS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xO
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: 2
subt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpW
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:2
mula
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:2
mul_1P
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:2
add_1x
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1_
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:2
sub_1S
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
pow/yQ
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:2
powz
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype02
ReadVariableOp_2_
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:2
add_2N
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:2
mul_2_
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:2
sub_2W
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
pow_1/yW
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:2
pow_1c
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:2
add_3R
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:2
mul_3R
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_4г
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignVariableOpШ
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype02
AssignVariableOp_1Ъ
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	2
AssignVariableOp_2*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
Ё
g
H__inference_dropout_18_layer_call_and_return_conditional_losses_10750388

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
А0
ч
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750031
input_10
normalization_9_sub_y
normalization_9_sqrt_x-
conv2d_243_10750006: !
conv2d_243_10750008: -
conv2d_244_10750011: @!
conv2d_244_10750013:@%
dense_36_10750019:
АbА 
dense_36_10750021:	А$
dense_37_10750025:	А
dense_37_10750027:
identityИв"conv2d_243/StatefulPartitionedCallв"conv2d_244/StatefulPartitionedCallв dense_36/StatefulPartitionedCallв dense_37/StatefulPartitionedCallщ
resizing_9/PartitionedCallPartitionedCallinput_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_resizing_9_layer_call_and_return_conditional_losses_107496522
resizing_9/PartitionedCallз
normalization_9/subSub#resizing_9/PartitionedCall:output:0normalization_9_sub_y*
T0*/
_output_shapes
:           2
normalization_9/suby
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*"
_output_shapes
:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization_9/Maximum/yи
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_9/Maximumн
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*/
_output_shapes
:           2
normalization_9/truediv─
"conv2d_243/StatefulPartitionedCallStatefulPartitionedCallnormalization_9/truediv:z:0conv2d_243_10750006conv2d_243_10750008*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_243_layer_call_and_return_conditional_losses_107496722$
"conv2d_243/StatefulPartitionedCall╘
"conv2d_244/StatefulPartitionedCallStatefulPartitionedCall+conv2d_243/StatefulPartitionedCall:output:0conv2d_244_10750011conv2d_244_10750013*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_244_layer_call_and_return_conditional_losses_107496892$
"conv2d_244/StatefulPartitionedCallЮ
 max_pooling2d_45/PartitionedCallPartitionedCall+conv2d_244/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_107496992"
 max_pooling2d_45/PartitionedCallК
dropout_18/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_18_layer_call_and_return_conditional_losses_107497062
dropout_18/PartitionedCall¤
flatten_18/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_107497142
flatten_18/PartitionedCall╗
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_36_10750019dense_36_10750021*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_107497272"
 dense_36/StatefulPartitionedCallГ
dropout_19/PartitionedCallPartitionedCall)dense_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_19_layer_call_and_return_conditional_losses_107497382
dropout_19/PartitionedCall║
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_37_10750025dense_37_10750027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_107497512"
 dense_37/StatefulPartitionedCallД
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity▐
NoOpNoOp#^conv2d_243/StatefulPartitionedCall#^conv2d_244/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 2H
"conv2d_243/StatefulPartitionedCall"conv2d_243/StatefulPartitionedCall2H
"conv2d_244/StatefulPartitionedCall"conv2d_244/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:[ W
1
_output_shapes
:         ЇБ
"
_user_specified_name
input_10:($
"
_output_shapes
::($
"
_output_shapes
:
ъ
d
H__inference_flatten_18_layer_call_and_return_conditional_losses_10749714

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         Аb2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         Аb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
д;
Э
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750144

inputs
normalization_9_sub_y
normalization_9_sqrt_xC
)conv2d_243_conv2d_readvariableop_resource: 8
*conv2d_243_biasadd_readvariableop_resource: C
)conv2d_244_conv2d_readvariableop_resource: @8
*conv2d_244_biasadd_readvariableop_resource:@;
'dense_36_matmul_readvariableop_resource:
АbА7
(dense_36_biasadd_readvariableop_resource:	А:
'dense_37_matmul_readvariableop_resource:	А6
(dense_37_biasadd_readvariableop_resource:
identityИв!conv2d_243/BiasAdd/ReadVariableOpв conv2d_243/Conv2D/ReadVariableOpв!conv2d_244/BiasAdd/ReadVariableOpв conv2d_244/Conv2D/ReadVariableOpвdense_36/BiasAdd/ReadVariableOpвdense_36/MatMul/ReadVariableOpвdense_37/BiasAdd/ReadVariableOpвdense_37/MatMul/ReadVariableOpБ
resizing_9/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resizing_9/resize/size╙
 resizing_9/resize/ResizeBilinearResizeBilinearinputsresizing_9/resize/size:output:0*
T0*/
_output_shapes
:           *
half_pixel_centers(2"
 resizing_9/resize/ResizeBilinear╡
normalization_9/subSub1resizing_9/resize/ResizeBilinear:resized_images:0normalization_9_sub_y*
T0*/
_output_shapes
:           2
normalization_9/suby
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*"
_output_shapes
:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization_9/Maximum/yи
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_9/Maximumн
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*/
_output_shapes
:           2
normalization_9/truediv╢
 conv2d_243/Conv2D/ReadVariableOpReadVariableOp)conv2d_243_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_243/Conv2D/ReadVariableOp┌
conv2d_243/Conv2DConv2Dnormalization_9/truediv:z:0(conv2d_243/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_243/Conv2Dн
!conv2d_243/BiasAdd/ReadVariableOpReadVariableOp*conv2d_243_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_243/BiasAdd/ReadVariableOp┤
conv2d_243/BiasAddBiasAddconv2d_243/Conv2D:output:0)conv2d_243/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_243/BiasAddБ
conv2d_243/ReluReluconv2d_243/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_243/Relu╢
 conv2d_244/Conv2D/ReadVariableOpReadVariableOp)conv2d_244_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_244/Conv2D/ReadVariableOp▄
conv2d_244/Conv2DConv2Dconv2d_243/Relu:activations:0(conv2d_244/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_244/Conv2Dн
!conv2d_244/BiasAdd/ReadVariableOpReadVariableOp*conv2d_244_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_244/BiasAdd/ReadVariableOp┤
conv2d_244/BiasAddBiasAddconv2d_244/Conv2D:output:0)conv2d_244/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_244/BiasAddБ
conv2d_244/ReluReluconv2d_244/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_244/Relu╦
max_pooling2d_45/MaxPoolMaxPoolconv2d_244/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_45/MaxPoolУ
dropout_18/IdentityIdentity!max_pooling2d_45/MaxPool:output:0*
T0*/
_output_shapes
:         @2
dropout_18/Identityu
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2
flatten_18/ConstЯ
flatten_18/ReshapeReshapedropout_18/Identity:output:0flatten_18/Const:output:0*
T0*(
_output_shapes
:         Аb2
flatten_18/Reshapeк
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype02 
dense_36/MatMul/ReadVariableOpд
dense_36/MatMulMatMulflatten_18/Reshape:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_36/MatMulи
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
dense_36/BiasAdd/ReadVariableOpж
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_36/BiasAddt
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_36/ReluЖ
dropout_19/IdentityIdentitydense_36/Relu:activations:0*
T0*(
_output_shapes
:         А2
dropout_19/Identityй
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02 
dense_37/MatMul/ReadVariableOpд
dense_37/MatMulMatMuldropout_19/Identity:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_37/MatMulз
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_37/BiasAdd/ReadVariableOpе
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_37/BiasAdd|
dense_37/SigmoidSigmoiddense_37/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_37/Sigmoido
IdentityIdentitydense_37/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identityт
NoOpNoOp"^conv2d_243/BiasAdd/ReadVariableOp!^conv2d_243/Conv2D/ReadVariableOp"^conv2d_244/BiasAdd/ReadVariableOp!^conv2d_244/Conv2D/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 2F
!conv2d_243/BiasAdd/ReadVariableOp!conv2d_243/BiasAdd/ReadVariableOp2D
 conv2d_243/Conv2D/ReadVariableOp conv2d_243/Conv2D/ReadVariableOp2F
!conv2d_244/BiasAdd/ReadVariableOp!conv2d_244/BiasAdd/ReadVariableOp2D
 conv2d_244/Conv2D/ReadVariableOp conv2d_244/Conv2D/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ЇБ
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
а
щ
&__inference_signature_wrapper_10750098
input_10
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
АbА
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИвStatefulPartitionedCall╛
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference__wrapped_model_107496172
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:         ЇБ
"
_user_specified_name
input_10:($
"
_output_shapes
::($
"
_output_shapes
:
ЯK
є
#__inference__wrapped_model_10749617
input_10'
#sequential_18_normalization_9_sub_y(
$sequential_18_normalization_9_sqrt_xQ
7sequential_18_conv2d_243_conv2d_readvariableop_resource: F
8sequential_18_conv2d_243_biasadd_readvariableop_resource: Q
7sequential_18_conv2d_244_conv2d_readvariableop_resource: @F
8sequential_18_conv2d_244_biasadd_readvariableop_resource:@I
5sequential_18_dense_36_matmul_readvariableop_resource:
АbАE
6sequential_18_dense_36_biasadd_readvariableop_resource:	АH
5sequential_18_dense_37_matmul_readvariableop_resource:	АD
6sequential_18_dense_37_biasadd_readvariableop_resource:
identityИв/sequential_18/conv2d_243/BiasAdd/ReadVariableOpв.sequential_18/conv2d_243/Conv2D/ReadVariableOpв/sequential_18/conv2d_244/BiasAdd/ReadVariableOpв.sequential_18/conv2d_244/Conv2D/ReadVariableOpв-sequential_18/dense_36/BiasAdd/ReadVariableOpв,sequential_18/dense_36/MatMul/ReadVariableOpв-sequential_18/dense_37/BiasAdd/ReadVariableOpв,sequential_18/dense_37/MatMul/ReadVariableOpЭ
$sequential_18/resizing_9/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2&
$sequential_18/resizing_9/resize/size 
.sequential_18/resizing_9/resize/ResizeBilinearResizeBilinearinput_10-sequential_18/resizing_9/resize/size:output:0*
T0*/
_output_shapes
:           *
half_pixel_centers(20
.sequential_18/resizing_9/resize/ResizeBilinearэ
!sequential_18/normalization_9/subSub?sequential_18/resizing_9/resize/ResizeBilinear:resized_images:0#sequential_18_normalization_9_sub_y*
T0*/
_output_shapes
:           2#
!sequential_18/normalization_9/subг
"sequential_18/normalization_9/SqrtSqrt$sequential_18_normalization_9_sqrt_x*
T0*"
_output_shapes
:2$
"sequential_18/normalization_9/SqrtЧ
'sequential_18/normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32)
'sequential_18/normalization_9/Maximum/yр
%sequential_18/normalization_9/MaximumMaximum&sequential_18/normalization_9/Sqrt:y:00sequential_18/normalization_9/Maximum/y:output:0*
T0*"
_output_shapes
:2'
%sequential_18/normalization_9/Maximumх
%sequential_18/normalization_9/truedivRealDiv%sequential_18/normalization_9/sub:z:0)sequential_18/normalization_9/Maximum:z:0*
T0*/
_output_shapes
:           2'
%sequential_18/normalization_9/truedivр
.sequential_18/conv2d_243/Conv2D/ReadVariableOpReadVariableOp7sequential_18_conv2d_243_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_18/conv2d_243/Conv2D/ReadVariableOpТ
sequential_18/conv2d_243/Conv2DConv2D)sequential_18/normalization_9/truediv:z:06sequential_18/conv2d_243/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2!
sequential_18/conv2d_243/Conv2D╫
/sequential_18/conv2d_243/BiasAdd/ReadVariableOpReadVariableOp8sequential_18_conv2d_243_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_18/conv2d_243/BiasAdd/ReadVariableOpь
 sequential_18/conv2d_243/BiasAddBiasAdd(sequential_18/conv2d_243/Conv2D:output:07sequential_18/conv2d_243/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2"
 sequential_18/conv2d_243/BiasAddл
sequential_18/conv2d_243/ReluRelu)sequential_18/conv2d_243/BiasAdd:output:0*
T0*/
_output_shapes
:          2
sequential_18/conv2d_243/Reluр
.sequential_18/conv2d_244/Conv2D/ReadVariableOpReadVariableOp7sequential_18_conv2d_244_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_18/conv2d_244/Conv2D/ReadVariableOpФ
sequential_18/conv2d_244/Conv2DConv2D+sequential_18/conv2d_243/Relu:activations:06sequential_18/conv2d_244/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2!
sequential_18/conv2d_244/Conv2D╫
/sequential_18/conv2d_244/BiasAdd/ReadVariableOpReadVariableOp8sequential_18_conv2d_244_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_18/conv2d_244/BiasAdd/ReadVariableOpь
 sequential_18/conv2d_244/BiasAddBiasAdd(sequential_18/conv2d_244/Conv2D:output:07sequential_18/conv2d_244/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2"
 sequential_18/conv2d_244/BiasAddл
sequential_18/conv2d_244/ReluRelu)sequential_18/conv2d_244/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
sequential_18/conv2d_244/Reluї
&sequential_18/max_pooling2d_45/MaxPoolMaxPool+sequential_18/conv2d_244/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2(
&sequential_18/max_pooling2d_45/MaxPool╜
!sequential_18/dropout_18/IdentityIdentity/sequential_18/max_pooling2d_45/MaxPool:output:0*
T0*/
_output_shapes
:         @2#
!sequential_18/dropout_18/IdentityС
sequential_18/flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2 
sequential_18/flatten_18/Const╫
 sequential_18/flatten_18/ReshapeReshape*sequential_18/dropout_18/Identity:output:0'sequential_18/flatten_18/Const:output:0*
T0*(
_output_shapes
:         Аb2"
 sequential_18/flatten_18/Reshape╘
,sequential_18/dense_36/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_36_matmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype02.
,sequential_18/dense_36/MatMul/ReadVariableOp▄
sequential_18/dense_36/MatMulMatMul)sequential_18/flatten_18/Reshape:output:04sequential_18/dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential_18/dense_36/MatMul╥
-sequential_18/dense_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_18/dense_36/BiasAdd/ReadVariableOp▐
sequential_18/dense_36/BiasAddBiasAdd'sequential_18/dense_36/MatMul:product:05sequential_18/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
sequential_18/dense_36/BiasAddЮ
sequential_18/dense_36/ReluRelu'sequential_18/dense_36/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
sequential_18/dense_36/Relu░
!sequential_18/dropout_19/IdentityIdentity)sequential_18/dense_36/Relu:activations:0*
T0*(
_output_shapes
:         А2#
!sequential_18/dropout_19/Identity╙
,sequential_18/dense_37/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_37_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02.
,sequential_18/dense_37/MatMul/ReadVariableOp▄
sequential_18/dense_37/MatMulMatMul*sequential_18/dropout_19/Identity:output:04sequential_18/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_18/dense_37/MatMul╤
-sequential_18/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_18/dense_37/BiasAdd/ReadVariableOp▌
sequential_18/dense_37/BiasAddBiasAdd'sequential_18/dense_37/MatMul:product:05sequential_18/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2 
sequential_18/dense_37/BiasAddж
sequential_18/dense_37/SigmoidSigmoid'sequential_18/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:         2 
sequential_18/dense_37/Sigmoid}
IdentityIdentity"sequential_18/dense_37/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identity╥
NoOpNoOp0^sequential_18/conv2d_243/BiasAdd/ReadVariableOp/^sequential_18/conv2d_243/Conv2D/ReadVariableOp0^sequential_18/conv2d_244/BiasAdd/ReadVariableOp/^sequential_18/conv2d_244/Conv2D/ReadVariableOp.^sequential_18/dense_36/BiasAdd/ReadVariableOp-^sequential_18/dense_36/MatMul/ReadVariableOp.^sequential_18/dense_37/BiasAdd/ReadVariableOp-^sequential_18/dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 2b
/sequential_18/conv2d_243/BiasAdd/ReadVariableOp/sequential_18/conv2d_243/BiasAdd/ReadVariableOp2`
.sequential_18/conv2d_243/Conv2D/ReadVariableOp.sequential_18/conv2d_243/Conv2D/ReadVariableOp2b
/sequential_18/conv2d_244/BiasAdd/ReadVariableOp/sequential_18/conv2d_244/BiasAdd/ReadVariableOp2`
.sequential_18/conv2d_244/Conv2D/ReadVariableOp.sequential_18/conv2d_244/Conv2D/ReadVariableOp2^
-sequential_18/dense_36/BiasAdd/ReadVariableOp-sequential_18/dense_36/BiasAdd/ReadVariableOp2\
,sequential_18/dense_36/MatMul/ReadVariableOp,sequential_18/dense_36/MatMul/ReadVariableOp2^
-sequential_18/dense_37/BiasAdd/ReadVariableOp-sequential_18/dense_37/BiasAdd/ReadVariableOp2\
,sequential_18/dense_37/MatMul/ReadVariableOp,sequential_18/dense_37/MatMul/ReadVariableOp:[ W
1
_output_shapes
:         ЇБ
"
_user_specified_name
input_10:($
"
_output_shapes
::($
"
_output_shapes
:
я
Б
H__inference_conv2d_244_layer_call_and_return_conditional_losses_10749689

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
═N
Э
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750204

inputs
normalization_9_sub_y
normalization_9_sqrt_xC
)conv2d_243_conv2d_readvariableop_resource: 8
*conv2d_243_biasadd_readvariableop_resource: C
)conv2d_244_conv2d_readvariableop_resource: @8
*conv2d_244_biasadd_readvariableop_resource:@;
'dense_36_matmul_readvariableop_resource:
АbА7
(dense_36_biasadd_readvariableop_resource:	А:
'dense_37_matmul_readvariableop_resource:	А6
(dense_37_biasadd_readvariableop_resource:
identityИв!conv2d_243/BiasAdd/ReadVariableOpв conv2d_243/Conv2D/ReadVariableOpв!conv2d_244/BiasAdd/ReadVariableOpв conv2d_244/Conv2D/ReadVariableOpвdense_36/BiasAdd/ReadVariableOpвdense_36/MatMul/ReadVariableOpвdense_37/BiasAdd/ReadVariableOpвdense_37/MatMul/ReadVariableOpБ
resizing_9/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resizing_9/resize/size╙
 resizing_9/resize/ResizeBilinearResizeBilinearinputsresizing_9/resize/size:output:0*
T0*/
_output_shapes
:           *
half_pixel_centers(2"
 resizing_9/resize/ResizeBilinear╡
normalization_9/subSub1resizing_9/resize/ResizeBilinear:resized_images:0normalization_9_sub_y*
T0*/
_output_shapes
:           2
normalization_9/suby
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*"
_output_shapes
:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization_9/Maximum/yи
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_9/Maximumн
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*/
_output_shapes
:           2
normalization_9/truediv╢
 conv2d_243/Conv2D/ReadVariableOpReadVariableOp)conv2d_243_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_243/Conv2D/ReadVariableOp┌
conv2d_243/Conv2DConv2Dnormalization_9/truediv:z:0(conv2d_243/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_243/Conv2Dн
!conv2d_243/BiasAdd/ReadVariableOpReadVariableOp*conv2d_243_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_243/BiasAdd/ReadVariableOp┤
conv2d_243/BiasAddBiasAddconv2d_243/Conv2D:output:0)conv2d_243/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_243/BiasAddБ
conv2d_243/ReluReluconv2d_243/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_243/Relu╢
 conv2d_244/Conv2D/ReadVariableOpReadVariableOp)conv2d_244_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_244/Conv2D/ReadVariableOp▄
conv2d_244/Conv2DConv2Dconv2d_243/Relu:activations:0(conv2d_244/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_244/Conv2Dн
!conv2d_244/BiasAdd/ReadVariableOpReadVariableOp*conv2d_244_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_244/BiasAdd/ReadVariableOp┤
conv2d_244/BiasAddBiasAddconv2d_244/Conv2D:output:0)conv2d_244/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_244/BiasAddБ
conv2d_244/ReluReluconv2d_244/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_244/Relu╦
max_pooling2d_45/MaxPoolMaxPoolconv2d_244/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_45/MaxPooly
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_18/dropout/Const╖
dropout_18/dropout/MulMul!max_pooling2d_45/MaxPool:output:0!dropout_18/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout_18/dropout/MulЕ
dropout_18/dropout/ShapeShape!max_pooling2d_45/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_18/dropout/Shape▌
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype021
/dropout_18/dropout/random_uniform/RandomUniformЛ
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2#
!dropout_18/dropout/GreaterEqual/yЄ
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2!
dropout_18/dropout/GreaterEqualи
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout_18/dropout/Castо
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout_18/dropout/Mul_1u
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2
flatten_18/ConstЯ
flatten_18/ReshapeReshapedropout_18/dropout/Mul_1:z:0flatten_18/Const:output:0*
T0*(
_output_shapes
:         Аb2
flatten_18/Reshapeк
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype02 
dense_36/MatMul/ReadVariableOpд
dense_36/MatMulMatMulflatten_18/Reshape:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_36/MatMulи
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
dense_36/BiasAdd/ReadVariableOpж
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_36/BiasAddt
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_36/Reluy
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_19/dropout/Constк
dropout_19/dropout/MulMuldense_36/Relu:activations:0!dropout_19/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout_19/dropout/Mul
dropout_19/dropout/ShapeShapedense_36/Relu:activations:0*
T0*
_output_shapes
:2
dropout_19/dropout/Shape╓
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype021
/dropout_19/dropout/random_uniform/RandomUniformЛ
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_19/dropout/GreaterEqual/yы
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2!
dropout_19/dropout/GreaterEqualб
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout_19/dropout/Castз
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout_19/dropout/Mul_1й
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02 
dense_37/MatMul/ReadVariableOpд
dense_37/MatMulMatMuldropout_19/dropout/Mul_1:z:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_37/MatMulз
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_37/BiasAdd/ReadVariableOpе
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_37/BiasAdd|
dense_37/SigmoidSigmoiddense_37/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_37/Sigmoido
IdentityIdentitydense_37/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identityт
NoOpNoOp"^conv2d_243/BiasAdd/ReadVariableOp!^conv2d_243/Conv2D/ReadVariableOp"^conv2d_244/BiasAdd/ReadVariableOp!^conv2d_244/Conv2D/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 2F
!conv2d_243/BiasAdd/ReadVariableOp!conv2d_243/BiasAdd/ReadVariableOp2D
 conv2d_243/Conv2D/ReadVariableOp conv2d_243/Conv2D/ReadVariableOp2F
!conv2d_244/BiasAdd/ReadVariableOp!conv2d_244/BiasAdd/ReadVariableOp2D
 conv2d_244/Conv2D/ReadVariableOp conv2d_244/Conv2D/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ЇБ
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
Х
f
H__inference_dropout_18_layer_call_and_return_conditional_losses_10749706

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
е
в
-__inference_conv2d_244_layer_call_fn_10750351

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_244_layer_call_and_return_conditional_losses_107496892
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Р
·
F__inference_dense_36_layer_call_and_return_conditional_losses_10749727

inputs2
matmul_readvariableop_resource:
АbА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Аb: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Аb
 
_user_specified_nameinputs
Х.
┤
!__inference__traced_save_10750558
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	0
,savev2_conv2d_243_kernel_read_readvariableop.
*savev2_conv2d_243_bias_read_readvariableop0
,savev2_conv2d_244_kernel_read_readvariableop.
*savev2_conv2d_244_bias_read_readvariableop.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_2_read_readvariableop
savev2_const_2

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameТ	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*д
valueЪBЧB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names░
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╟
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop,savev2_conv2d_243_kernel_read_readvariableop*savev2_conv2d_243_bias_read_readvariableop,savev2_conv2d_244_kernel_read_readvariableop*savev2_conv2d_244_bias_read_readvariableop*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_2_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *"
dtypes
2		2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*Й
_input_shapesx
v: ::: : : : @:@:
АbА:А:	А:: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
АbА:!	

_output_shapes	
:А:%
!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╥
є
0__inference_sequential_18_layer_call_fn_10749995
input_10
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
АbА
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_sequential_18_layer_call_and_return_conditional_losses_107499472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:         ЇБ
"
_user_specified_name
input_10:($
"
_output_shapes
::($
"
_output_shapes
:
·/
х
K__inference_sequential_18_layer_call_and_return_conditional_losses_10749758

inputs
normalization_9_sub_y
normalization_9_sqrt_x-
conv2d_243_10749673: !
conv2d_243_10749675: -
conv2d_244_10749690: @!
conv2d_244_10749692:@%
dense_36_10749728:
АbА 
dense_36_10749730:	А$
dense_37_10749752:	А
dense_37_10749754:
identityИв"conv2d_243/StatefulPartitionedCallв"conv2d_244/StatefulPartitionedCallв dense_36/StatefulPartitionedCallв dense_37/StatefulPartitionedCallч
resizing_9/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_resizing_9_layer_call_and_return_conditional_losses_107496522
resizing_9/PartitionedCallз
normalization_9/subSub#resizing_9/PartitionedCall:output:0normalization_9_sub_y*
T0*/
_output_shapes
:           2
normalization_9/suby
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*"
_output_shapes
:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization_9/Maximum/yи
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_9/Maximumн
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*/
_output_shapes
:           2
normalization_9/truediv─
"conv2d_243/StatefulPartitionedCallStatefulPartitionedCallnormalization_9/truediv:z:0conv2d_243_10749673conv2d_243_10749675*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_243_layer_call_and_return_conditional_losses_107496722$
"conv2d_243/StatefulPartitionedCall╘
"conv2d_244/StatefulPartitionedCallStatefulPartitionedCall+conv2d_243/StatefulPartitionedCall:output:0conv2d_244_10749690conv2d_244_10749692*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_244_layer_call_and_return_conditional_losses_107496892$
"conv2d_244/StatefulPartitionedCallЮ
 max_pooling2d_45/PartitionedCallPartitionedCall+conv2d_244/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_107496992"
 max_pooling2d_45/PartitionedCallК
dropout_18/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_18_layer_call_and_return_conditional_losses_107497062
dropout_18/PartitionedCall¤
flatten_18/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_107497142
flatten_18/PartitionedCall╗
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_36_10749728dense_36_10749730*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_107497272"
 dense_36/StatefulPartitionedCallГ
dropout_19/PartitionedCallPartitionedCall)dense_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_19_layer_call_and_return_conditional_losses_107497382
dropout_19/PartitionedCall║
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_37_10749752dense_37_10749754*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_107497512"
 dense_37/StatefulPartitionedCallД
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity▐
NoOpNoOp#^conv2d_243/StatefulPartitionedCall#^conv2d_244/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 2H
"conv2d_243/StatefulPartitionedCall"conv2d_243/StatefulPartitionedCall2H
"conv2d_244/StatefulPartitionedCall"conv2d_244/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:Y U
1
_output_shapes
:         ЇБ
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
Н3
▒
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750067
input_10
normalization_9_sub_y
normalization_9_sqrt_x-
conv2d_243_10750042: !
conv2d_243_10750044: -
conv2d_244_10750047: @!
conv2d_244_10750049:@%
dense_36_10750055:
АbА 
dense_36_10750057:	А$
dense_37_10750061:	А
dense_37_10750063:
identityИв"conv2d_243/StatefulPartitionedCallв"conv2d_244/StatefulPartitionedCallв dense_36/StatefulPartitionedCallв dense_37/StatefulPartitionedCallв"dropout_18/StatefulPartitionedCallв"dropout_19/StatefulPartitionedCallщ
resizing_9/PartitionedCallPartitionedCallinput_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_resizing_9_layer_call_and_return_conditional_losses_107496522
resizing_9/PartitionedCallз
normalization_9/subSub#resizing_9/PartitionedCall:output:0normalization_9_sub_y*
T0*/
_output_shapes
:           2
normalization_9/suby
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*"
_output_shapes
:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization_9/Maximum/yи
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_9/Maximumн
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*/
_output_shapes
:           2
normalization_9/truediv─
"conv2d_243/StatefulPartitionedCallStatefulPartitionedCallnormalization_9/truediv:z:0conv2d_243_10750042conv2d_243_10750044*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_243_layer_call_and_return_conditional_losses_107496722$
"conv2d_243/StatefulPartitionedCall╘
"conv2d_244/StatefulPartitionedCallStatefulPartitionedCall+conv2d_243/StatefulPartitionedCall:output:0conv2d_244_10750047conv2d_244_10750049*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_244_layer_call_and_return_conditional_losses_107496892$
"conv2d_244/StatefulPartitionedCallЮ
 max_pooling2d_45/PartitionedCallPartitionedCall+conv2d_244/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_107496992"
 max_pooling2d_45/PartitionedCallв
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_18_layer_call_and_return_conditional_losses_107498502$
"dropout_18/StatefulPartitionedCallЕ
flatten_18/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_107497142
flatten_18/PartitionedCall╗
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_36_10750055dense_36_10750057*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_107497272"
 dense_36/StatefulPartitionedCall└
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_19_layer_call_and_return_conditional_losses_107498112$
"dropout_19/StatefulPartitionedCall┬
 dense_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_37_10750061dense_37_10750063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_107497512"
 dense_37/StatefulPartitionedCallД
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityи
NoOpNoOp#^conv2d_243/StatefulPartitionedCall#^conv2d_244/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 2H
"conv2d_243/StatefulPartitionedCall"conv2d_243/StatefulPartitionedCall2H
"conv2d_244/StatefulPartitionedCall"conv2d_244/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:[ W
1
_output_shapes
:         ЇБ
"
_user_specified_name
input_10:($
"
_output_shapes
::($
"
_output_shapes
:
╩
f
-__inference_dropout_18_layer_call_fn_10750398

inputs
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_18_layer_call_and_return_conditional_losses_107498502
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
є
O
3__inference_max_pooling2d_45_layer_call_fn_10750371

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_107496992
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
я
Б
H__inference_conv2d_243_layer_call_and_return_conditional_losses_10749672

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
у
d
H__inference_resizing_9_layer_call_and_return_conditional_losses_10749652

inputs
identityk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resize/size▓
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*/
_output_shapes
:           *
half_pixel_centers(2
resize/ResizeBilinearВ
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*/
_output_shapes
:           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЇБ:Y U
1
_output_shapes
:         ЇБ
 
_user_specified_nameinputs
╖
g
H__inference_dropout_19_layer_call_and_return_conditional_losses_10750446

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╖
g
H__inference_dropout_19_layer_call_and_return_conditional_losses_10749811

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
я
Б
H__inference_conv2d_244_layer_call_and_return_conditional_losses_10750342

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╗Q
╥

$__inference__traced_restore_10750625
file_prefix#
assignvariableop_mean:)
assignvariableop_1_variance:"
assignvariableop_2_count:	 >
$assignvariableop_3_conv2d_243_kernel: 0
"assignvariableop_4_conv2d_243_bias: >
$assignvariableop_5_conv2d_244_kernel: @0
"assignvariableop_6_conv2d_244_bias:@6
"assignvariableop_7_dense_36_kernel:
АbА/
 assignvariableop_8_dense_36_bias:	А5
"assignvariableop_9_dense_37_kernel:	А/
!assignvariableop_10_dense_37_bias:&
assignvariableop_11_sgd_iter:	 '
assignvariableop_12_sgd_decay: /
%assignvariableop_13_sgd_learning_rate: *
 assignvariableop_14_sgd_momentum: #
assignvariableop_15_total: %
assignvariableop_16_count_1: %
assignvariableop_17_total_1: %
assignvariableop_18_count_2: 
identity_20ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ш	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*д
valueЪBЧB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╢
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesП
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityФ
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1а
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2Э
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3й
AssignVariableOp_3AssignVariableOp$assignvariableop_3_conv2d_243_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4з
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_243_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5й
AssignVariableOp_5AssignVariableOp$assignvariableop_5_conv2d_244_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6з
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_244_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_36_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8е
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_36_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9з
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_37_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10й
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_37_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_11д
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12е
AssignVariableOp_12AssignVariableOpassignvariableop_12_sgd_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13н
AssignVariableOp_13AssignVariableOp%assignvariableop_13_sgd_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14и
AssignVariableOp_14AssignVariableOp assignvariableop_14_sgd_momentumIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15б
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16г
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17г
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18г
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_189
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpА
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_19f
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_20ш
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
З3
п
K__inference_sequential_18_layer_call_and_return_conditional_losses_10749947

inputs
normalization_9_sub_y
normalization_9_sqrt_x-
conv2d_243_10749922: !
conv2d_243_10749924: -
conv2d_244_10749927: @!
conv2d_244_10749929:@%
dense_36_10749935:
АbА 
dense_36_10749937:	А$
dense_37_10749941:	А
dense_37_10749943:
identityИв"conv2d_243/StatefulPartitionedCallв"conv2d_244/StatefulPartitionedCallв dense_36/StatefulPartitionedCallв dense_37/StatefulPartitionedCallв"dropout_18/StatefulPartitionedCallв"dropout_19/StatefulPartitionedCallч
resizing_9/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_resizing_9_layer_call_and_return_conditional_losses_107496522
resizing_9/PartitionedCallз
normalization_9/subSub#resizing_9/PartitionedCall:output:0normalization_9_sub_y*
T0*/
_output_shapes
:           2
normalization_9/suby
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*"
_output_shapes
:2
normalization_9/Sqrt{
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization_9/Maximum/yи
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_9/Maximumн
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*/
_output_shapes
:           2
normalization_9/truediv─
"conv2d_243/StatefulPartitionedCallStatefulPartitionedCallnormalization_9/truediv:z:0conv2d_243_10749922conv2d_243_10749924*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_243_layer_call_and_return_conditional_losses_107496722$
"conv2d_243/StatefulPartitionedCall╘
"conv2d_244/StatefulPartitionedCallStatefulPartitionedCall+conv2d_243/StatefulPartitionedCall:output:0conv2d_244_10749927conv2d_244_10749929*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_244_layer_call_and_return_conditional_losses_107496892$
"conv2d_244/StatefulPartitionedCallЮ
 max_pooling2d_45/PartitionedCallPartitionedCall+conv2d_244/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_107496992"
 max_pooling2d_45/PartitionedCallв
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_18_layer_call_and_return_conditional_losses_107498502$
"dropout_18/StatefulPartitionedCallЕ
flatten_18/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_107497142
flatten_18/PartitionedCall╗
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_36_10749935dense_36_10749937*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_107497272"
 dense_36/StatefulPartitionedCall└
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_19_layer_call_and_return_conditional_losses_107498112$
"dropout_19/StatefulPartitionedCall┬
 dense_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_37_10749941dense_37_10749943*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_107497512"
 dense_37/StatefulPartitionedCallД
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityи
NoOpNoOp#^conv2d_243/StatefulPartitionedCall#^conv2d_244/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 2H
"conv2d_243/StatefulPartitionedCall"conv2d_243/StatefulPartitionedCall2H
"conv2d_244/StatefulPartitionedCall"conv2d_244/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:Y U
1
_output_shapes
:         ЇБ
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
Х
f
H__inference_dropout_18_layer_call_and_return_conditional_losses_10750376

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
о
j
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_10750356

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
н
f
-__inference_dropout_19_layer_call_fn_10750456

inputs
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_19_layer_call_and_return_conditional_losses_107498112
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╠
ё
0__inference_sequential_18_layer_call_fn_10750254

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
АbА
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_sequential_18_layer_call_and_return_conditional_losses_107499472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЇБ
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
 
Ы
+__inference_dense_36_layer_call_fn_10750429

inputs
unknown:
АbА
	unknown_0:	А
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_107497272
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Аb: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Аb
 
_user_specified_nameinputs
е
в
-__inference_conv2d_243_layer_call_fn_10750331

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv2d_243_layer_call_and_return_conditional_losses_107496722
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
ч
I
-__inference_dropout_18_layer_call_fn_10750393

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_18_layer_call_and_return_conditional_losses_107497062
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
я
Б
H__inference_conv2d_243_layer_call_and_return_conditional_losses_10750322

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
√
Щ
+__inference_dense_37_layer_call_fn_10750476

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_107497512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
∙
f
H__inference_dropout_19_layer_call_and_return_conditional_losses_10750434

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Р
·
F__inference_dense_36_layer_call_and_return_conditional_losses_10750420

inputs2
matmul_readvariableop_resource:
АbА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Аb: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Аb
 
_user_specified_nameinputs
╥
є
0__inference_sequential_18_layer_call_fn_10749781
input_10
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
АbА
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_sequential_18_layer_call_and_return_conditional_losses_107497582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:         ЇБ
"
_user_specified_name
input_10:($
"
_output_shapes
::($
"
_output_shapes
:
╠
ё
0__inference_sequential_18_layer_call_fn_10750229

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
АbА
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_sequential_18_layer_call_and_return_conditional_losses_107497582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         ЇБ::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЇБ
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
о
j
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_10749626

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╦
I
-__inference_dropout_19_layer_call_fn_10750451

inputs
identity╩
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_dropout_19_layer_call_and_return_conditional_losses_107497382
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
∙
f
H__inference_dropout_19_layer_call_and_return_conditional_losses_10749738

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ы
I
-__inference_resizing_9_layer_call_fn_10750265

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_resizing_9_layer_call_and_return_conditional_losses_107496522
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЇБ:Y U
1
_output_shapes
:         ЇБ
 
_user_specified_nameinputs
р
O
3__inference_max_pooling2d_45_layer_call_fn_10750366

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_107496262
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ё
g
H__inference_dropout_18_layer_call_and_return_conditional_losses_10749850

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┴
j
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_10750361

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┴
j
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_10749699

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
К
°
F__inference_dense_37_layer_call_and_return_conditional_losses_10750467

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ъ
d
H__inference_flatten_18_layer_call_and_return_conditional_losses_10750404

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         Аb2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         Аb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
у
d
H__inference_resizing_9_layer_call_and_return_conditional_losses_10750260

inputs
identityk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resize/size▓
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*/
_output_shapes
:           *
half_pixel_centers(2
resize/ResizeBilinearВ
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*/
_output_shapes
:           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЇБ:Y U
1
_output_shapes
:         ЇБ
 
_user_specified_nameinputs"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╖
serving_defaultг
G
input_10;
serving_default_input_10:0         ЇБ<
dense_370
StatefulPartitionedCall:0         tensorflow/serving/predict:Як
э
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+Ж&call_and_return_all_conditional_losses
З_default_save_signature
И__call__"
_tf_keras_sequential
з
regularization_losses
trainable_variables
	variables
	keras_api
+Й&call_and_return_all_conditional_losses
К__call__"
_tf_keras_layer
╘

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api
Л_adapt_function"
_tf_keras_layer
╜

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api
+М&call_and_return_all_conditional_losses
Н__call__"
_tf_keras_layer
╜

#kernel
$bias
%regularization_losses
&trainable_variables
'	variables
(	keras_api
+О&call_and_return_all_conditional_losses
П__call__"
_tf_keras_layer
з
)regularization_losses
*trainable_variables
+	variables
,	keras_api
+Р&call_and_return_all_conditional_losses
С__call__"
_tf_keras_layer
з
-regularization_losses
.trainable_variables
/	variables
0	keras_api
+Т&call_and_return_all_conditional_losses
У__call__"
_tf_keras_layer
з
1regularization_losses
2trainable_variables
3	variables
4	keras_api
+Ф&call_and_return_all_conditional_losses
Х__call__"
_tf_keras_layer
╜

5kernel
6bias
7regularization_losses
8trainable_variables
9	variables
:	keras_api
+Ц&call_and_return_all_conditional_losses
Ч__call__"
_tf_keras_layer
з
;regularization_losses
<trainable_variables
=	variables
>	keras_api
+Ш&call_and_return_all_conditional_losses
Щ__call__"
_tf_keras_layer
╜

?kernel
@bias
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
+Ъ&call_and_return_all_conditional_losses
Ы__call__"
_tf_keras_layer
I
Eiter
	Fdecay
Glearning_rate
Hmomentum"
	optimizer
 "
trackable_list_wrapper
X
0
1
#2
$3
54
65
?6
@7"
trackable_list_wrapper
n
0
1
2
3
4
#5
$6
57
68
?9
@10"
trackable_list_wrapper
╬

Ilayers
Jlayer_metrics
Klayer_regularization_losses
Lmetrics
regularization_losses
Mnon_trainable_variables
trainable_variables
	variables
И__call__
З_default_save_signature
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
-
Ьserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

Nlayers
Olayer_metrics
Player_regularization_losses
Qmetrics
regularization_losses
Rnon_trainable_variables
trainable_variables
	variables
К__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
+:) 2conv2d_243/kernel
: 2conv2d_243/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░

Slayers
Tlayer_metrics
Ulayer_regularization_losses
Vmetrics
regularization_losses
Wnon_trainable_variables
 trainable_variables
!	variables
Н__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_244/kernel
:@2conv2d_244/bias
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
░

Xlayers
Ylayer_metrics
Zlayer_regularization_losses
[metrics
%regularization_losses
\non_trainable_variables
&trainable_variables
'	variables
П__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

]layers
^layer_metrics
_layer_regularization_losses
`metrics
)regularization_losses
anon_trainable_variables
*trainable_variables
+	variables
С__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

blayers
clayer_metrics
dlayer_regularization_losses
emetrics
-regularization_losses
fnon_trainable_variables
.trainable_variables
/	variables
У__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

glayers
hlayer_metrics
ilayer_regularization_losses
jmetrics
1regularization_losses
knon_trainable_variables
2trainable_variables
3	variables
Х__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
#:!
АbА2dense_36/kernel
:А2dense_36/bias
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
░

llayers
mlayer_metrics
nlayer_regularization_losses
ometrics
7regularization_losses
pnon_trainable_variables
8trainable_variables
9	variables
Ч__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

qlayers
rlayer_metrics
slayer_regularization_losses
tmetrics
;regularization_losses
unon_trainable_variables
<trainable_variables
=	variables
Щ__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
": 	А2dense_37/kernel
:2dense_37/bias
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
░

vlayers
wlayer_metrics
xlayer_regularization_losses
ymetrics
Aregularization_losses
znon_trainable_variables
Btrainable_variables
C	variables
Ы__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
f
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
9"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
5
0
1
2"
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
O
	}total
	~count
	variables
А	keras_api"
_tf_keras_metric
c

Бtotal

Вcount
Г
_fn_kwargs
Д	variables
Е	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
}0
~1"
trackable_list_wrapper
-
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Б0
В1"
trackable_list_wrapper
.
Д	variables"
_generic_user_object
·2ў
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750144
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750204
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750031
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750067└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╧B╠
#__inference__wrapped_model_10749617input_10"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
О2Л
0__inference_sequential_18_layer_call_fn_10749781
0__inference_sequential_18_layer_call_fn_10750229
0__inference_sequential_18_layer_call_fn_10750254
0__inference_sequential_18_layer_call_fn_10749995└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Є2я
H__inference_resizing_9_layer_call_and_return_conditional_losses_10750260в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╫2╘
-__inference_resizing_9_layer_call_fn_10750265в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┴2╛
__inference_adapt_step_10750311Ъ
У▓П
FullArgSpec
argsЪ

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Є2я
H__inference_conv2d_243_layer_call_and_return_conditional_losses_10750322в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╫2╘
-__inference_conv2d_243_layer_call_fn_10750331в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Є2я
H__inference_conv2d_244_layer_call_and_return_conditional_losses_10750342в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╫2╘
-__inference_conv2d_244_layer_call_fn_10750351в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╚2┼
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_10750356
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_10750361в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Т2П
3__inference_max_pooling2d_45_layer_call_fn_10750366
3__inference_max_pooling2d_45_layer_call_fn_10750371в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╬2╦
H__inference_dropout_18_layer_call_and_return_conditional_losses_10750376
H__inference_dropout_18_layer_call_and_return_conditional_losses_10750388┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ш2Х
-__inference_dropout_18_layer_call_fn_10750393
-__inference_dropout_18_layer_call_fn_10750398┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Є2я
H__inference_flatten_18_layer_call_and_return_conditional_losses_10750404в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╫2╘
-__inference_flatten_18_layer_call_fn_10750409в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_dense_36_layer_call_and_return_conditional_losses_10750420в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_dense_36_layer_call_fn_10750429в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╬2╦
H__inference_dropout_19_layer_call_and_return_conditional_losses_10750434
H__inference_dropout_19_layer_call_and_return_conditional_losses_10750446┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ш2Х
-__inference_dropout_19_layer_call_fn_10750451
-__inference_dropout_19_layer_call_fn_10750456┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ё2э
F__inference_dense_37_layer_call_and_return_conditional_losses_10750467в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_dense_37_layer_call_fn_10750476в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╬B╦
&__inference_signature_wrapper_10750098input_10"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
	J
Const
J	
Const_1и
#__inference__wrapped_model_10749617АЭЮ#$56?@;в8
1в.
,К)
input_10         ЇБ
к "3к0
.
dense_37"К
dense_37         t
__inference_adapt_step_10750311QFвC
<в9
7Т4"в
К         БIteratorSpec
к "
 ╕
H__inference_conv2d_243_layer_call_and_return_conditional_losses_10750322l7в4
-в*
(К%
inputs           
к "-в*
#К 
0          
Ъ Р
-__inference_conv2d_243_layer_call_fn_10750331_7в4
-в*
(К%
inputs           
к " К          ╕
H__inference_conv2d_244_layer_call_and_return_conditional_losses_10750342l#$7в4
-в*
(К%
inputs          
к "-в*
#К 
0         @
Ъ Р
-__inference_conv2d_244_layer_call_fn_10750351_#$7в4
-в*
(К%
inputs          
к " К         @и
F__inference_dense_36_layer_call_and_return_conditional_losses_10750420^560в-
&в#
!К
inputs         Аb
к "&в#
К
0         А
Ъ А
+__inference_dense_36_layer_call_fn_10750429Q560в-
&в#
!К
inputs         Аb
к "К         Аз
F__inference_dense_37_layer_call_and_return_conditional_losses_10750467]?@0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ 
+__inference_dense_37_layer_call_fn_10750476P?@0в-
&в#
!К
inputs         А
к "К         ╕
H__inference_dropout_18_layer_call_and_return_conditional_losses_10750376l;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ╕
H__inference_dropout_18_layer_call_and_return_conditional_losses_10750388l;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ Р
-__inference_dropout_18_layer_call_fn_10750393_;в8
1в.
(К%
inputs         @
p 
к " К         @Р
-__inference_dropout_18_layer_call_fn_10750398_;в8
1в.
(К%
inputs         @
p
к " К         @к
H__inference_dropout_19_layer_call_and_return_conditional_losses_10750434^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ к
H__inference_dropout_19_layer_call_and_return_conditional_losses_10750446^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ В
-__inference_dropout_19_layer_call_fn_10750451Q4в1
*в'
!К
inputs         А
p 
к "К         АВ
-__inference_dropout_19_layer_call_fn_10750456Q4в1
*в'
!К
inputs         А
p
к "К         Ан
H__inference_flatten_18_layer_call_and_return_conditional_losses_10750404a7в4
-в*
(К%
inputs         @
к "&в#
К
0         Аb
Ъ Е
-__inference_flatten_18_layer_call_fn_10750409T7в4
-в*
(К%
inputs         @
к "К         Аbё
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_10750356ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ║
N__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_10750361h7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ ╔
3__inference_max_pooling2d_45_layer_call_fn_10750366СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Т
3__inference_max_pooling2d_45_layer_call_fn_10750371[7в4
-в*
(К%
inputs         @
к " К         @╢
H__inference_resizing_9_layer_call_and_return_conditional_losses_10750260j9в6
/в,
*К'
inputs         ЇБ
к "-в*
#К 
0           
Ъ О
-__inference_resizing_9_layer_call_fn_10750265]9в6
/в,
*К'
inputs         ЇБ
к " К           ╔
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750031zЭЮ#$56?@Cв@
9в6
,К)
input_10         ЇБ
p 

 
к "%в"
К
0         
Ъ ╔
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750067zЭЮ#$56?@Cв@
9в6
,К)
input_10         ЇБ
p

 
к "%в"
К
0         
Ъ ╟
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750144xЭЮ#$56?@Aв>
7в4
*К'
inputs         ЇБ
p 

 
к "%в"
К
0         
Ъ ╟
K__inference_sequential_18_layer_call_and_return_conditional_losses_10750204xЭЮ#$56?@Aв>
7в4
*К'
inputs         ЇБ
p

 
к "%в"
К
0         
Ъ б
0__inference_sequential_18_layer_call_fn_10749781mЭЮ#$56?@Cв@
9в6
,К)
input_10         ЇБ
p 

 
к "К         б
0__inference_sequential_18_layer_call_fn_10749995mЭЮ#$56?@Cв@
9в6
,К)
input_10         ЇБ
p

 
к "К         Я
0__inference_sequential_18_layer_call_fn_10750229kЭЮ#$56?@Aв>
7в4
*К'
inputs         ЇБ
p 

 
к "К         Я
0__inference_sequential_18_layer_call_fn_10750254kЭЮ#$56?@Aв>
7в4
*К'
inputs         ЇБ
p

 
к "К         ╖
&__inference_signature_wrapper_10750098МЭЮ#$56?@GвD
в 
=к:
8
input_10,К)
input_10         ЇБ"3к0
.
dense_37"К
dense_37         