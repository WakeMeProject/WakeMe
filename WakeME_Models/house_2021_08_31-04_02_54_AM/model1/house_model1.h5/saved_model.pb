??	
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
?
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
-
Sqrt
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-0-g919f693420e8??
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
?
conv2d_398/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_398/kernel

%conv2d_398/kernel/Read/ReadVariableOpReadVariableOpconv2d_398/kernel*&
_output_shapes
: *
dtype0
v
conv2d_398/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_398/bias
o
#conv2d_398/bias/Read/ReadVariableOpReadVariableOpconv2d_398/bias*
_output_shapes
: *
dtype0
?
conv2d_399/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_399/kernel

%conv2d_399/kernel/Read/ReadVariableOpReadVariableOpconv2d_399/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_399/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_399/bias
o
#conv2d_399/bias/Read/ReadVariableOpReadVariableOpconv2d_399/bias*
_output_shapes
:@*
dtype0
|
dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?b?* 
shared_namedense_65/kernel
u
#dense_65/kernel/Read/ReadVariableOpReadVariableOpdense_65/kernel* 
_output_shapes
:
?b?*
dtype0
s
dense_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_65/bias
l
!dense_65/bias/Read/ReadVariableOpReadVariableOpdense_65/bias*
_output_shapes	
:?*
dtype0
{
dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_66/kernel
t
#dense_66/kernel/Read/ReadVariableOpReadVariableOpdense_66/kernel*
_output_shapes
:	?*
dtype0
r
dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_66/bias
k
!dense_66/bias/Read/ReadVariableOpReadVariableOpdense_66/bias*
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
valueB*s>
d
Const_1Const*"
_output_shapes
:*
dtype0*!
valueB*U?*?

NoOpNoOp
?,
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*?+
value?+B?+ B?+
?
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
	variables
trainable_variables
	keras_api

signatures
R
regularization_losses
	variables
trainable_variables
	keras_api
?
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
 	variables
!trainable_variables
"	keras_api
h

#kernel
$bias
%regularization_losses
&	variables
'trainable_variables
(	keras_api
R
)regularization_losses
*	variables
+trainable_variables
,	keras_api
R
-regularization_losses
.	variables
/trainable_variables
0	keras_api
R
1regularization_losses
2	variables
3trainable_variables
4	keras_api
h

5kernel
6bias
7regularization_losses
8	variables
9trainable_variables
:	keras_api
R
;regularization_losses
<	variables
=trainable_variables
>	keras_api
h

?kernel
@bias
Aregularization_losses
B	variables
Ctrainable_variables
D	keras_api
6
Eiter
	Fdecay
Glearning_rate
Hmomentum
 
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
8
0
1
#2
$3
54
65
?6
@7
?
Inon_trainable_variables
Jmetrics
Klayer_regularization_losses
regularization_losses
	variables
trainable_variables

Llayers
Mlayer_metrics
 
 
 
 
?
Nnon_trainable_variables
Ometrics
Player_regularization_losses
regularization_losses
	variables
trainable_variables

Qlayers
Rlayer_metrics
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
VARIABLE_VALUEconv2d_398/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_398/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Snon_trainable_variables
Tmetrics
Ulayer_regularization_losses
regularization_losses
 	variables
!trainable_variables

Vlayers
Wlayer_metrics
][
VARIABLE_VALUEconv2d_399/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_399/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

#0
$1

#0
$1
?
Xnon_trainable_variables
Ymetrics
Zlayer_regularization_losses
%regularization_losses
&	variables
'trainable_variables

[layers
\layer_metrics
 
 
 
?
]non_trainable_variables
^metrics
_layer_regularization_losses
)regularization_losses
*	variables
+trainable_variables

`layers
alayer_metrics
 
 
 
?
bnon_trainable_variables
cmetrics
dlayer_regularization_losses
-regularization_losses
.	variables
/trainable_variables

elayers
flayer_metrics
 
 
 
?
gnon_trainable_variables
hmetrics
ilayer_regularization_losses
1regularization_losses
2	variables
3trainable_variables

jlayers
klayer_metrics
[Y
VARIABLE_VALUEdense_65/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_65/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

50
61

50
61
?
lnon_trainable_variables
mmetrics
nlayer_regularization_losses
7regularization_losses
8	variables
9trainable_variables

olayers
player_metrics
 
 
 
?
qnon_trainable_variables
rmetrics
slayer_regularization_losses
;regularization_losses
<	variables
=trainable_variables

tlayers
ulayer_metrics
[Y
VARIABLE_VALUEdense_66/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_66/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
@1

?0
@1
?
vnon_trainable_variables
wmetrics
xlayer_regularization_losses
Aregularization_losses
B	variables
Ctrainable_variables

ylayers
zlayer_metrics
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

0
1
2

{0
|1
 
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
?0
?1

?	variables
?
serving_default_input_20Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_20ConstConst_1conv2d_398/kernelconv2d_398/biasconv2d_399/kernelconv2d_399/biasdense_65/kerneldense_65/biasdense_66/kerneldense_66/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_9549090
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp%conv2d_398/kernel/Read/ReadVariableOp#conv2d_398/bias/Read/ReadVariableOp%conv2d_399/kernel/Read/ReadVariableOp#conv2d_399/bias/Read/ReadVariableOp#dense_65/kernel/Read/ReadVariableOp!dense_65/bias/Read/ReadVariableOp#dense_66/kernel/Read/ReadVariableOp!dense_66/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_2/Read/ReadVariableOpConst_2* 
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_9549550
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountconv2d_398/kernelconv2d_398/biasconv2d_399/kernelconv2d_399/biasdense_65/kerneldense_65/biasdense_66/kerneldense_66/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount_1total_1count_2*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_9549617??
?
i
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_9548691

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
/__inference_sequential_34_layer_call_fn_9548987
input_20
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
?b?
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_34_layer_call_and_return_conditional_losses_95489392
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
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20:($
"
_output_shapes
::($
"
_output_shapes
:
?
f
G__inference_dropout_39_layer_call_and_return_conditional_losses_9549438

inputs
identity?c
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
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
__inference_adapt_step_9549303
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*,
_output_shapes
:??????????*+
output_shapes
:??????????*
output_types
22
IteratorGetNext?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeanIteratorGetNext:components:0'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceIteratorGetNext:components:0moments/StopGradient:output:0*
T0*,
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
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
GatherV2/axis?
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
 *  ??2
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
add_4?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignVariableOp?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype02
AssignVariableOp_1?
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
?
e
,__inference_dropout_39_layer_call_fn_9549448

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_39_layer_call_and_return_conditional_losses_95488032
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_39_layer_call_and_return_conditional_losses_9549426

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_399_layer_call_fn_9549343

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_399_layer_call_and_return_conditional_losses_95486812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
H__inference_resizing_19_layer_call_and_return_conditional_losses_9548644

inputs
identityk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resize/size?
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(2
resize/ResizeBilinear?
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_38_layer_call_and_return_conditional_losses_9548842

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
,__inference_dropout_38_layer_call_fn_9549390

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_95488422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_dense_66_layer_call_fn_9549468

inputs
unknown:	?
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
E__inference_dense_66_layer_call_and_return_conditional_losses_95487432
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
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_31_layer_call_and_return_conditional_losses_9548706

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????b2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_9549090
input_20
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
?b?
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_95486092
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
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20:($
"
_output_shapes
::($
"
_output_shapes
:
?
i
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_9549348

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_9549412

inputs2
matmul_readvariableop_resource:
?b?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
I
-__inference_resizing_19_layer_call_fn_9549257

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
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_resizing_19_layer_call_and_return_conditional_losses_95486442
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?3
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549059
input_20
normalization_19_sub_y
normalization_19_sqrt_x,
conv2d_398_9549034:  
conv2d_398_9549036: ,
conv2d_399_9549039: @ 
conv2d_399_9549041:@$
dense_65_9549047:
?b?
dense_65_9549049:	?#
dense_66_9549053:	?
dense_66_9549055:
identity??"conv2d_398/StatefulPartitionedCall?"conv2d_399/StatefulPartitionedCall? dense_65/StatefulPartitionedCall? dense_66/StatefulPartitionedCall?"dropout_38/StatefulPartitionedCall?"dropout_39/StatefulPartitionedCall?
resizing_19/PartitionedCallPartitionedCallinput_20*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_resizing_19_layer_call_and_return_conditional_losses_95486442
resizing_19/PartitionedCall?
normalization_19/subSub$resizing_19/PartitionedCall:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_19/sub|
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*"
_output_shapes
:2
normalization_19/Sqrt}
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_19/Maximum/y?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_19/Maximum?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_19/truediv?
"conv2d_398/StatefulPartitionedCallStatefulPartitionedCallnormalization_19/truediv:z:0conv2d_398_9549034conv2d_398_9549036*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_398_layer_call_and_return_conditional_losses_95486642$
"conv2d_398/StatefulPartitionedCall?
"conv2d_399/StatefulPartitionedCallStatefulPartitionedCall+conv2d_398/StatefulPartitionedCall:output:0conv2d_399_9549039conv2d_399_9549041*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_399_layer_call_and_return_conditional_losses_95486812$
"conv2d_399/StatefulPartitionedCall?
 max_pooling2d_70/PartitionedCallPartitionedCall+conv2d_399/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_95486912"
 max_pooling2d_70/PartitionedCall?
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_70/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_95488422$
"dropout_38/StatefulPartitionedCall?
flatten_31/PartitionedCallPartitionedCall+dropout_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_95487062
flatten_31/PartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#flatten_31/PartitionedCall:output:0dense_65_9549047dense_65_9549049*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_95487192"
 dense_65/StatefulPartitionedCall?
"dropout_39/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0#^dropout_38/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_39_layer_call_and_return_conditional_losses_95488032$
"dropout_39/StatefulPartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall+dropout_39/StatefulPartitionedCall:output:0dense_66_9549053dense_66_9549055*
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
E__inference_dense_66_layer_call_and_return_conditional_losses_95487432"
 dense_66/StatefulPartitionedCall?
IdentityIdentity)dense_66/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_398/StatefulPartitionedCall#^conv2d_399/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall#^dropout_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_398/StatefulPartitionedCall"conv2d_398/StatefulPartitionedCall2H
"conv2d_399/StatefulPartitionedCall"conv2d_399/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall2H
"dropout_39/StatefulPartitionedCall"dropout_39/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20:($
"
_output_shapes
::($
"
_output_shapes
:
?
i
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_9548618

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
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
e
G__inference_dropout_38_layer_call_and_return_conditional_losses_9549368

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?K
?
"__inference__wrapped_model_9548609
input_20(
$sequential_34_normalization_19_sub_y)
%sequential_34_normalization_19_sqrt_xQ
7sequential_34_conv2d_398_conv2d_readvariableop_resource: F
8sequential_34_conv2d_398_biasadd_readvariableop_resource: Q
7sequential_34_conv2d_399_conv2d_readvariableop_resource: @F
8sequential_34_conv2d_399_biasadd_readvariableop_resource:@I
5sequential_34_dense_65_matmul_readvariableop_resource:
?b?E
6sequential_34_dense_65_biasadd_readvariableop_resource:	?H
5sequential_34_dense_66_matmul_readvariableop_resource:	?D
6sequential_34_dense_66_biasadd_readvariableop_resource:
identity??/sequential_34/conv2d_398/BiasAdd/ReadVariableOp?.sequential_34/conv2d_398/Conv2D/ReadVariableOp?/sequential_34/conv2d_399/BiasAdd/ReadVariableOp?.sequential_34/conv2d_399/Conv2D/ReadVariableOp?-sequential_34/dense_65/BiasAdd/ReadVariableOp?,sequential_34/dense_65/MatMul/ReadVariableOp?-sequential_34/dense_66/BiasAdd/ReadVariableOp?,sequential_34/dense_66/MatMul/ReadVariableOp?
%sequential_34/resizing_19/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2'
%sequential_34/resizing_19/resize/size?
/sequential_34/resizing_19/resize/ResizeBilinearResizeBilinearinput_20.sequential_34/resizing_19/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(21
/sequential_34/resizing_19/resize/ResizeBilinear?
"sequential_34/normalization_19/subSub@sequential_34/resizing_19/resize/ResizeBilinear:resized_images:0$sequential_34_normalization_19_sub_y*
T0*/
_output_shapes
:?????????  2$
"sequential_34/normalization_19/sub?
#sequential_34/normalization_19/SqrtSqrt%sequential_34_normalization_19_sqrt_x*
T0*"
_output_shapes
:2%
#sequential_34/normalization_19/Sqrt?
(sequential_34/normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32*
(sequential_34/normalization_19/Maximum/y?
&sequential_34/normalization_19/MaximumMaximum'sequential_34/normalization_19/Sqrt:y:01sequential_34/normalization_19/Maximum/y:output:0*
T0*"
_output_shapes
:2(
&sequential_34/normalization_19/Maximum?
&sequential_34/normalization_19/truedivRealDiv&sequential_34/normalization_19/sub:z:0*sequential_34/normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????  2(
&sequential_34/normalization_19/truediv?
.sequential_34/conv2d_398/Conv2D/ReadVariableOpReadVariableOp7sequential_34_conv2d_398_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_34/conv2d_398/Conv2D/ReadVariableOp?
sequential_34/conv2d_398/Conv2DConv2D*sequential_34/normalization_19/truediv:z:06sequential_34/conv2d_398/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2!
sequential_34/conv2d_398/Conv2D?
/sequential_34/conv2d_398/BiasAdd/ReadVariableOpReadVariableOp8sequential_34_conv2d_398_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_34/conv2d_398/BiasAdd/ReadVariableOp?
 sequential_34/conv2d_398/BiasAddBiasAdd(sequential_34/conv2d_398/Conv2D:output:07sequential_34/conv2d_398/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2"
 sequential_34/conv2d_398/BiasAdd?
sequential_34/conv2d_398/ReluRelu)sequential_34/conv2d_398/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_34/conv2d_398/Relu?
.sequential_34/conv2d_399/Conv2D/ReadVariableOpReadVariableOp7sequential_34_conv2d_399_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_34/conv2d_399/Conv2D/ReadVariableOp?
sequential_34/conv2d_399/Conv2DConv2D+sequential_34/conv2d_398/Relu:activations:06sequential_34/conv2d_399/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2!
sequential_34/conv2d_399/Conv2D?
/sequential_34/conv2d_399/BiasAdd/ReadVariableOpReadVariableOp8sequential_34_conv2d_399_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_34/conv2d_399/BiasAdd/ReadVariableOp?
 sequential_34/conv2d_399/BiasAddBiasAdd(sequential_34/conv2d_399/Conv2D:output:07sequential_34/conv2d_399/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 sequential_34/conv2d_399/BiasAdd?
sequential_34/conv2d_399/ReluRelu)sequential_34/conv2d_399/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_34/conv2d_399/Relu?
&sequential_34/max_pooling2d_70/MaxPoolMaxPool+sequential_34/conv2d_399/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_34/max_pooling2d_70/MaxPool?
!sequential_34/dropout_38/IdentityIdentity/sequential_34/max_pooling2d_70/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!sequential_34/dropout_38/Identity?
sequential_34/flatten_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2 
sequential_34/flatten_31/Const?
 sequential_34/flatten_31/ReshapeReshape*sequential_34/dropout_38/Identity:output:0'sequential_34/flatten_31/Const:output:0*
T0*(
_output_shapes
:??????????b2"
 sequential_34/flatten_31/Reshape?
,sequential_34/dense_65/MatMul/ReadVariableOpReadVariableOp5sequential_34_dense_65_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02.
,sequential_34/dense_65/MatMul/ReadVariableOp?
sequential_34/dense_65/MatMulMatMul)sequential_34/flatten_31/Reshape:output:04sequential_34/dense_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_34/dense_65/MatMul?
-sequential_34/dense_65/BiasAdd/ReadVariableOpReadVariableOp6sequential_34_dense_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_34/dense_65/BiasAdd/ReadVariableOp?
sequential_34/dense_65/BiasAddBiasAdd'sequential_34/dense_65/MatMul:product:05sequential_34/dense_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_34/dense_65/BiasAdd?
sequential_34/dense_65/ReluRelu'sequential_34/dense_65/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_34/dense_65/Relu?
!sequential_34/dropout_39/IdentityIdentity)sequential_34/dense_65/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!sequential_34/dropout_39/Identity?
,sequential_34/dense_66/MatMul/ReadVariableOpReadVariableOp5sequential_34_dense_66_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_34/dense_66/MatMul/ReadVariableOp?
sequential_34/dense_66/MatMulMatMul*sequential_34/dropout_39/Identity:output:04sequential_34/dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_34/dense_66/MatMul?
-sequential_34/dense_66/BiasAdd/ReadVariableOpReadVariableOp6sequential_34_dense_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_34/dense_66/BiasAdd/ReadVariableOp?
sequential_34/dense_66/BiasAddBiasAdd'sequential_34/dense_66/MatMul:product:05sequential_34/dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_34/dense_66/BiasAdd?
sequential_34/dense_66/SigmoidSigmoid'sequential_34/dense_66/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_34/dense_66/Sigmoid}
IdentityIdentity"sequential_34/dense_66/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^sequential_34/conv2d_398/BiasAdd/ReadVariableOp/^sequential_34/conv2d_398/Conv2D/ReadVariableOp0^sequential_34/conv2d_399/BiasAdd/ReadVariableOp/^sequential_34/conv2d_399/Conv2D/ReadVariableOp.^sequential_34/dense_65/BiasAdd/ReadVariableOp-^sequential_34/dense_65/MatMul/ReadVariableOp.^sequential_34/dense_66/BiasAdd/ReadVariableOp-^sequential_34/dense_66/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2b
/sequential_34/conv2d_398/BiasAdd/ReadVariableOp/sequential_34/conv2d_398/BiasAdd/ReadVariableOp2`
.sequential_34/conv2d_398/Conv2D/ReadVariableOp.sequential_34/conv2d_398/Conv2D/ReadVariableOp2b
/sequential_34/conv2d_399/BiasAdd/ReadVariableOp/sequential_34/conv2d_399/BiasAdd/ReadVariableOp2`
.sequential_34/conv2d_399/Conv2D/ReadVariableOp.sequential_34/conv2d_399/Conv2D/ReadVariableOp2^
-sequential_34/dense_65/BiasAdd/ReadVariableOp-sequential_34/dense_65/BiasAdd/ReadVariableOp2\
,sequential_34/dense_65/MatMul/ReadVariableOp,sequential_34/dense_65/MatMul/ReadVariableOp2^
-sequential_34/dense_66/BiasAdd/ReadVariableOp-sequential_34/dense_66/BiasAdd/ReadVariableOp2\
,sequential_34/dense_66/MatMul/ReadVariableOp,sequential_34/dense_66/MatMul/ReadVariableOp:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20:($
"
_output_shapes
::($
"
_output_shapes
:
?
?
/__inference_sequential_34_layer_call_fn_9549221

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
?b?
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_34_layer_call_and_return_conditional_losses_95487502
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
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
?
i
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_9549353

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_dense_65_layer_call_fn_9549421

inputs
unknown:
?b?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_95487192
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????b: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?Q
?

#__inference__traced_restore_9549617
file_prefix#
assignvariableop_mean:)
assignvariableop_1_variance:"
assignvariableop_2_count:	 >
$assignvariableop_3_conv2d_398_kernel: 0
"assignvariableop_4_conv2d_398_bias: >
$assignvariableop_5_conv2d_399_kernel: @0
"assignvariableop_6_conv2d_399_bias:@6
"assignvariableop_7_dense_65_kernel:
?b?/
 assignvariableop_8_dense_65_bias:	?5
"assignvariableop_9_dense_66_kernel:	?/
!assignvariableop_10_dense_66_bias:&
assignvariableop_11_sgd_iter:	 '
assignvariableop_12_sgd_decay: /
%assignvariableop_13_sgd_learning_rate: *
 assignvariableop_14_sgd_momentum: #
assignvariableop_15_total: %
assignvariableop_16_count_1: %
assignvariableop_17_total_1: %
assignvariableop_18_count_2: 
identity_20??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
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

Identity?
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp$assignvariableop_3_conv2d_398_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_398_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp$assignvariableop_5_conv2d_399_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_399_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_65_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_65_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_66_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_66_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_sgd_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp%assignvariableop_13_sgd_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp assignvariableop_14_sgd_momentumIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_189
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_19f
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_20?
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
?
f
G__inference_dropout_38_layer_call_and_return_conditional_losses_9549380

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
H
,__inference_dropout_39_layer_call_fn_9549443

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_39_layer_call_and_return_conditional_losses_95487302
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?/
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9548750

inputs
normalization_19_sub_y
normalization_19_sqrt_x,
conv2d_398_9548665:  
conv2d_398_9548667: ,
conv2d_399_9548682: @ 
conv2d_399_9548684:@$
dense_65_9548720:
?b?
dense_65_9548722:	?#
dense_66_9548744:	?
dense_66_9548746:
identity??"conv2d_398/StatefulPartitionedCall?"conv2d_399/StatefulPartitionedCall? dense_65/StatefulPartitionedCall? dense_66/StatefulPartitionedCall?
resizing_19/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_resizing_19_layer_call_and_return_conditional_losses_95486442
resizing_19/PartitionedCall?
normalization_19/subSub$resizing_19/PartitionedCall:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_19/sub|
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*"
_output_shapes
:2
normalization_19/Sqrt}
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_19/Maximum/y?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_19/Maximum?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_19/truediv?
"conv2d_398/StatefulPartitionedCallStatefulPartitionedCallnormalization_19/truediv:z:0conv2d_398_9548665conv2d_398_9548667*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_398_layer_call_and_return_conditional_losses_95486642$
"conv2d_398/StatefulPartitionedCall?
"conv2d_399/StatefulPartitionedCallStatefulPartitionedCall+conv2d_398/StatefulPartitionedCall:output:0conv2d_399_9548682conv2d_399_9548684*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_399_layer_call_and_return_conditional_losses_95486812$
"conv2d_399/StatefulPartitionedCall?
 max_pooling2d_70/PartitionedCallPartitionedCall+conv2d_399/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_95486912"
 max_pooling2d_70/PartitionedCall?
dropout_38/PartitionedCallPartitionedCall)max_pooling2d_70/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_95486982
dropout_38/PartitionedCall?
flatten_31/PartitionedCallPartitionedCall#dropout_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_95487062
flatten_31/PartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#flatten_31/PartitionedCall:output:0dense_65_9548720dense_65_9548722*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_95487192"
 dense_65/StatefulPartitionedCall?
dropout_39/PartitionedCallPartitionedCall)dense_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_39_layer_call_and_return_conditional_losses_95487302
dropout_39/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#dropout_39/PartitionedCall:output:0dense_66_9548744dense_66_9548746*
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
E__inference_dense_66_layer_call_and_return_conditional_losses_95487432"
 dense_66/StatefulPartitionedCall?
IdentityIdentity)dense_66/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_398/StatefulPartitionedCall#^conv2d_399/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_398/StatefulPartitionedCall"conv2d_398/StatefulPartitionedCall2H
"conv2d_399/StatefulPartitionedCall"conv2d_399/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
?
?
/__inference_sequential_34_layer_call_fn_9548773
input_20
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
?b?
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_34_layer_call_and_return_conditional_losses_95487502
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
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20:($
"
_output_shapes
::($
"
_output_shapes
:
?
?
G__inference_conv2d_398_layer_call_and_return_conditional_losses_9548664

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_70_layer_call_fn_9549358

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
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_95486182
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
?
e
G__inference_dropout_39_layer_call_and_return_conditional_losses_9548730

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_65_layer_call_and_return_conditional_losses_9548719

inputs2
matmul_readvariableop_resource:
?b?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
G__inference_conv2d_399_layer_call_and_return_conditional_losses_9548681

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?;
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549136

inputs
normalization_19_sub_y
normalization_19_sqrt_xC
)conv2d_398_conv2d_readvariableop_resource: 8
*conv2d_398_biasadd_readvariableop_resource: C
)conv2d_399_conv2d_readvariableop_resource: @8
*conv2d_399_biasadd_readvariableop_resource:@;
'dense_65_matmul_readvariableop_resource:
?b?7
(dense_65_biasadd_readvariableop_resource:	?:
'dense_66_matmul_readvariableop_resource:	?6
(dense_66_biasadd_readvariableop_resource:
identity??!conv2d_398/BiasAdd/ReadVariableOp? conv2d_398/Conv2D/ReadVariableOp?!conv2d_399/BiasAdd/ReadVariableOp? conv2d_399/Conv2D/ReadVariableOp?dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?
resizing_19/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resizing_19/resize/size?
!resizing_19/resize/ResizeBilinearResizeBilinearinputs resizing_19/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(2#
!resizing_19/resize/ResizeBilinear?
normalization_19/subSub2resizing_19/resize/ResizeBilinear:resized_images:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_19/sub|
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*"
_output_shapes
:2
normalization_19/Sqrt}
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_19/Maximum/y?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_19/Maximum?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_19/truediv?
 conv2d_398/Conv2D/ReadVariableOpReadVariableOp)conv2d_398_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_398/Conv2D/ReadVariableOp?
conv2d_398/Conv2DConv2Dnormalization_19/truediv:z:0(conv2d_398/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_398/Conv2D?
!conv2d_398/BiasAdd/ReadVariableOpReadVariableOp*conv2d_398_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_398/BiasAdd/ReadVariableOp?
conv2d_398/BiasAddBiasAddconv2d_398/Conv2D:output:0)conv2d_398/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_398/BiasAdd?
conv2d_398/ReluReluconv2d_398/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_398/Relu?
 conv2d_399/Conv2D/ReadVariableOpReadVariableOp)conv2d_399_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_399/Conv2D/ReadVariableOp?
conv2d_399/Conv2DConv2Dconv2d_398/Relu:activations:0(conv2d_399/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_399/Conv2D?
!conv2d_399/BiasAdd/ReadVariableOpReadVariableOp*conv2d_399_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_399/BiasAdd/ReadVariableOp?
conv2d_399/BiasAddBiasAddconv2d_399/Conv2D:output:0)conv2d_399/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_399/BiasAdd?
conv2d_399/ReluReluconv2d_399/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_399/Relu?
max_pooling2d_70/MaxPoolMaxPoolconv2d_399/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_70/MaxPool?
dropout_38/IdentityIdentity!max_pooling2d_70/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_38/Identityu
flatten_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_31/Const?
flatten_31/ReshapeReshapedropout_38/Identity:output:0flatten_31/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_31/Reshape?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMulMatMulflatten_31/Reshape:output:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_65/MatMul?
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_65/BiasAdd/ReadVariableOp?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_65/BiasAddt
dense_65/ReluReludense_65/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_65/Relu?
dropout_39/IdentityIdentitydense_65/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_39/Identity?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMulMatMuldropout_39/Identity:output:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_66/BiasAdd|
dense_66/SigmoidSigmoiddense_66/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_66/Sigmoido
IdentityIdentitydense_66/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_398/BiasAdd/ReadVariableOp!^conv2d_398/Conv2D/ReadVariableOp"^conv2d_399/BiasAdd/ReadVariableOp!^conv2d_399/Conv2D/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2F
!conv2d_398/BiasAdd/ReadVariableOp!conv2d_398/BiasAdd/ReadVariableOp2D
 conv2d_398/Conv2D/ReadVariableOp conv2d_398/Conv2D/ReadVariableOp2F
!conv2d_399/BiasAdd/ReadVariableOp!conv2d_399/BiasAdd/ReadVariableOp2D
 conv2d_399/Conv2D/ReadVariableOp conv2d_399/Conv2D/ReadVariableOp2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
?
e
G__inference_dropout_38_layer_call_and_return_conditional_losses_9548698

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_dense_66_layer_call_and_return_conditional_losses_9548743

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?3
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9548939

inputs
normalization_19_sub_y
normalization_19_sqrt_x,
conv2d_398_9548914:  
conv2d_398_9548916: ,
conv2d_399_9548919: @ 
conv2d_399_9548921:@$
dense_65_9548927:
?b?
dense_65_9548929:	?#
dense_66_9548933:	?
dense_66_9548935:
identity??"conv2d_398/StatefulPartitionedCall?"conv2d_399/StatefulPartitionedCall? dense_65/StatefulPartitionedCall? dense_66/StatefulPartitionedCall?"dropout_38/StatefulPartitionedCall?"dropout_39/StatefulPartitionedCall?
resizing_19/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_resizing_19_layer_call_and_return_conditional_losses_95486442
resizing_19/PartitionedCall?
normalization_19/subSub$resizing_19/PartitionedCall:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_19/sub|
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*"
_output_shapes
:2
normalization_19/Sqrt}
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_19/Maximum/y?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_19/Maximum?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_19/truediv?
"conv2d_398/StatefulPartitionedCallStatefulPartitionedCallnormalization_19/truediv:z:0conv2d_398_9548914conv2d_398_9548916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_398_layer_call_and_return_conditional_losses_95486642$
"conv2d_398/StatefulPartitionedCall?
"conv2d_399/StatefulPartitionedCallStatefulPartitionedCall+conv2d_398/StatefulPartitionedCall:output:0conv2d_399_9548919conv2d_399_9548921*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_399_layer_call_and_return_conditional_losses_95486812$
"conv2d_399/StatefulPartitionedCall?
 max_pooling2d_70/PartitionedCallPartitionedCall+conv2d_399/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_95486912"
 max_pooling2d_70/PartitionedCall?
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_70/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_95488422$
"dropout_38/StatefulPartitionedCall?
flatten_31/PartitionedCallPartitionedCall+dropout_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_95487062
flatten_31/PartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#flatten_31/PartitionedCall:output:0dense_65_9548927dense_65_9548929*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_95487192"
 dense_65/StatefulPartitionedCall?
"dropout_39/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0#^dropout_38/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_39_layer_call_and_return_conditional_losses_95488032$
"dropout_39/StatefulPartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall+dropout_39/StatefulPartitionedCall:output:0dense_66_9548933dense_66_9548935*
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
E__inference_dense_66_layer_call_and_return_conditional_losses_95487432"
 dense_66/StatefulPartitionedCall?
IdentityIdentity)dense_66/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_398/StatefulPartitionedCall#^conv2d_399/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall#^dropout_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_398/StatefulPartitionedCall"conv2d_398/StatefulPartitionedCall2H
"conv2d_399/StatefulPartitionedCall"conv2d_399/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall2H
"dropout_39/StatefulPartitionedCall"dropout_39/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
?
H
,__inference_dropout_38_layer_call_fn_9549385

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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_95486982
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
H__inference_resizing_19_layer_call_and_return_conditional_losses_9549252

inputs
identityk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resize/size?
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(2
resize/ResizeBilinear?
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_dense_66_layer_call_and_return_conditional_losses_9549459

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_398_layer_call_and_return_conditional_losses_9549314

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
f
G__inference_dropout_39_layer_call_and_return_conditional_losses_9548803

inputs
identity?c
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
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_398_layer_call_fn_9549323

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_398_layer_call_and_return_conditional_losses_95486642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
G__inference_conv2d_399_layer_call_and_return_conditional_losses_9549334

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
c
G__inference_flatten_31_layer_call_and_return_conditional_losses_9549396

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????b2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?N
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549196

inputs
normalization_19_sub_y
normalization_19_sqrt_xC
)conv2d_398_conv2d_readvariableop_resource: 8
*conv2d_398_biasadd_readvariableop_resource: C
)conv2d_399_conv2d_readvariableop_resource: @8
*conv2d_399_biasadd_readvariableop_resource:@;
'dense_65_matmul_readvariableop_resource:
?b?7
(dense_65_biasadd_readvariableop_resource:	?:
'dense_66_matmul_readvariableop_resource:	?6
(dense_66_biasadd_readvariableop_resource:
identity??!conv2d_398/BiasAdd/ReadVariableOp? conv2d_398/Conv2D/ReadVariableOp?!conv2d_399/BiasAdd/ReadVariableOp? conv2d_399/Conv2D/ReadVariableOp?dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?
resizing_19/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resizing_19/resize/size?
!resizing_19/resize/ResizeBilinearResizeBilinearinputs resizing_19/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(2#
!resizing_19/resize/ResizeBilinear?
normalization_19/subSub2resizing_19/resize/ResizeBilinear:resized_images:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_19/sub|
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*"
_output_shapes
:2
normalization_19/Sqrt}
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_19/Maximum/y?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_19/Maximum?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_19/truediv?
 conv2d_398/Conv2D/ReadVariableOpReadVariableOp)conv2d_398_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_398/Conv2D/ReadVariableOp?
conv2d_398/Conv2DConv2Dnormalization_19/truediv:z:0(conv2d_398/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_398/Conv2D?
!conv2d_398/BiasAdd/ReadVariableOpReadVariableOp*conv2d_398_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_398/BiasAdd/ReadVariableOp?
conv2d_398/BiasAddBiasAddconv2d_398/Conv2D:output:0)conv2d_398/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_398/BiasAdd?
conv2d_398/ReluReluconv2d_398/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_398/Relu?
 conv2d_399/Conv2D/ReadVariableOpReadVariableOp)conv2d_399_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_399/Conv2D/ReadVariableOp?
conv2d_399/Conv2DConv2Dconv2d_398/Relu:activations:0(conv2d_399/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_399/Conv2D?
!conv2d_399/BiasAdd/ReadVariableOpReadVariableOp*conv2d_399_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_399/BiasAdd/ReadVariableOp?
conv2d_399/BiasAddBiasAddconv2d_399/Conv2D:output:0)conv2d_399/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_399/BiasAdd?
conv2d_399/ReluReluconv2d_399/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_399/Relu?
max_pooling2d_70/MaxPoolMaxPoolconv2d_399/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_70/MaxPooly
dropout_38/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_38/dropout/Const?
dropout_38/dropout/MulMul!max_pooling2d_70/MaxPool:output:0!dropout_38/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_38/dropout/Mul?
dropout_38/dropout/ShapeShape!max_pooling2d_70/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_38/dropout/Shape?
/dropout_38/dropout/random_uniform/RandomUniformRandomUniform!dropout_38/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_38/dropout/random_uniform/RandomUniform?
!dropout_38/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_38/dropout/GreaterEqual/y?
dropout_38/dropout/GreaterEqualGreaterEqual8dropout_38/dropout/random_uniform/RandomUniform:output:0*dropout_38/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_38/dropout/GreaterEqual?
dropout_38/dropout/CastCast#dropout_38/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_38/dropout/Cast?
dropout_38/dropout/Mul_1Muldropout_38/dropout/Mul:z:0dropout_38/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_38/dropout/Mul_1u
flatten_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_31/Const?
flatten_31/ReshapeReshapedropout_38/dropout/Mul_1:z:0flatten_31/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_31/Reshape?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMulMatMulflatten_31/Reshape:output:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_65/MatMul?
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_65/BiasAdd/ReadVariableOp?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_65/BiasAddt
dense_65/ReluReludense_65/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_65/Reluy
dropout_39/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_39/dropout/Const?
dropout_39/dropout/MulMuldense_65/Relu:activations:0!dropout_39/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_39/dropout/Mul
dropout_39/dropout/ShapeShapedense_65/Relu:activations:0*
T0*
_output_shapes
:2
dropout_39/dropout/Shape?
/dropout_39/dropout/random_uniform/RandomUniformRandomUniform!dropout_39/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_39/dropout/random_uniform/RandomUniform?
!dropout_39/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_39/dropout/GreaterEqual/y?
dropout_39/dropout/GreaterEqualGreaterEqual8dropout_39/dropout/random_uniform/RandomUniform:output:0*dropout_39/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_39/dropout/GreaterEqual?
dropout_39/dropout/CastCast#dropout_39/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_39/dropout/Cast?
dropout_39/dropout/Mul_1Muldropout_39/dropout/Mul:z:0dropout_39/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_39/dropout/Mul_1?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMulMatMuldropout_39/dropout/Mul_1:z:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_66/BiasAdd|
dense_66/SigmoidSigmoiddense_66/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_66/Sigmoido
IdentityIdentitydense_66/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_398/BiasAdd/ReadVariableOp!^conv2d_398/Conv2D/ReadVariableOp"^conv2d_399/BiasAdd/ReadVariableOp!^conv2d_399/Conv2D/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2F
!conv2d_398/BiasAdd/ReadVariableOp!conv2d_398/BiasAdd/ReadVariableOp2D
 conv2d_398/Conv2D/ReadVariableOp conv2d_398/Conv2D/ReadVariableOp2F
!conv2d_399/BiasAdd/ReadVariableOp!conv2d_399/BiasAdd/ReadVariableOp2D
 conv2d_399/Conv2D/ReadVariableOp conv2d_399/Conv2D/ReadVariableOp2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
?
N
2__inference_max_pooling2d_70_layer_call_fn_9549363

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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_95486912
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
/__inference_sequential_34_layer_call_fn_9549246

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
?b?
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_34_layer_call_and_return_conditional_losses_95489392
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
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
?.
?
 __inference__traced_save_9549550
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	0
,savev2_conv2d_398_kernel_read_readvariableop.
*savev2_conv2d_398_bias_read_readvariableop0
,savev2_conv2d_399_kernel_read_readvariableop.
*savev2_conv2d_399_bias_read_readvariableop.
*savev2_dense_65_kernel_read_readvariableop,
(savev2_dense_65_bias_read_readvariableop.
*savev2_dense_66_kernel_read_readvariableop,
(savev2_dense_66_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_2_read_readvariableop
savev2_const_2

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
ShardedFilename?	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop,savev2_conv2d_398_kernel_read_readvariableop*savev2_conv2d_398_bias_read_readvariableop,savev2_conv2d_399_kernel_read_readvariableop*savev2_conv2d_399_bias_read_readvariableop*savev2_dense_65_kernel_read_readvariableop(savev2_dense_65_bias_read_readvariableop*savev2_dense_66_kernel_read_readvariableop(savev2_dense_66_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_2_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *"
dtypes
2		2
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

identity_1Identity_1:output:0*?
_input_shapesx
v: ::: : : : @:@:
?b?:?:	?:: : : : : : : : : 2(
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
?b?:!	

_output_shapes	
:?:%
!

_output_shapes
:	?: 
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
?
H
,__inference_flatten_31_layer_call_fn_9549401

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
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_95487062
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?/
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549023
input_20
normalization_19_sub_y
normalization_19_sqrt_x,
conv2d_398_9548998:  
conv2d_398_9549000: ,
conv2d_399_9549003: @ 
conv2d_399_9549005:@$
dense_65_9549011:
?b?
dense_65_9549013:	?#
dense_66_9549017:	?
dense_66_9549019:
identity??"conv2d_398/StatefulPartitionedCall?"conv2d_399/StatefulPartitionedCall? dense_65/StatefulPartitionedCall? dense_66/StatefulPartitionedCall?
resizing_19/PartitionedCallPartitionedCallinput_20*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_resizing_19_layer_call_and_return_conditional_losses_95486442
resizing_19/PartitionedCall?
normalization_19/subSub$resizing_19/PartitionedCall:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_19/sub|
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*"
_output_shapes
:2
normalization_19/Sqrt}
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_19/Maximum/y?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_19/Maximum?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_19/truediv?
"conv2d_398/StatefulPartitionedCallStatefulPartitionedCallnormalization_19/truediv:z:0conv2d_398_9548998conv2d_398_9549000*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_398_layer_call_and_return_conditional_losses_95486642$
"conv2d_398/StatefulPartitionedCall?
"conv2d_399/StatefulPartitionedCallStatefulPartitionedCall+conv2d_398/StatefulPartitionedCall:output:0conv2d_399_9549003conv2d_399_9549005*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_399_layer_call_and_return_conditional_losses_95486812$
"conv2d_399/StatefulPartitionedCall?
 max_pooling2d_70/PartitionedCallPartitionedCall+conv2d_399/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_95486912"
 max_pooling2d_70/PartitionedCall?
dropout_38/PartitionedCallPartitionedCall)max_pooling2d_70/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_95486982
dropout_38/PartitionedCall?
flatten_31/PartitionedCallPartitionedCall#dropout_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_31_layer_call_and_return_conditional_losses_95487062
flatten_31/PartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#flatten_31/PartitionedCall:output:0dense_65_9549011dense_65_9549013*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_95487192"
 dense_65/StatefulPartitionedCall?
dropout_39/PartitionedCallPartitionedCall)dense_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_39_layer_call_and_return_conditional_losses_95487302
dropout_39/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#dropout_39/PartitionedCall:output:0dense_66_9549017dense_66_9549019*
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
E__inference_dense_66_layer_call_and_return_conditional_losses_95487432"
 dense_66/StatefulPartitionedCall?
IdentityIdentity)dense_66/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_398/StatefulPartitionedCall#^conv2d_399/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_398/StatefulPartitionedCall"conv2d_398/StatefulPartitionedCall2H
"conv2d_399/StatefulPartitionedCall"conv2d_399/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20:($
"
_output_shapes
::($
"
_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
input_20;
serving_default_input_20:0???????????<
dense_660
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ܩ
?
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
	variables
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_sequential
?
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
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
?_adapt_function"
_tf_keras_layer
?

kernel
bias
regularization_losses
 	variables
!trainable_variables
"	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

#kernel
$bias
%regularization_losses
&	variables
'trainable_variables
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
)regularization_losses
*	variables
+trainable_variables
,	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
-regularization_losses
.	variables
/trainable_variables
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
1regularization_losses
2	variables
3trainable_variables
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

5kernel
6bias
7regularization_losses
8	variables
9trainable_variables
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
;regularization_losses
<	variables
=trainable_variables
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

?kernel
@bias
Aregularization_losses
B	variables
Ctrainable_variables
D	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
I
Eiter
	Fdecay
Glearning_rate
Hmomentum"
	optimizer
 "
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
?
Inon_trainable_variables
Jmetrics
Klayer_regularization_losses
regularization_losses
	variables
trainable_variables

Llayers
Mlayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nnon_trainable_variables
Ometrics
Player_regularization_losses
regularization_losses
	variables
trainable_variables

Qlayers
Rlayer_metrics
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
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
+:) 2conv2d_398/kernel
: 2conv2d_398/bias
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
?
Snon_trainable_variables
Tmetrics
Ulayer_regularization_losses
regularization_losses
 	variables
!trainable_variables

Vlayers
Wlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_399/kernel
:@2conv2d_399/bias
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
?
Xnon_trainable_variables
Ymetrics
Zlayer_regularization_losses
%regularization_losses
&	variables
'trainable_variables

[layers
\layer_metrics
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
]non_trainable_variables
^metrics
_layer_regularization_losses
)regularization_losses
*	variables
+trainable_variables

`layers
alayer_metrics
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
bnon_trainable_variables
cmetrics
dlayer_regularization_losses
-regularization_losses
.	variables
/trainable_variables

elayers
flayer_metrics
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
gnon_trainable_variables
hmetrics
ilayer_regularization_losses
1regularization_losses
2	variables
3trainable_variables

jlayers
klayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
?b?2dense_65/kernel
:?2dense_65/bias
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
?
lnon_trainable_variables
mmetrics
nlayer_regularization_losses
7regularization_losses
8	variables
9trainable_variables

olayers
player_metrics
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
qnon_trainable_variables
rmetrics
slayer_regularization_losses
;regularization_losses
<	variables
=trainable_variables

tlayers
ulayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_66/kernel
:2dense_66/bias
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
?
vnon_trainable_variables
wmetrics
xlayer_regularization_losses
Aregularization_losses
B	variables
Ctrainable_variables

ylayers
zlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
5
0
1
2"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
O
	}total
	~count
	variables
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
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549136
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549196
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549023
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549059?
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
"__inference__wrapped_model_9548609input_20"?
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
/__inference_sequential_34_layer_call_fn_9548773
/__inference_sequential_34_layer_call_fn_9549221
/__inference_sequential_34_layer_call_fn_9549246
/__inference_sequential_34_layer_call_fn_9548987?
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
H__inference_resizing_19_layer_call_and_return_conditional_losses_9549252?
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
-__inference_resizing_19_layer_call_fn_9549257?
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
__inference_adapt_step_9549303?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_398_layer_call_and_return_conditional_losses_9549314?
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
,__inference_conv2d_398_layer_call_fn_9549323?
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
G__inference_conv2d_399_layer_call_and_return_conditional_losses_9549334?
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
,__inference_conv2d_399_layer_call_fn_9549343?
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
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_9549348
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_9549353?
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
2__inference_max_pooling2d_70_layer_call_fn_9549358
2__inference_max_pooling2d_70_layer_call_fn_9549363?
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
G__inference_dropout_38_layer_call_and_return_conditional_losses_9549368
G__inference_dropout_38_layer_call_and_return_conditional_losses_9549380?
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
,__inference_dropout_38_layer_call_fn_9549385
,__inference_dropout_38_layer_call_fn_9549390?
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
G__inference_flatten_31_layer_call_and_return_conditional_losses_9549396?
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
,__inference_flatten_31_layer_call_fn_9549401?
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
E__inference_dense_65_layer_call_and_return_conditional_losses_9549412?
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
*__inference_dense_65_layer_call_fn_9549421?
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
G__inference_dropout_39_layer_call_and_return_conditional_losses_9549426
G__inference_dropout_39_layer_call_and_return_conditional_losses_9549438?
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
,__inference_dropout_39_layer_call_fn_9549443
,__inference_dropout_39_layer_call_fn_9549448?
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
E__inference_dense_66_layer_call_and_return_conditional_losses_9549459?
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
*__inference_dense_66_layer_call_fn_9549468?
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
%__inference_signature_wrapper_9549090input_20"?
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
 
	J
Const
J	
Const_1?
"__inference__wrapped_model_9548609???#$56?@;?8
1?.
,?)
input_20???????????
? "3?0
.
dense_66"?
dense_66?????????s
__inference_adapt_step_9549303QF?C
<?9
7?4"?
???????????IteratorSpec
? "
 ?
G__inference_conv2d_398_layer_call_and_return_conditional_losses_9549314l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_398_layer_call_fn_9549323_7?4
-?*
(?%
inputs?????????  
? " ?????????? ?
G__inference_conv2d_399_layer_call_and_return_conditional_losses_9549334l#$7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_399_layer_call_fn_9549343_#$7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_dense_65_layer_call_and_return_conditional_losses_9549412^560?-
&?#
!?
inputs??????????b
? "&?#
?
0??????????
? 
*__inference_dense_65_layer_call_fn_9549421Q560?-
&?#
!?
inputs??????????b
? "????????????
E__inference_dense_66_layer_call_and_return_conditional_losses_9549459]?@0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_66_layer_call_fn_9549468P?@0?-
&?#
!?
inputs??????????
? "???????????
G__inference_dropout_38_layer_call_and_return_conditional_losses_9549368l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
G__inference_dropout_38_layer_call_and_return_conditional_losses_9549380l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
,__inference_dropout_38_layer_call_fn_9549385_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
,__inference_dropout_38_layer_call_fn_9549390_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
G__inference_dropout_39_layer_call_and_return_conditional_losses_9549426^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
G__inference_dropout_39_layer_call_and_return_conditional_losses_9549438^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
,__inference_dropout_39_layer_call_fn_9549443Q4?1
*?'
!?
inputs??????????
p 
? "????????????
,__inference_dropout_39_layer_call_fn_9549448Q4?1
*?'
!?
inputs??????????
p
? "????????????
G__inference_flatten_31_layer_call_and_return_conditional_losses_9549396a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????b
? ?
,__inference_flatten_31_layer_call_fn_9549401T7?4
-?*
(?%
inputs?????????@
? "???????????b?
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_9549348?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_70_layer_call_and_return_conditional_losses_9549353h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
2__inference_max_pooling2d_70_layer_call_fn_9549358?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_70_layer_call_fn_9549363[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
H__inference_resizing_19_layer_call_and_return_conditional_losses_9549252j9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????  
? ?
-__inference_resizing_19_layer_call_fn_9549257]9?6
/?,
*?'
inputs???????????
? " ??????????  ?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549023z??#$56?@C?@
9?6
,?)
input_20???????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549059z??#$56?@C?@
9?6
,?)
input_20???????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549136x??#$56?@A?>
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_9549196x??#$56?@A?>
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
/__inference_sequential_34_layer_call_fn_9548773m??#$56?@C?@
9?6
,?)
input_20???????????
p 

 
? "???????????
/__inference_sequential_34_layer_call_fn_9548987m??#$56?@C?@
9?6
,?)
input_20???????????
p

 
? "???????????
/__inference_sequential_34_layer_call_fn_9549221k??#$56?@A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
/__inference_sequential_34_layer_call_fn_9549246k??#$56?@A?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_9549090???#$56?@G?D
? 
=?:
8
input_20,?)
input_20???????????"3?0
.
dense_66"?
dense_66?????????