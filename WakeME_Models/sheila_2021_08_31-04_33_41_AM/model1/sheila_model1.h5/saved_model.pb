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
conv2d_425/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_425/kernel

%conv2d_425/kernel/Read/ReadVariableOpReadVariableOpconv2d_425/kernel*&
_output_shapes
: *
dtype0
v
conv2d_425/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_425/bias
o
#conv2d_425/bias/Read/ReadVariableOpReadVariableOpconv2d_425/bias*
_output_shapes
: *
dtype0
?
conv2d_426/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_426/kernel

%conv2d_426/kernel/Read/ReadVariableOpReadVariableOpconv2d_426/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_426/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_426/bias
o
#conv2d_426/bias/Read/ReadVariableOpReadVariableOpconv2d_426/bias*
_output_shapes
:@*
dtype0
|
dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?b?* 
shared_namedense_69/kernel
u
#dense_69/kernel/Read/ReadVariableOpReadVariableOpdense_69/kernel* 
_output_shapes
:
?b?*
dtype0
s
dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_69/bias
l
!dense_69/bias/Read/ReadVariableOpReadVariableOpdense_69/bias*
_output_shapes	
:?*
dtype0
{
dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_70/kernel
t
#dense_70/kernel/Read/ReadVariableOpReadVariableOpdense_70/kernel*
_output_shapes
:	?*
dtype0
r
dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_70/bias
k
!dense_70/bias/Read/ReadVariableOpReadVariableOpdense_70/bias*
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
valueB*??>
d
Const_1Const*"
_output_shapes
:*
dtype0*!
valueB*s'?

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
VARIABLE_VALUEconv2d_425/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_425/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_426/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_426/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_69/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_69/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_70/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_70/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_input_21Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_21ConstConst_1conv2d_425/kernelconv2d_425/biasconv2d_426/kernelconv2d_426/biasdense_69/kerneldense_69/biasdense_70/kerneldense_70/bias*
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
GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_10768740
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp%conv2d_425/kernel/Read/ReadVariableOp#conv2d_425/bias/Read/ReadVariableOp%conv2d_426/kernel/Read/ReadVariableOp#conv2d_426/bias/Read/ReadVariableOp#dense_69/kernel/Read/ReadVariableOp!dense_69/bias/Read/ReadVariableOp#dense_70/kernel/Read/ReadVariableOp!dense_70/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_2/Read/ReadVariableOpConst_2* 
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
GPU2*0J 8? **
f%R#
!__inference__traced_save_10769200
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountconv2d_425/kernelconv2d_425/biasconv2d_426/kernelconv2d_426/biasdense_69/kerneldense_69/biasdense_70/kerneldense_70/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount_1total_1count_2*
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
GPU2*0J 8? *-
f(R&
$__inference__traced_restore_10769267??
?
j
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_10769003

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
?
j
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_10768268

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
f
H__inference_dropout_40_layer_call_and_return_conditional_losses_10769018

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
?
I
-__inference_dropout_40_layer_call_fn_10769035

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_40_layer_call_and_return_conditional_losses_107683482
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
?
?
+__inference_dense_69_layer_call_fn_10769071

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
GPU2*0J 8? *O
fJRH
F__inference_dense_69_layer_call_and_return_conditional_losses_107683692
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
?
?
0__inference_sequential_36_layer_call_fn_10768637
input_21
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
StatefulPartitionedCallStatefulPartitionedCallinput_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *T
fORM
K__inference_sequential_36_layer_call_and_return_conditional_losses_107685892
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
input_21:($
"
_output_shapes
::($
"
_output_shapes
:
?
?
F__inference_dense_70_layer_call_and_return_conditional_losses_10768393

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
?0
?
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768673
input_21
normalization_20_sub_y
normalization_20_sqrt_x-
conv2d_425_10768648: !
conv2d_425_10768650: -
conv2d_426_10768653: @!
conv2d_426_10768655:@%
dense_69_10768661:
?b? 
dense_69_10768663:	?$
dense_70_10768667:	?
dense_70_10768669:
identity??"conv2d_425/StatefulPartitionedCall?"conv2d_426/StatefulPartitionedCall? dense_69/StatefulPartitionedCall? dense_70/StatefulPartitionedCall?
resizing_20/PartitionedCallPartitionedCallinput_21*
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
GPU2*0J 8? *R
fMRK
I__inference_resizing_20_layer_call_and_return_conditional_losses_107682942
resizing_20/PartitionedCall?
normalization_20/subSub$resizing_20/PartitionedCall:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_20/sub|
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*"
_output_shapes
:2
normalization_20/Sqrt}
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_20/Maximum/y?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_20/Maximum?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_20/truediv?
"conv2d_425/StatefulPartitionedCallStatefulPartitionedCallnormalization_20/truediv:z:0conv2d_425_10768648conv2d_425_10768650*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_425_layer_call_and_return_conditional_losses_107683142$
"conv2d_425/StatefulPartitionedCall?
"conv2d_426/StatefulPartitionedCallStatefulPartitionedCall+conv2d_425/StatefulPartitionedCall:output:0conv2d_426_10768653conv2d_426_10768655*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_426_layer_call_and_return_conditional_losses_107683312$
"conv2d_426/StatefulPartitionedCall?
 max_pooling2d_75/PartitionedCallPartitionedCall+conv2d_426/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_107683412"
 max_pooling2d_75/PartitionedCall?
dropout_40/PartitionedCallPartitionedCall)max_pooling2d_75/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_40_layer_call_and_return_conditional_losses_107683482
dropout_40/PartitionedCall?
flatten_33/PartitionedCallPartitionedCall#dropout_40/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_33_layer_call_and_return_conditional_losses_107683562
flatten_33/PartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall#flatten_33/PartitionedCall:output:0dense_69_10768661dense_69_10768663*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_69_layer_call_and_return_conditional_losses_107683692"
 dense_69/StatefulPartitionedCall?
dropout_41/PartitionedCallPartitionedCall)dense_69/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_41_layer_call_and_return_conditional_losses_107683802
dropout_41/PartitionedCall?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall#dropout_41/PartitionedCall:output:0dense_70_10768667dense_70_10768669*
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
F__inference_dense_70_layer_call_and_return_conditional_losses_107683932"
 dense_70/StatefulPartitionedCall?
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_425/StatefulPartitionedCall#^conv2d_426/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_425/StatefulPartitionedCall"conv2d_425/StatefulPartitionedCall2H
"conv2d_426/StatefulPartitionedCall"conv2d_426/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_21:($
"
_output_shapes
::($
"
_output_shapes
:
?
?
H__inference_conv2d_426_layer_call_and_return_conditional_losses_10768331

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
?
?
-__inference_conv2d_425_layer_call_fn_10768973

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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_425_layer_call_and_return_conditional_losses_107683142
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
?
?
-__inference_conv2d_426_layer_call_fn_10768993

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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_426_layer_call_and_return_conditional_losses_107683312
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
I
-__inference_dropout_41_layer_call_fn_10769093

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_41_layer_call_and_return_conditional_losses_107683802
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
?
J
.__inference_resizing_20_layer_call_fn_10768907

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
GPU2*0J 8? *R
fMRK
I__inference_resizing_20_layer_call_and_return_conditional_losses_107682942
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
?
?
+__inference_dense_70_layer_call_fn_10769118

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
GPU2*0J 8? *O
fJRH
F__inference_dense_70_layer_call_and_return_conditional_losses_107683932
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
?
g
H__inference_dropout_40_layer_call_and_return_conditional_losses_10769030

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
?
?
F__inference_dense_69_layer_call_and_return_conditional_losses_10768369

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
?N
?
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768846

inputs
normalization_20_sub_y
normalization_20_sqrt_xC
)conv2d_425_conv2d_readvariableop_resource: 8
*conv2d_425_biasadd_readvariableop_resource: C
)conv2d_426_conv2d_readvariableop_resource: @8
*conv2d_426_biasadd_readvariableop_resource:@;
'dense_69_matmul_readvariableop_resource:
?b?7
(dense_69_biasadd_readvariableop_resource:	?:
'dense_70_matmul_readvariableop_resource:	?6
(dense_70_biasadd_readvariableop_resource:
identity??!conv2d_425/BiasAdd/ReadVariableOp? conv2d_425/Conv2D/ReadVariableOp?!conv2d_426/BiasAdd/ReadVariableOp? conv2d_426/Conv2D/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?dense_70/BiasAdd/ReadVariableOp?dense_70/MatMul/ReadVariableOp?
resizing_20/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resizing_20/resize/size?
!resizing_20/resize/ResizeBilinearResizeBilinearinputs resizing_20/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(2#
!resizing_20/resize/ResizeBilinear?
normalization_20/subSub2resizing_20/resize/ResizeBilinear:resized_images:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_20/sub|
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*"
_output_shapes
:2
normalization_20/Sqrt}
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_20/Maximum/y?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_20/Maximum?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_20/truediv?
 conv2d_425/Conv2D/ReadVariableOpReadVariableOp)conv2d_425_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_425/Conv2D/ReadVariableOp?
conv2d_425/Conv2DConv2Dnormalization_20/truediv:z:0(conv2d_425/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_425/Conv2D?
!conv2d_425/BiasAdd/ReadVariableOpReadVariableOp*conv2d_425_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_425/BiasAdd/ReadVariableOp?
conv2d_425/BiasAddBiasAddconv2d_425/Conv2D:output:0)conv2d_425/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_425/BiasAdd?
conv2d_425/ReluReluconv2d_425/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_425/Relu?
 conv2d_426/Conv2D/ReadVariableOpReadVariableOp)conv2d_426_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_426/Conv2D/ReadVariableOp?
conv2d_426/Conv2DConv2Dconv2d_425/Relu:activations:0(conv2d_426/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_426/Conv2D?
!conv2d_426/BiasAdd/ReadVariableOpReadVariableOp*conv2d_426_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_426/BiasAdd/ReadVariableOp?
conv2d_426/BiasAddBiasAddconv2d_426/Conv2D:output:0)conv2d_426/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_426/BiasAdd?
conv2d_426/ReluReluconv2d_426/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_426/Relu?
max_pooling2d_75/MaxPoolMaxPoolconv2d_426/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_75/MaxPooly
dropout_40/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_40/dropout/Const?
dropout_40/dropout/MulMul!max_pooling2d_75/MaxPool:output:0!dropout_40/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_40/dropout/Mul?
dropout_40/dropout/ShapeShape!max_pooling2d_75/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_40/dropout/Shape?
/dropout_40/dropout/random_uniform/RandomUniformRandomUniform!dropout_40/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_40/dropout/random_uniform/RandomUniform?
!dropout_40/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_40/dropout/GreaterEqual/y?
dropout_40/dropout/GreaterEqualGreaterEqual8dropout_40/dropout/random_uniform/RandomUniform:output:0*dropout_40/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_40/dropout/GreaterEqual?
dropout_40/dropout/CastCast#dropout_40/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_40/dropout/Cast?
dropout_40/dropout/Mul_1Muldropout_40/dropout/Mul:z:0dropout_40/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_40/dropout/Mul_1u
flatten_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_33/Const?
flatten_33/ReshapeReshapedropout_40/dropout/Mul_1:z:0flatten_33/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_33/Reshape?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02 
dense_69/MatMul/ReadVariableOp?
dense_69/MatMulMatMulflatten_33/Reshape:output:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_69/MatMul?
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_69/BiasAdd/ReadVariableOp?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_69/BiasAddt
dense_69/ReluReludense_69/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_69/Reluy
dropout_41/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_41/dropout/Const?
dropout_41/dropout/MulMuldense_69/Relu:activations:0!dropout_41/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_41/dropout/Mul
dropout_41/dropout/ShapeShapedense_69/Relu:activations:0*
T0*
_output_shapes
:2
dropout_41/dropout/Shape?
/dropout_41/dropout/random_uniform/RandomUniformRandomUniform!dropout_41/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_41/dropout/random_uniform/RandomUniform?
!dropout_41/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_41/dropout/GreaterEqual/y?
dropout_41/dropout/GreaterEqualGreaterEqual8dropout_41/dropout/random_uniform/RandomUniform:output:0*dropout_41/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_41/dropout/GreaterEqual?
dropout_41/dropout/CastCast#dropout_41/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_41/dropout/Cast?
dropout_41/dropout/Mul_1Muldropout_41/dropout/Mul:z:0dropout_41/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_41/dropout/Mul_1?
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_70/MatMul/ReadVariableOp?
dense_70/MatMulMatMuldropout_41/dropout/Mul_1:z:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_70/MatMul?
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_70/BiasAdd/ReadVariableOp?
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_70/BiasAdd|
dense_70/SigmoidSigmoiddense_70/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_70/Sigmoido
IdentityIdentitydense_70/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_425/BiasAdd/ReadVariableOp!^conv2d_425/Conv2D/ReadVariableOp"^conv2d_426/BiasAdd/ReadVariableOp!^conv2d_426/Conv2D/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2F
!conv2d_425/BiasAdd/ReadVariableOp!conv2d_425/BiasAdd/ReadVariableOp2D
 conv2d_425/Conv2D/ReadVariableOp conv2d_425/Conv2D/ReadVariableOp2F
!conv2d_426/BiasAdd/ReadVariableOp!conv2d_426/BiasAdd/ReadVariableOp2D
 conv2d_426/Conv2D/ReadVariableOp conv2d_426/Conv2D/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp:Y U
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
e
I__inference_resizing_20_layer_call_and_return_conditional_losses_10768902

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
?3
?
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768589

inputs
normalization_20_sub_y
normalization_20_sqrt_x-
conv2d_425_10768564: !
conv2d_425_10768566: -
conv2d_426_10768569: @!
conv2d_426_10768571:@%
dense_69_10768577:
?b? 
dense_69_10768579:	?$
dense_70_10768583:	?
dense_70_10768585:
identity??"conv2d_425/StatefulPartitionedCall?"conv2d_426/StatefulPartitionedCall? dense_69/StatefulPartitionedCall? dense_70/StatefulPartitionedCall?"dropout_40/StatefulPartitionedCall?"dropout_41/StatefulPartitionedCall?
resizing_20/PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8? *R
fMRK
I__inference_resizing_20_layer_call_and_return_conditional_losses_107682942
resizing_20/PartitionedCall?
normalization_20/subSub$resizing_20/PartitionedCall:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_20/sub|
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*"
_output_shapes
:2
normalization_20/Sqrt}
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_20/Maximum/y?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_20/Maximum?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_20/truediv?
"conv2d_425/StatefulPartitionedCallStatefulPartitionedCallnormalization_20/truediv:z:0conv2d_425_10768564conv2d_425_10768566*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_425_layer_call_and_return_conditional_losses_107683142$
"conv2d_425/StatefulPartitionedCall?
"conv2d_426/StatefulPartitionedCallStatefulPartitionedCall+conv2d_425/StatefulPartitionedCall:output:0conv2d_426_10768569conv2d_426_10768571*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_426_layer_call_and_return_conditional_losses_107683312$
"conv2d_426/StatefulPartitionedCall?
 max_pooling2d_75/PartitionedCallPartitionedCall+conv2d_426/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_107683412"
 max_pooling2d_75/PartitionedCall?
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_75/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_40_layer_call_and_return_conditional_losses_107684922$
"dropout_40/StatefulPartitionedCall?
flatten_33/PartitionedCallPartitionedCall+dropout_40/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_33_layer_call_and_return_conditional_losses_107683562
flatten_33/PartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall#flatten_33/PartitionedCall:output:0dense_69_10768577dense_69_10768579*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_69_layer_call_and_return_conditional_losses_107683692"
 dense_69/StatefulPartitionedCall?
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0#^dropout_40/StatefulPartitionedCall*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_41_layer_call_and_return_conditional_losses_107684532$
"dropout_41/StatefulPartitionedCall?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall+dropout_41/StatefulPartitionedCall:output:0dense_70_10768583dense_70_10768585*
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
F__inference_dense_70_layer_call_and_return_conditional_losses_107683932"
 dense_70/StatefulPartitionedCall?
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_425/StatefulPartitionedCall#^conv2d_426/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_425/StatefulPartitionedCall"conv2d_425/StatefulPartitionedCall2H
"conv2d_426/StatefulPartitionedCall"conv2d_426/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall:Y U
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
?;
?
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768786

inputs
normalization_20_sub_y
normalization_20_sqrt_xC
)conv2d_425_conv2d_readvariableop_resource: 8
*conv2d_425_biasadd_readvariableop_resource: C
)conv2d_426_conv2d_readvariableop_resource: @8
*conv2d_426_biasadd_readvariableop_resource:@;
'dense_69_matmul_readvariableop_resource:
?b?7
(dense_69_biasadd_readvariableop_resource:	?:
'dense_70_matmul_readvariableop_resource:	?6
(dense_70_biasadd_readvariableop_resource:
identity??!conv2d_425/BiasAdd/ReadVariableOp? conv2d_425/Conv2D/ReadVariableOp?!conv2d_426/BiasAdd/ReadVariableOp? conv2d_426/Conv2D/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?dense_70/BiasAdd/ReadVariableOp?dense_70/MatMul/ReadVariableOp?
resizing_20/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resizing_20/resize/size?
!resizing_20/resize/ResizeBilinearResizeBilinearinputs resizing_20/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(2#
!resizing_20/resize/ResizeBilinear?
normalization_20/subSub2resizing_20/resize/ResizeBilinear:resized_images:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_20/sub|
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*"
_output_shapes
:2
normalization_20/Sqrt}
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_20/Maximum/y?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_20/Maximum?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_20/truediv?
 conv2d_425/Conv2D/ReadVariableOpReadVariableOp)conv2d_425_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_425/Conv2D/ReadVariableOp?
conv2d_425/Conv2DConv2Dnormalization_20/truediv:z:0(conv2d_425/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_425/Conv2D?
!conv2d_425/BiasAdd/ReadVariableOpReadVariableOp*conv2d_425_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_425/BiasAdd/ReadVariableOp?
conv2d_425/BiasAddBiasAddconv2d_425/Conv2D:output:0)conv2d_425/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_425/BiasAdd?
conv2d_425/ReluReluconv2d_425/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_425/Relu?
 conv2d_426/Conv2D/ReadVariableOpReadVariableOp)conv2d_426_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_426/Conv2D/ReadVariableOp?
conv2d_426/Conv2DConv2Dconv2d_425/Relu:activations:0(conv2d_426/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_426/Conv2D?
!conv2d_426/BiasAdd/ReadVariableOpReadVariableOp*conv2d_426_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_426/BiasAdd/ReadVariableOp?
conv2d_426/BiasAddBiasAddconv2d_426/Conv2D:output:0)conv2d_426/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_426/BiasAdd?
conv2d_426/ReluReluconv2d_426/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_426/Relu?
max_pooling2d_75/MaxPoolMaxPoolconv2d_426/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_75/MaxPool?
dropout_40/IdentityIdentity!max_pooling2d_75/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_40/Identityu
flatten_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_33/Const?
flatten_33/ReshapeReshapedropout_40/Identity:output:0flatten_33/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_33/Reshape?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02 
dense_69/MatMul/ReadVariableOp?
dense_69/MatMulMatMulflatten_33/Reshape:output:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_69/MatMul?
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_69/BiasAdd/ReadVariableOp?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_69/BiasAddt
dense_69/ReluReludense_69/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_69/Relu?
dropout_41/IdentityIdentitydense_69/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_41/Identity?
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_70/MatMul/ReadVariableOp?
dense_70/MatMulMatMuldropout_41/Identity:output:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_70/MatMul?
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_70/BiasAdd/ReadVariableOp?
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_70/BiasAdd|
dense_70/SigmoidSigmoiddense_70/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_70/Sigmoido
IdentityIdentitydense_70/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_425/BiasAdd/ReadVariableOp!^conv2d_425/Conv2D/ReadVariableOp"^conv2d_426/BiasAdd/ReadVariableOp!^conv2d_426/Conv2D/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2F
!conv2d_425/BiasAdd/ReadVariableOp!conv2d_425/BiasAdd/ReadVariableOp2D
 conv2d_425/Conv2D/ReadVariableOp conv2d_425/Conv2D/ReadVariableOp2F
!conv2d_426/BiasAdd/ReadVariableOp!conv2d_426/BiasAdd/ReadVariableOp2D
 conv2d_426/Conv2D/ReadVariableOp conv2d_426/Conv2D/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp:Y U
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
?,
?
__inference_adapt_step_10768953
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
?
?
H__inference_conv2d_425_layer_call_and_return_conditional_losses_10768964

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
?
f
-__inference_dropout_41_layer_call_fn_10769098

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_41_layer_call_and_return_conditional_losses_107684532
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
?
I
-__inference_flatten_33_layer_call_fn_10769051

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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_33_layer_call_and_return_conditional_losses_107683562
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
?
?
0__inference_sequential_36_layer_call_fn_10768871

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
GPU2*0J 8? *T
fORM
K__inference_sequential_36_layer_call_and_return_conditional_losses_107684002
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
?
f
-__inference_dropout_40_layer_call_fn_10769040

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_40_layer_call_and_return_conditional_losses_107684922
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
?
?
F__inference_dense_69_layer_call_and_return_conditional_losses_10769062

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
?
d
H__inference_flatten_33_layer_call_and_return_conditional_losses_10769046

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
?
d
H__inference_flatten_33_layer_call_and_return_conditional_losses_10768356

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
?
f
H__inference_dropout_41_layer_call_and_return_conditional_losses_10768380

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
?
0__inference_sequential_36_layer_call_fn_10768896

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
GPU2*0J 8? *T
fORM
K__inference_sequential_36_layer_call_and_return_conditional_losses_107685892
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
?K
?
#__inference__wrapped_model_10768259
input_21(
$sequential_36_normalization_20_sub_y)
%sequential_36_normalization_20_sqrt_xQ
7sequential_36_conv2d_425_conv2d_readvariableop_resource: F
8sequential_36_conv2d_425_biasadd_readvariableop_resource: Q
7sequential_36_conv2d_426_conv2d_readvariableop_resource: @F
8sequential_36_conv2d_426_biasadd_readvariableop_resource:@I
5sequential_36_dense_69_matmul_readvariableop_resource:
?b?E
6sequential_36_dense_69_biasadd_readvariableop_resource:	?H
5sequential_36_dense_70_matmul_readvariableop_resource:	?D
6sequential_36_dense_70_biasadd_readvariableop_resource:
identity??/sequential_36/conv2d_425/BiasAdd/ReadVariableOp?.sequential_36/conv2d_425/Conv2D/ReadVariableOp?/sequential_36/conv2d_426/BiasAdd/ReadVariableOp?.sequential_36/conv2d_426/Conv2D/ReadVariableOp?-sequential_36/dense_69/BiasAdd/ReadVariableOp?,sequential_36/dense_69/MatMul/ReadVariableOp?-sequential_36/dense_70/BiasAdd/ReadVariableOp?,sequential_36/dense_70/MatMul/ReadVariableOp?
%sequential_36/resizing_20/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2'
%sequential_36/resizing_20/resize/size?
/sequential_36/resizing_20/resize/ResizeBilinearResizeBilinearinput_21.sequential_36/resizing_20/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(21
/sequential_36/resizing_20/resize/ResizeBilinear?
"sequential_36/normalization_20/subSub@sequential_36/resizing_20/resize/ResizeBilinear:resized_images:0$sequential_36_normalization_20_sub_y*
T0*/
_output_shapes
:?????????  2$
"sequential_36/normalization_20/sub?
#sequential_36/normalization_20/SqrtSqrt%sequential_36_normalization_20_sqrt_x*
T0*"
_output_shapes
:2%
#sequential_36/normalization_20/Sqrt?
(sequential_36/normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32*
(sequential_36/normalization_20/Maximum/y?
&sequential_36/normalization_20/MaximumMaximum'sequential_36/normalization_20/Sqrt:y:01sequential_36/normalization_20/Maximum/y:output:0*
T0*"
_output_shapes
:2(
&sequential_36/normalization_20/Maximum?
&sequential_36/normalization_20/truedivRealDiv&sequential_36/normalization_20/sub:z:0*sequential_36/normalization_20/Maximum:z:0*
T0*/
_output_shapes
:?????????  2(
&sequential_36/normalization_20/truediv?
.sequential_36/conv2d_425/Conv2D/ReadVariableOpReadVariableOp7sequential_36_conv2d_425_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_36/conv2d_425/Conv2D/ReadVariableOp?
sequential_36/conv2d_425/Conv2DConv2D*sequential_36/normalization_20/truediv:z:06sequential_36/conv2d_425/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2!
sequential_36/conv2d_425/Conv2D?
/sequential_36/conv2d_425/BiasAdd/ReadVariableOpReadVariableOp8sequential_36_conv2d_425_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_36/conv2d_425/BiasAdd/ReadVariableOp?
 sequential_36/conv2d_425/BiasAddBiasAdd(sequential_36/conv2d_425/Conv2D:output:07sequential_36/conv2d_425/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2"
 sequential_36/conv2d_425/BiasAdd?
sequential_36/conv2d_425/ReluRelu)sequential_36/conv2d_425/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_36/conv2d_425/Relu?
.sequential_36/conv2d_426/Conv2D/ReadVariableOpReadVariableOp7sequential_36_conv2d_426_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_36/conv2d_426/Conv2D/ReadVariableOp?
sequential_36/conv2d_426/Conv2DConv2D+sequential_36/conv2d_425/Relu:activations:06sequential_36/conv2d_426/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2!
sequential_36/conv2d_426/Conv2D?
/sequential_36/conv2d_426/BiasAdd/ReadVariableOpReadVariableOp8sequential_36_conv2d_426_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_36/conv2d_426/BiasAdd/ReadVariableOp?
 sequential_36/conv2d_426/BiasAddBiasAdd(sequential_36/conv2d_426/Conv2D:output:07sequential_36/conv2d_426/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 sequential_36/conv2d_426/BiasAdd?
sequential_36/conv2d_426/ReluRelu)sequential_36/conv2d_426/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_36/conv2d_426/Relu?
&sequential_36/max_pooling2d_75/MaxPoolMaxPool+sequential_36/conv2d_426/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_36/max_pooling2d_75/MaxPool?
!sequential_36/dropout_40/IdentityIdentity/sequential_36/max_pooling2d_75/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!sequential_36/dropout_40/Identity?
sequential_36/flatten_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2 
sequential_36/flatten_33/Const?
 sequential_36/flatten_33/ReshapeReshape*sequential_36/dropout_40/Identity:output:0'sequential_36/flatten_33/Const:output:0*
T0*(
_output_shapes
:??????????b2"
 sequential_36/flatten_33/Reshape?
,sequential_36/dense_69/MatMul/ReadVariableOpReadVariableOp5sequential_36_dense_69_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02.
,sequential_36/dense_69/MatMul/ReadVariableOp?
sequential_36/dense_69/MatMulMatMul)sequential_36/flatten_33/Reshape:output:04sequential_36/dense_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_36/dense_69/MatMul?
-sequential_36/dense_69/BiasAdd/ReadVariableOpReadVariableOp6sequential_36_dense_69_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_36/dense_69/BiasAdd/ReadVariableOp?
sequential_36/dense_69/BiasAddBiasAdd'sequential_36/dense_69/MatMul:product:05sequential_36/dense_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_36/dense_69/BiasAdd?
sequential_36/dense_69/ReluRelu'sequential_36/dense_69/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_36/dense_69/Relu?
!sequential_36/dropout_41/IdentityIdentity)sequential_36/dense_69/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!sequential_36/dropout_41/Identity?
,sequential_36/dense_70/MatMul/ReadVariableOpReadVariableOp5sequential_36_dense_70_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_36/dense_70/MatMul/ReadVariableOp?
sequential_36/dense_70/MatMulMatMul*sequential_36/dropout_41/Identity:output:04sequential_36/dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_36/dense_70/MatMul?
-sequential_36/dense_70/BiasAdd/ReadVariableOpReadVariableOp6sequential_36_dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_36/dense_70/BiasAdd/ReadVariableOp?
sequential_36/dense_70/BiasAddBiasAdd'sequential_36/dense_70/MatMul:product:05sequential_36/dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_36/dense_70/BiasAdd?
sequential_36/dense_70/SigmoidSigmoid'sequential_36/dense_70/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_36/dense_70/Sigmoid}
IdentityIdentity"sequential_36/dense_70/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^sequential_36/conv2d_425/BiasAdd/ReadVariableOp/^sequential_36/conv2d_425/Conv2D/ReadVariableOp0^sequential_36/conv2d_426/BiasAdd/ReadVariableOp/^sequential_36/conv2d_426/Conv2D/ReadVariableOp.^sequential_36/dense_69/BiasAdd/ReadVariableOp-^sequential_36/dense_69/MatMul/ReadVariableOp.^sequential_36/dense_70/BiasAdd/ReadVariableOp-^sequential_36/dense_70/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2b
/sequential_36/conv2d_425/BiasAdd/ReadVariableOp/sequential_36/conv2d_425/BiasAdd/ReadVariableOp2`
.sequential_36/conv2d_425/Conv2D/ReadVariableOp.sequential_36/conv2d_425/Conv2D/ReadVariableOp2b
/sequential_36/conv2d_426/BiasAdd/ReadVariableOp/sequential_36/conv2d_426/BiasAdd/ReadVariableOp2`
.sequential_36/conv2d_426/Conv2D/ReadVariableOp.sequential_36/conv2d_426/Conv2D/ReadVariableOp2^
-sequential_36/dense_69/BiasAdd/ReadVariableOp-sequential_36/dense_69/BiasAdd/ReadVariableOp2\
,sequential_36/dense_69/MatMul/ReadVariableOp,sequential_36/dense_69/MatMul/ReadVariableOp2^
-sequential_36/dense_70/BiasAdd/ReadVariableOp-sequential_36/dense_70/BiasAdd/ReadVariableOp2\
,sequential_36/dense_70/MatMul/ReadVariableOp,sequential_36/dense_70/MatMul/ReadVariableOp:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_21:($
"
_output_shapes
::($
"
_output_shapes
:
?
?
F__inference_dense_70_layer_call_and_return_conditional_losses_10769109

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
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768709
input_21
normalization_20_sub_y
normalization_20_sqrt_x-
conv2d_425_10768684: !
conv2d_425_10768686: -
conv2d_426_10768689: @!
conv2d_426_10768691:@%
dense_69_10768697:
?b? 
dense_69_10768699:	?$
dense_70_10768703:	?
dense_70_10768705:
identity??"conv2d_425/StatefulPartitionedCall?"conv2d_426/StatefulPartitionedCall? dense_69/StatefulPartitionedCall? dense_70/StatefulPartitionedCall?"dropout_40/StatefulPartitionedCall?"dropout_41/StatefulPartitionedCall?
resizing_20/PartitionedCallPartitionedCallinput_21*
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
GPU2*0J 8? *R
fMRK
I__inference_resizing_20_layer_call_and_return_conditional_losses_107682942
resizing_20/PartitionedCall?
normalization_20/subSub$resizing_20/PartitionedCall:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_20/sub|
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*"
_output_shapes
:2
normalization_20/Sqrt}
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_20/Maximum/y?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_20/Maximum?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_20/truediv?
"conv2d_425/StatefulPartitionedCallStatefulPartitionedCallnormalization_20/truediv:z:0conv2d_425_10768684conv2d_425_10768686*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_425_layer_call_and_return_conditional_losses_107683142$
"conv2d_425/StatefulPartitionedCall?
"conv2d_426/StatefulPartitionedCallStatefulPartitionedCall+conv2d_425/StatefulPartitionedCall:output:0conv2d_426_10768689conv2d_426_10768691*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_426_layer_call_and_return_conditional_losses_107683312$
"conv2d_426/StatefulPartitionedCall?
 max_pooling2d_75/PartitionedCallPartitionedCall+conv2d_426/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_107683412"
 max_pooling2d_75/PartitionedCall?
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_75/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_40_layer_call_and_return_conditional_losses_107684922$
"dropout_40/StatefulPartitionedCall?
flatten_33/PartitionedCallPartitionedCall+dropout_40/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_33_layer_call_and_return_conditional_losses_107683562
flatten_33/PartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall#flatten_33/PartitionedCall:output:0dense_69_10768697dense_69_10768699*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_69_layer_call_and_return_conditional_losses_107683692"
 dense_69/StatefulPartitionedCall?
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0#^dropout_40/StatefulPartitionedCall*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_41_layer_call_and_return_conditional_losses_107684532$
"dropout_41/StatefulPartitionedCall?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall+dropout_41/StatefulPartitionedCall:output:0dense_70_10768703dense_70_10768705*
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
F__inference_dense_70_layer_call_and_return_conditional_losses_107683932"
 dense_70/StatefulPartitionedCall?
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_425/StatefulPartitionedCall#^conv2d_426/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_425/StatefulPartitionedCall"conv2d_425/StatefulPartitionedCall2H
"conv2d_426/StatefulPartitionedCall"conv2d_426/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_21:($
"
_output_shapes
::($
"
_output_shapes
:
?
O
3__inference_max_pooling2d_75_layer_call_fn_10769013

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_107683412
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
?Q
?

$__inference__traced_restore_10769267
file_prefix#
assignvariableop_mean:)
assignvariableop_1_variance:"
assignvariableop_2_count:	 >
$assignvariableop_3_conv2d_425_kernel: 0
"assignvariableop_4_conv2d_425_bias: >
$assignvariableop_5_conv2d_426_kernel: @0
"assignvariableop_6_conv2d_426_bias:@6
"assignvariableop_7_dense_69_kernel:
?b?/
 assignvariableop_8_dense_69_bias:	?5
"assignvariableop_9_dense_70_kernel:	?/
!assignvariableop_10_dense_70_bias:&
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
AssignVariableOp_3AssignVariableOp$assignvariableop_3_conv2d_425_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_425_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp$assignvariableop_5_conv2d_426_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_426_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_69_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_69_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_70_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_70_biasIdentity_10:output:0"/device:CPU:0*
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
?
&__inference_signature_wrapper_10768740
input_21
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
StatefulPartitionedCallStatefulPartitionedCallinput_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *,
f'R%
#__inference__wrapped_model_107682592
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
input_21:($
"
_output_shapes
::($
"
_output_shapes
:
?
g
H__inference_dropout_41_layer_call_and_return_conditional_losses_10769088

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
?
?
H__inference_conv2d_426_layer_call_and_return_conditional_losses_10768984

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
?.
?
!__inference__traced_save_10769200
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	0
,savev2_conv2d_425_kernel_read_readvariableop.
*savev2_conv2d_425_bias_read_readvariableop0
,savev2_conv2d_426_kernel_read_readvariableop.
*savev2_conv2d_426_bias_read_readvariableop.
*savev2_dense_69_kernel_read_readvariableop,
(savev2_dense_69_bias_read_readvariableop.
*savev2_dense_70_kernel_read_readvariableop,
(savev2_dense_70_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop,savev2_conv2d_425_kernel_read_readvariableop*savev2_conv2d_425_bias_read_readvariableop,savev2_conv2d_426_kernel_read_readvariableop*savev2_conv2d_426_bias_read_readvariableop*savev2_dense_69_kernel_read_readvariableop(savev2_dense_69_bias_read_readvariableop*savev2_dense_70_kernel_read_readvariableop(savev2_dense_70_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_2_read_readvariableopsavev2_const_2"/device:CPU:0*
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
?
?
H__inference_conv2d_425_layer_call_and_return_conditional_losses_10768314

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
?
f
H__inference_dropout_41_layer_call_and_return_conditional_losses_10769076

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
g
H__inference_dropout_40_layer_call_and_return_conditional_losses_10768492

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
j
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_10768998

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
f
H__inference_dropout_40_layer_call_and_return_conditional_losses_10768348

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
?
e
I__inference_resizing_20_layer_call_and_return_conditional_losses_10768294

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
?0
?
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768400

inputs
normalization_20_sub_y
normalization_20_sqrt_x-
conv2d_425_10768315: !
conv2d_425_10768317: -
conv2d_426_10768332: @!
conv2d_426_10768334:@%
dense_69_10768370:
?b? 
dense_69_10768372:	?$
dense_70_10768394:	?
dense_70_10768396:
identity??"conv2d_425/StatefulPartitionedCall?"conv2d_426/StatefulPartitionedCall? dense_69/StatefulPartitionedCall? dense_70/StatefulPartitionedCall?
resizing_20/PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8? *R
fMRK
I__inference_resizing_20_layer_call_and_return_conditional_losses_107682942
resizing_20/PartitionedCall?
normalization_20/subSub$resizing_20/PartitionedCall:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_20/sub|
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*"
_output_shapes
:2
normalization_20/Sqrt}
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_20/Maximum/y?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_20/Maximum?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_20/truediv?
"conv2d_425/StatefulPartitionedCallStatefulPartitionedCallnormalization_20/truediv:z:0conv2d_425_10768315conv2d_425_10768317*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_425_layer_call_and_return_conditional_losses_107683142$
"conv2d_425/StatefulPartitionedCall?
"conv2d_426/StatefulPartitionedCallStatefulPartitionedCall+conv2d_425/StatefulPartitionedCall:output:0conv2d_426_10768332conv2d_426_10768334*
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
GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_426_layer_call_and_return_conditional_losses_107683312$
"conv2d_426/StatefulPartitionedCall?
 max_pooling2d_75/PartitionedCallPartitionedCall+conv2d_426/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_107683412"
 max_pooling2d_75/PartitionedCall?
dropout_40/PartitionedCallPartitionedCall)max_pooling2d_75/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_40_layer_call_and_return_conditional_losses_107683482
dropout_40/PartitionedCall?
flatten_33/PartitionedCallPartitionedCall#dropout_40/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_33_layer_call_and_return_conditional_losses_107683562
flatten_33/PartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall#flatten_33/PartitionedCall:output:0dense_69_10768370dense_69_10768372*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_69_layer_call_and_return_conditional_losses_107683692"
 dense_69/StatefulPartitionedCall?
dropout_41/PartitionedCallPartitionedCall)dense_69/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_41_layer_call_and_return_conditional_losses_107683802
dropout_41/PartitionedCall?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall#dropout_41/PartitionedCall:output:0dense_70_10768394dense_70_10768396*
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
F__inference_dense_70_layer_call_and_return_conditional_losses_107683932"
 dense_70/StatefulPartitionedCall?
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_425/StatefulPartitionedCall#^conv2d_426/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_425/StatefulPartitionedCall"conv2d_425/StatefulPartitionedCall2H
"conv2d_426/StatefulPartitionedCall"conv2d_426/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall:Y U
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
0__inference_sequential_36_layer_call_fn_10768423
input_21
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
StatefulPartitionedCallStatefulPartitionedCallinput_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *T
fORM
K__inference_sequential_36_layer_call_and_return_conditional_losses_107684002
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
input_21:($
"
_output_shapes
::($
"
_output_shapes
:
?
j
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_10768341

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
?
O
3__inference_max_pooling2d_75_layer_call_fn_10769008

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
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_107682682
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
g
H__inference_dropout_41_layer_call_and_return_conditional_losses_10768453

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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
input_21;
serving_default_input_21:0???????????<
dense_700
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
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
+:) 2conv2d_425/kernel
: 2conv2d_425/bias
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
+:) @2conv2d_426/kernel
:@2conv2d_426/bias
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
?b?2dense_69/kernel
:?2dense_69/bias
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
": 	?2dense_70/kernel
:2dense_70/bias
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
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768786
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768846
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768673
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768709?
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
#__inference__wrapped_model_10768259input_21"?
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
0__inference_sequential_36_layer_call_fn_10768423
0__inference_sequential_36_layer_call_fn_10768871
0__inference_sequential_36_layer_call_fn_10768896
0__inference_sequential_36_layer_call_fn_10768637?
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
I__inference_resizing_20_layer_call_and_return_conditional_losses_10768902?
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
.__inference_resizing_20_layer_call_fn_10768907?
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
__inference_adapt_step_10768953?
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
H__inference_conv2d_425_layer_call_and_return_conditional_losses_10768964?
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
-__inference_conv2d_425_layer_call_fn_10768973?
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
H__inference_conv2d_426_layer_call_and_return_conditional_losses_10768984?
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
-__inference_conv2d_426_layer_call_fn_10768993?
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
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_10768998
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_10769003?
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
3__inference_max_pooling2d_75_layer_call_fn_10769008
3__inference_max_pooling2d_75_layer_call_fn_10769013?
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
H__inference_dropout_40_layer_call_and_return_conditional_losses_10769018
H__inference_dropout_40_layer_call_and_return_conditional_losses_10769030?
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
-__inference_dropout_40_layer_call_fn_10769035
-__inference_dropout_40_layer_call_fn_10769040?
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
H__inference_flatten_33_layer_call_and_return_conditional_losses_10769046?
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
-__inference_flatten_33_layer_call_fn_10769051?
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
F__inference_dense_69_layer_call_and_return_conditional_losses_10769062?
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
+__inference_dense_69_layer_call_fn_10769071?
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
H__inference_dropout_41_layer_call_and_return_conditional_losses_10769076
H__inference_dropout_41_layer_call_and_return_conditional_losses_10769088?
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
-__inference_dropout_41_layer_call_fn_10769093
-__inference_dropout_41_layer_call_fn_10769098?
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
F__inference_dense_70_layer_call_and_return_conditional_losses_10769109?
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
+__inference_dense_70_layer_call_fn_10769118?
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
&__inference_signature_wrapper_10768740input_21"?
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
#__inference__wrapped_model_10768259???#$56?@;?8
1?.
,?)
input_21???????????
? "3?0
.
dense_70"?
dense_70?????????t
__inference_adapt_step_10768953QF?C
<?9
7?4"?
???????????IteratorSpec
? "
 ?
H__inference_conv2d_425_layer_call_and_return_conditional_losses_10768964l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0????????? 
? ?
-__inference_conv2d_425_layer_call_fn_10768973_7?4
-?*
(?%
inputs?????????  
? " ?????????? ?
H__inference_conv2d_426_layer_call_and_return_conditional_losses_10768984l#$7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
-__inference_conv2d_426_layer_call_fn_10768993_#$7?4
-?*
(?%
inputs????????? 
? " ??????????@?
F__inference_dense_69_layer_call_and_return_conditional_losses_10769062^560?-
&?#
!?
inputs??????????b
? "&?#
?
0??????????
? ?
+__inference_dense_69_layer_call_fn_10769071Q560?-
&?#
!?
inputs??????????b
? "????????????
F__inference_dense_70_layer_call_and_return_conditional_losses_10769109]?@0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
+__inference_dense_70_layer_call_fn_10769118P?@0?-
&?#
!?
inputs??????????
? "???????????
H__inference_dropout_40_layer_call_and_return_conditional_losses_10769018l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
H__inference_dropout_40_layer_call_and_return_conditional_losses_10769030l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
-__inference_dropout_40_layer_call_fn_10769035_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
-__inference_dropout_40_layer_call_fn_10769040_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
H__inference_dropout_41_layer_call_and_return_conditional_losses_10769076^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_dropout_41_layer_call_and_return_conditional_losses_10769088^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_dropout_41_layer_call_fn_10769093Q4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_dropout_41_layer_call_fn_10769098Q4?1
*?'
!?
inputs??????????
p
? "????????????
H__inference_flatten_33_layer_call_and_return_conditional_losses_10769046a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????b
? ?
-__inference_flatten_33_layer_call_fn_10769051T7?4
-?*
(?%
inputs?????????@
? "???????????b?
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_10768998?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_10769003h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
3__inference_max_pooling2d_75_layer_call_fn_10769008?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_75_layer_call_fn_10769013[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_resizing_20_layer_call_and_return_conditional_losses_10768902j9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????  
? ?
.__inference_resizing_20_layer_call_fn_10768907]9?6
/?,
*?'
inputs???????????
? " ??????????  ?
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768673z??#$56?@C?@
9?6
,?)
input_21???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768709z??#$56?@C?@
9?6
,?)
input_21???????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768786x??#$56?@A?>
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
K__inference_sequential_36_layer_call_and_return_conditional_losses_10768846x??#$56?@A?>
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
0__inference_sequential_36_layer_call_fn_10768423m??#$56?@C?@
9?6
,?)
input_21???????????
p 

 
? "???????????
0__inference_sequential_36_layer_call_fn_10768637m??#$56?@C?@
9?6
,?)
input_21???????????
p

 
? "???????????
0__inference_sequential_36_layer_call_fn_10768871k??#$56?@A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
0__inference_sequential_36_layer_call_fn_10768896k??#$56?@A?>
7?4
*?'
inputs???????????
p

 
? "???????????
&__inference_signature_wrapper_10768740???#$56?@G?D
? 
=?:
8
input_21,?)
input_21???????????"3?0
.
dense_70"?
dense_70?????????