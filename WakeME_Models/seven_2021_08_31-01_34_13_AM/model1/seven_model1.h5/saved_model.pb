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
conv2d_263/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_263/kernel

%conv2d_263/kernel/Read/ReadVariableOpReadVariableOpconv2d_263/kernel*&
_output_shapes
: *
dtype0
v
conv2d_263/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_263/bias
o
#conv2d_263/bias/Read/ReadVariableOpReadVariableOpconv2d_263/bias*
_output_shapes
: *
dtype0
?
conv2d_264/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_264/kernel

%conv2d_264/kernel/Read/ReadVariableOpReadVariableOpconv2d_264/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_264/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_264/bias
o
#conv2d_264/bias/Read/ReadVariableOpReadVariableOpconv2d_264/bias*
_output_shapes
:@*
dtype0
|
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?b?* 
shared_namedense_45/kernel
u
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel* 
_output_shapes
:
?b?*
dtype0
s
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_45/bias
l
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
_output_shapes	
:?*
dtype0
{
dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_46/kernel
t
#dense_46/kernel/Read/ReadVariableOpReadVariableOpdense_46/kernel*
_output_shapes
:	?*
dtype0
r
dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_46/bias
k
!dense_46/bias/Read/ReadVariableOpReadVariableOpdense_46/bias*
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
valueB*??>
d
Const_1Const*"
_output_shapes
:*
dtype0*!
valueB*'?

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
VARIABLE_VALUEconv2d_263/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_263/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_264/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_264/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_45/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_45/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_46/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_46/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_input_15Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_15ConstConst_1conv2d_263/kernelconv2d_263/biasconv2d_264/kernelconv2d_264/biasdense_45/kerneldense_45/biasdense_46/kerneldense_46/bias*
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
%__inference_signature_wrapper_3467763
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp%conv2d_263/kernel/Read/ReadVariableOp#conv2d_263/bias/Read/ReadVariableOp%conv2d_264/kernel/Read/ReadVariableOp#conv2d_264/bias/Read/ReadVariableOp#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOp#dense_46/kernel/Read/ReadVariableOp!dense_46/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_2/Read/ReadVariableOpConst_2* 
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
 __inference__traced_save_3468223
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountconv2d_263/kernelconv2d_263/biasconv2d_264/kernelconv2d_264/biasdense_45/kerneldense_45/biasdense_46/kerneldense_46/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount_1total_1count_2*
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
#__inference__traced_restore_3468290??
?
I
-__inference_resizing_14_layer_call_fn_3467930

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
H__inference_resizing_14_layer_call_and_return_conditional_losses_34673172
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
?/
?
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467423

inputs
normalization_14_sub_y
normalization_14_sqrt_x,
conv2d_263_3467338:  
conv2d_263_3467340: ,
conv2d_264_3467355: @ 
conv2d_264_3467357:@$
dense_45_3467393:
?b?
dense_45_3467395:	?#
dense_46_3467417:	?
dense_46_3467419:
identity??"conv2d_263/StatefulPartitionedCall?"conv2d_264/StatefulPartitionedCall? dense_45/StatefulPartitionedCall? dense_46/StatefulPartitionedCall?
resizing_14/PartitionedCallPartitionedCallinputs*
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
H__inference_resizing_14_layer_call_and_return_conditional_losses_34673172
resizing_14/PartitionedCall?
normalization_14/subSub$resizing_14/PartitionedCall:output:0normalization_14_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_14/sub|
normalization_14/SqrtSqrtnormalization_14_sqrt_x*
T0*"
_output_shapes
:2
normalization_14/Sqrt}
normalization_14/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_14/Maximum/y?
normalization_14/MaximumMaximumnormalization_14/Sqrt:y:0#normalization_14/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_14/Maximum?
normalization_14/truedivRealDivnormalization_14/sub:z:0normalization_14/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_14/truediv?
"conv2d_263/StatefulPartitionedCallStatefulPartitionedCallnormalization_14/truediv:z:0conv2d_263_3467338conv2d_263_3467340*
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
G__inference_conv2d_263_layer_call_and_return_conditional_losses_34673372$
"conv2d_263/StatefulPartitionedCall?
"conv2d_264/StatefulPartitionedCallStatefulPartitionedCall+conv2d_263/StatefulPartitionedCall:output:0conv2d_264_3467355conv2d_264_3467357*
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
G__inference_conv2d_264_layer_call_and_return_conditional_losses_34673542$
"conv2d_264/StatefulPartitionedCall?
 max_pooling2d_45/PartitionedCallPartitionedCall+conv2d_264/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_34673642"
 max_pooling2d_45/PartitionedCall?
dropout_28/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
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
G__inference_dropout_28_layer_call_and_return_conditional_losses_34673712
dropout_28/PartitionedCall?
flatten_21/PartitionedCallPartitionedCall#dropout_28/PartitionedCall:output:0*
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
G__inference_flatten_21_layer_call_and_return_conditional_losses_34673792
flatten_21/PartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_45_3467393dense_45_3467395*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_34673922"
 dense_45/StatefulPartitionedCall?
dropout_29/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
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
G__inference_dropout_29_layer_call_and_return_conditional_losses_34674032
dropout_29/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_46_3467417dense_46_3467419*
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
E__inference_dense_46_layer_call_and_return_conditional_losses_34674162"
 dense_46/StatefulPartitionedCall?
IdentityIdentity)dense_46/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_263/StatefulPartitionedCall#^conv2d_264/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_263/StatefulPartitionedCall"conv2d_263/StatefulPartitionedCall2H
"conv2d_264/StatefulPartitionedCall"conv2d_264/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall:Y U
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
f
G__inference_dropout_28_layer_call_and_return_conditional_losses_3467515

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
?
G__inference_conv2d_263_layer_call_and_return_conditional_losses_3467987

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
?
E__inference_dense_45_layer_call_and_return_conditional_losses_3467392

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
G__inference_conv2d_263_layer_call_and_return_conditional_losses_3467337

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
?
?
,__inference_conv2d_263_layer_call_fn_3467996

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
G__inference_conv2d_263_layer_call_and_return_conditional_losses_34673372
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
?3
?
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467732
input_15
normalization_14_sub_y
normalization_14_sqrt_x,
conv2d_263_3467707:  
conv2d_263_3467709: ,
conv2d_264_3467712: @ 
conv2d_264_3467714:@$
dense_45_3467720:
?b?
dense_45_3467722:	?#
dense_46_3467726:	?
dense_46_3467728:
identity??"conv2d_263/StatefulPartitionedCall?"conv2d_264/StatefulPartitionedCall? dense_45/StatefulPartitionedCall? dense_46/StatefulPartitionedCall?"dropout_28/StatefulPartitionedCall?"dropout_29/StatefulPartitionedCall?
resizing_14/PartitionedCallPartitionedCallinput_15*
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
H__inference_resizing_14_layer_call_and_return_conditional_losses_34673172
resizing_14/PartitionedCall?
normalization_14/subSub$resizing_14/PartitionedCall:output:0normalization_14_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_14/sub|
normalization_14/SqrtSqrtnormalization_14_sqrt_x*
T0*"
_output_shapes
:2
normalization_14/Sqrt}
normalization_14/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_14/Maximum/y?
normalization_14/MaximumMaximumnormalization_14/Sqrt:y:0#normalization_14/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_14/Maximum?
normalization_14/truedivRealDivnormalization_14/sub:z:0normalization_14/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_14/truediv?
"conv2d_263/StatefulPartitionedCallStatefulPartitionedCallnormalization_14/truediv:z:0conv2d_263_3467707conv2d_263_3467709*
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
G__inference_conv2d_263_layer_call_and_return_conditional_losses_34673372$
"conv2d_263/StatefulPartitionedCall?
"conv2d_264/StatefulPartitionedCallStatefulPartitionedCall+conv2d_263/StatefulPartitionedCall:output:0conv2d_264_3467712conv2d_264_3467714*
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
G__inference_conv2d_264_layer_call_and_return_conditional_losses_34673542$
"conv2d_264/StatefulPartitionedCall?
 max_pooling2d_45/PartitionedCallPartitionedCall+conv2d_264/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_34673642"
 max_pooling2d_45/PartitionedCall?
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
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
G__inference_dropout_28_layer_call_and_return_conditional_losses_34675152$
"dropout_28/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall+dropout_28/StatefulPartitionedCall:output:0*
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
G__inference_flatten_21_layer_call_and_return_conditional_losses_34673792
flatten_21/PartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_45_3467720dense_45_3467722*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_34673922"
 dense_45/StatefulPartitionedCall?
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
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
G__inference_dropout_29_layer_call_and_return_conditional_losses_34674762$
"dropout_29/StatefulPartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_46_3467726dense_46_3467728*
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
E__inference_dense_46_layer_call_and_return_conditional_losses_34674162"
 dense_46/StatefulPartitionedCall?
IdentityIdentity)dense_46/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_263/StatefulPartitionedCall#^conv2d_264/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_263/StatefulPartitionedCall"conv2d_263/StatefulPartitionedCall2H
"conv2d_264/StatefulPartitionedCall"conv2d_264/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_15:($
"
_output_shapes
::($
"
_output_shapes
:
?
?
E__inference_dense_45_layer_call_and_return_conditional_losses_3468085

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
N
2__inference_max_pooling2d_45_layer_call_fn_3468036

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
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_34673642
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
?
i
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3468021

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
?.
?
 __inference__traced_save_3468223
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	0
,savev2_conv2d_263_kernel_read_readvariableop.
*savev2_conv2d_263_bias_read_readvariableop0
,savev2_conv2d_264_kernel_read_readvariableop.
*savev2_conv2d_264_bias_read_readvariableop.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop.
*savev2_dense_46_kernel_read_readvariableop,
(savev2_dense_46_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop,savev2_conv2d_263_kernel_read_readvariableop*savev2_conv2d_263_bias_read_readvariableop,savev2_conv2d_264_kernel_read_readvariableop*savev2_conv2d_264_bias_read_readvariableop*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop*savev2_dense_46_kernel_read_readvariableop(savev2_dense_46_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_2_read_readvariableopsavev2_const_2"/device:CPU:0*
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
?
c
G__inference_flatten_21_layer_call_and_return_conditional_losses_3468069

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
?/
?
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467696
input_15
normalization_14_sub_y
normalization_14_sqrt_x,
conv2d_263_3467671:  
conv2d_263_3467673: ,
conv2d_264_3467676: @ 
conv2d_264_3467678:@$
dense_45_3467684:
?b?
dense_45_3467686:	?#
dense_46_3467690:	?
dense_46_3467692:
identity??"conv2d_263/StatefulPartitionedCall?"conv2d_264/StatefulPartitionedCall? dense_45/StatefulPartitionedCall? dense_46/StatefulPartitionedCall?
resizing_14/PartitionedCallPartitionedCallinput_15*
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
H__inference_resizing_14_layer_call_and_return_conditional_losses_34673172
resizing_14/PartitionedCall?
normalization_14/subSub$resizing_14/PartitionedCall:output:0normalization_14_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_14/sub|
normalization_14/SqrtSqrtnormalization_14_sqrt_x*
T0*"
_output_shapes
:2
normalization_14/Sqrt}
normalization_14/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_14/Maximum/y?
normalization_14/MaximumMaximumnormalization_14/Sqrt:y:0#normalization_14/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_14/Maximum?
normalization_14/truedivRealDivnormalization_14/sub:z:0normalization_14/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_14/truediv?
"conv2d_263/StatefulPartitionedCallStatefulPartitionedCallnormalization_14/truediv:z:0conv2d_263_3467671conv2d_263_3467673*
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
G__inference_conv2d_263_layer_call_and_return_conditional_losses_34673372$
"conv2d_263/StatefulPartitionedCall?
"conv2d_264/StatefulPartitionedCallStatefulPartitionedCall+conv2d_263/StatefulPartitionedCall:output:0conv2d_264_3467676conv2d_264_3467678*
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
G__inference_conv2d_264_layer_call_and_return_conditional_losses_34673542$
"conv2d_264/StatefulPartitionedCall?
 max_pooling2d_45/PartitionedCallPartitionedCall+conv2d_264/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_34673642"
 max_pooling2d_45/PartitionedCall?
dropout_28/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
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
G__inference_dropout_28_layer_call_and_return_conditional_losses_34673712
dropout_28/PartitionedCall?
flatten_21/PartitionedCallPartitionedCall#dropout_28/PartitionedCall:output:0*
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
G__inference_flatten_21_layer_call_and_return_conditional_losses_34673792
flatten_21/PartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_45_3467684dense_45_3467686*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_34673922"
 dense_45/StatefulPartitionedCall?
dropout_29/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
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
G__inference_dropout_29_layer_call_and_return_conditional_losses_34674032
dropout_29/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_46_3467690dense_46_3467692*
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
E__inference_dense_46_layer_call_and_return_conditional_losses_34674162"
 dense_46/StatefulPartitionedCall?
IdentityIdentity)dense_46/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_263/StatefulPartitionedCall#^conv2d_264/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_263/StatefulPartitionedCall"conv2d_263/StatefulPartitionedCall2H
"conv2d_264/StatefulPartitionedCall"conv2d_264/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_15:($
"
_output_shapes
::($
"
_output_shapes
:
?
d
H__inference_resizing_14_layer_call_and_return_conditional_losses_3467925

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
G__inference_dropout_29_layer_call_and_return_conditional_losses_3468111

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
?
e
G__inference_dropout_29_layer_call_and_return_conditional_losses_3467403

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
?K
?
"__inference__wrapped_model_3467282
input_15(
$sequential_24_normalization_14_sub_y)
%sequential_24_normalization_14_sqrt_xQ
7sequential_24_conv2d_263_conv2d_readvariableop_resource: F
8sequential_24_conv2d_263_biasadd_readvariableop_resource: Q
7sequential_24_conv2d_264_conv2d_readvariableop_resource: @F
8sequential_24_conv2d_264_biasadd_readvariableop_resource:@I
5sequential_24_dense_45_matmul_readvariableop_resource:
?b?E
6sequential_24_dense_45_biasadd_readvariableop_resource:	?H
5sequential_24_dense_46_matmul_readvariableop_resource:	?D
6sequential_24_dense_46_biasadd_readvariableop_resource:
identity??/sequential_24/conv2d_263/BiasAdd/ReadVariableOp?.sequential_24/conv2d_263/Conv2D/ReadVariableOp?/sequential_24/conv2d_264/BiasAdd/ReadVariableOp?.sequential_24/conv2d_264/Conv2D/ReadVariableOp?-sequential_24/dense_45/BiasAdd/ReadVariableOp?,sequential_24/dense_45/MatMul/ReadVariableOp?-sequential_24/dense_46/BiasAdd/ReadVariableOp?,sequential_24/dense_46/MatMul/ReadVariableOp?
%sequential_24/resizing_14/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2'
%sequential_24/resizing_14/resize/size?
/sequential_24/resizing_14/resize/ResizeBilinearResizeBilinearinput_15.sequential_24/resizing_14/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(21
/sequential_24/resizing_14/resize/ResizeBilinear?
"sequential_24/normalization_14/subSub@sequential_24/resizing_14/resize/ResizeBilinear:resized_images:0$sequential_24_normalization_14_sub_y*
T0*/
_output_shapes
:?????????  2$
"sequential_24/normalization_14/sub?
#sequential_24/normalization_14/SqrtSqrt%sequential_24_normalization_14_sqrt_x*
T0*"
_output_shapes
:2%
#sequential_24/normalization_14/Sqrt?
(sequential_24/normalization_14/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32*
(sequential_24/normalization_14/Maximum/y?
&sequential_24/normalization_14/MaximumMaximum'sequential_24/normalization_14/Sqrt:y:01sequential_24/normalization_14/Maximum/y:output:0*
T0*"
_output_shapes
:2(
&sequential_24/normalization_14/Maximum?
&sequential_24/normalization_14/truedivRealDiv&sequential_24/normalization_14/sub:z:0*sequential_24/normalization_14/Maximum:z:0*
T0*/
_output_shapes
:?????????  2(
&sequential_24/normalization_14/truediv?
.sequential_24/conv2d_263/Conv2D/ReadVariableOpReadVariableOp7sequential_24_conv2d_263_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_24/conv2d_263/Conv2D/ReadVariableOp?
sequential_24/conv2d_263/Conv2DConv2D*sequential_24/normalization_14/truediv:z:06sequential_24/conv2d_263/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2!
sequential_24/conv2d_263/Conv2D?
/sequential_24/conv2d_263/BiasAdd/ReadVariableOpReadVariableOp8sequential_24_conv2d_263_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_24/conv2d_263/BiasAdd/ReadVariableOp?
 sequential_24/conv2d_263/BiasAddBiasAdd(sequential_24/conv2d_263/Conv2D:output:07sequential_24/conv2d_263/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2"
 sequential_24/conv2d_263/BiasAdd?
sequential_24/conv2d_263/ReluRelu)sequential_24/conv2d_263/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_24/conv2d_263/Relu?
.sequential_24/conv2d_264/Conv2D/ReadVariableOpReadVariableOp7sequential_24_conv2d_264_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_24/conv2d_264/Conv2D/ReadVariableOp?
sequential_24/conv2d_264/Conv2DConv2D+sequential_24/conv2d_263/Relu:activations:06sequential_24/conv2d_264/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2!
sequential_24/conv2d_264/Conv2D?
/sequential_24/conv2d_264/BiasAdd/ReadVariableOpReadVariableOp8sequential_24_conv2d_264_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_24/conv2d_264/BiasAdd/ReadVariableOp?
 sequential_24/conv2d_264/BiasAddBiasAdd(sequential_24/conv2d_264/Conv2D:output:07sequential_24/conv2d_264/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 sequential_24/conv2d_264/BiasAdd?
sequential_24/conv2d_264/ReluRelu)sequential_24/conv2d_264/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_24/conv2d_264/Relu?
&sequential_24/max_pooling2d_45/MaxPoolMaxPool+sequential_24/conv2d_264/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_24/max_pooling2d_45/MaxPool?
!sequential_24/dropout_28/IdentityIdentity/sequential_24/max_pooling2d_45/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!sequential_24/dropout_28/Identity?
sequential_24/flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2 
sequential_24/flatten_21/Const?
 sequential_24/flatten_21/ReshapeReshape*sequential_24/dropout_28/Identity:output:0'sequential_24/flatten_21/Const:output:0*
T0*(
_output_shapes
:??????????b2"
 sequential_24/flatten_21/Reshape?
,sequential_24/dense_45/MatMul/ReadVariableOpReadVariableOp5sequential_24_dense_45_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02.
,sequential_24/dense_45/MatMul/ReadVariableOp?
sequential_24/dense_45/MatMulMatMul)sequential_24/flatten_21/Reshape:output:04sequential_24/dense_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_24/dense_45/MatMul?
-sequential_24/dense_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_45_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_24/dense_45/BiasAdd/ReadVariableOp?
sequential_24/dense_45/BiasAddBiasAdd'sequential_24/dense_45/MatMul:product:05sequential_24/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_24/dense_45/BiasAdd?
sequential_24/dense_45/ReluRelu'sequential_24/dense_45/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_24/dense_45/Relu?
!sequential_24/dropout_29/IdentityIdentity)sequential_24/dense_45/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!sequential_24/dropout_29/Identity?
,sequential_24/dense_46/MatMul/ReadVariableOpReadVariableOp5sequential_24_dense_46_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_24/dense_46/MatMul/ReadVariableOp?
sequential_24/dense_46/MatMulMatMul*sequential_24/dropout_29/Identity:output:04sequential_24/dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_24/dense_46/MatMul?
-sequential_24/dense_46/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_24/dense_46/BiasAdd/ReadVariableOp?
sequential_24/dense_46/BiasAddBiasAdd'sequential_24/dense_46/MatMul:product:05sequential_24/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_24/dense_46/BiasAdd?
sequential_24/dense_46/SigmoidSigmoid'sequential_24/dense_46/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_24/dense_46/Sigmoid}
IdentityIdentity"sequential_24/dense_46/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^sequential_24/conv2d_263/BiasAdd/ReadVariableOp/^sequential_24/conv2d_263/Conv2D/ReadVariableOp0^sequential_24/conv2d_264/BiasAdd/ReadVariableOp/^sequential_24/conv2d_264/Conv2D/ReadVariableOp.^sequential_24/dense_45/BiasAdd/ReadVariableOp-^sequential_24/dense_45/MatMul/ReadVariableOp.^sequential_24/dense_46/BiasAdd/ReadVariableOp-^sequential_24/dense_46/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2b
/sequential_24/conv2d_263/BiasAdd/ReadVariableOp/sequential_24/conv2d_263/BiasAdd/ReadVariableOp2`
.sequential_24/conv2d_263/Conv2D/ReadVariableOp.sequential_24/conv2d_263/Conv2D/ReadVariableOp2b
/sequential_24/conv2d_264/BiasAdd/ReadVariableOp/sequential_24/conv2d_264/BiasAdd/ReadVariableOp2`
.sequential_24/conv2d_264/Conv2D/ReadVariableOp.sequential_24/conv2d_264/Conv2D/ReadVariableOp2^
-sequential_24/dense_45/BiasAdd/ReadVariableOp-sequential_24/dense_45/BiasAdd/ReadVariableOp2\
,sequential_24/dense_45/MatMul/ReadVariableOp,sequential_24/dense_45/MatMul/ReadVariableOp2^
-sequential_24/dense_46/BiasAdd/ReadVariableOp-sequential_24/dense_46/BiasAdd/ReadVariableOp2\
,sequential_24/dense_46/MatMul/ReadVariableOp,sequential_24/dense_46/MatMul/ReadVariableOp:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_15:($
"
_output_shapes
::($
"
_output_shapes
:
?
i
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3467364

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
f
G__inference_dropout_29_layer_call_and_return_conditional_losses_3467476

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
?
i
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3467291

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
?
/__inference_sequential_24_layer_call_fn_3467894

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
J__inference_sequential_24_layer_call_and_return_conditional_losses_34674232
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
?
?
/__inference_sequential_24_layer_call_fn_3467919

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
J__inference_sequential_24_layer_call_and_return_conditional_losses_34676122
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
?Q
?

#__inference__traced_restore_3468290
file_prefix#
assignvariableop_mean:)
assignvariableop_1_variance:"
assignvariableop_2_count:	 >
$assignvariableop_3_conv2d_263_kernel: 0
"assignvariableop_4_conv2d_263_bias: >
$assignvariableop_5_conv2d_264_kernel: @0
"assignvariableop_6_conv2d_264_bias:@6
"assignvariableop_7_dense_45_kernel:
?b?/
 assignvariableop_8_dense_45_bias:	?5
"assignvariableop_9_dense_46_kernel:	?/
!assignvariableop_10_dense_46_bias:&
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
AssignVariableOp_3AssignVariableOp$assignvariableop_3_conv2d_263_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_263_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp$assignvariableop_5_conv2d_264_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_264_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_45_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_45_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_46_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_46_biasIdentity_10:output:0"/device:CPU:0*
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
?
?
*__inference_dense_46_layer_call_fn_3468141

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
E__inference_dense_46_layer_call_and_return_conditional_losses_34674162
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
e
G__inference_dropout_28_layer_call_and_return_conditional_losses_3467371

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
?
e
,__inference_dropout_28_layer_call_fn_3468063

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
G__inference_dropout_28_layer_call_and_return_conditional_losses_34675152
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
?
H
,__inference_dropout_29_layer_call_fn_3468116

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
G__inference_dropout_29_layer_call_and_return_conditional_losses_34674032
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
?
?
*__inference_dense_45_layer_call_fn_3468094

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
E__inference_dense_45_layer_call_and_return_conditional_losses_34673922
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
?
i
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3468026

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
f
G__inference_dropout_28_layer_call_and_return_conditional_losses_3468053

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
,__inference_dropout_29_layer_call_fn_3468121

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
G__inference_dropout_29_layer_call_and_return_conditional_losses_34674762
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
?
?
/__inference_sequential_24_layer_call_fn_3467660
input_15
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
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
J__inference_sequential_24_layer_call_and_return_conditional_losses_34676122
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
input_15:($
"
_output_shapes
::($
"
_output_shapes
:
?
?
G__inference_conv2d_264_layer_call_and_return_conditional_losses_3468007

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
?,
?
__inference_adapt_step_3467976
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
?
e
G__inference_dropout_28_layer_call_and_return_conditional_losses_3468041

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
?N
?
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467869

inputs
normalization_14_sub_y
normalization_14_sqrt_xC
)conv2d_263_conv2d_readvariableop_resource: 8
*conv2d_263_biasadd_readvariableop_resource: C
)conv2d_264_conv2d_readvariableop_resource: @8
*conv2d_264_biasadd_readvariableop_resource:@;
'dense_45_matmul_readvariableop_resource:
?b?7
(dense_45_biasadd_readvariableop_resource:	?:
'dense_46_matmul_readvariableop_resource:	?6
(dense_46_biasadd_readvariableop_resource:
identity??!conv2d_263/BiasAdd/ReadVariableOp? conv2d_263/Conv2D/ReadVariableOp?!conv2d_264/BiasAdd/ReadVariableOp? conv2d_264/Conv2D/ReadVariableOp?dense_45/BiasAdd/ReadVariableOp?dense_45/MatMul/ReadVariableOp?dense_46/BiasAdd/ReadVariableOp?dense_46/MatMul/ReadVariableOp?
resizing_14/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resizing_14/resize/size?
!resizing_14/resize/ResizeBilinearResizeBilinearinputs resizing_14/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(2#
!resizing_14/resize/ResizeBilinear?
normalization_14/subSub2resizing_14/resize/ResizeBilinear:resized_images:0normalization_14_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_14/sub|
normalization_14/SqrtSqrtnormalization_14_sqrt_x*
T0*"
_output_shapes
:2
normalization_14/Sqrt}
normalization_14/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_14/Maximum/y?
normalization_14/MaximumMaximumnormalization_14/Sqrt:y:0#normalization_14/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_14/Maximum?
normalization_14/truedivRealDivnormalization_14/sub:z:0normalization_14/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_14/truediv?
 conv2d_263/Conv2D/ReadVariableOpReadVariableOp)conv2d_263_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_263/Conv2D/ReadVariableOp?
conv2d_263/Conv2DConv2Dnormalization_14/truediv:z:0(conv2d_263/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_263/Conv2D?
!conv2d_263/BiasAdd/ReadVariableOpReadVariableOp*conv2d_263_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_263/BiasAdd/ReadVariableOp?
conv2d_263/BiasAddBiasAddconv2d_263/Conv2D:output:0)conv2d_263/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_263/BiasAdd?
conv2d_263/ReluReluconv2d_263/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_263/Relu?
 conv2d_264/Conv2D/ReadVariableOpReadVariableOp)conv2d_264_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_264/Conv2D/ReadVariableOp?
conv2d_264/Conv2DConv2Dconv2d_263/Relu:activations:0(conv2d_264/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_264/Conv2D?
!conv2d_264/BiasAdd/ReadVariableOpReadVariableOp*conv2d_264_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_264/BiasAdd/ReadVariableOp?
conv2d_264/BiasAddBiasAddconv2d_264/Conv2D:output:0)conv2d_264/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_264/BiasAdd?
conv2d_264/ReluReluconv2d_264/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_264/Relu?
max_pooling2d_45/MaxPoolMaxPoolconv2d_264/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_45/MaxPooly
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_28/dropout/Const?
dropout_28/dropout/MulMul!max_pooling2d_45/MaxPool:output:0!dropout_28/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_28/dropout/Mul?
dropout_28/dropout/ShapeShape!max_pooling2d_45/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_28/dropout/Shape?
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_28/dropout/random_uniform/RandomUniform?
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_28/dropout/GreaterEqual/y?
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_28/dropout/GreaterEqual?
dropout_28/dropout/CastCast#dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_28/dropout/Cast?
dropout_28/dropout/Mul_1Muldropout_28/dropout/Mul:z:0dropout_28/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_28/dropout/Mul_1u
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_21/Const?
flatten_21/ReshapeReshapedropout_28/dropout/Mul_1:z:0flatten_21/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_21/Reshape?
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02 
dense_45/MatMul/ReadVariableOp?
dense_45/MatMulMatMulflatten_21/Reshape:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_45/MatMul?
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_45/BiasAdd/ReadVariableOp?
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_45/BiasAddt
dense_45/ReluReludense_45/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_45/Reluy
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_29/dropout/Const?
dropout_29/dropout/MulMuldense_45/Relu:activations:0!dropout_29/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_29/dropout/Mul
dropout_29/dropout/ShapeShapedense_45/Relu:activations:0*
T0*
_output_shapes
:2
dropout_29/dropout/Shape?
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_29/dropout/random_uniform/RandomUniform?
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_29/dropout/GreaterEqual/y?
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_29/dropout/GreaterEqual?
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_29/dropout/Cast?
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_29/dropout/Mul_1?
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_46/MatMul/ReadVariableOp?
dense_46/MatMulMatMuldropout_29/dropout/Mul_1:z:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_46/MatMul?
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_46/BiasAdd/ReadVariableOp?
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_46/BiasAdd|
dense_46/SigmoidSigmoiddense_46/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_46/Sigmoido
IdentityIdentitydense_46/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_263/BiasAdd/ReadVariableOp!^conv2d_263/Conv2D/ReadVariableOp"^conv2d_264/BiasAdd/ReadVariableOp!^conv2d_264/Conv2D/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2F
!conv2d_263/BiasAdd/ReadVariableOp!conv2d_263/BiasAdd/ReadVariableOp2D
 conv2d_263/Conv2D/ReadVariableOp conv2d_263/Conv2D/ReadVariableOp2F
!conv2d_264/BiasAdd/ReadVariableOp!conv2d_264/BiasAdd/ReadVariableOp2D
 conv2d_264/Conv2D/ReadVariableOp conv2d_264/Conv2D/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp:Y U
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
?
?
,__inference_conv2d_264_layer_call_fn_3468016

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
G__inference_conv2d_264_layer_call_and_return_conditional_losses_34673542
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
H__inference_resizing_14_layer_call_and_return_conditional_losses_3467317

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
?
%__inference_signature_wrapper_3467763
input_15
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
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
"__inference__wrapped_model_34672822
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
input_15:($
"
_output_shapes
::($
"
_output_shapes
:
?
H
,__inference_flatten_21_layer_call_fn_3468074

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
G__inference_flatten_21_layer_call_and_return_conditional_losses_34673792
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
?
e
G__inference_dropout_29_layer_call_and_return_conditional_losses_3468099

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
E__inference_dense_46_layer_call_and_return_conditional_losses_3468132

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
?;
?
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467809

inputs
normalization_14_sub_y
normalization_14_sqrt_xC
)conv2d_263_conv2d_readvariableop_resource: 8
*conv2d_263_biasadd_readvariableop_resource: C
)conv2d_264_conv2d_readvariableop_resource: @8
*conv2d_264_biasadd_readvariableop_resource:@;
'dense_45_matmul_readvariableop_resource:
?b?7
(dense_45_biasadd_readvariableop_resource:	?:
'dense_46_matmul_readvariableop_resource:	?6
(dense_46_biasadd_readvariableop_resource:
identity??!conv2d_263/BiasAdd/ReadVariableOp? conv2d_263/Conv2D/ReadVariableOp?!conv2d_264/BiasAdd/ReadVariableOp? conv2d_264/Conv2D/ReadVariableOp?dense_45/BiasAdd/ReadVariableOp?dense_45/MatMul/ReadVariableOp?dense_46/BiasAdd/ReadVariableOp?dense_46/MatMul/ReadVariableOp?
resizing_14/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        2
resizing_14/resize/size?
!resizing_14/resize/ResizeBilinearResizeBilinearinputs resizing_14/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(2#
!resizing_14/resize/ResizeBilinear?
normalization_14/subSub2resizing_14/resize/ResizeBilinear:resized_images:0normalization_14_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_14/sub|
normalization_14/SqrtSqrtnormalization_14_sqrt_x*
T0*"
_output_shapes
:2
normalization_14/Sqrt}
normalization_14/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_14/Maximum/y?
normalization_14/MaximumMaximumnormalization_14/Sqrt:y:0#normalization_14/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_14/Maximum?
normalization_14/truedivRealDivnormalization_14/sub:z:0normalization_14/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_14/truediv?
 conv2d_263/Conv2D/ReadVariableOpReadVariableOp)conv2d_263_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_263/Conv2D/ReadVariableOp?
conv2d_263/Conv2DConv2Dnormalization_14/truediv:z:0(conv2d_263/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_263/Conv2D?
!conv2d_263/BiasAdd/ReadVariableOpReadVariableOp*conv2d_263_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_263/BiasAdd/ReadVariableOp?
conv2d_263/BiasAddBiasAddconv2d_263/Conv2D:output:0)conv2d_263/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_263/BiasAdd?
conv2d_263/ReluReluconv2d_263/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_263/Relu?
 conv2d_264/Conv2D/ReadVariableOpReadVariableOp)conv2d_264_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_264/Conv2D/ReadVariableOp?
conv2d_264/Conv2DConv2Dconv2d_263/Relu:activations:0(conv2d_264/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_264/Conv2D?
!conv2d_264/BiasAdd/ReadVariableOpReadVariableOp*conv2d_264_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_264/BiasAdd/ReadVariableOp?
conv2d_264/BiasAddBiasAddconv2d_264/Conv2D:output:0)conv2d_264/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_264/BiasAdd?
conv2d_264/ReluReluconv2d_264/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_264/Relu?
max_pooling2d_45/MaxPoolMaxPoolconv2d_264/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_45/MaxPool?
dropout_28/IdentityIdentity!max_pooling2d_45/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_28/Identityu
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_21/Const?
flatten_21/ReshapeReshapedropout_28/Identity:output:0flatten_21/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_21/Reshape?
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource* 
_output_shapes
:
?b?*
dtype02 
dense_45/MatMul/ReadVariableOp?
dense_45/MatMulMatMulflatten_21/Reshape:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_45/MatMul?
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_45/BiasAdd/ReadVariableOp?
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_45/BiasAddt
dense_45/ReluReludense_45/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_45/Relu?
dropout_29/IdentityIdentitydense_45/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_29/Identity?
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_46/MatMul/ReadVariableOp?
dense_46/MatMulMatMuldropout_29/Identity:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_46/MatMul?
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_46/BiasAdd/ReadVariableOp?
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_46/BiasAdd|
dense_46/SigmoidSigmoiddense_46/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_46/Sigmoido
IdentityIdentitydense_46/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_263/BiasAdd/ReadVariableOp!^conv2d_263/Conv2D/ReadVariableOp"^conv2d_264/BiasAdd/ReadVariableOp!^conv2d_264/Conv2D/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2F
!conv2d_263/BiasAdd/ReadVariableOp!conv2d_263/BiasAdd/ReadVariableOp2D
 conv2d_263/Conv2D/ReadVariableOp conv2d_263/Conv2D/ReadVariableOp2F
!conv2d_264/BiasAdd/ReadVariableOp!conv2d_264/BiasAdd/ReadVariableOp2D
 conv2d_264/Conv2D/ReadVariableOp conv2d_264/Conv2D/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp:Y U
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
?
N
2__inference_max_pooling2d_45_layer_call_fn_3468031

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
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_34672912
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
G__inference_conv2d_264_layer_call_and_return_conditional_losses_3467354

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
?
?
E__inference_dense_46_layer_call_and_return_conditional_losses_3467416

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
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467612

inputs
normalization_14_sub_y
normalization_14_sqrt_x,
conv2d_263_3467587:  
conv2d_263_3467589: ,
conv2d_264_3467592: @ 
conv2d_264_3467594:@$
dense_45_3467600:
?b?
dense_45_3467602:	?#
dense_46_3467606:	?
dense_46_3467608:
identity??"conv2d_263/StatefulPartitionedCall?"conv2d_264/StatefulPartitionedCall? dense_45/StatefulPartitionedCall? dense_46/StatefulPartitionedCall?"dropout_28/StatefulPartitionedCall?"dropout_29/StatefulPartitionedCall?
resizing_14/PartitionedCallPartitionedCallinputs*
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
H__inference_resizing_14_layer_call_and_return_conditional_losses_34673172
resizing_14/PartitionedCall?
normalization_14/subSub$resizing_14/PartitionedCall:output:0normalization_14_sub_y*
T0*/
_output_shapes
:?????????  2
normalization_14/sub|
normalization_14/SqrtSqrtnormalization_14_sqrt_x*
T0*"
_output_shapes
:2
normalization_14/Sqrt}
normalization_14/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_14/Maximum/y?
normalization_14/MaximumMaximumnormalization_14/Sqrt:y:0#normalization_14/Maximum/y:output:0*
T0*"
_output_shapes
:2
normalization_14/Maximum?
normalization_14/truedivRealDivnormalization_14/sub:z:0normalization_14/Maximum:z:0*
T0*/
_output_shapes
:?????????  2
normalization_14/truediv?
"conv2d_263/StatefulPartitionedCallStatefulPartitionedCallnormalization_14/truediv:z:0conv2d_263_3467587conv2d_263_3467589*
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
G__inference_conv2d_263_layer_call_and_return_conditional_losses_34673372$
"conv2d_263/StatefulPartitionedCall?
"conv2d_264/StatefulPartitionedCallStatefulPartitionedCall+conv2d_263/StatefulPartitionedCall:output:0conv2d_264_3467592conv2d_264_3467594*
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
G__inference_conv2d_264_layer_call_and_return_conditional_losses_34673542$
"conv2d_264/StatefulPartitionedCall?
 max_pooling2d_45/PartitionedCallPartitionedCall+conv2d_264/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_34673642"
 max_pooling2d_45/PartitionedCall?
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
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
G__inference_dropout_28_layer_call_and_return_conditional_losses_34675152$
"dropout_28/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall+dropout_28/StatefulPartitionedCall:output:0*
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
G__inference_flatten_21_layer_call_and_return_conditional_losses_34673792
flatten_21/PartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_45_3467600dense_45_3467602*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_34673922"
 dense_45/StatefulPartitionedCall?
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
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
G__inference_dropout_29_layer_call_and_return_conditional_losses_34674762$
"dropout_29/StatefulPartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_46_3467606dense_46_3467608*
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
E__inference_dense_46_layer_call_and_return_conditional_losses_34674162"
 dense_46/StatefulPartitionedCall?
IdentityIdentity)dense_46/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_263/StatefulPartitionedCall#^conv2d_264/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????::: : : : : : : : 2H
"conv2d_263/StatefulPartitionedCall"conv2d_263/StatefulPartitionedCall2H
"conv2d_264/StatefulPartitionedCall"conv2d_264/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall:Y U
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
c
G__inference_flatten_21_layer_call_and_return_conditional_losses_3467379

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
?
H
,__inference_dropout_28_layer_call_fn_3468058

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
G__inference_dropout_28_layer_call_and_return_conditional_losses_34673712
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
?
?
/__inference_sequential_24_layer_call_fn_3467446
input_15
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
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
J__inference_sequential_24_layer_call_and_return_conditional_losses_34674232
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
input_15:($
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
input_15;
serving_default_input_15:0???????????<
dense_460
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
+:) 2conv2d_263/kernel
: 2conv2d_263/bias
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
+:) @2conv2d_264/kernel
:@2conv2d_264/bias
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
?b?2dense_45/kernel
:?2dense_45/bias
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
": 	?2dense_46/kernel
:2dense_46/bias
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
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467809
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467869
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467696
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467732?
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
"__inference__wrapped_model_3467282input_15"?
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
/__inference_sequential_24_layer_call_fn_3467446
/__inference_sequential_24_layer_call_fn_3467894
/__inference_sequential_24_layer_call_fn_3467919
/__inference_sequential_24_layer_call_fn_3467660?
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
H__inference_resizing_14_layer_call_and_return_conditional_losses_3467925?
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
-__inference_resizing_14_layer_call_fn_3467930?
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
__inference_adapt_step_3467976?
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
G__inference_conv2d_263_layer_call_and_return_conditional_losses_3467987?
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
,__inference_conv2d_263_layer_call_fn_3467996?
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
G__inference_conv2d_264_layer_call_and_return_conditional_losses_3468007?
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
,__inference_conv2d_264_layer_call_fn_3468016?
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
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3468021
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3468026?
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
2__inference_max_pooling2d_45_layer_call_fn_3468031
2__inference_max_pooling2d_45_layer_call_fn_3468036?
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
G__inference_dropout_28_layer_call_and_return_conditional_losses_3468041
G__inference_dropout_28_layer_call_and_return_conditional_losses_3468053?
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
,__inference_dropout_28_layer_call_fn_3468058
,__inference_dropout_28_layer_call_fn_3468063?
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
G__inference_flatten_21_layer_call_and_return_conditional_losses_3468069?
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
,__inference_flatten_21_layer_call_fn_3468074?
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
E__inference_dense_45_layer_call_and_return_conditional_losses_3468085?
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
*__inference_dense_45_layer_call_fn_3468094?
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
G__inference_dropout_29_layer_call_and_return_conditional_losses_3468099
G__inference_dropout_29_layer_call_and_return_conditional_losses_3468111?
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
,__inference_dropout_29_layer_call_fn_3468116
,__inference_dropout_29_layer_call_fn_3468121?
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
E__inference_dense_46_layer_call_and_return_conditional_losses_3468132?
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
*__inference_dense_46_layer_call_fn_3468141?
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
%__inference_signature_wrapper_3467763input_15"?
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
"__inference__wrapped_model_3467282???#$56?@;?8
1?.
,?)
input_15???????????
? "3?0
.
dense_46"?
dense_46?????????s
__inference_adapt_step_3467976QF?C
<?9
7?4"?
???????????IteratorSpec
? "
 ?
G__inference_conv2d_263_layer_call_and_return_conditional_losses_3467987l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_263_layer_call_fn_3467996_7?4
-?*
(?%
inputs?????????  
? " ?????????? ?
G__inference_conv2d_264_layer_call_and_return_conditional_losses_3468007l#$7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_264_layer_call_fn_3468016_#$7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_dense_45_layer_call_and_return_conditional_losses_3468085^560?-
&?#
!?
inputs??????????b
? "&?#
?
0??????????
? 
*__inference_dense_45_layer_call_fn_3468094Q560?-
&?#
!?
inputs??????????b
? "????????????
E__inference_dense_46_layer_call_and_return_conditional_losses_3468132]?@0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_46_layer_call_fn_3468141P?@0?-
&?#
!?
inputs??????????
? "???????????
G__inference_dropout_28_layer_call_and_return_conditional_losses_3468041l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
G__inference_dropout_28_layer_call_and_return_conditional_losses_3468053l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
,__inference_dropout_28_layer_call_fn_3468058_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
,__inference_dropout_28_layer_call_fn_3468063_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
G__inference_dropout_29_layer_call_and_return_conditional_losses_3468099^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
G__inference_dropout_29_layer_call_and_return_conditional_losses_3468111^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
,__inference_dropout_29_layer_call_fn_3468116Q4?1
*?'
!?
inputs??????????
p 
? "????????????
,__inference_dropout_29_layer_call_fn_3468121Q4?1
*?'
!?
inputs??????????
p
? "????????????
G__inference_flatten_21_layer_call_and_return_conditional_losses_3468069a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????b
? ?
,__inference_flatten_21_layer_call_fn_3468074T7?4
-?*
(?%
inputs?????????@
? "???????????b?
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3468021?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3468026h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
2__inference_max_pooling2d_45_layer_call_fn_3468031?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_45_layer_call_fn_3468036[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
H__inference_resizing_14_layer_call_and_return_conditional_losses_3467925j9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????  
? ?
-__inference_resizing_14_layer_call_fn_3467930]9?6
/?,
*?'
inputs???????????
? " ??????????  ?
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467696z??#$56?@C?@
9?6
,?)
input_15???????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467732z??#$56?@C?@
9?6
,?)
input_15???????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467809x??#$56?@A?>
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
J__inference_sequential_24_layer_call_and_return_conditional_losses_3467869x??#$56?@A?>
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
/__inference_sequential_24_layer_call_fn_3467446m??#$56?@C?@
9?6
,?)
input_15???????????
p 

 
? "???????????
/__inference_sequential_24_layer_call_fn_3467660m??#$56?@C?@
9?6
,?)
input_15???????????
p

 
? "???????????
/__inference_sequential_24_layer_call_fn_3467894k??#$56?@A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
/__inference_sequential_24_layer_call_fn_3467919k??#$56?@A?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_3467763???#$56?@G?D
? 
=?:
8
input_15,?)
input_15???????????"3?0
.
dense_46"?
dense_46?????????