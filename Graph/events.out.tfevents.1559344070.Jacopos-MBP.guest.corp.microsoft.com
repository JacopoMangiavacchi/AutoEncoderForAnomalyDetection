       �K"	  ��l<�Abrain.Event:2�hO�&     :�s�	�9��l<�A"��
j
input_1Placeholder*
dtype0*'
_output_shapes
:���������*
shape:���������
m
dense_1/random_uniform/shapeConst*
valueB"   �   *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *��H�*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *��H>*
dtype0*
_output_shapes
: 
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	�*
seed2��*
seed���)
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes
:	�

dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes
:	�
�
dense_1/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes
:	�*
	container *
shape:	�
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
|
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	�
\
dense_1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
z
dense_1/bias
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
r
dense_1/bias/readIdentitydense_1/bias*
_output_shapes	
:�*
T0*
_class
loc:@dense_1/bias
�
dense_1/MatMulMatMulinput_1dense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:����������*
transpose_a( 
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:����������
m
dense_2/random_uniform/shapeConst*
valueB"�   @   *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	�@*
seed2��*
seed���)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes
:	�@

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	�@
�
dense_2/kernel
VariableV2*
shape:	�@*
shared_name *
dtype0*
_output_shapes
:	�@*
	container 
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	�@
|
dense_2/kernel/readIdentitydense_2/kernel*
_output_shapes
:	�@*
T0*!
_class
loc:@dense_2/kernel
Z
dense_2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
x
dense_2/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@dense_2/bias
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:@
�
dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
T0*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( 
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
data_formatNHWC*'
_output_shapes
:���������@*
T0
W
dense_2/ReluReludense_2/BiasAdd*
T0*'
_output_shapes
:���������@
m
dense_3/random_uniform/shapeConst*
valueB"@       *
dtype0*
_output_shapes
:
_
dense_3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *  ��
_
dense_3/random_uniform/maxConst*
valueB
 *  �>*
dtype0*
_output_shapes
: 
�
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
T0*
dtype0*
_output_shapes

:@ *
seed2��j*
seed���)
z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
T0*
_output_shapes
: 
�
dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub*
T0*
_output_shapes

:@ 
~
dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min*
_output_shapes

:@ *
T0
�
dense_3/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes

:@ *
	container *
shape
:@ 
�
dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
_output_shapes

:@ 
{
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@ 
Z
dense_3/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_3/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
�
dense_3/bias/AssignAssigndense_3/biasdense_3/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense_3/bias
q
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes
: 
�
dense_3/MatMulMatMuldense_2/Reludense_3/kernel/read*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( *
T0
�
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
W
dense_3/ReluReludense_3/BiasAdd*'
_output_shapes
:��������� *
T0
m
dense_4/random_uniform/shapeConst*
valueB"    @   *
dtype0*
_output_shapes
:
_
dense_4/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *  ��
_
dense_4/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  �>
�
$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
dtype0*
_output_shapes

: @*
seed2�͋*
seed���)*
T0
z
dense_4/random_uniform/subSubdense_4/random_uniform/maxdense_4/random_uniform/min*
_output_shapes
: *
T0
�
dense_4/random_uniform/mulMul$dense_4/random_uniform/RandomUniformdense_4/random_uniform/sub*
_output_shapes

: @*
T0
~
dense_4/random_uniformAdddense_4/random_uniform/muldense_4/random_uniform/min*
T0*
_output_shapes

: @
�
dense_4/kernel
VariableV2*
shape
: @*
shared_name *
dtype0*
_output_shapes

: @*
	container 
�
dense_4/kernel/AssignAssigndense_4/kerneldense_4/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes

: @
{
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

: @
Z
dense_4/ConstConst*
dtype0*
_output_shapes
:@*
valueB@*    
x
dense_4/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
dense_4/bias/AssignAssigndense_4/biasdense_4/Const*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
:@
q
dense_4/bias/readIdentitydense_4/bias*
_output_shapes
:@*
T0*
_class
loc:@dense_4/bias
�
dense_4/MatMulMatMuldense_3/Reludense_4/kernel/read*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( *
T0
�
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
data_formatNHWC*'
_output_shapes
:���������@*
T0
W
dense_4/ReluReludense_4/BiasAdd*
T0*'
_output_shapes
:���������@
m
dense_5/random_uniform/shapeConst*
valueB"@   �   *
dtype0*
_output_shapes
:
_
dense_5/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
_
dense_5/random_uniform/maxConst*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
$dense_5/random_uniform/RandomUniformRandomUniformdense_5/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	@�*
seed2���*
seed���)
z
dense_5/random_uniform/subSubdense_5/random_uniform/maxdense_5/random_uniform/min*
T0*
_output_shapes
: 
�
dense_5/random_uniform/mulMul$dense_5/random_uniform/RandomUniformdense_5/random_uniform/sub*
T0*
_output_shapes
:	@�

dense_5/random_uniformAdddense_5/random_uniform/muldense_5/random_uniform/min*
T0*
_output_shapes
:	@�
�
dense_5/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes
:	@�*
	container *
shape:	@�
�
dense_5/kernel/AssignAssigndense_5/kerneldense_5/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
_output_shapes
:	@�
|
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	@�
\
dense_5/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
z
dense_5/bias
VariableV2*
shape:�*
shared_name *
dtype0*
_output_shapes	
:�*
	container 
�
dense_5/bias/AssignAssigndense_5/biasdense_5/Const*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(*
_output_shapes	
:�
r
dense_5/bias/readIdentitydense_5/bias*
T0*
_class
loc:@dense_5/bias*
_output_shapes	
:�
�
dense_5/MatMulMatMuldense_4/Reludense_5/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*
data_formatNHWC*(
_output_shapes
:����������*
T0
X
dense_5/ReluReludense_5/BiasAdd*
T0*(
_output_shapes
:����������
[
concatenate_1/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�
concatenate_1/concatConcatV2dense_1/Reludense_5/Reluconcatenate_1/concat/axis*
N*(
_output_shapes
:����������*

Tidx0*
T0
x
'reconstruction_cost_layer_1/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
w
&reconstruction_cost_layer_1/Slice/sizeConst*
valueB"�����   *
dtype0*
_output_shapes
:
�
!reconstruction_cost_layer_1/SliceSliceconcatenate_1/concat'reconstruction_cost_layer_1/Slice/begin&reconstruction_cost_layer_1/Slice/size*
Index0*
T0*(
_output_shapes
:����������
z
)reconstruction_cost_layer_1/Slice_1/beginConst*
valueB"    �   *
dtype0*
_output_shapes
:
y
(reconstruction_cost_layer_1/Slice_1/sizeConst*
valueB"��������*
dtype0*
_output_shapes
:
�
#reconstruction_cost_layer_1/Slice_1Sliceconcatenate_1/concat)reconstruction_cost_layer_1/Slice_1/begin(reconstruction_cost_layer_1/Slice_1/size*
Index0*
T0*(
_output_shapes
:����������
�
reconstruction_cost_layer_1/subSub!reconstruction_cost_layer_1/Slice#reconstruction_cost_layer_1/Slice_1*
T0*(
_output_shapes
:����������
�
"reconstruction_cost_layer_1/SquareSquarereconstruction_cost_layer_1/sub*(
_output_shapes
:����������*
T0
s
1reconstruction_cost_layer_1/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
reconstruction_cost_layer_1/SumSum"reconstruction_cost_layer_1/Square1reconstruction_cost_layer_1/Sum/reduction_indices*#
_output_shapes
:���������*
	keep_dims( *

Tidx0*
T0
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
dtype0	*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: *
use_locking(
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *��D;*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?
o
Adam/beta_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
valueB
 *w�?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
�
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/beta_2
j
Adam/beta_2/readIdentityAdam/beta_2*
T0*
_class
loc:@Adam/beta_2*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: *
use_locking(
g
Adam/decay/readIdentity
Adam/decay*
_output_shapes
: *
T0*
_class
loc:@Adam/decay
�
"reconstruction_cost_layer_1_targetPlaceholder*
dtype0*0
_output_shapes
:������������������*%
shape:������������������
�
*reconstruction_cost_layer_1_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
�
)loss/reconstruction_cost_layer_1_loss/subSubreconstruction_cost_layer_1/Sum"reconstruction_cost_layer_1_target*
T0*0
_output_shapes
:������������������
�
,loss/reconstruction_cost_layer_1_loss/SquareSquare)loss/reconstruction_cost_layer_1_loss/sub*
T0*0
_output_shapes
:������������������
�
<loss/reconstruction_cost_layer_1_loss/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
*loss/reconstruction_cost_layer_1_loss/MeanMean,loss/reconstruction_cost_layer_1_loss/Square<loss/reconstruction_cost_layer_1_loss/Mean/reduction_indices*
T0*#
_output_shapes
:���������*
	keep_dims( *

Tidx0
�
>loss/reconstruction_cost_layer_1_loss/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB 
�
,loss/reconstruction_cost_layer_1_loss/Mean_1Mean*loss/reconstruction_cost_layer_1_loss/Mean>loss/reconstruction_cost_layer_1_loss/Mean_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
�
)loss/reconstruction_cost_layer_1_loss/mulMul,loss/reconstruction_cost_layer_1_loss/Mean_1*reconstruction_cost_layer_1_sample_weights*#
_output_shapes
:���������*
T0
u
0loss/reconstruction_cost_layer_1_loss/NotEqual/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
.loss/reconstruction_cost_layer_1_loss/NotEqualNotEqual*reconstruction_cost_layer_1_sample_weights0loss/reconstruction_cost_layer_1_loss/NotEqual/y*#
_output_shapes
:���������*
T0
�
*loss/reconstruction_cost_layer_1_loss/CastCast.loss/reconstruction_cost_layer_1_loss/NotEqual*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
u
+loss/reconstruction_cost_layer_1_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
,loss/reconstruction_cost_layer_1_loss/Mean_2Mean*loss/reconstruction_cost_layer_1_loss/Cast+loss/reconstruction_cost_layer_1_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
-loss/reconstruction_cost_layer_1_loss/truedivRealDiv)loss/reconstruction_cost_layer_1_loss/mul,loss/reconstruction_cost_layer_1_loss/Mean_2*
T0*#
_output_shapes
:���������
w
-loss/reconstruction_cost_layer_1_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
,loss/reconstruction_cost_layer_1_loss/Mean_3Mean-loss/reconstruction_cost_layer_1_loss/truediv-loss/reconstruction_cost_layer_1_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
j
loss/mulMul
loss/mul/x,loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
: *
T0
�
metrics/mean_squared_error/subSubreconstruction_cost_layer_1/Sum"reconstruction_cost_layer_1_target*
T0*0
_output_shapes
:������������������
�
!metrics/mean_squared_error/SquareSquaremetrics/mean_squared_error/sub*
T0*0
_output_shapes
:������������������
|
1metrics/mean_squared_error/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/mean_squared_error/MeanMean!metrics/mean_squared_error/Square1metrics/mean_squared_error/Mean/reduction_indices*
T0*#
_output_shapes
:���������*
	keep_dims( *

Tidx0
j
 metrics/mean_squared_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
!metrics/mean_squared_error/Mean_1Meanmetrics/mean_squared_error/Mean metrics/mean_squared_error/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
�
!training/Adam/gradients/grad_ys_0Const*
valueB
 *  �?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
�
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@loss/mul
�
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fill,loss/reconstruction_cost_layer_1_loss/Mean_3*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
Wtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Wtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ShapeShape-loss/reconstruction_cost_layer_1_loss/truediv*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/TileTileQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ReshapeOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape_1Shape-loss/reconstruction_cost_layer_1_loss/truediv*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
:
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ConstConst*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
dtype0*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ProdProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape_1Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Const*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Const_1Const*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
dtype0*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Prod_1ProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape_2Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Const_1*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/MaximumMaximumPtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Prod_1Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Maximum/y*
_output_shapes
: *
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/floordivFloorDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Maximum*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
: 
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/CastCastRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/truedivRealDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/TileNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Cast*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*#
_output_shapes
:���������
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/ShapeShape)loss/reconstruction_cost_layer_1_loss/mul*
T0*
out_type0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*
_output_shapes
:
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Shape_1Const*
valueB *@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*
dtype0*
_output_shapes
: 
�
`training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsPtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/ShapeRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Shape_1*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*2
_output_shapes 
:���������:���������
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDivRealDivQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/truediv,loss/reconstruction_cost_layer_1_loss/Mean_2*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*#
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/SumSumRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv`training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/BroadcastGradientArgs*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/ReshapeReshapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/SumPtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Shape*#
_output_shapes
:���������*
T0*
Tshape0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/NegNeg)loss/reconstruction_cost_layer_1_loss/mul*#
_output_shapes
:���������*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv_1RealDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Neg,loss/reconstruction_cost_layer_1_loss/Mean_2*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*#
_output_shapes
:���������
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv_2RealDivTtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv_1,loss/reconstruction_cost_layer_1_loss/Mean_2*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*#
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/mulMulQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/truedivTtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv_2*#
_output_shapes
:���������*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Sum_1SumNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/mulbtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/BroadcastGradientArgs:1*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Reshape_1ReshapePtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Sum_1Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/ShapeShape,loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:*
T0*
out_type0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Shape_1Shape*reconstruction_cost_layer_1_sample_weights*
T0*
out_type0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*
_output_shapes
:
�
\training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/ShapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul
�
Jtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/MulMulRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Reshape*reconstruction_cost_layer_1_sample_weights*#
_output_shapes
:���������*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul
�
Jtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/SumSumJtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Mul\training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/BroadcastGradientArgs*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/ReshapeReshapeJtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/SumLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Shape*
T0*
Tshape0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*#
_output_shapes
:���������
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Mul_1Mul,loss/reconstruction_cost_layer_1_loss/Mean_1Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Reshape*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*#
_output_shapes
:���������
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Sum_1SumLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Mul_1^training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/BroadcastGradientArgs:1*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Reshape_1ReshapeLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Sum_1Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Shape_1*
T0*
Tshape0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*#
_output_shapes
:���������
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ShapeShape*loss/reconstruction_cost_layer_1_loss/Mean*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/SizeConst*
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/addAdd>loss/reconstruction_cost_layer_1_loss/Mean_1/reduction_indicesNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Size*
_output_shapes
: *
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/modFloorModMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/addNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Size*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: 
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_1Const*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
:
�
Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/range/startConst*
value	B : *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/range/deltaConst*
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/rangeRangeUtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/range/startNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/SizeUtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/range/delta*

Tidx0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/FillFillQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_1Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Fill/value*
T0*

index_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: 
�
Wtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/DynamicStitchDynamicStitchOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/rangeMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/modOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ShapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Fill*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
N*
_output_shapes
:
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum/yConst*
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/MaximumMaximumWtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/DynamicStitchStraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum/y*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/floordivFloorDivOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ShapeQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ReshapeReshapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/ReshapeWtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/DynamicStitch*
T0*
Tshape0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*#
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/TileTileQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ReshapeRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/floordiv*

Tmultiples0*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*#
_output_shapes
:���������
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_2Shape*loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_3Shape,loss/reconstruction_cost_layer_1_loss/Mean_1*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ProdProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_2Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Const*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Const_1Const*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Prod_1ProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_3Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Const_1*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum_1/yConst*
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum_1MaximumPtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Prod_1Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum_1/y*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: 
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/floordiv_1FloorDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ProdStraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum_1*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: 
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/CastCastTtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/floordiv_1*

SrcT0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
Truncate( *
_output_shapes
: *

DstT0
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/truedivRealDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/TileNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Cast*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*#
_output_shapes
:���������
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ShapeShape,loss/reconstruction_cost_layer_1_loss/Square*
T0*
out_type0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/SizeConst*
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Ktraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/addAdd<loss/reconstruction_cost_layer_1_loss/Mean/reduction_indicesLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Size*
_output_shapes
: *
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean
�
Ktraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/modFloorModKtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/addLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Size*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: 
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/range/startConst*
value	B : *=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/rangeRangeStraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/range/startLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/SizeStraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/range/delta*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:*

Tidx0
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Fill/valueConst*
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/FillFillOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_1Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Fill/value*
T0*

index_type0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: 
�
Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/DynamicStitchDynamicStitchMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/rangeKtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/modMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ShapeLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Fill*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
N*
_output_shapes
:
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum/yConst*
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/MaximumMaximumUtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/DynamicStitchQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum/y*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/floordivFloorDivMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ShapeOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum*
_output_shapes
:*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ReshapeReshapeQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/truedivUtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*0
_output_shapes
:������������������
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/TileTileOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ReshapePtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/floordiv*

Tmultiples0*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*0
_output_shapes
:������������������
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_2Shape,loss/reconstruction_cost_layer_1_loss/Square*
T0*
out_type0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_3Shape*loss/reconstruction_cost_layer_1_loss/Mean*
T0*
out_type0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ConstConst*
valueB: *=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
:
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ProdProdOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_2Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Const*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Prod_1ProdOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_3Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Const_1*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum_1/yConst*
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum_1MaximumNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Prod_1Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum_1/y*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: 
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/floordiv_1FloorDivLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum_1*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: 
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/CastCastRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/floordiv_1*

SrcT0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/truedivRealDivLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/TileLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Cast*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*0
_output_shapes
:������������������
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/ConstConstP^training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/truediv*
valueB
 *   @*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Square*
dtype0*
_output_shapes
: 
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/MulMul)loss/reconstruction_cost_layer_1_loss/subOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Const*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Square*0
_output_shapes
:������������������
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Mul_1MulOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/truedivMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Mul*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Square*0
_output_shapes
:������������������
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/ShapeShapereconstruction_cost_layer_1/Sum*
T0*
out_type0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Shape_1Shape"reconstruction_cost_layer_1_target*
_output_shapes
:*
T0*
out_type0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub
�
\training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/ShapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Shape_1*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*2
_output_shapes 
:���������:���������
�
Jtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/SumSumOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Mul_1\training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/BroadcastGradientArgs*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/ReshapeReshapeJtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/SumLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Shape*
T0*
Tshape0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*#
_output_shapes
:���������
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Sum_1SumOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Mul_1^training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub
�
Jtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/NegNegLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Sum_1*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/NegNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Shape_1*
T0*
Tshape0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*0
_output_shapes
:������������������
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ShapeShape"reconstruction_cost_layer_1/Square*
T0*
out_type0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
_output_shapes
:
�
Atraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/SizeConst*
value	B :*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
@training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/addAdd1reconstruction_cost_layer_1/Sum/reduction_indicesAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Size*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
_output_shapes
: 
�
@training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/modFloorMod@training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/addAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Size*
_output_shapes
: *
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Shape_1Const*
valueB *2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range/startConst*
value	B : *2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range/deltaConst*
value	B :*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/rangeRangeHtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range/startAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/SizeHtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum
�
Gtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Fill/valueConst*
value	B :*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Atraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/FillFillDtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Shape_1Gtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Fill/value*
T0*

index_type0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
_output_shapes
: 
�
Jtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/DynamicStitchDynamicStitchBtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range@training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/modBtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ShapeAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Fill*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
N*
_output_shapes
:
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/MaximumMaximumJtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/DynamicStitchFtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Maximum/y*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
_output_shapes
:
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/floordivFloorDivBtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ShapeDtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Maximum*
_output_shapes
:*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ReshapeReshapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/ReshapeJtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/DynamicStitch*0
_output_shapes
:������������������*
T0*
Tshape0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum
�
Atraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/TileTileDtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ReshapeEtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/floordiv*

Tmultiples0*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*(
_output_shapes
:����������
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/ConstConstB^training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Tile*
valueB
 *   @*5
_class+
)'loc:@reconstruction_cost_layer_1/Square*
dtype0*
_output_shapes
: 
�
Ctraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/MulMulreconstruction_cost_layer_1/subEtraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Const*
T0*5
_class+
)'loc:@reconstruction_cost_layer_1/Square*(
_output_shapes
:����������
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Mul_1MulAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/TileCtraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Mul*
T0*5
_class+
)'loc:@reconstruction_cost_layer_1/Square*(
_output_shapes
:����������
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/ShapeShape!reconstruction_cost_layer_1/Slice*
_output_shapes
:*
T0*
out_type0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Shape_1Shape#reconstruction_cost_layer_1/Slice_1*
T0*
out_type0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*
_output_shapes
:
�
Rtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/ShapeDtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub
�
@training/Adam/gradients/reconstruction_cost_layer_1/sub_grad/SumSumEtraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Mul_1Rtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/BroadcastGradientArgs*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/ReshapeReshape@training/Adam/gradients/reconstruction_cost_layer_1/sub_grad/SumBtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*(
_output_shapes
:����������
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Sum_1SumEtraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Mul_1Ttraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*
_output_shapes
:
�
@training/Adam/gradients/reconstruction_cost_layer_1/sub_grad/NegNegBtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Sum_1*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*
_output_shapes
:
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Reshape_1Reshape@training/Adam/gradients/reconstruction_cost_layer_1/sub_grad/NegDtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*(
_output_shapes
:����������
�
Ctraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/RankConst*
value	B :*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
dtype0*
_output_shapes
: 
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/ShapeShape!reconstruction_cost_layer_1/Slice*
T0*
out_type0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
_output_shapes
:
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stack/1Const*
value	B :*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
dtype0*
_output_shapes
: 
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stackPackCtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/RankFtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stack/1*
T0*

axis *4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
N*
_output_shapes
:
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/ReshapeReshape'reconstruction_cost_layer_1/Slice/beginDtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stack*
T0*
Tshape0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
_output_shapes

:
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Shape_1Shapeconcatenate_1/concat*
T0*
out_type0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
_output_shapes
:
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/subSubFtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Shape_1Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Shape*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
_output_shapes
:
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/sub_1SubBtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/sub'reconstruction_cost_layer_1/Slice/begin*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
_output_shapes
:
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Reshape_1ReshapeDtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/sub_1Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stack*
T0*
Tshape0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
_output_shapes

:
�
Jtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/concat/axisConst*
value	B :*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
dtype0*
_output_shapes
: 
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/concatConcatV2Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/ReshapeHtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Reshape_1Jtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/concat/axis*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
N*
_output_shapes

:*

Tidx0
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/PadPadDtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/ReshapeEtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/concat*
	Tpaddings0*(
_output_shapes
:����������*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/ShapeShape#reconstruction_cost_layer_1/Slice_1*
T0*
out_type0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes
:
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stack/1Const*
value	B :*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
dtype0*
_output_shapes
: 
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stackPackEtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/RankHtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stack/1*
N*
_output_shapes
:*
T0*

axis *6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/ReshapeReshape)reconstruction_cost_layer_1/Slice_1/beginFtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stack*
T0*
Tshape0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes

:
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Shape_1Shapeconcatenate_1/concat*
T0*
out_type0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes
:
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/subSubHtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Shape_1Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Shape*
_output_shapes
:*
T0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/sub_1SubDtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/sub)reconstruction_cost_layer_1/Slice_1/begin*
T0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes
:
�
Jtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Reshape_1ReshapeFtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/sub_1Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stack*
T0*
Tshape0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes

:
�
Ltraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/concat/axisConst*
value	B :*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
dtype0*
_output_shapes
: 
�
Gtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/concatConcatV2Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/ReshapeJtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Reshape_1Ltraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/concat/axis*
T0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
N*
_output_shapes

:*

Tidx0
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/PadPadFtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Reshape_1Gtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/concat*
T0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
	Tpaddings0*(
_output_shapes
:����������
�
training/Adam/gradients/AddNAddNBtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/PadDtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Pad*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
N*(
_output_shapes
:����������
�
6training/Adam/gradients/concatenate_1/concat_grad/RankConst*
value	B :*'
_class
loc:@concatenate_1/concat*
dtype0*
_output_shapes
: 
�
5training/Adam/gradients/concatenate_1/concat_grad/modFloorModconcatenate_1/concat/axis6training/Adam/gradients/concatenate_1/concat_grad/Rank*
T0*'
_class
loc:@concatenate_1/concat*
_output_shapes
: 
�
7training/Adam/gradients/concatenate_1/concat_grad/ShapeShapedense_1/Relu*
T0*
out_type0*'
_class
loc:@concatenate_1/concat*
_output_shapes
:
�
8training/Adam/gradients/concatenate_1/concat_grad/ShapeNShapeNdense_1/Reludense_5/Relu*
T0*
out_type0*'
_class
loc:@concatenate_1/concat*
N* 
_output_shapes
::
�
>training/Adam/gradients/concatenate_1/concat_grad/ConcatOffsetConcatOffset5training/Adam/gradients/concatenate_1/concat_grad/mod8training/Adam/gradients/concatenate_1/concat_grad/ShapeN:training/Adam/gradients/concatenate_1/concat_grad/ShapeN:1*'
_class
loc:@concatenate_1/concat*
N* 
_output_shapes
::
�
7training/Adam/gradients/concatenate_1/concat_grad/SliceSlicetraining/Adam/gradients/AddN>training/Adam/gradients/concatenate_1/concat_grad/ConcatOffset8training/Adam/gradients/concatenate_1/concat_grad/ShapeN*
T0*
Index0*'
_class
loc:@concatenate_1/concat*(
_output_shapes
:����������
�
9training/Adam/gradients/concatenate_1/concat_grad/Slice_1Slicetraining/Adam/gradients/AddN@training/Adam/gradients/concatenate_1/concat_grad/ConcatOffset:1:training/Adam/gradients/concatenate_1/concat_grad/ShapeN:1*(
_output_shapes
:����������*
T0*
Index0*'
_class
loc:@concatenate_1/concat
�
2training/Adam/gradients/dense_5/Relu_grad/ReluGradReluGrad9training/Adam/gradients/concatenate_1/concat_grad/Slice_1dense_5/Relu*
T0*
_class
loc:@dense_5/Relu*(
_output_shapes
:����������
�
8training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_5/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_5/BiasAdd*
data_formatNHWC*
_output_shapes	
:�
�
2training/Adam/gradients/dense_5/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_5/Relu_grad/ReluGraddense_5/kernel/read*
transpose_b(*
T0*!
_class
loc:@dense_5/MatMul*'
_output_shapes
:���������@*
transpose_a( 
�
4training/Adam/gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/Relu2training/Adam/gradients/dense_5/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_5/MatMul*
_output_shapes
:	@�*
transpose_a(*
transpose_b( 
�
2training/Adam/gradients/dense_4/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_5/MatMul_grad/MatMuldense_4/Relu*
T0*
_class
loc:@dense_4/Relu*'
_output_shapes
:���������@
�
8training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_4/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_4/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
2training/Adam/gradients/dense_4/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_4/Relu_grad/ReluGraddense_4/kernel/read*
T0*!
_class
loc:@dense_4/MatMul*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(
�
4training/Adam/gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/Relu2training/Adam/gradients/dense_4/Relu_grad/ReluGrad*
transpose_b( *
T0*!
_class
loc:@dense_4/MatMul*
_output_shapes

: @*
transpose_a(
�
2training/Adam/gradients/dense_3/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_4/MatMul_grad/MatMuldense_3/Relu*
T0*
_class
loc:@dense_3/Relu*'
_output_shapes
:��������� 
�
8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_3/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_3/BiasAdd*
data_formatNHWC*
_output_shapes
: 
�
2training/Adam/gradients/dense_3/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_3/Relu_grad/ReluGraddense_3/kernel/read*
T0*!
_class
loc:@dense_3/MatMul*'
_output_shapes
:���������@*
transpose_a( *
transpose_b(
�
4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Relu2training/Adam/gradients/dense_3/Relu_grad/ReluGrad*
_output_shapes

:@ *
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_3/MatMul
�
2training/Adam/gradients/dense_2/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_3/MatMul_grad/MatMuldense_2/Relu*'
_output_shapes
:���������@*
T0*
_class
loc:@dense_2/Relu
�
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0*"
_class
loc:@dense_2/BiasAdd
�
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Relu_grad/ReluGraddense_2/kernel/read*
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul*(
_output_shapes
:����������*
transpose_a( 
�
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*
_output_shapes
:	�@*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul
�
training/Adam/gradients/AddN_1AddN7training/Adam/gradients/concatenate_1/concat_grad/Slice2training/Adam/gradients/dense_2/MatMul_grad/MatMul*
T0*'
_class
loc:@concatenate_1/concat*
N*(
_output_shapes
:����������
�
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_1dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*(
_output_shapes
:����������
�
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes	
:�
�
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul*'
_output_shapes
:���������*
transpose_a( 
�
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMulinput_12training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul*
_output_shapes
:	�*
transpose_a(
_
training/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
�
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
_output_shapes
: *
use_locking( *
T0	*"
_class
loc:@Adam/iterations
p
training/Adam/CastCastAdam/iterations/read*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
X
training/Adam/add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
_output_shapes
: *
T0
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  �
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
_output_shapes
: *
T0
�
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
T0*
_output_shapes
: 
t
#training/Adam/zeros/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*
T0*

index_type0*
_output_shapes
:	�
�
training/Adam/Variable
VariableV2*
shape:	�*
shared_name *
dtype0*
_output_shapes
:	�*
	container 
�
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	�
�
training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*
_output_shapes
:	�
d
training/Adam/zeros_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_1
VariableV2*
shape:�*
shared_name *
dtype0*
_output_shapes	
:�*
	container 
�
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes	
:�
v
%training/Adam/zeros_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"�   @   
`
training/Adam/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training/Adam/Variable_2
VariableV2*
shape:	�@*
shared_name *
dtype0*
_output_shapes
:	�@*
	container 
�
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	�@*
use_locking(
�
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
:	�@
b
training/Adam/zeros_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_3
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
�
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3
�
training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
T0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
:@
v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"@       *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*
_output_shapes

:@ 
�
training/Adam/Variable_4
VariableV2*
dtype0*
_output_shapes

:@ *
	container *
shape
:@ *
shared_name 
�
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:@ *
use_locking(
�
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes

:@ 
b
training/Adam/zeros_5Const*
valueB *    *
dtype0*
_output_shapes
: 
�
training/Adam/Variable_5
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
�
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
�
training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 
v
%training/Adam/zeros_6/shape_as_tensorConst*
valueB"    @   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0*
_output_shapes

: @
�
training/Adam/Variable_6
VariableV2*
dtype0*
_output_shapes

: @*
	container *
shape
: @*
shared_name 
�
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

: @
�
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes

: @
b
training/Adam/zeros_7Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_7
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
�
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:@*
use_locking(
�
training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
:@
v
%training/Adam/zeros_8/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes
:	@�
�
training/Adam/Variable_8
VariableV2*
shape:	@�*
shared_name *
dtype0*
_output_shapes
:	@�*
	container 
�
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:	@�
�
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
:	@�
d
training/Adam/zeros_9Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_9
VariableV2*
shared_name *
dtype0*
_output_shapes	
:�*
	container *
shape:�
�
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes	
:�
w
&training/Adam/zeros_10/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   �   
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes
:	�
�
training/Adam/Variable_10
VariableV2*
dtype0*
_output_shapes
:	�*
	container *
shape:	�*
shared_name 
�
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:	�
�
training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
T0*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
:	�
e
training/Adam/zeros_11Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_11
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11
�
training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes	
:�
w
&training/Adam/zeros_12/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
_output_shapes
:	�@*
T0*

index_type0
�
training/Adam/Variable_12
VariableV2*
shape:	�@*
shared_name *
dtype0*
_output_shapes
:	�@*
	container 
�
 training/Adam/Variable_12/AssignAssigntraining/Adam/Variable_12training/Adam/zeros_12*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*
_output_shapes
:	�@*
use_locking(
�
training/Adam/Variable_12/readIdentitytraining/Adam/Variable_12*
T0*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
:	�@
c
training/Adam/zeros_13Const*
dtype0*
_output_shapes
:@*
valueB@*    
�
training/Adam/Variable_13
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
 training/Adam/Variable_13/AssignAssigntraining/Adam/Variable_13training/Adam/zeros_13*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(*
_output_shapes
:@
�
training/Adam/Variable_13/readIdentitytraining/Adam/Variable_13*
T0*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
:@
w
&training/Adam/zeros_14/shape_as_tensorConst*
valueB"@       *
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*

index_type0*
_output_shapes

:@ 
�
training/Adam/Variable_14
VariableV2*
dtype0*
_output_shapes

:@ *
	container *
shape
:@ *
shared_name 
�
 training/Adam/Variable_14/AssignAssigntraining/Adam/Variable_14training/Adam/zeros_14*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes

:@ 
�
training/Adam/Variable_14/readIdentitytraining/Adam/Variable_14*
_output_shapes

:@ *
T0*,
_class"
 loc:@training/Adam/Variable_14
c
training/Adam/zeros_15Const*
valueB *    *
dtype0*
_output_shapes
: 
�
training/Adam/Variable_15
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
 training/Adam/Variable_15/AssignAssigntraining/Adam/Variable_15training/Adam/zeros_15*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
: 
�
training/Adam/Variable_15/readIdentitytraining/Adam/Variable_15*
T0*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
: 
w
&training/Adam/zeros_16/shape_as_tensorConst*
valueB"    @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
T0*

index_type0*
_output_shapes

: @
�
training/Adam/Variable_16
VariableV2*
shared_name *
dtype0*
_output_shapes

: @*
	container *
shape
: @
�
 training/Adam/Variable_16/AssignAssigntraining/Adam/Variable_16training/Adam/zeros_16*
validate_shape(*
_output_shapes

: @*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16
�
training/Adam/Variable_16/readIdentitytraining/Adam/Variable_16*
T0*,
_class"
 loc:@training/Adam/Variable_16*
_output_shapes

: @
c
training/Adam/zeros_17Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_17
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
 training/Adam/Variable_17/AssignAssigntraining/Adam/Variable_17training/Adam/zeros_17*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
:@*
use_locking(
�
training/Adam/Variable_17/readIdentitytraining/Adam/Variable_17*
_output_shapes
:@*
T0*,
_class"
 loc:@training/Adam/Variable_17
w
&training/Adam/zeros_18/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
_output_shapes
:	@�*
T0*

index_type0
�
training/Adam/Variable_18
VariableV2*
dtype0*
_output_shapes
:	@�*
	container *
shape:	@�*
shared_name 
�
 training/Adam/Variable_18/AssignAssigntraining/Adam/Variable_18training/Adam/zeros_18*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes
:	@�*
use_locking(
�
training/Adam/Variable_18/readIdentitytraining/Adam/Variable_18*
T0*,
_class"
 loc:@training/Adam/Variable_18*
_output_shapes
:	@�
e
training/Adam/zeros_19Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_19
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
 training/Adam/Variable_19/AssignAssigntraining/Adam/Variable_19training/Adam/zeros_19*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Variable_19/readIdentitytraining/Adam/Variable_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes	
:�
w
&training/Adam/zeros_20/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
_output_shapes
:	�*
T0*

index_type0
�
training/Adam/Variable_20
VariableV2*
shared_name *
dtype0*
_output_shapes
:	�*
	container *
shape:	�
�
 training/Adam/Variable_20/AssignAssigntraining/Adam/Variable_20training/Adam/zeros_20*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20
�
training/Adam/Variable_20/readIdentitytraining/Adam/Variable_20*
_output_shapes
:	�*
T0*,
_class"
 loc:@training/Adam/Variable_20
e
training/Adam/zeros_21Const*
dtype0*
_output_shapes	
:�*
valueB�*    
�
training/Adam/Variable_21
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
 training/Adam/Variable_21/AssignAssigntraining/Adam/Variable_21training/Adam/zeros_21*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Variable_21/readIdentitytraining/Adam/Variable_21*
T0*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes	
:�
w
&training/Adam/zeros_22/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training/Adam/Variable_22
VariableV2*
dtype0*
_output_shapes
:	�@*
	container *
shape:	�@*
shared_name 
�
 training/Adam/Variable_22/AssignAssigntraining/Adam/Variable_22training/Adam/zeros_22*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes
:	�@
�
training/Adam/Variable_22/readIdentitytraining/Adam/Variable_22*
T0*,
_class"
 loc:@training/Adam/Variable_22*
_output_shapes
:	�@
c
training/Adam/zeros_23Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_23
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
 training/Adam/Variable_23/AssignAssigntraining/Adam/Variable_23training/Adam/zeros_23*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes
:@
�
training/Adam/Variable_23/readIdentitytraining/Adam/Variable_23*
T0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes
:@
w
&training/Adam/zeros_24/shape_as_tensorConst*
valueB"@       *
dtype0*
_output_shapes
:
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*

index_type0*
_output_shapes

:@ 
�
training/Adam/Variable_24
VariableV2*
shared_name *
dtype0*
_output_shapes

:@ *
	container *
shape
:@ 
�
 training/Adam/Variable_24/AssignAssigntraining/Adam/Variable_24training/Adam/zeros_24*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*
_output_shapes

:@ 
�
training/Adam/Variable_24/readIdentitytraining/Adam/Variable_24*
_output_shapes

:@ *
T0*,
_class"
 loc:@training/Adam/Variable_24
c
training/Adam/zeros_25Const*
valueB *    *
dtype0*
_output_shapes
: 
�
training/Adam/Variable_25
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
 training/Adam/Variable_25/AssignAssigntraining/Adam/Variable_25training/Adam/zeros_25*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes
: 
�
training/Adam/Variable_25/readIdentitytraining/Adam/Variable_25*
T0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes
: 
w
&training/Adam/zeros_26/shape_as_tensorConst*
valueB"    @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_26/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*
_output_shapes

: @*
T0*

index_type0
�
training/Adam/Variable_26
VariableV2*
dtype0*
_output_shapes

: @*
	container *
shape
: @*
shared_name 
�
 training/Adam/Variable_26/AssignAssigntraining/Adam/Variable_26training/Adam/zeros_26*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes

: @
�
training/Adam/Variable_26/readIdentitytraining/Adam/Variable_26*
T0*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes

: @
c
training/Adam/zeros_27Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_27
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
�
 training/Adam/Variable_27/AssignAssigntraining/Adam/Variable_27training/Adam/zeros_27*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:@*
use_locking(
�
training/Adam/Variable_27/readIdentitytraining/Adam/Variable_27*
_output_shapes
:@*
T0*,
_class"
 loc:@training/Adam/Variable_27
w
&training/Adam/zeros_28/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_28/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
_output_shapes
:	@�*
T0*

index_type0
�
training/Adam/Variable_28
VariableV2*
shape:	@�*
shared_name *
dtype0*
_output_shapes
:	@�*
	container 
�
 training/Adam/Variable_28/AssignAssigntraining/Adam/Variable_28training/Adam/zeros_28*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(*
_output_shapes
:	@�*
use_locking(
�
training/Adam/Variable_28/readIdentitytraining/Adam/Variable_28*
_output_shapes
:	@�*
T0*,
_class"
 loc:@training/Adam/Variable_28
e
training/Adam/zeros_29Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_29
VariableV2*
shape:�*
shared_name *
dtype0*
_output_shapes	
:�*
	container 
�
 training/Adam/Variable_29/AssignAssigntraining/Adam/Variable_29training/Adam/zeros_29*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_29
�
training/Adam/Variable_29/readIdentitytraining/Adam/Variable_29*
_output_shapes	
:�*
T0*,
_class"
 loc:@training/Adam/Variable_29
s
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes
:	�
Z
training/Adam/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�
n
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes
:	�
v
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_10/read*
T0*
_output_shapes
:	�
Z
training/Adam/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 
~
training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes
:	�*
T0
o
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes
:	�
n
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
_output_shapes
:	�*
T0

training/Adam/MaximumMaximumtraining/Adam/Variable_20/readtraining/Adam/add_2*
T0*
_output_shapes
:	�
l
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes
:	�
Z
training/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_3Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/Maximumtraining/Adam/Const_3*
T0*
_output_shapes
:	�
�
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
T0*
_output_shapes
:	�
e
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes
:	�
Z
training/Adam/add_3/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
q
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes
:	�
v
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes
:	�
r
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1*
_output_shapes
:	�*
T0
�
training/Adam/AssignAssigntraining/Adam/Variable_20training/Adam/Maximum*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*
_output_shapes
:	�
�
training/Adam/Assign_1Assigntraining/Adam/Variabletraining/Adam/add_1*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	�
�
training/Adam/Assign_2Assigntraining/Adam/Variable_10training/Adam/add_2*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:	�
�
training/Adam/Assign_3Assigndense_1/kerneltraining/Adam/sub_4*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	�
q
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
_output_shapes	
:�*
T0
Z
training/Adam/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
j
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes	
:�
r
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_11/read*
_output_shapes	
:�*
T0
Z
training/Adam/sub_6/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 
�
training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
m
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes	
:�
j
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
_output_shapes	
:�*
T0
}
training/Adam/Maximum_1Maximumtraining/Adam/Variable_21/readtraining/Adam/add_5*
T0*
_output_shapes	
:�
i
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes	
:�*
T0
Z
training/Adam/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_5Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/Maximum_1training/Adam/Const_5*
T0*
_output_shapes	
:�
�
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
_output_shapes	
:�*
T0
a
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes	
:�
Z
training/Adam/add_6/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
m
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes	
:�
s
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes	
:�*
T0
l
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
_output_shapes	
:�*
T0
�
training/Adam/Assign_4Assigntraining/Adam/Variable_21training/Adam/Maximum_1*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Assign_5Assigntraining/Adam/Variable_1training/Adam/add_4*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1
�
training/Adam/Assign_6Assigntraining/Adam/Variable_11training/Adam/add_5*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
training/Adam/Assign_7Assigndense_1/biastraining/Adam/sub_7*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*
_class
loc:@dense_1/bias
v
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0*
_output_shapes
:	�@
Z
training/Adam/sub_8/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�@
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes
:	�@*
T0
w
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_12/read*
T0*
_output_shapes
:	�@
Z
training/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 
�
training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�@
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:	�@
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes
:	�@*
T0
�
training/Adam/Maximum_2Maximumtraining/Adam/Variable_22/readtraining/Adam/add_8*
T0*
_output_shapes
:	�@
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
_output_shapes
:	�@*
T0
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/Maximum_2training/Adam/Const_7*
_output_shapes
:	�@*
T0
�
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*
_output_shapes
:	�@
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:	�@
Z
training/Adam/add_9/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:	�@
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes
:	�@*
T0
s
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
T0*
_output_shapes
:	�@
�
training/Adam/Assign_8Assigntraining/Adam/Variable_22training/Adam/Maximum_2*
validate_shape(*
_output_shapes
:	�@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22
�
training/Adam/Assign_9Assigntraining/Adam/Variable_2training/Adam/add_7*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	�@*
use_locking(
�
training/Adam/Assign_10Assigntraining/Adam/Variable_12training/Adam/add_8*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*
_output_shapes
:	�@
�
training/Adam/Assign_11Assigndense_2/kerneltraining/Adam/sub_10*
validate_shape(*
_output_shapes
:	�@*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
:@
[
training/Adam/sub_11/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:@
r
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_13/read*
_output_shapes
:@*
T0
[
training/Adam/sub_12/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
_output_shapes
:@*
T0
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes
:@*
T0
}
training/Adam/Maximum_3Maximumtraining/Adam/Variable_23/readtraining/Adam/add_11*
T0*
_output_shapes
:@
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:@
Z
training/Adam/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_9Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/Maximum_3training/Adam/Const_9*
T0*
_output_shapes
:@
�
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes
:@
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:@
[
training/Adam/add_12/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:@
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:@
l
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
_output_shapes
:@*
T0
�
training/Adam/Assign_12Assigntraining/Adam/Variable_23training/Adam/Maximum_3*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23
�
training/Adam/Assign_13Assigntraining/Adam/Variable_3training/Adam/add_10*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:@
�
training/Adam/Assign_14Assigntraining/Adam/Variable_13training/Adam/add_11*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13
�
training/Adam/Assign_15Assigndense_2/biastraining/Adam/sub_13*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@dense_2/bias
u
training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*
T0*
_output_shapes

:@ 
[
training/Adam/sub_14/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_22Multraining/Adam/sub_144training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@ 
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes

:@ 
v
training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_14/read*
T0*
_output_shapes

:@ 
[
training/Adam/sub_15/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_4Square4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@ 
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes

:@ 
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes

:@ 
�
training/Adam/Maximum_4Maximumtraining/Adam/Variable_24/readtraining/Adam/add_14*
T0*
_output_shapes

:@ 
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes

:@ 
[
training/Adam/Const_10Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_11Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/Maximum_4training/Adam/Const_11*
T0*
_output_shapes

:@ 
�
training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_10*
T0*
_output_shapes

:@ 
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes

:@ 
[
training/Adam/add_15/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:@ 
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*
_output_shapes

:@ 
r
training/Adam/sub_16Subdense_3/kernel/readtraining/Adam/truediv_5*
T0*
_output_shapes

:@ 
�
training/Adam/Assign_16Assigntraining/Adam/Variable_24training/Adam/Maximum_4*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*
_output_shapes

:@ *
use_locking(
�
training/Adam/Assign_17Assigntraining/Adam/Variable_4training/Adam/add_13*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:@ 
�
training/Adam/Assign_18Assigntraining/Adam/Variable_14training/Adam/add_14*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes

:@ 
�
training/Adam/Assign_19Assigndense_3/kerneltraining/Adam/sub_16*
validate_shape(*
_output_shapes

:@ *
use_locking(*
T0*!
_class
loc:@dense_3/kernel
q
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
T0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_27Multraining/Adam/sub_178training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
: 
r
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_15/read*
T0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_5Square8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes
: 
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
: 
}
training/Adam/Maximum_5Maximumtraining/Adam/Variable_25/readtraining/Adam/add_17*
_output_shapes
: *
T0
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes
: 
[
training/Adam/Const_12Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_13Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/Maximum_5training/Adam/Const_13*
T0*
_output_shapes
: 
�
training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_12*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
: 
[
training/Adam/add_18/yConst*
dtype0*
_output_shapes
: *
valueB
 *��8
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
_output_shapes
: *
T0
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes
: 
l
training/Adam/sub_19Subdense_3/bias/readtraining/Adam/truediv_6*
T0*
_output_shapes
: 
�
training/Adam/Assign_20Assigntraining/Adam/Variable_25training/Adam/Maximum_5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25
�
training/Adam/Assign_21Assigntraining/Adam/Variable_5training/Adam/add_16*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5
�
training/Adam/Assign_22Assigntraining/Adam/Variable_15training/Adam/add_17*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
: 
�
training/Adam/Assign_23Assigndense_3/biastraining/Adam/sub_19*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_31MulAdam/beta_1/readtraining/Adam/Variable_6/read*
T0*
_output_shapes

: @
[
training/Adam/sub_20/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_20Subtraining/Adam/sub_20/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_32Multraining/Adam/sub_204training/Adam/gradients/dense_4/MatMul_grad/MatMul_1*
T0*
_output_shapes

: @
p
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*
_output_shapes

: @
v
training/Adam/mul_33MulAdam/beta_2/readtraining/Adam/Variable_16/read*
T0*
_output_shapes

: @
[
training/Adam/sub_21/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_21Subtraining/Adam/sub_21/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_6Square4training/Adam/gradients/dense_4/MatMul_grad/MatMul_1*
T0*
_output_shapes

: @
r
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*
_output_shapes

: @
p
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*
_output_shapes

: @
�
training/Adam/Maximum_6Maximumtraining/Adam/Variable_26/readtraining/Adam/add_20*
T0*
_output_shapes

: @
m
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
T0*
_output_shapes

: @
[
training/Adam/Const_14Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_15Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/Maximum_6training/Adam/Const_15*
T0*
_output_shapes

: @
�
training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_14*
_output_shapes

: @*
T0
d
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
_output_shapes

: @*
T0
[
training/Adam/add_21/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
r
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
T0*
_output_shapes

: @
w
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*
_output_shapes

: @
r
training/Adam/sub_22Subdense_4/kernel/readtraining/Adam/truediv_7*
T0*
_output_shapes

: @
�
training/Adam/Assign_24Assigntraining/Adam/Variable_26training/Adam/Maximum_6*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes

: @
�
training/Adam/Assign_25Assigntraining/Adam/Variable_6training/Adam/add_19*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

: @*
use_locking(
�
training/Adam/Assign_26Assigntraining/Adam/Variable_16training/Adam/add_20*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*
_output_shapes

: @*
use_locking(
�
training/Adam/Assign_27Assigndense_4/kerneltraining/Adam/sub_22*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes

: @*
use_locking(
q
training/Adam/mul_36MulAdam/beta_1/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
:@
[
training/Adam/sub_23/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_23Subtraining/Adam/sub_23/xAdam/beta_1/read*
_output_shapes
: *
T0
�
training/Adam/mul_37Multraining/Adam/sub_238training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
:@*
T0
r
training/Adam/mul_38MulAdam/beta_2/readtraining/Adam/Variable_17/read*
T0*
_output_shapes
:@
[
training/Adam/sub_24/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_24Subtraining/Adam/sub_24/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_7Square8training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
:@
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes
:@
}
training/Adam/Maximum_7Maximumtraining/Adam/Variable_27/readtraining/Adam/add_23*
_output_shapes
:@*
T0
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes
:@
[
training/Adam/Const_16Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_17Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/Maximum_7training/Adam/Const_17*
T0*
_output_shapes
:@
�
training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_16*
T0*
_output_shapes
:@
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes
:@
[
training/Adam/add_24/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes
:@
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes
:@
l
training/Adam/sub_25Subdense_4/bias/readtraining/Adam/truediv_8*
T0*
_output_shapes
:@
�
training/Adam/Assign_28Assigntraining/Adam/Variable_27training/Adam/Maximum_7*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:@
�
training/Adam/Assign_29Assigntraining/Adam/Variable_7training/Adam/add_22*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:@
�
training/Adam/Assign_30Assigntraining/Adam/Variable_17training/Adam/add_23*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
:@
�
training/Adam/Assign_31Assigndense_4/biastraining/Adam/sub_25*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
:@
v
training/Adam/mul_41MulAdam/beta_1/readtraining/Adam/Variable_8/read*
T0*
_output_shapes
:	@�
[
training/Adam/sub_26/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_26Subtraining/Adam/sub_26/xAdam/beta_1/read*
_output_shapes
: *
T0
�
training/Adam/mul_42Multraining/Adam/sub_264training/Adam/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@�
q
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
_output_shapes
:	@�*
T0
w
training/Adam/mul_43MulAdam/beta_2/readtraining/Adam/Variable_18/read*
_output_shapes
:	@�*
T0
[
training/Adam/sub_27/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_27Subtraining/Adam/sub_27/xAdam/beta_2/read*
T0*
_output_shapes
: 
�
training/Adam/Square_8Square4training/Adam/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@�
s
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
T0*
_output_shapes
:	@�
q
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
_output_shapes
:	@�*
T0
�
training/Adam/Maximum_8Maximumtraining/Adam/Variable_28/readtraining/Adam/add_26*
_output_shapes
:	@�*
T0
n
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*
_output_shapes
:	@�
[
training/Adam/Const_18Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_19Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/Maximum_8training/Adam/Const_19*
T0*
_output_shapes
:	@�
�
training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_18*
_output_shapes
:	@�*
T0
e
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*
_output_shapes
:	@�
[
training/Adam/add_27/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
s
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*
_output_shapes
:	@�
x
training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
T0*
_output_shapes
:	@�
s
training/Adam/sub_28Subdense_5/kernel/readtraining/Adam/truediv_9*
T0*
_output_shapes
:	@�
�
training/Adam/Assign_32Assigntraining/Adam/Variable_28training/Adam/Maximum_8*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(*
_output_shapes
:	@�
�
training/Adam/Assign_33Assigntraining/Adam/Variable_8training/Adam/add_25*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:	@�*
use_locking(
�
training/Adam/Assign_34Assigntraining/Adam/Variable_18training/Adam/add_26*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes
:	@�
�
training/Adam/Assign_35Assigndense_5/kerneltraining/Adam/sub_28*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
_output_shapes
:	@�*
use_locking(
r
training/Adam/mul_46MulAdam/beta_1/readtraining/Adam/Variable_9/read*
T0*
_output_shapes	
:�
[
training/Adam/sub_29/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_29Subtraining/Adam/sub_29/xAdam/beta_1/read*
_output_shapes
: *
T0
�
training/Adam/mul_47Multraining/Adam/sub_298training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
m
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*
_output_shapes	
:�*
T0
s
training/Adam/mul_48MulAdam/beta_2/readtraining/Adam/Variable_19/read*
T0*
_output_shapes	
:�
[
training/Adam/sub_30/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_30Subtraining/Adam/sub_30/xAdam/beta_2/read*
_output_shapes
: *
T0
�
training/Adam/Square_9Square8training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
o
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
_output_shapes	
:�*
T0
m
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
_output_shapes	
:�*
T0
~
training/Adam/Maximum_9Maximumtraining/Adam/Variable_29/readtraining/Adam/add_29*
_output_shapes	
:�*
T0
j
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
T0*
_output_shapes	
:�
[
training/Adam/Const_20Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_21Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/Maximum_9training/Adam/Const_21*
T0*
_output_shapes	
:�
�
training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_20*
T0*
_output_shapes	
:�
c
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
T0*
_output_shapes	
:�
[
training/Adam/add_30/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
p
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
T0*
_output_shapes	
:�
u
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*
_output_shapes	
:�*
T0
n
training/Adam/sub_31Subdense_5/bias/readtraining/Adam/truediv_10*
T0*
_output_shapes	
:�
�
training/Adam/Assign_36Assigntraining/Adam/Variable_29training/Adam/Maximum_9*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_29
�
training/Adam/Assign_37Assigntraining/Adam/Variable_9training/Adam/add_28*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Assign_38Assigntraining/Adam/Variable_19training/Adam/add_29*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Assign_39Assigndense_5/biastraining/Adam/sub_31*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(*
_output_shapes	
:�
�
training/group_depsNoOp	^loss/mul"^metrics/mean_squared_error/Mean_1^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17^training/Adam/Assign_18^training/Adam/Assign_19^training/Adam/Assign_2^training/Adam/Assign_20^training/Adam/Assign_21^training/Adam/Assign_22^training/Adam/Assign_23^training/Adam/Assign_24^training/Adam/Assign_25^training/Adam/Assign_26^training/Adam/Assign_27^training/Adam/Assign_28^training/Adam/Assign_29^training/Adam/Assign_3^training/Adam/Assign_30^training/Adam/Assign_31^training/Adam/Assign_32^training/Adam/Assign_33^training/Adam/Assign_34^training/Adam/Assign_35^training/Adam/Assign_36^training/Adam/Assign_37^training/Adam/Assign_38^training/Adam/Assign_39^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9
�
IsVariableInitializedIsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializeddense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_5IsVariableInitializeddense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitializeddense_4/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_4/kernel
�
IsVariableInitialized_7IsVariableInitializeddense_4/bias*
_class
loc:@dense_4/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_8IsVariableInitializeddense_5/kernel*!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializeddense_5/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_5/bias
�
IsVariableInitialized_10IsVariableInitializedAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
{
IsVariableInitialized_11IsVariableInitializedAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitialized
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable*
dtype0*
_output_shapes
: *)
_class
loc:@training/Adam/Variable
�
IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_21IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_22IsVariableInitializedtraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_23IsVariableInitializedtraining/Adam/Variable_8*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_8
�
IsVariableInitialized_24IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_25IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_26IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_27IsVariableInitializedtraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_28IsVariableInitializedtraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_29IsVariableInitializedtraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_30IsVariableInitializedtraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_31IsVariableInitializedtraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_32IsVariableInitializedtraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_33IsVariableInitializedtraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_34IsVariableInitializedtraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_35IsVariableInitializedtraining/Adam/Variable_20*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_20
�
IsVariableInitialized_36IsVariableInitializedtraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_37IsVariableInitializedtraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_38IsVariableInitializedtraining/Adam/Variable_23*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_23
�
IsVariableInitialized_39IsVariableInitializedtraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_40IsVariableInitializedtraining/Adam/Variable_25*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_25
�
IsVariableInitialized_41IsVariableInitializedtraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_42IsVariableInitializedtraining/Adam/Variable_27*,
_class"
 loc:@training/Adam/Variable_27*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_43IsVariableInitializedtraining/Adam/Variable_28*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_28
�
IsVariableInitialized_44IsVariableInitializedtraining/Adam/Variable_29*,
_class"
 loc:@training/Adam/Variable_29*
dtype0*
_output_shapes
: 
�

initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign^dense_4/bias/Assign^dense_4/kernel/Assign^dense_5/bias/Assign^dense_5/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign"T��8�\     1��	���l<�AJ�	
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype�
is_initialized
"
dtypetype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
�
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
6
Pow
x"T
y"T
z"T"
Ttype:

2	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.13.12
b'unknown'��
j
input_1Placeholder*
dtype0*'
_output_shapes
:���������*
shape:���������
m
dense_1/random_uniform/shapeConst*
valueB"   �   *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *��H�*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *��H>*
dtype0*
_output_shapes
: 
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	�*
seed2��*
seed���)
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes
:	�

dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes
:	�
�
dense_1/kernel
VariableV2*
dtype0*
_output_shapes
:	�*
	container *
shape:	�*
shared_name 
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	�
|
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	�
\
dense_1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
z
dense_1/bias
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*
_class
loc:@dense_1/bias
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:�
�
dense_1/MatMulMatMulinput_1dense_1/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
X
dense_1/ReluReludense_1/BiasAdd*(
_output_shapes
:����������*
T0
m
dense_2/random_uniform/shapeConst*
valueB"�   @   *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *�5>
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
dtype0*
_output_shapes
:	�@*
seed2��*
seed���)*
T0
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes
:	�@*
T0

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	�@
�
dense_2/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes
:	�@*
	container *
shape:	�@
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	�@*
use_locking(
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	�@
Z
dense_2/ConstConst*
dtype0*
_output_shapes
:@*
valueB@*    
x
dense_2/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@dense_2/bias
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:@
�
dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������@*
transpose_a( 
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������@
W
dense_2/ReluReludense_2/BiasAdd*
T0*'
_output_shapes
:���������@
m
dense_3/random_uniform/shapeConst*
valueB"@       *
dtype0*
_output_shapes
:
_
dense_3/random_uniform/minConst*
valueB
 *  ��*
dtype0*
_output_shapes
: 
_
dense_3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  �>
�
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
seed���)*
T0*
dtype0*
_output_shapes

:@ *
seed2��j
z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
_output_shapes
: *
T0
�
dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub*
_output_shapes

:@ *
T0
~
dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min*
T0*
_output_shapes

:@ 
�
dense_3/kernel
VariableV2*
dtype0*
_output_shapes

:@ *
	container *
shape
:@ *
shared_name 
�
dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
_output_shapes

:@ *
use_locking(
{
dense_3/kernel/readIdentitydense_3/kernel*
_output_shapes

:@ *
T0*!
_class
loc:@dense_3/kernel
Z
dense_3/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_3/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
dense_3/bias/AssignAssigndense_3/biasdense_3/Const*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes
: 
q
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes
: 
�
dense_3/MatMulMatMuldense_2/Reludense_3/kernel/read*
transpose_b( *
T0*'
_output_shapes
:��������� *
transpose_a( 
�
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
W
dense_3/ReluReludense_3/BiasAdd*'
_output_shapes
:��������� *
T0
m
dense_4/random_uniform/shapeConst*
valueB"    @   *
dtype0*
_output_shapes
:
_
dense_4/random_uniform/minConst*
valueB
 *  ��*
dtype0*
_output_shapes
: 
_
dense_4/random_uniform/maxConst*
valueB
 *  �>*
dtype0*
_output_shapes
: 
�
$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
T0*
dtype0*
_output_shapes

: @*
seed2�͋*
seed���)
z
dense_4/random_uniform/subSubdense_4/random_uniform/maxdense_4/random_uniform/min*
T0*
_output_shapes
: 
�
dense_4/random_uniform/mulMul$dense_4/random_uniform/RandomUniformdense_4/random_uniform/sub*
T0*
_output_shapes

: @
~
dense_4/random_uniformAdddense_4/random_uniform/muldense_4/random_uniform/min*
_output_shapes

: @*
T0
�
dense_4/kernel
VariableV2*
dtype0*
_output_shapes

: @*
	container *
shape
: @*
shared_name 
�
dense_4/kernel/AssignAssigndense_4/kerneldense_4/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes

: @
{
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

: @
Z
dense_4/ConstConst*
dtype0*
_output_shapes
:@*
valueB@*    
x
dense_4/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
dense_4/bias/AssignAssigndense_4/biasdense_4/Const*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
:@
q
dense_4/bias/readIdentitydense_4/bias*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:@
�
dense_4/MatMulMatMuldense_3/Reludense_4/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������@*
transpose_a( 
�
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
data_formatNHWC*'
_output_shapes
:���������@*
T0
W
dense_4/ReluReludense_4/BiasAdd*
T0*'
_output_shapes
:���������@
m
dense_5/random_uniform/shapeConst*
valueB"@   �   *
dtype0*
_output_shapes
:
_
dense_5/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�5�
_
dense_5/random_uniform/maxConst*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
$dense_5/random_uniform/RandomUniformRandomUniformdense_5/random_uniform/shape*
seed���)*
T0*
dtype0*
_output_shapes
:	@�*
seed2���
z
dense_5/random_uniform/subSubdense_5/random_uniform/maxdense_5/random_uniform/min*
T0*
_output_shapes
: 
�
dense_5/random_uniform/mulMul$dense_5/random_uniform/RandomUniformdense_5/random_uniform/sub*
T0*
_output_shapes
:	@�

dense_5/random_uniformAdddense_5/random_uniform/muldense_5/random_uniform/min*
_output_shapes
:	@�*
T0
�
dense_5/kernel
VariableV2*
dtype0*
_output_shapes
:	@�*
	container *
shape:	@�*
shared_name 
�
dense_5/kernel/AssignAssigndense_5/kerneldense_5/random_uniform*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
_output_shapes
:	@�*
use_locking(
|
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	@�
\
dense_5/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
z
dense_5/bias
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
dense_5/bias/AssignAssigndense_5/biasdense_5/Const*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(*
_output_shapes	
:�
r
dense_5/bias/readIdentitydense_5/bias*
T0*
_class
loc:@dense_5/bias*
_output_shapes	
:�
�
dense_5/MatMulMatMuldense_4/Reludense_5/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
�
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
X
dense_5/ReluReludense_5/BiasAdd*
T0*(
_output_shapes
:����������
[
concatenate_1/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�
concatenate_1/concatConcatV2dense_1/Reludense_5/Reluconcatenate_1/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:����������
x
'reconstruction_cost_layer_1/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
w
&reconstruction_cost_layer_1/Slice/sizeConst*
valueB"�����   *
dtype0*
_output_shapes
:
�
!reconstruction_cost_layer_1/SliceSliceconcatenate_1/concat'reconstruction_cost_layer_1/Slice/begin&reconstruction_cost_layer_1/Slice/size*
Index0*
T0*(
_output_shapes
:����������
z
)reconstruction_cost_layer_1/Slice_1/beginConst*
valueB"    �   *
dtype0*
_output_shapes
:
y
(reconstruction_cost_layer_1/Slice_1/sizeConst*
valueB"��������*
dtype0*
_output_shapes
:
�
#reconstruction_cost_layer_1/Slice_1Sliceconcatenate_1/concat)reconstruction_cost_layer_1/Slice_1/begin(reconstruction_cost_layer_1/Slice_1/size*
Index0*
T0*(
_output_shapes
:����������
�
reconstruction_cost_layer_1/subSub!reconstruction_cost_layer_1/Slice#reconstruction_cost_layer_1/Slice_1*
T0*(
_output_shapes
:����������
�
"reconstruction_cost_layer_1/SquareSquarereconstruction_cost_layer_1/sub*
T0*(
_output_shapes
:����������
s
1reconstruction_cost_layer_1/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
reconstruction_cost_layer_1/SumSum"reconstruction_cost_layer_1/Square1reconstruction_cost_layer_1/Sum/reduction_indices*
T0*#
_output_shapes
:���������*
	keep_dims( *

Tidx0
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
�
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
use_locking(*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: 
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *��D;*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
_output_shapes
: *
T0*
_class
loc:@Adam/lr
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
valueB
 *w�?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
�
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
T0*
_class
loc:@Adam/beta_2*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
n

Adam/decay
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
use_locking(*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: 
g
Adam/decay/readIdentity
Adam/decay*
_output_shapes
: *
T0*
_class
loc:@Adam/decay
�
"reconstruction_cost_layer_1_targetPlaceholder*%
shape:������������������*
dtype0*0
_output_shapes
:������������������
�
*reconstruction_cost_layer_1_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
�
)loss/reconstruction_cost_layer_1_loss/subSubreconstruction_cost_layer_1/Sum"reconstruction_cost_layer_1_target*
T0*0
_output_shapes
:������������������
�
,loss/reconstruction_cost_layer_1_loss/SquareSquare)loss/reconstruction_cost_layer_1_loss/sub*
T0*0
_output_shapes
:������������������
�
<loss/reconstruction_cost_layer_1_loss/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
*loss/reconstruction_cost_layer_1_loss/MeanMean,loss/reconstruction_cost_layer_1_loss/Square<loss/reconstruction_cost_layer_1_loss/Mean/reduction_indices*
T0*#
_output_shapes
:���������*
	keep_dims( *

Tidx0
�
>loss/reconstruction_cost_layer_1_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
�
,loss/reconstruction_cost_layer_1_loss/Mean_1Mean*loss/reconstruction_cost_layer_1_loss/Mean>loss/reconstruction_cost_layer_1_loss/Mean_1/reduction_indices*
T0*#
_output_shapes
:���������*
	keep_dims( *

Tidx0
�
)loss/reconstruction_cost_layer_1_loss/mulMul,loss/reconstruction_cost_layer_1_loss/Mean_1*reconstruction_cost_layer_1_sample_weights*
T0*#
_output_shapes
:���������
u
0loss/reconstruction_cost_layer_1_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
.loss/reconstruction_cost_layer_1_loss/NotEqualNotEqual*reconstruction_cost_layer_1_sample_weights0loss/reconstruction_cost_layer_1_loss/NotEqual/y*#
_output_shapes
:���������*
T0
�
*loss/reconstruction_cost_layer_1_loss/CastCast.loss/reconstruction_cost_layer_1_loss/NotEqual*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
u
+loss/reconstruction_cost_layer_1_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
,loss/reconstruction_cost_layer_1_loss/Mean_2Mean*loss/reconstruction_cost_layer_1_loss/Cast+loss/reconstruction_cost_layer_1_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
-loss/reconstruction_cost_layer_1_loss/truedivRealDiv)loss/reconstruction_cost_layer_1_loss/mul,loss/reconstruction_cost_layer_1_loss/Mean_2*#
_output_shapes
:���������*
T0
w
-loss/reconstruction_cost_layer_1_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
,loss/reconstruction_cost_layer_1_loss/Mean_3Mean-loss/reconstruction_cost_layer_1_loss/truediv-loss/reconstruction_cost_layer_1_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
j
loss/mulMul
loss/mul/x,loss/reconstruction_cost_layer_1_loss/Mean_3*
T0*
_output_shapes
: 
�
metrics/mean_squared_error/subSubreconstruction_cost_layer_1/Sum"reconstruction_cost_layer_1_target*
T0*0
_output_shapes
:������������������
�
!metrics/mean_squared_error/SquareSquaremetrics/mean_squared_error/sub*
T0*0
_output_shapes
:������������������
|
1metrics/mean_squared_error/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/mean_squared_error/MeanMean!metrics/mean_squared_error/Square1metrics/mean_squared_error/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
j
 metrics/mean_squared_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
!metrics/mean_squared_error/Mean_1Meanmetrics/mean_squared_error/Mean metrics/mean_squared_error/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
�
!training/Adam/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?*
_class
loc:@loss/mul
�
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
�
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fill,loss/reconstruction_cost_layer_1_loss/Mean_3*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss/mul
�
Wtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Reshape/shapeConst*
valueB:*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
dtype0*
_output_shapes
:
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Wtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Reshape/shape*
T0*
Tshape0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
:
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ShapeShape-loss/reconstruction_cost_layer_1_loss/truediv*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/TileTileQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ReshapeOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape*

Tmultiples0*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*#
_output_shapes
:���������
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape_1Shape-loss/reconstruction_cost_layer_1_loss/truediv*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
:
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape_2Const*
valueB *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
dtype0*
_output_shapes
: 
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ConstConst*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
dtype0*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ProdProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape_1Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Const*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Const_1Const*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
dtype0*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Prod_1ProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Shape_2Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/MaximumMaximumPtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Prod_1Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Maximum/y*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
: 
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/floordivFloorDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/ProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Maximum*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
_output_shapes
: 
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/CastCastRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/floordiv*

SrcT0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*
Truncate( *
_output_shapes
: *

DstT0
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/truedivRealDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/TileNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/Cast*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_3*#
_output_shapes
:���������
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/ShapeShape)loss/reconstruction_cost_layer_1_loss/mul*
_output_shapes
:*
T0*
out_type0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Shape_1Const*
valueB *@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*
dtype0*
_output_shapes
: 
�
`training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsPtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/ShapeRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Shape_1*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*2
_output_shapes 
:���������:���������
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDivRealDivQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/truediv,loss/reconstruction_cost_layer_1_loss/Mean_2*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*#
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/SumSumRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv`training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/BroadcastGradientArgs*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/ReshapeReshapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/SumPtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Shape*
T0*
Tshape0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*#
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/NegNeg)loss/reconstruction_cost_layer_1_loss/mul*#
_output_shapes
:���������*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv_1RealDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Neg,loss/reconstruction_cost_layer_1_loss/Mean_2*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*#
_output_shapes
:���������
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv_2RealDivTtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv_1,loss/reconstruction_cost_layer_1_loss/Mean_2*#
_output_shapes
:���������*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/mulMulQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_3_grad/truedivTtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/RealDiv_2*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*#
_output_shapes
:���������
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Sum_1SumNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/mulbtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/BroadcastGradientArgs:1*
T0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Reshape_1ReshapePtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Sum_1Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Shape_1*
T0*
Tshape0*@
_class6
42loc:@loss/reconstruction_cost_layer_1_loss/truediv*
_output_shapes
: 
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/ShapeShape,loss/reconstruction_cost_layer_1_loss/Mean_1*
T0*
out_type0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Shape_1Shape*reconstruction_cost_layer_1_sample_weights*
_output_shapes
:*
T0*
out_type0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul
�
\training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/ShapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Shape_1*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*2
_output_shapes 
:���������:���������
�
Jtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/MulMulRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Reshape*reconstruction_cost_layer_1_sample_weights*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*#
_output_shapes
:���������
�
Jtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/SumSumJtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Mul\training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/ReshapeReshapeJtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/SumLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Shape*#
_output_shapes
:���������*
T0*
Tshape0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Mul_1Mul,loss/reconstruction_cost_layer_1_loss/Mean_1Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/truediv_grad/Reshape*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*#
_output_shapes
:���������
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Sum_1SumLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Mul_1^training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Reshape_1ReshapeLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Sum_1Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/Shape_1*
T0*
Tshape0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/mul*#
_output_shapes
:���������
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ShapeShape*loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/SizeConst*
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/addAdd>loss/reconstruction_cost_layer_1_loss/Mean_1/reduction_indicesNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Size*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: 
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/modFloorModMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/addNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Size*
_output_shapes
: *
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_1Const*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
:
�
Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/range/startConst*
value	B : *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/range/deltaConst*
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/rangeRangeUtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/range/startNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/SizeUtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/range/delta*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:*

Tidx0
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Fill/valueConst*
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/FillFillQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_1Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Wtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/DynamicStitchDynamicStitchOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/rangeMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/modOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ShapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Fill*
N*
_output_shapes
:*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum/yConst*
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/MaximumMaximumWtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/DynamicStitchStraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum/y*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/floordivFloorDivOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ShapeQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ReshapeReshapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/mul_grad/ReshapeWtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/DynamicStitch*#
_output_shapes
:���������*
T0*
Tshape0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/TileTileQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ReshapeRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/floordiv*#
_output_shapes
:���������*

Tmultiples0*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_2Shape*loss/reconstruction_cost_layer_1_loss/Mean*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_3Shape,loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
:*
T0*
out_type0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ConstConst*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ProdProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_2Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Const*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Const_1Const*
valueB: *?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Prod_1ProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Shape_3Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum_1/yConst*
value	B :*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum_1MaximumPtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Prod_1Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum_1/y*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: 
�
Ttraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/floordiv_1FloorDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/ProdStraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Maximum_1*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*
_output_shapes
: 
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/CastCastTtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/floordiv_1*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/truedivRealDivNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/TileNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/Cast*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Mean_1*#
_output_shapes
:���������
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ShapeShape,loss/reconstruction_cost_layer_1_loss/Square*
T0*
out_type0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/SizeConst*
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Ktraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/addAdd<loss/reconstruction_cost_layer_1_loss/Mean/reduction_indicesLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Size*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: 
�
Ktraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/modFloorModKtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/addLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Size*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: 
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/range/startConst*
value	B : *=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/range/deltaConst*
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/rangeRangeStraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/range/startLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/SizeStraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/range/delta*

Tidx0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Fill/valueConst*
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/FillFillOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_1Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Fill/value*
T0*

index_type0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: 
�
Utraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/DynamicStitchDynamicStitchMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/rangeKtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/modMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ShapeLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Fill*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
N*
_output_shapes
:
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum/yConst*
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/MaximumMaximumUtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/DynamicStitchQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum/y*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/floordivFloorDivMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ShapeOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ReshapeReshapeQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_1_grad/truedivUtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*0
_output_shapes
:������������������
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/TileTileOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ReshapePtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/floordiv*

Tmultiples0*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*0
_output_shapes
:������������������
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_2Shape,loss/reconstruction_cost_layer_1_loss/Square*
T0*
out_type0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_3Shape*loss/reconstruction_cost_layer_1_loss/Mean*
T0*
out_type0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
:
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ConstConst*
valueB: *=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
:
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ProdProdOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_2Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: 
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Prod_1ProdOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Shape_3Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Const_1*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum_1/yConst*
value	B :*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
dtype0*
_output_shapes
: 
�
Qtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum_1MaximumNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Prod_1Straining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum_1/y*
_output_shapes
: *
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean
�
Rtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/floordiv_1FloorDivLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/ProdQtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Maximum_1*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
_output_shapes
: 
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/CastCastRtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/floordiv_1*

SrcT0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/truedivRealDivLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/TileLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/Cast*
T0*=
_class3
1/loc:@loss/reconstruction_cost_layer_1_loss/Mean*0
_output_shapes
:������������������
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/ConstConstP^training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/truediv*
valueB
 *   @*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Square*
dtype0*
_output_shapes
: 
�
Mtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/MulMul)loss/reconstruction_cost_layer_1_loss/subOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Const*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Square*0
_output_shapes
:������������������
�
Otraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Mul_1MulOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Mean_grad/truedivMtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Mul*
T0*?
_class5
31loc:@loss/reconstruction_cost_layer_1_loss/Square*0
_output_shapes
:������������������
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/ShapeShapereconstruction_cost_layer_1/Sum*
T0*
out_type0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Shape_1Shape"reconstruction_cost_layer_1_target*
T0*
out_type0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*
_output_shapes
:
�
\training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/ShapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Shape_1*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*2
_output_shapes 
:���������:���������
�
Jtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/SumSumOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Mul_1\training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/ReshapeReshapeJtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/SumLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Shape*
T0*
Tshape0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*#
_output_shapes
:���������
�
Ltraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Sum_1SumOtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/Square_grad/Mul_1^training/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/BroadcastGradientArgs:1*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Jtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/NegNegLtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Sum_1*
T0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/NegNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/Shape_1*
T0*
Tshape0*<
_class2
0.loc:@loss/reconstruction_cost_layer_1_loss/sub*0
_output_shapes
:������������������
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ShapeShape"reconstruction_cost_layer_1/Square*
T0*
out_type0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
_output_shapes
:
�
Atraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum
�
@training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/addAdd1reconstruction_cost_layer_1/Sum/reduction_indicesAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Size*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
_output_shapes
: 
�
@training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/modFloorMod@training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/addAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Size*
_output_shapes
: *
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Shape_1Const*
valueB *2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range/startConst*
value	B : *2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range/deltaConst*
value	B :*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/rangeRangeHtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range/startAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/SizeHtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum
�
Gtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Fill/valueConst*
value	B :*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Atraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/FillFillDtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Shape_1Gtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Fill/value*
T0*

index_type0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
_output_shapes
: 
�
Jtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/DynamicStitchDynamicStitchBtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/range@training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/modBtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ShapeAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Fill*
N*
_output_shapes
:*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
dtype0*
_output_shapes
: 
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/MaximumMaximumJtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/DynamicStitchFtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Maximum/y*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
_output_shapes
:
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/floordivFloorDivBtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ShapeDtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Maximum*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*
_output_shapes
:
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ReshapeReshapeNtraining/Adam/gradients/loss/reconstruction_cost_layer_1_loss/sub_grad/ReshapeJtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/DynamicStitch*
T0*
Tshape0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*0
_output_shapes
:������������������
�
Atraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/TileTileDtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/ReshapeEtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/floordiv*

Tmultiples0*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/Sum*(
_output_shapes
:����������
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/ConstConstB^training/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/Tile*
dtype0*
_output_shapes
: *
valueB
 *   @*5
_class+
)'loc:@reconstruction_cost_layer_1/Square
�
Ctraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/MulMulreconstruction_cost_layer_1/subEtraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Const*
T0*5
_class+
)'loc:@reconstruction_cost_layer_1/Square*(
_output_shapes
:����������
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Mul_1MulAtraining/Adam/gradients/reconstruction_cost_layer_1/Sum_grad/TileCtraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Mul*
T0*5
_class+
)'loc:@reconstruction_cost_layer_1/Square*(
_output_shapes
:����������
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/ShapeShape!reconstruction_cost_layer_1/Slice*
_output_shapes
:*
T0*
out_type0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Shape_1Shape#reconstruction_cost_layer_1/Slice_1*
_output_shapes
:*
T0*
out_type0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub
�
Rtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/ShapeDtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Shape_1*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*2
_output_shapes 
:���������:���������
�
@training/Adam/gradients/reconstruction_cost_layer_1/sub_grad/SumSumEtraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Mul_1Rtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/ReshapeReshape@training/Adam/gradients/reconstruction_cost_layer_1/sub_grad/SumBtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*(
_output_shapes
:����������
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Sum_1SumEtraining/Adam/gradients/reconstruction_cost_layer_1/Square_grad/Mul_1Ttraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/BroadcastGradientArgs:1*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
@training/Adam/gradients/reconstruction_cost_layer_1/sub_grad/NegNegBtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Sum_1*
T0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub*
_output_shapes
:
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Reshape_1Reshape@training/Adam/gradients/reconstruction_cost_layer_1/sub_grad/NegDtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Shape_1*(
_output_shapes
:����������*
T0*
Tshape0*2
_class(
&$loc:@reconstruction_cost_layer_1/sub
�
Ctraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/RankConst*
value	B :*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
dtype0*
_output_shapes
: 
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/ShapeShape!reconstruction_cost_layer_1/Slice*
T0*
out_type0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
_output_shapes
:
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stack/1Const*
value	B :*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
dtype0*
_output_shapes
: 
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stackPackCtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/RankFtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stack/1*
T0*

axis *4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
N*
_output_shapes
:
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/ReshapeReshape'reconstruction_cost_layer_1/Slice/beginDtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stack*
_output_shapes

:*
T0*
Tshape0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Shape_1Shapeconcatenate_1/concat*
T0*
out_type0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
_output_shapes
:
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/subSubFtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Shape_1Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Shape*
_output_shapes
:*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/sub_1SubBtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/sub'reconstruction_cost_layer_1/Slice/begin*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
_output_shapes
:
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Reshape_1ReshapeDtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/sub_1Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/stack*
_output_shapes

:*
T0*
Tshape0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice
�
Jtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/concat/axisConst*
value	B :*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
dtype0*
_output_shapes
: 
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/concatConcatV2Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/ReshapeHtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/Reshape_1Jtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice
�
Btraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/PadPadDtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/ReshapeEtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/concat*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
	Tpaddings0*(
_output_shapes
:����������
�
Etraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/RankConst*
value	B :*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
dtype0*
_output_shapes
: 
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/ShapeShape#reconstruction_cost_layer_1/Slice_1*
_output_shapes
:*
T0*
out_type0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stack/1Const*
value	B :*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
dtype0*
_output_shapes
: 
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stackPackEtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/RankHtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stack/1*
N*
_output_shapes
:*
T0*

axis *6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/ReshapeReshape)reconstruction_cost_layer_1/Slice_1/beginFtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stack*
T0*
Tshape0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes

:
�
Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Shape_1Shapeconcatenate_1/concat*
T0*
out_type0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes
:
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/subSubHtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Shape_1Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Shape*
T0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes
:
�
Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/sub_1SubDtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/sub)reconstruction_cost_layer_1/Slice_1/begin*
T0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes
:
�
Jtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Reshape_1ReshapeFtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/sub_1Ftraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/stack*
T0*
Tshape0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
_output_shapes

:
�
Ltraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/concat/axisConst*
value	B :*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
dtype0*
_output_shapes
: 
�
Gtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/concatConcatV2Htraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/ReshapeJtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Reshape_1Ltraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/concat/axis*

Tidx0*
T0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
N*
_output_shapes

:
�
Dtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/PadPadFtraining/Adam/gradients/reconstruction_cost_layer_1/sub_grad/Reshape_1Gtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/concat*
T0*6
_class,
*(loc:@reconstruction_cost_layer_1/Slice_1*
	Tpaddings0*(
_output_shapes
:����������
�
training/Adam/gradients/AddNAddNBtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_grad/PadDtraining/Adam/gradients/reconstruction_cost_layer_1/Slice_1_grad/Pad*
T0*4
_class*
(&loc:@reconstruction_cost_layer_1/Slice*
N*(
_output_shapes
:����������
�
6training/Adam/gradients/concatenate_1/concat_grad/RankConst*
value	B :*'
_class
loc:@concatenate_1/concat*
dtype0*
_output_shapes
: 
�
5training/Adam/gradients/concatenate_1/concat_grad/modFloorModconcatenate_1/concat/axis6training/Adam/gradients/concatenate_1/concat_grad/Rank*
T0*'
_class
loc:@concatenate_1/concat*
_output_shapes
: 
�
7training/Adam/gradients/concatenate_1/concat_grad/ShapeShapedense_1/Relu*
T0*
out_type0*'
_class
loc:@concatenate_1/concat*
_output_shapes
:
�
8training/Adam/gradients/concatenate_1/concat_grad/ShapeNShapeNdense_1/Reludense_5/Relu*
T0*
out_type0*'
_class
loc:@concatenate_1/concat*
N* 
_output_shapes
::
�
>training/Adam/gradients/concatenate_1/concat_grad/ConcatOffsetConcatOffset5training/Adam/gradients/concatenate_1/concat_grad/mod8training/Adam/gradients/concatenate_1/concat_grad/ShapeN:training/Adam/gradients/concatenate_1/concat_grad/ShapeN:1*'
_class
loc:@concatenate_1/concat*
N* 
_output_shapes
::
�
7training/Adam/gradients/concatenate_1/concat_grad/SliceSlicetraining/Adam/gradients/AddN>training/Adam/gradients/concatenate_1/concat_grad/ConcatOffset8training/Adam/gradients/concatenate_1/concat_grad/ShapeN*(
_output_shapes
:����������*
T0*
Index0*'
_class
loc:@concatenate_1/concat
�
9training/Adam/gradients/concatenate_1/concat_grad/Slice_1Slicetraining/Adam/gradients/AddN@training/Adam/gradients/concatenate_1/concat_grad/ConcatOffset:1:training/Adam/gradients/concatenate_1/concat_grad/ShapeN:1*
T0*
Index0*'
_class
loc:@concatenate_1/concat*(
_output_shapes
:����������
�
2training/Adam/gradients/dense_5/Relu_grad/ReluGradReluGrad9training/Adam/gradients/concatenate_1/concat_grad/Slice_1dense_5/Relu*
T0*
_class
loc:@dense_5/Relu*(
_output_shapes
:����������
�
8training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_5/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_5/BiasAdd*
data_formatNHWC*
_output_shapes	
:�
�
2training/Adam/gradients/dense_5/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_5/Relu_grad/ReluGraddense_5/kernel/read*
T0*!
_class
loc:@dense_5/MatMul*'
_output_shapes
:���������@*
transpose_a( *
transpose_b(
�
4training/Adam/gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/Relu2training/Adam/gradients/dense_5/Relu_grad/ReluGrad*
_output_shapes
:	@�*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_5/MatMul
�
2training/Adam/gradients/dense_4/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_5/MatMul_grad/MatMuldense_4/Relu*
T0*
_class
loc:@dense_4/Relu*'
_output_shapes
:���������@
�
8training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_4/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_4/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
2training/Adam/gradients/dense_4/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_4/Relu_grad/ReluGraddense_4/kernel/read*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_4/MatMul
�
4training/Adam/gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/Relu2training/Adam/gradients/dense_4/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_4/MatMul*
_output_shapes

: @*
transpose_a(*
transpose_b( 
�
2training/Adam/gradients/dense_3/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_4/MatMul_grad/MatMuldense_3/Relu*'
_output_shapes
:��������� *
T0*
_class
loc:@dense_3/Relu
�
8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_3/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_3/BiasAdd*
data_formatNHWC*
_output_shapes
: 
�
2training/Adam/gradients/dense_3/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_3/Relu_grad/ReluGraddense_3/kernel/read*
T0*!
_class
loc:@dense_3/MatMul*'
_output_shapes
:���������@*
transpose_a( *
transpose_b(
�
4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Relu2training/Adam/gradients/dense_3/Relu_grad/ReluGrad*
_output_shapes

:@ *
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_3/MatMul
�
2training/Adam/gradients/dense_2/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_3/MatMul_grad/MatMuldense_2/Relu*
T0*
_class
loc:@dense_2/Relu*'
_output_shapes
:���������@
�
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Relu_grad/ReluGraddense_2/kernel/read*
T0*!
_class
loc:@dense_2/MatMul*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul*
_output_shapes
:	�@*
transpose_a(
�
training/Adam/gradients/AddN_1AddN7training/Adam/gradients/concatenate_1/concat_grad/Slice2training/Adam/gradients/dense_2/MatMul_grad/MatMul*
T0*'
_class
loc:@concatenate_1/concat*
N*(
_output_shapes
:����������
�
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_1dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*(
_output_shapes
:����������
�
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes	
:�
�
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul
�
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMulinput_12training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
_output_shapes
:	�*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul
_
training/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
�
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
use_locking( *
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
p
training/Adam/CastCastAdam/iterations/read*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
X
training/Adam/add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
_output_shapes
: *
T0
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  �
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 
�
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
T0*
_output_shapes
: 
t
#training/Adam/zeros/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*
T0*

index_type0*
_output_shapes
:	�
�
training/Adam/Variable
VariableV2*
shape:	�*
shared_name *
dtype0*
_output_shapes
:	�*
	container 
�
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	�
�
training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*
_output_shapes
:	�
d
training/Adam/zeros_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_1
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes	
:�
v
%training/Adam/zeros_2/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training/Adam/Variable_2
VariableV2*
dtype0*
_output_shapes
:	�@*
	container *
shape:	�@*
shared_name 
�
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	�@*
use_locking(
�
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
:	�@
b
training/Adam/zeros_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_3
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
�
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:@
�
training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
T0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
:@
v
%training/Adam/zeros_4/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@       
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*
_output_shapes

:@ 
�
training/Adam/Variable_4
VariableV2*
shared_name *
dtype0*
_output_shapes

:@ *
	container *
shape
:@ 
�
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:@ 
�
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
_output_shapes

:@ *
T0*+
_class!
loc:@training/Adam/Variable_4
b
training/Adam/zeros_5Const*
valueB *    *
dtype0*
_output_shapes
: 
�
training/Adam/Variable_5
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
�
training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
_output_shapes
: *
T0*+
_class!
loc:@training/Adam/Variable_5
v
%training/Adam/zeros_6/shape_as_tensorConst*
valueB"    @   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
_output_shapes

: @*
T0*

index_type0
�
training/Adam/Variable_6
VariableV2*
dtype0*
_output_shapes

: @*
	container *
shape
: @*
shared_name 
�
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

: @
�
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
_output_shapes

: @*
T0*+
_class!
loc:@training/Adam/Variable_6
b
training/Adam/zeros_7Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_7
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:@*
use_locking(
�
training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
:@
v
%training/Adam/zeros_8/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
_output_shapes
:	@�*
T0*

index_type0
�
training/Adam/Variable_8
VariableV2*
shape:	@�*
shared_name *
dtype0*
_output_shapes
:	@�*
	container 
�
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:	@�
�
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
:	@�
d
training/Adam/zeros_9Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_9
VariableV2*
shape:�*
shared_name *
dtype0*
_output_shapes	
:�*
	container 
�
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes	
:�
w
&training/Adam/zeros_10/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   �   
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes
:	�
�
training/Adam/Variable_10
VariableV2*
shared_name *
dtype0*
_output_shapes
:	�*
	container *
shape:	�
�
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:	�
�
training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
T0*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
:	�
e
training/Adam/zeros_11Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_11
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11
�
training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes	
:�
w
&training/Adam/zeros_12/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
_output_shapes
:	�@*
T0*

index_type0
�
training/Adam/Variable_12
VariableV2*
shape:	�@*
shared_name *
dtype0*
_output_shapes
:	�@*
	container 
�
 training/Adam/Variable_12/AssignAssigntraining/Adam/Variable_12training/Adam/zeros_12*
validate_shape(*
_output_shapes
:	�@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12
�
training/Adam/Variable_12/readIdentitytraining/Adam/Variable_12*
T0*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
:	�@
c
training/Adam/zeros_13Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_13
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
�
 training/Adam/Variable_13/AssignAssigntraining/Adam/Variable_13training/Adam/zeros_13*
T0*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(*
_output_shapes
:@*
use_locking(
�
training/Adam/Variable_13/readIdentitytraining/Adam/Variable_13*
_output_shapes
:@*
T0*,
_class"
 loc:@training/Adam/Variable_13
w
&training/Adam/zeros_14/shape_as_tensorConst*
valueB"@       *
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*

index_type0*
_output_shapes

:@ 
�
training/Adam/Variable_14
VariableV2*
dtype0*
_output_shapes

:@ *
	container *
shape
:@ *
shared_name 
�
 training/Adam/Variable_14/AssignAssigntraining/Adam/Variable_14training/Adam/zeros_14*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes

:@ 
�
training/Adam/Variable_14/readIdentitytraining/Adam/Variable_14*
T0*,
_class"
 loc:@training/Adam/Variable_14*
_output_shapes

:@ 
c
training/Adam/zeros_15Const*
valueB *    *
dtype0*
_output_shapes
: 
�
training/Adam/Variable_15
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
 training/Adam/Variable_15/AssignAssigntraining/Adam/Variable_15training/Adam/zeros_15*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
: 
�
training/Adam/Variable_15/readIdentitytraining/Adam/Variable_15*
_output_shapes
: *
T0*,
_class"
 loc:@training/Adam/Variable_15
w
&training/Adam/zeros_16/shape_as_tensorConst*
valueB"    @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
T0*

index_type0*
_output_shapes

: @
�
training/Adam/Variable_16
VariableV2*
shape
: @*
shared_name *
dtype0*
_output_shapes

: @*
	container 
�
 training/Adam/Variable_16/AssignAssigntraining/Adam/Variable_16training/Adam/zeros_16*
validate_shape(*
_output_shapes

: @*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16
�
training/Adam/Variable_16/readIdentitytraining/Adam/Variable_16*
T0*,
_class"
 loc:@training/Adam/Variable_16*
_output_shapes

: @
c
training/Adam/zeros_17Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_17
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
�
 training/Adam/Variable_17/AssignAssigntraining/Adam/Variable_17training/Adam/zeros_17*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
:@
�
training/Adam/Variable_17/readIdentitytraining/Adam/Variable_17*
T0*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes
:@
w
&training/Adam/zeros_18/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@   �   
a
training/Adam/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
T0*

index_type0*
_output_shapes
:	@�
�
training/Adam/Variable_18
VariableV2*
dtype0*
_output_shapes
:	@�*
	container *
shape:	@�*
shared_name 
�
 training/Adam/Variable_18/AssignAssigntraining/Adam/Variable_18training/Adam/zeros_18*
validate_shape(*
_output_shapes
:	@�*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18
�
training/Adam/Variable_18/readIdentitytraining/Adam/Variable_18*
T0*,
_class"
 loc:@training/Adam/Variable_18*
_output_shapes
:	@�
e
training/Adam/zeros_19Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_19
VariableV2*
shape:�*
shared_name *
dtype0*
_output_shapes	
:�*
	container 
�
 training/Adam/Variable_19/AssignAssigntraining/Adam/Variable_19training/Adam/zeros_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
training/Adam/Variable_19/readIdentitytraining/Adam/Variable_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes	
:�
w
&training/Adam/zeros_20/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
_output_shapes
:	�*
T0*

index_type0
�
training/Adam/Variable_20
VariableV2*
shape:	�*
shared_name *
dtype0*
_output_shapes
:	�*
	container 
�
 training/Adam/Variable_20/AssignAssigntraining/Adam/Variable_20training/Adam/zeros_20*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
training/Adam/Variable_20/readIdentitytraining/Adam/Variable_20*
T0*,
_class"
 loc:@training/Adam/Variable_20*
_output_shapes
:	�
e
training/Adam/zeros_21Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_21
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
 training/Adam/Variable_21/AssignAssigntraining/Adam/Variable_21training/Adam/zeros_21*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Variable_21/readIdentitytraining/Adam/Variable_21*
T0*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes	
:�
w
&training/Adam/zeros_22/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training/Adam/Variable_22
VariableV2*
shared_name *
dtype0*
_output_shapes
:	�@*
	container *
shape:	�@
�
 training/Adam/Variable_22/AssignAssigntraining/Adam/Variable_22training/Adam/zeros_22*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes
:	�@
�
training/Adam/Variable_22/readIdentitytraining/Adam/Variable_22*
T0*,
_class"
 loc:@training/Adam/Variable_22*
_output_shapes
:	�@
c
training/Adam/zeros_23Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/Variable_23
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
 training/Adam/Variable_23/AssignAssigntraining/Adam/Variable_23training/Adam/zeros_23*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes
:@
�
training/Adam/Variable_23/readIdentitytraining/Adam/Variable_23*
T0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes
:@
w
&training/Adam/zeros_24/shape_as_tensorConst*
valueB"@       *
dtype0*
_output_shapes
:
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*

index_type0*
_output_shapes

:@ 
�
training/Adam/Variable_24
VariableV2*
shape
:@ *
shared_name *
dtype0*
_output_shapes

:@ *
	container 
�
 training/Adam/Variable_24/AssignAssigntraining/Adam/Variable_24training/Adam/zeros_24*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*
_output_shapes

:@ 
�
training/Adam/Variable_24/readIdentitytraining/Adam/Variable_24*
T0*,
_class"
 loc:@training/Adam/Variable_24*
_output_shapes

:@ 
c
training/Adam/zeros_25Const*
dtype0*
_output_shapes
: *
valueB *    
�
training/Adam/Variable_25
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
 training/Adam/Variable_25/AssignAssigntraining/Adam/Variable_25training/Adam/zeros_25*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25
�
training/Adam/Variable_25/readIdentitytraining/Adam/Variable_25*
T0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes
: 
w
&training/Adam/zeros_26/shape_as_tensorConst*
valueB"    @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_26/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*
T0*

index_type0*
_output_shapes

: @
�
training/Adam/Variable_26
VariableV2*
shared_name *
dtype0*
_output_shapes

: @*
	container *
shape
: @
�
 training/Adam/Variable_26/AssignAssigntraining/Adam/Variable_26training/Adam/zeros_26*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes

: @
�
training/Adam/Variable_26/readIdentitytraining/Adam/Variable_26*
T0*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes

: @
c
training/Adam/zeros_27Const*
dtype0*
_output_shapes
:@*
valueB@*    
�
training/Adam/Variable_27
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
�
 training/Adam/Variable_27/AssignAssigntraining/Adam/Variable_27training/Adam/zeros_27*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:@
�
training/Adam/Variable_27/readIdentitytraining/Adam/Variable_27*
T0*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:@
w
&training/Adam/zeros_28/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@   �   
a
training/Adam/zeros_28/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0*
_output_shapes
:	@�
�
training/Adam/Variable_28
VariableV2*
dtype0*
_output_shapes
:	@�*
	container *
shape:	@�*
shared_name 
�
 training/Adam/Variable_28/AssignAssigntraining/Adam/Variable_28training/Adam/zeros_28*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(*
_output_shapes
:	@�*
use_locking(
�
training/Adam/Variable_28/readIdentitytraining/Adam/Variable_28*
T0*,
_class"
 loc:@training/Adam/Variable_28*
_output_shapes
:	@�
e
training/Adam/zeros_29Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/Variable_29
VariableV2*
dtype0*
_output_shapes	
:�*
	container *
shape:�*
shared_name 
�
 training/Adam/Variable_29/AssignAssigntraining/Adam/Variable_29training/Adam/zeros_29*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Variable_29/readIdentitytraining/Adam/Variable_29*
T0*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes	
:�
s
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes
:	�
Z
training/Adam/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�
n
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes
:	�
v
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_10/read*
T0*
_output_shapes
:	�
Z
training/Adam/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 
~
training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�
o
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes
:	�
n
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes
:	�

training/Adam/MaximumMaximumtraining/Adam/Variable_20/readtraining/Adam/add_2*
_output_shapes
:	�*
T0
l
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes
:	�
Z
training/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_3Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/Maximumtraining/Adam/Const_3*
_output_shapes
:	�*
T0
�
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
T0*
_output_shapes
:	�
e
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes
:	�
Z
training/Adam/add_3/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
q
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes
:	�
v
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes
:	�
r
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1*
T0*
_output_shapes
:	�
�
training/Adam/AssignAssigntraining/Adam/Variable_20training/Adam/Maximum*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20
�
training/Adam/Assign_1Assigntraining/Adam/Variabletraining/Adam/add_1*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
training/Adam/Assign_2Assigntraining/Adam/Variable_10training/Adam/add_2*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
training/Adam/Assign_3Assigndense_1/kerneltraining/Adam/sub_4*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	�
q
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
_output_shapes	
:�*
T0
Z
training/Adam/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
j
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes	
:�
r
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_11/read*
T0*
_output_shapes	
:�
Z
training/Adam/sub_6/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
_output_shapes
: *
T0
�
training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
m
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes	
:�
j
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes	
:�
}
training/Adam/Maximum_1Maximumtraining/Adam/Variable_21/readtraining/Adam/add_5*
T0*
_output_shapes	
:�
i
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes	
:�
Z
training/Adam/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_5Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/Maximum_1training/Adam/Const_5*
T0*
_output_shapes	
:�
�
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
_output_shapes	
:�*
T0
a
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes	
:�
Z
training/Adam/add_6/yConst*
dtype0*
_output_shapes
: *
valueB
 *��8
m
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes	
:�
s
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes	
:�
l
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
T0*
_output_shapes	
:�
�
training/Adam/Assign_4Assigntraining/Adam/Variable_21training/Adam/Maximum_1*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Assign_5Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes	
:�
�
training/Adam/Assign_6Assigntraining/Adam/Variable_11training/Adam/add_5*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11
�
training/Adam/Assign_7Assigndense_1/biastraining/Adam/sub_7*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:�
v
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0*
_output_shapes
:	�@
Z
training/Adam/sub_8/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
_output_shapes
: *
T0
�
training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	�@*
T0
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes
:	�@*
T0
w
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_12/read*
_output_shapes
:	�@*
T0
Z
training/Adam/sub_9/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 
�
training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�@
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:	�@
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:	�@
�
training/Adam/Maximum_2Maximumtraining/Adam/Variable_22/readtraining/Adam/add_8*
_output_shapes
:	�@*
T0
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes
:	�@
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/Maximum_2training/Adam/Const_7*
T0*
_output_shapes
:	�@
�
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*
_output_shapes
:	�@
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:	�@
Z
training/Adam/add_9/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes
:	�@*
T0
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes
:	�@
s
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
T0*
_output_shapes
:	�@
�
training/Adam/Assign_8Assigntraining/Adam/Variable_22training/Adam/Maximum_2*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes
:	�@
�
training/Adam/Assign_9Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	�@
�
training/Adam/Assign_10Assigntraining/Adam/Variable_12training/Adam/add_8*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*
_output_shapes
:	�@
�
training/Adam/Assign_11Assigndense_2/kerneltraining/Adam/sub_10*
validate_shape(*
_output_shapes
:	�@*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
:@
[
training/Adam/sub_11/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:@
r
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_13/read*
_output_shapes
:@*
T0
[
training/Adam/sub_12/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:@
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:@
}
training/Adam/Maximum_3Maximumtraining/Adam/Variable_23/readtraining/Adam/add_11*
T0*
_output_shapes
:@
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:@
Z
training/Adam/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_9Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/Maximum_3training/Adam/Const_9*
_output_shapes
:@*
T0
�
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes
:@
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
_output_shapes
:@*
T0
[
training/Adam/add_12/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:@
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:@
l
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
T0*
_output_shapes
:@
�
training/Adam/Assign_12Assigntraining/Adam/Variable_23training/Adam/Maximum_3*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes
:@*
use_locking(
�
training/Adam/Assign_13Assigntraining/Adam/Variable_3training/Adam/add_10*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:@*
use_locking(
�
training/Adam/Assign_14Assigntraining/Adam/Variable_13training/Adam/add_11*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13
�
training/Adam/Assign_15Assigndense_2/biastraining/Adam/sub_13*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:@
u
training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*
T0*
_output_shapes

:@ 
[
training/Adam/sub_14/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_22Multraining/Adam/sub_144training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
_output_shapes

:@ *
T0
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes

:@ 
v
training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_14/read*
T0*
_output_shapes

:@ 
[
training/Adam/sub_15/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_4Square4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
_output_shapes

:@ *
T0
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes

:@ 
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes

:@ 
�
training/Adam/Maximum_4Maximumtraining/Adam/Variable_24/readtraining/Adam/add_14*
_output_shapes

:@ *
T0
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
_output_shapes

:@ *
T0
[
training/Adam/Const_10Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_11Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/Maximum_4training/Adam/Const_11*
_output_shapes

:@ *
T0
�
training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_10*
T0*
_output_shapes

:@ 
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes

:@ 
[
training/Adam/add_15/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
_output_shapes

:@ *
T0
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*
_output_shapes

:@ 
r
training/Adam/sub_16Subdense_3/kernel/readtraining/Adam/truediv_5*
T0*
_output_shapes

:@ 
�
training/Adam/Assign_16Assigntraining/Adam/Variable_24training/Adam/Maximum_4*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*
_output_shapes

:@ *
use_locking(
�
training/Adam/Assign_17Assigntraining/Adam/Variable_4training/Adam/add_13*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:@ 
�
training/Adam/Assign_18Assigntraining/Adam/Variable_14training/Adam/add_14*
validate_shape(*
_output_shapes

:@ *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14
�
training/Adam/Assign_19Assigndense_3/kerneltraining/Adam/sub_16*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
_output_shapes

:@ 
q
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
T0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_27Multraining/Adam/sub_178training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
: 
r
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_15/read*
T0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_5Square8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
_output_shapes
: *
T0
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
: 
}
training/Adam/Maximum_5Maximumtraining/Adam/Variable_25/readtraining/Adam/add_17*
T0*
_output_shapes
: 
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes
: 
[
training/Adam/Const_12Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_13Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/Maximum_5training/Adam/Const_13*
T0*
_output_shapes
: 
�
training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_12*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
: 
[
training/Adam/add_18/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes
: 
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes
: 
l
training/Adam/sub_19Subdense_3/bias/readtraining/Adam/truediv_6*
T0*
_output_shapes
: 
�
training/Adam/Assign_20Assigntraining/Adam/Variable_25training/Adam/Maximum_5*
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes
: *
use_locking(
�
training/Adam/Assign_21Assigntraining/Adam/Variable_5training/Adam/add_16*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5
�
training/Adam/Assign_22Assigntraining/Adam/Variable_15training/Adam/add_17*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
: 
�
training/Adam/Assign_23Assigndense_3/biastraining/Adam/sub_19*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_31MulAdam/beta_1/readtraining/Adam/Variable_6/read*
T0*
_output_shapes

: @
[
training/Adam/sub_20/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
f
training/Adam/sub_20Subtraining/Adam/sub_20/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_32Multraining/Adam/sub_204training/Adam/gradients/dense_4/MatMul_grad/MatMul_1*
_output_shapes

: @*
T0
p
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
_output_shapes

: @*
T0
v
training/Adam/mul_33MulAdam/beta_2/readtraining/Adam/Variable_16/read*
T0*
_output_shapes

: @
[
training/Adam/sub_21/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_21Subtraining/Adam/sub_21/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_6Square4training/Adam/gradients/dense_4/MatMul_grad/MatMul_1*
T0*
_output_shapes

: @
r
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*
_output_shapes

: @
p
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
_output_shapes

: @*
T0
�
training/Adam/Maximum_6Maximumtraining/Adam/Variable_26/readtraining/Adam/add_20*
T0*
_output_shapes

: @
m
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
_output_shapes

: @*
T0
[
training/Adam/Const_14Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_15Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/Maximum_6training/Adam/Const_15*
_output_shapes

: @*
T0
�
training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_14*
T0*
_output_shapes

: @
d
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
_output_shapes

: @*
T0
[
training/Adam/add_21/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
r
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
T0*
_output_shapes

: @
w
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*
_output_shapes

: @
r
training/Adam/sub_22Subdense_4/kernel/readtraining/Adam/truediv_7*
T0*
_output_shapes

: @
�
training/Adam/Assign_24Assigntraining/Adam/Variable_26training/Adam/Maximum_6*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes

: @
�
training/Adam/Assign_25Assigntraining/Adam/Variable_6training/Adam/add_19*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

: @
�
training/Adam/Assign_26Assigntraining/Adam/Variable_16training/Adam/add_20*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*
_output_shapes

: @
�
training/Adam/Assign_27Assigndense_4/kerneltraining/Adam/sub_22*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes

: @*
use_locking(
q
training/Adam/mul_36MulAdam/beta_1/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
:@
[
training/Adam/sub_23/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_23Subtraining/Adam/sub_23/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_37Multraining/Adam/sub_238training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
:@*
T0
r
training/Adam/mul_38MulAdam/beta_2/readtraining/Adam/Variable_17/read*
T0*
_output_shapes
:@
[
training/Adam/sub_24/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_24Subtraining/Adam/sub_24/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_7Square8training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
:@
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes
:@
}
training/Adam/Maximum_7Maximumtraining/Adam/Variable_27/readtraining/Adam/add_23*
T0*
_output_shapes
:@
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes
:@
[
training/Adam/Const_16Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_17Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/Maximum_7training/Adam/Const_17*
_output_shapes
:@*
T0
�
training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_16*
T0*
_output_shapes
:@
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes
:@
[
training/Adam/add_24/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes
:@
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes
:@
l
training/Adam/sub_25Subdense_4/bias/readtraining/Adam/truediv_8*
T0*
_output_shapes
:@
�
training/Adam/Assign_28Assigntraining/Adam/Variable_27training/Adam/Maximum_7*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:@
�
training/Adam/Assign_29Assigntraining/Adam/Variable_7training/Adam/add_22*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:@
�
training/Adam/Assign_30Assigntraining/Adam/Variable_17training/Adam/add_23*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
:@*
use_locking(
�
training/Adam/Assign_31Assigndense_4/biastraining/Adam/sub_25*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
:@
v
training/Adam/mul_41MulAdam/beta_1/readtraining/Adam/Variable_8/read*
T0*
_output_shapes
:	@�
[
training/Adam/sub_26/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_26Subtraining/Adam/sub_26/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_42Multraining/Adam/sub_264training/Adam/gradients/dense_5/MatMul_grad/MatMul_1*
_output_shapes
:	@�*
T0
q
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
_output_shapes
:	@�*
T0
w
training/Adam/mul_43MulAdam/beta_2/readtraining/Adam/Variable_18/read*
_output_shapes
:	@�*
T0
[
training/Adam/sub_27/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_27Subtraining/Adam/sub_27/xAdam/beta_2/read*
_output_shapes
: *
T0
�
training/Adam/Square_8Square4training/Adam/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@�
s
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
_output_shapes
:	@�*
T0
q
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
_output_shapes
:	@�*
T0
�
training/Adam/Maximum_8Maximumtraining/Adam/Variable_28/readtraining/Adam/add_26*
T0*
_output_shapes
:	@�
n
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*
_output_shapes
:	@�
[
training/Adam/Const_18Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_19Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/Maximum_8training/Adam/Const_19*
T0*
_output_shapes
:	@�
�
training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_18*
T0*
_output_shapes
:	@�
e
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*
_output_shapes
:	@�
[
training/Adam/add_27/yConst*
dtype0*
_output_shapes
: *
valueB
 *��8
s
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*
_output_shapes
:	@�
x
training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
T0*
_output_shapes
:	@�
s
training/Adam/sub_28Subdense_5/kernel/readtraining/Adam/truediv_9*
T0*
_output_shapes
:	@�
�
training/Adam/Assign_32Assigntraining/Adam/Variable_28training/Adam/Maximum_8*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(*
_output_shapes
:	@�*
use_locking(
�
training/Adam/Assign_33Assigntraining/Adam/Variable_8training/Adam/add_25*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:	@�*
use_locking(
�
training/Adam/Assign_34Assigntraining/Adam/Variable_18training/Adam/add_26*
validate_shape(*
_output_shapes
:	@�*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18
�
training/Adam/Assign_35Assigndense_5/kerneltraining/Adam/sub_28*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
_output_shapes
:	@�*
use_locking(
r
training/Adam/mul_46MulAdam/beta_1/readtraining/Adam/Variable_9/read*
T0*
_output_shapes	
:�
[
training/Adam/sub_29/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_29Subtraining/Adam/sub_29/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_47Multraining/Adam/sub_298training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
m
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*
T0*
_output_shapes	
:�
s
training/Adam/mul_48MulAdam/beta_2/readtraining/Adam/Variable_19/read*
T0*
_output_shapes	
:�
[
training/Adam/sub_30/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
f
training/Adam/sub_30Subtraining/Adam/sub_30/xAdam/beta_2/read*
T0*
_output_shapes
: 
�
training/Adam/Square_9Square8training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
o
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*
_output_shapes	
:�
m
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
T0*
_output_shapes	
:�
~
training/Adam/Maximum_9Maximumtraining/Adam/Variable_29/readtraining/Adam/add_29*
_output_shapes	
:�*
T0
j
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
T0*
_output_shapes	
:�
[
training/Adam/Const_20Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_21Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/Maximum_9training/Adam/Const_21*
T0*
_output_shapes	
:�
�
training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_20*
T0*
_output_shapes	
:�
c
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
T0*
_output_shapes	
:�
[
training/Adam/add_30/yConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
p
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
T0*
_output_shapes	
:�
u
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*
T0*
_output_shapes	
:�
n
training/Adam/sub_31Subdense_5/bias/readtraining/Adam/truediv_10*
T0*
_output_shapes	
:�
�
training/Adam/Assign_36Assigntraining/Adam/Variable_29training/Adam/Maximum_9*
T0*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
training/Adam/Assign_37Assigntraining/Adam/Variable_9training/Adam/add_28*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
training/Adam/Assign_38Assigntraining/Adam/Variable_19training/Adam/add_29*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
training/Adam/Assign_39Assigndense_5/biastraining/Adam/sub_31*
T0*
_class
loc:@dense_5/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
training/group_depsNoOp	^loss/mul"^metrics/mean_squared_error/Mean_1^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17^training/Adam/Assign_18^training/Adam/Assign_19^training/Adam/Assign_2^training/Adam/Assign_20^training/Adam/Assign_21^training/Adam/Assign_22^training/Adam/Assign_23^training/Adam/Assign_24^training/Adam/Assign_25^training/Adam/Assign_26^training/Adam/Assign_27^training/Adam/Assign_28^training/Adam/Assign_29^training/Adam/Assign_3^training/Adam/Assign_30^training/Adam/Assign_31^training/Adam/Assign_32^training/Adam/Assign_33^training/Adam/Assign_34^training/Adam/Assign_35^training/Adam/Assign_36^training/Adam/Assign_37^training/Adam/Assign_38^training/Adam/Assign_39^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9
�
IsVariableInitializedIsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializeddense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_5IsVariableInitializeddense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitializeddense_4/kernel*!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_7IsVariableInitializeddense_4/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_4/bias
�
IsVariableInitialized_8IsVariableInitializeddense_5/kernel*!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializeddense_5/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_5/bias
�
IsVariableInitialized_10IsVariableInitializedAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
{
IsVariableInitialized_11IsVariableInitializedAdam/lr*
dtype0*
_output_shapes
: *
_class
loc:@Adam/lr
�
IsVariableInitialized_12IsVariableInitializedAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedAdam/beta_2*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2
�
IsVariableInitialized_14IsVariableInitialized
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_3*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_3
�
IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_4*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_4
�
IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_21IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_22IsVariableInitializedtraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_23IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_24IsVariableInitializedtraining/Adam/Variable_9*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_9
�
IsVariableInitialized_25IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_26IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_27IsVariableInitializedtraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_28IsVariableInitializedtraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_29IsVariableInitializedtraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_30IsVariableInitializedtraining/Adam/Variable_15*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_15
�
IsVariableInitialized_31IsVariableInitializedtraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_32IsVariableInitializedtraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_33IsVariableInitializedtraining/Adam/Variable_18*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_18
�
IsVariableInitialized_34IsVariableInitializedtraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_35IsVariableInitializedtraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_36IsVariableInitializedtraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_37IsVariableInitializedtraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_38IsVariableInitializedtraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_39IsVariableInitializedtraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_40IsVariableInitializedtraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_41IsVariableInitializedtraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_42IsVariableInitializedtraining/Adam/Variable_27*,
_class"
 loc:@training/Adam/Variable_27*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_43IsVariableInitializedtraining/Adam/Variable_28*,
_class"
 loc:@training/Adam/Variable_28*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_44IsVariableInitializedtraining/Adam/Variable_29*,
_class"
 loc:@training/Adam/Variable_29*
dtype0*
_output_shapes
: 
�

initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign^dense_4/bias/Assign^dense_4/kernel/Assign^dense_5/bias/Assign^dense_5/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign""�'
trainable_variables�'�'
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
\
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02dense_3/random_uniform:08
M
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02dense_3/Const:08
\
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02dense_4/random_uniform:08
M
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02dense_4/Const:08
\
dense_5/kernel:0dense_5/kernel/Assigndense_5/kernel/read:02dense_5/random_uniform:08
M
dense_5/bias:0dense_5/bias/Assigndense_5/bias/read:02dense_5/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08
}
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:08
}
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:08
}
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:08
}
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:08
}
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:08
}
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:08"�'
	variables�'�'
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
\
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02dense_3/random_uniform:08
M
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02dense_3/Const:08
\
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02dense_4/random_uniform:08
M
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02dense_4/Const:08
\
dense_5/kernel:0dense_5/kernel/Assigndense_5/kernel/read:02dense_5/random_uniform:08
M
dense_5/bias:0dense_5/bias/Assigndense_5/bias/read:02dense_5/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08
}
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:08
}
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:08
}
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:08
}
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:08
}
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:08
}
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:085�9�       �K"	�2�l<�A*

loss��A[�&       sO� 	��2�l<�A*

mean_squared_error��AT��       ��-	�ʹ�l<�A*

loss`I�?' �p(       �pJ	Sδ�l<�A*

mean_squared_error`I�?;WA       ��-	Nb8�l<�A*

loss�v�>��T(       �pJ	�b8�l<�A*

mean_squared_error�v�>��Z�       ��-	Z���l<�A*

lossNK�=�]:^(       �pJ	����l<�A*

mean_squared_errorNK�=�Y�       ��-	(E�l<�A*

loss��=H�%(       �pJ	�E�l<�A*

mean_squared_error��=sH-y       ��-	'g��l<�A*

lossR�N=.�2�(       �pJ	�g��l<�A*

mean_squared_errorR�N=iMSw       ��-	�&�l<�A*

loss*�%=��W(       �pJ	M&�l<�A*

mean_squared_error*�%=H#�1       ��-	�љ�l<�A*

loss�x=b (       �pJ	$ҙ�l<�A*

mean_squared_error�x=��X�       ��-	��l<�A*

loss���<�E�(       �pJ	���l<�A*

mean_squared_error���<��w       ��-	�	� m<�A	*

lossW��<���(       �pJ	
� m<�A	*

mean_squared_errorW��<�r�
       ��-	�m<�A
*

loss���<�RR(       �pJ	��m<�A
*

mean_squared_error���<N�T^       ��-	{�m<�A*

loss&�<��R�(       �pJ	�m<�A*

mean_squared_error&�<:��       ��-	�'m<�A*

loss5�<vx%(       �pJ	U'm<�A*

mean_squared_error5�<"ׇV       ��-	-`�m<�A*

loss&P�<f�(       �pJ	�`�m<�A*

mean_squared_error&P�<u�l�       ��-	Gx,m<�A*

lossD�k<����(       �pJ	�x,m<�A*

mean_squared_errorD�k<���       ��-	tF�	m<�A*

loss��X<0��(       �pJ	G�	m<�A*

mean_squared_error��X<O��       ��-	�Y/m<�A*

loss�?H<�(5(       �pJ	lZ/m<�A*

mean_squared_error�?H<�O��       ��-	�ŭm<�A*

loss[:<�MJ�(       �pJ	3ƭm<�A*

mean_squared_error[:<C�r       ��-	4�>m<�A*

loss�H.<�s�(       �pJ	��>m<�A*

mean_squared_error�H.<��g�       ��-	D�m<�A*

loss&�#<��C(       �pJ	�D�m<�A*

mean_squared_error&�#<Lf��       ��-	�(@m<�A*

loss<�U�`(       �pJ	J)@m<�A*

mean_squared_error<L�A        ��-	���m<�A*

loss�R<5{�(       �pJ	F��m<�A*

mean_squared_error�R<�}�,       ��-	�Am<�A*

loss�h<㈠Z(       �pJ	t�Am<�A*

mean_squared_error�h<C�o       ��-	�"�m<�A*

loss��<t�D(       �pJ	h#�m<�A*

mean_squared_error��<��}�       ��-	w�Lm<�A*

loss���;t_�R(       �pJ	�Lm<�A*

mean_squared_error���;��O�       ��-	9��m<�A*

loss���;�QR�(       �pJ	ǝ�m<�A*

mean_squared_error���;a��\       ��-	��\m<�A*

loss���;�|��(       �pJ	@�\m<�A*

mean_squared_error���;�[��       ��-	�N�m<�A*

losse��;�J(       �pJ	{O�m<�A*

mean_squared_errore��;�p�=       ��-	�okm<�A*

loss�K�;��#�(       �pJ	pkm<�A*

mean_squared_error�K�;r��       ��-	z��m<�A*

loss���;j�8(       �pJ		��m<�A*

mean_squared_error���;�[g)       ��-	�sz m<�A*

loss�2�;�y�.(       �pJ	:tz m<�A*

mean_squared_error�2�;���       ��-	�E"m<�A*

loss9�;:�5�(       �pJ	-F"m<�A*

mean_squared_error9�;s�S�       ��-	�J�#m<�A *

loss�J�;bx-�(       �pJ	sK�#m<�A *

mean_squared_error�J�;ub�|       ��-	J%m<�A!*

loss�;Q�(       �pJ	�J%m<�A!*

mean_squared_error�;5.��       ��-	W�&m<�A"*

loss�b�;���(       �pJ	�W�&m<�A"*

mean_squared_error�b�;��       ��-	�2(m<�A#*

loss�ɠ;4�/�(       �pJ	��2(m<�A#*

mean_squared_error�ɠ;)o~	       ��-	=A�)m<�A$*

loss@��;��d�(       �pJ	�A�)m<�A$*

mean_squared_error@��;���       ��-	:�?+m<�A%*

lossB�;e��(       �pJ	��?+m<�A%*

mean_squared_errorB�;���       ��-	$��,m<�A&*

loss�y�;U�?Y(       �pJ	���,m<�A&*

mean_squared_error�y�;F�v       ��-	`P.m<�A'*

lossG�;_��(       �pJ	�P.m<�A'*

mean_squared_errorG�;(�t�       ��-	L5�/m<�A(*

loss�<�;�|f�(       �pJ	�5�/m<�A(*

mean_squared_error�<�;K�6�       ��-	;�a1m<�A)*

lossm�;�D�(       �pJ	��a1m<�A)*

mean_squared_errorm�;bU��       ��-	8��2m<�A**

loss�Ȃ;Yu$(       �pJ	���2m<�A**

mean_squared_error�Ȃ;��q#       ��-	-�o4m<�A+*

lossi�~;o�~g(       �pJ	��o4m<�A+*

mean_squared_errori�~;��tY       ��-	�	�5m<�A,*

lossq=x;O�WA(       �pJ	1
�5m<�A,*

mean_squared_errorq=x;E_
�       ��-	O~7m<�A-*

loss)r;����(       �pJ	�~7m<�A-*

mean_squared_error)r;f�
       ��-	Fu
9m<�A.*

loss-�k;����(       �pJ	�u
9m<�A.*

mean_squared_error-�k;6�R       ��-	��:m<�A/*

lossc�f;����(       �pJ	���:m<�A/*

mean_squared_errorc�f;���       ��-	5<m<�A0*

loss�&a;�>(       �pJ	�5<m<�A0*

mean_squared_error�&a;�ϡv       ��-	Ov�=m<�A1*

loss��[;�u�(       �pJ	�v�=m<�A1*

mean_squared_error��[;v�ɫ       ��-	�� ?m<�A2*

lossK#W;�e��(       �pJ	W� ?m<�A2*

mean_squared_errorK#W;�8c7       ��-	}X�@m<�A3*

lossYR;gQ-(       �pJ	Y�@m<�A3*

mean_squared_errorYR;��       ��-	�o'Bm<�A4*

loss�ZW;��O(       �pJ	�p'Bm<�A4*

mean_squared_error�ZW;�� q       ��-	難Cm<�A5*

loss_�K;�;f�(       �pJ	~��Cm<�A5*

mean_squared_error_�K;$b       ��-	�-2Em<�A6*

lossk�F;jyv�(       �pJ	V.2Em<�A6*

mean_squared_errork�F;4�Ի       ��-	x�Fm<�A7*

loss;{B;�v�F(       �pJ	
�Fm<�A7*

mean_squared_error;{B;����       ��-	yz<Hm<�A8*

loss �>;�S�n(       �pJ	{<Hm<�A8*

mean_squared_error �>;d+�R