ŚÆ

Į66
:
Add
x"T
y"T
z"T"
Ttype:
2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
”
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
ŗ
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

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
2	
d
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
„
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
·
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
§
SparseSegmentMean	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
Æ
SparseSegmentSum	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2	"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
Ą
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
<
Sub
x"T
y"T
z"T"
Ttype:
2	

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint’’’’’’’’’
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
9
VarIsInitializedOp
resource
is_initialized

E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Ń	

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 

global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
f
PlaceholderPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
D
	map/ShapeShapePlaceholder*
T0*
_output_shapes
:
a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Į
map/strided_sliceStridedSlice	map/Shapemap/strided_slice/stackmap/strided_slice/stack_1map/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
j
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

map/TensorArrayV2TensorListReservemap/TensorArrayV2/element_shapemap/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
_
map/TensorArrayUnstack/ConstConst*
_output_shapes
: *
dtype0*
valueB 
­
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorPlaceholdermap/TensorArrayUnstack/Const*
_output_shapes
: *
element_dtype0*

shape_type0
K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

map/TensorArrayV2_1TensorListReserve!map/TensorArrayV2_1/element_shapemap/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 

	map/whileStatelessWhilemap/while/loop_countermap/strided_slice	map/Constmap/TensorArrayV2_1map/strided_slice+map/TensorArrayUnstack/TensorListFromTensor*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 * 
bodyR
map_while_body_49115* 
condR
map_while_cond_49114*
output_shapes
: : : : : : 
J
map/while/IdentityIdentity	map/while*
T0*
_output_shapes
: 
N
map/while/Identity_1Identitymap/while:1*
T0*
_output_shapes
: 
N
map/while/Identity_2Identitymap/while:2*
T0*
_output_shapes
: 
N
map/while/Identity_3Identitymap/while:3*
T0*
_output_shapes
: 
N
map/while/Identity_4Identitymap/while:4*
T0*
_output_shapes
: 
N
map/while/Identity_5Identitymap/while:5*
T0*
_output_shapes
: 

4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
Ģ
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while/Identity_34map/TensorArrayV2Stack/TensorListStack/element_shape*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
„
qdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*a
_classW
USloc:@dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*
_output_shapes
:*
dtype0*
valueB"  F   

pdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/meanConst*a
_classW
USloc:@dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*
_output_shapes
: *
dtype0*
valueB
 *    

rdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*a
_classW
USloc:@dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*
_output_shapes
: *
dtype0*
valueB
 *gČō=

{dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalqdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/shape*
T0*a
_classW
USloc:@dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*
_output_shapes
:	'F*
dtype0
ō
odnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/mulMul{dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalrdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0*a
_classW
USloc:@dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*
_output_shapes
:	'F
ā
kdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normalAddodnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/mulpdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*a
_classW
USloc:@dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*
_output_shapes
:	'F
Ü
Ndnn/input_from_feature_columns/input_layer/content_embedding/embedding_weightsVarHandleOp*a
_classW
USloc:@dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*
_output_shapes
: *
dtype0*
shape:	'F*_
shared_namePNdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights
ķ
odnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpNdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*
_output_shapes
: 
³
Udnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/AssignAssignVariableOpNdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weightskdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal*
dtype0
ņ
bdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Read/ReadVariableOpReadVariableOpNdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*
_output_shapes
:	'F*
dtype0

]dnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
„
Wdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/NotEqualNotEqual&map/TensorArrayV2Stack/TensorListStack]dnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/ignore_value/x*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
į
Vdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/indicesWhereWdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
„
Udnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/valuesGatherNd&map/TensorArrayV2Stack/TensorListStackVdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
Ą
Zdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/dense_shapeShape&map/TensorArrayV2Stack/TensorListStack*
T0*
_output_shapes
:*
out_type0	
ļ
Ednn/input_from_feature_columns/input_layer/content_embedding_1/lookupStringToHashBucketFastUdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/values*#
_output_shapes
:’’’’’’’’’*
num_buckets'
®
ddnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
­
cdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Ą
^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SliceSliceZdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/dense_shapeddnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice/begincdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
Ø
^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ę
]dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/ProdProd^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Const*
T0	*
_output_shapes
: 
«
idnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Ø
fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ą
adnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2GatherV2Zdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/dense_shapeidnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2/indicesfdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
×
_dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Cast/xPack]dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Prodadnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
»
fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseReshapeSparseReshapeVdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/indicesZdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/dense_shape_dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
š
odnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseReshape/IdentityIdentityEdnn/input_from_feature_columns/input_layer/content_embedding_1/lookup*
T0	*#
_output_shapes
:’’’’’’’’’
©
gdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ż
ednn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GreaterEqualGreaterEqualodnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseReshape/Identitygdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’
÷
^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/WhereWhereednn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’
¹
fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
į
`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/ReshapeReshape^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Wherefdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’
Ŗ
hdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ų
cdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2_1GatherV2fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseReshape`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshapehdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:’’’’’’’’’
Ŗ
hdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ż
cdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2_2GatherV2odnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseReshape/Identity`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshapehdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:’’’’’’’’’
ü
adnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/IdentityIdentityhdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
“
rdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowscdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2_1cdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/GatherV2_2adnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Identityrdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’
Ö
dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ų
dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ų
dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      

~dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicednn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/strided_slice/stackdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
end_mask*
shrink_axis_mask
Ć
wdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/UniqueUniquednn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherNdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weightswdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/Unique*
Tindices0	*a
_classW
USloc:@dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*'
_output_shapes
:’’’’’’’’’F*
dtype0
°
dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitydnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*a
_classW
USloc:@dnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights*'
_output_shapes
:’’’’’’’’’F
Ų
dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identitydnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:’’’’’’’’’F
Ō
pdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparseSparseSegmentMeandnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1ydnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/Unique:1~dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:’’’’’’’’’F
¹
hdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   

bdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshape_1Reshapednn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2hdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’
ž
^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/ShapeShapepdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
¶
ldnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ø
ndnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ø
ndnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ź
fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/strided_sliceStridedSlice^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Shapeldnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/strided_slice/stackndnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/strided_slice/stack_1ndnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
¢
`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Ž
^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/stackPack`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/stack/0fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/strided_slice*
N*
T0*
_output_shapes
:
ä
]dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/TileTilebdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshape_1^dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

cdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/zeros_like	ZerosLikepdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’F
Ź
Xdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weightsSelect]dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Tilecdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/zeros_likepdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’F
÷
_dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Cast_1CastZdnn/input_from_feature_columns/input_layer/content_embedding_1/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
°
fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Æ
ednn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Ė
`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_1Slice_dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Cast_1fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_1/beginednn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
č
`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Shape_1ShapeXdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights*
T0*
_output_shapes
:
°
fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
ø
ednn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
Ģ
`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_2Slice`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Shape_1fdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_2/beginednn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
¦
ddnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ć
_dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/concatConcatV2`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_1`dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Slice_2ddnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
Ś
bdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshape_2ReshapeXdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights_dnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’F
Ö
Ddnn/input_from_feature_columns/input_layer/content_embedding_1/ShapeShapebdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshape_2*
T0*
_output_shapes
:

Rdnn/input_from_feature_columns/input_layer/content_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Tdnn/input_from_feature_columns/input_layer/content_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Tdnn/input_from_feature_columns/input_layer/content_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
č
Ldnn/input_from_feature_columns/input_layer/content_embedding_1/strided_sliceStridedSliceDdnn/input_from_feature_columns/input_layer/content_embedding_1/ShapeRdnn/input_from_feature_columns/input_layer/content_embedding_1/strided_slice/stackTdnn/input_from_feature_columns/input_layer/content_embedding_1/strided_slice/stack_1Tdnn/input_from_feature_columns/input_layer/content_embedding_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Ndnn/input_from_feature_columns/input_layer/content_embedding_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :F
 
Ldnn/input_from_feature_columns/input_layer/content_embedding_1/Reshape/shapePackLdnn/input_from_feature_columns/input_layer/content_embedding_1/strided_sliceNdnn/input_from_feature_columns/input_layer/content_embedding_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
µ
Fdnn/input_from_feature_columns/input_layer/content_embedding_1/ReshapeReshapebdnn/input_from_feature_columns/input_layer/content_embedding_1/content_embedding_weights/Reshape_2Ldnn/input_from_feature_columns/input_layer/content_embedding_1/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’F

<dnn/input_from_feature_columns/input_layer/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
¾
8dnn/input_from_feature_columns/input_layer/concat/concatIdentityFdnn/input_from_feature_columns/input_layer/content_embedding_1/Reshape*
T0*'
_output_shapes
:’’’’’’’’’F
·
9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
:*
dtype0*
valueB"F      
©
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *bńĻ½
©
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *bńĻ=
ń
Adnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
:	F*
dtype0
ž
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: 

7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
:	F

3dnn/hiddenlayer_0/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
:	F
ŗ
dnn/hiddenlayer_0/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
shape:	F*)
shared_namednn/hiddenlayer_0/kernel

9dnn/hiddenlayer_0/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel*
_output_shapes
: 

dnn/hiddenlayer_0/kernel/AssignAssignVariableOpdnn/hiddenlayer_0/kernel3dnn/hiddenlayer_0/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_0/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes
:	F*
dtype0
¢
(dnn/hiddenlayer_0/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes	
:*
dtype0*
valueB*    
°
dnn/hiddenlayer_0/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
: *
dtype0*
shape:*'
shared_namednn/hiddenlayer_0/bias
}
7dnn/hiddenlayer_0/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias*
_output_shapes
: 

dnn/hiddenlayer_0/bias/AssignAssignVariableOpdnn/hiddenlayer_0/bias(dnn/hiddenlayer_0/bias/Initializer/zeros*
dtype0
~
*dnn/hiddenlayer_0/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes	
:*
dtype0

'dnn/hiddenlayer_0/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes
:	F*
dtype0
ø
dnn/hiddenlayer_0/MatMulMatMul8dnn/input_from_feature_columns/input_layer/concat/concat'dnn/hiddenlayer_0/MatMul/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’
|
(dnn/hiddenlayer_0/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes	
:*
dtype0

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMul(dnn/hiddenlayer_0/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’
l
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
T0*
_output_shapes
: *
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’

dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
ü
dnn/zero_fraction/condStatelessIfdnn/zero_fraction/LessEqualdnn/hiddenlayer_0/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *5
else_branch&R$
"dnn_zero_fraction_cond_false_49371*
output_shapes
: : : : : : *4
then_branch%R#
!dnn_zero_fraction_cond_true_49370
d
dnn/zero_fraction/cond/IdentityIdentitydnn/zero_fraction/cond*
T0	*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_1Identitydnn/zero_fraction/cond:1*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_2Identitydnn/zero_fraction/cond:2*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_3Identitydnn/zero_fraction/cond:3*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_4Identitydnn/zero_fraction/cond:4*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_5Identitydnn/zero_fraction/cond:5*
T0*
_output_shapes
: 

(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Identity*
T0	*
_output_shapes
: 

)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
°
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_0/fraction_of_zero_values
§
)dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_0/activation

dnn/hiddenlayer_0/activationHistogramSummary dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
·
9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:*
dtype0*
valueB"       
©
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *A×½
©
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *A×=
ń
Adnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:	 *
dtype0
ž
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: 

7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:	 

3dnn/hiddenlayer_1/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:	 
ŗ
dnn/hiddenlayer_1/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
shape:	 *)
shared_namednn/hiddenlayer_1/kernel

9dnn/hiddenlayer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel*
_output_shapes
: 

dnn/hiddenlayer_1/kernel/AssignAssignVariableOpdnn/hiddenlayer_1/kernel3dnn/hiddenlayer_1/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_1/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes
:	 *
dtype0
 
(dnn/hiddenlayer_1/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
: *
dtype0*
valueB *    
Æ
dnn/hiddenlayer_1/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
: *
dtype0*
shape: *'
shared_namednn/hiddenlayer_1/bias
}
7dnn/hiddenlayer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias*
_output_shapes
: 

dnn/hiddenlayer_1/bias/AssignAssignVariableOpdnn/hiddenlayer_1/bias(dnn/hiddenlayer_1/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_1/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
: *
dtype0

'dnn/hiddenlayer_1/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes
:	 *
dtype0

dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Relu'dnn/hiddenlayer_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’ 
{
(dnn/hiddenlayer_1/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
: *
dtype0

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMul(dnn/hiddenlayer_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’ 
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’ 
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’

dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_1/condStatelessIfdnn/zero_fraction_1/LessEqualdnn/hiddenlayer_1/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_1_cond_false_49441*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_1_cond_true_49440
h
!dnn/zero_fraction_1/cond/IdentityIdentitydnn/zero_fraction_1/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_1Identitydnn/zero_fraction_1/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_2Identitydnn/zero_fraction_1/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_3Identitydnn/zero_fraction_1/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_4Identitydnn/zero_fraction_1/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_5Identitydnn/zero_fraction_1/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Size!dnn/zero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
¶
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_1/fraction_of_zero_values
©
)dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_1/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_1/activation

dnn/hiddenlayer_1/activationHistogramSummary dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
©
2dnn/logits/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
:*
dtype0*
valueB"    6   

0dnn/logits/kernel/Initializer/random_uniform/minConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *½<¾

0dnn/logits/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *½<>
Ū
:dnn/logits/kernel/Initializer/random_uniform/RandomUniformRandomUniform2dnn/logits/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

: 6*
dtype0
ā
0dnn/logits/kernel/Initializer/random_uniform/subSub0dnn/logits/kernel/Initializer/random_uniform/max0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: 
ō
0dnn/logits/kernel/Initializer/random_uniform/mulMul:dnn/logits/kernel/Initializer/random_uniform/RandomUniform0dnn/logits/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

: 6
ę
,dnn/logits/kernel/Initializer/random_uniformAdd0dnn/logits/kernel/Initializer/random_uniform/mul0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

: 6
¤
dnn/logits/kernelVarHandleOp*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
shape
: 6*"
shared_namednn/logits/kernel
s
2dnn/logits/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel*
_output_shapes
: 
z
dnn/logits/kernel/AssignAssignVariableOpdnn/logits/kernel,dnn/logits/kernel/Initializer/random_uniform*
dtype0
w
%dnn/logits/kernel/Read/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

: 6*
dtype0

!dnn/logits/bias/Initializer/zerosConst*"
_class
loc:@dnn/logits/bias*
_output_shapes
:6*
dtype0*
valueB6*    

dnn/logits/biasVarHandleOp*"
_class
loc:@dnn/logits/bias*
_output_shapes
: *
dtype0*
shape:6* 
shared_namednn/logits/bias
o
0dnn/logits/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias*
_output_shapes
: 
k
dnn/logits/bias/AssignAssignVariableOpdnn/logits/bias!dnn/logits/bias/Initializer/zeros*
dtype0
o
#dnn/logits/bias/Read/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:6*
dtype0
r
 dnn/logits/MatMul/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

: 6*
dtype0

dnn/logits/MatMulMatMuldnn/hiddenlayer_1/Relu dnn/logits/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’6
m
!dnn/logits/BiasAdd/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:6*
dtype0

dnn/logits/BiasAddBiasAdddnn/logits/MatMul!dnn/logits/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’6
e
dnn/zero_fraction_2/SizeSizednn/logits/BiasAdd*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’

dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_2/condStatelessIfdnn/zero_fraction_2/LessEqualdnn/logits/BiasAdd*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_2_cond_false_49510*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_2_cond_true_49509
h
!dnn/zero_fraction_2/cond/IdentityIdentitydnn/zero_fraction_2/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_1Identitydnn/zero_fraction_2/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_2Identitydnn/zero_fraction_2/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_3Identitydnn/zero_fraction_2/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_4Identitydnn/zero_fraction_2/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_5Identitydnn/zero_fraction_2/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Size!dnn/zero_fraction_2/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

DstT0*

SrcT0	*
_output_shapes
: 
¶
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
T0*
_output_shapes
: 

'dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*3
value*B( B"dnn/logits/fraction_of_zero_values

"dnn/logits/fraction_of_zero_valuesScalarSummary'dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 
o
dnn/logits/activation/tagConst*
_output_shapes
: *
dtype0*&
valueB Bdnn/logits/activation
p
dnn/logits/activationHistogramSummarydnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
Ī
Elinear/linear_model/content/weights/Initializer/zeros/shape_as_tensorConst*6
_class,
*(loc:@linear/linear_model/content/weights*
_output_shapes
:*
dtype0*
valueB"  6   
ø
;linear/linear_model/content/weights/Initializer/zeros/ConstConst*6
_class,
*(loc:@linear/linear_model/content/weights*
_output_shapes
: *
dtype0*
valueB
 *    
£
5linear/linear_model/content/weights/Initializer/zerosFillElinear/linear_model/content/weights/Initializer/zeros/shape_as_tensor;linear/linear_model/content/weights/Initializer/zeros/Const*
T0*6
_class,
*(loc:@linear/linear_model/content/weights*
_output_shapes
:	'6
Ū
#linear/linear_model/content/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/content/weights*
_output_shapes
: *
dtype0*
shape:	'6*4
shared_name%#linear/linear_model/content/weights

Dlinear/linear_model/content/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/content/weights*
_output_shapes
: 
§
*linear/linear_model/content/weights/AssignAssignVariableOp#linear/linear_model/content/weights5linear/linear_model/content/weights/Initializer/zeros*
dtype0

7linear/linear_model/content/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/content/weights*
_output_shapes
:	'6*
dtype0
“
2linear/linear_model/bias_weights/Initializer/zerosConst*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
:6*
dtype0*
valueB6*    
Ķ
 linear/linear_model/bias_weightsVarHandleOp*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
: *
dtype0*
shape:6*1
shared_name" linear/linear_model/bias_weights

Alinear/linear_model/bias_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp linear/linear_model/bias_weights*
_output_shapes
: 

'linear/linear_model/bias_weights/AssignAssignVariableOp linear/linear_model/bias_weights2linear/linear_model/bias_weights/Initializer/zeros*
dtype0

4linear/linear_model/bias_weights/Read/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:6*
dtype0
£
blinear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
Æ
\linear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/NotEqualNotEqual&map/TensorArrayV2Stack/TensorListStackblinear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/ignore_value/x*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
ė
[linear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/indicesWhere\linear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
Æ
Zlinear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/valuesGatherNd&map/TensorArrayV2Stack/TensorListStack[linear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
Å
_linear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/dense_shapeShape&map/TensorArrayV2Stack/TensorListStack*
T0*
_output_shapes
:*
out_type0	
ł
Jlinear/linear_model/linear/linear_model/linear/linear_model/content/lookupStringToHashBucketFastZlinear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/values*#
_output_shapes
:’’’’’’’’’*
num_buckets'
ė
Nlinear/linear_model/linear/linear_model/linear/linear_model/content/Shape/CastCast_linear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
”
Wlinear/linear_model/linear/linear_model/linear/linear_model/content/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
£
Ylinear/linear_model/linear/linear_model/linear/linear_model/content/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
£
Ylinear/linear_model/linear/linear_model/linear/linear_model/content/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Qlinear/linear_model/linear/linear_model/linear/linear_model/content/strided_sliceStridedSliceNlinear/linear_model/linear/linear_model/linear/linear_model/content/Shape/CastWlinear/linear_model/linear/linear_model/linear/linear_model/content/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/content/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/content/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Llinear/linear_model/linear/linear_model/linear/linear_model/content/Cast/x/1Const*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
”
Jlinear/linear_model/linear/linear_model/linear/linear_model/content/Cast/xPackQlinear/linear_model/linear/linear_model/linear/linear_model/content/strided_sliceLlinear/linear_model/linear/linear_model/linear/linear_model/content/Cast/x/1*
N*
T0*
_output_shapes
:
Š
Hlinear/linear_model/linear/linear_model/linear/linear_model/content/CastCastJlinear/linear_model/linear/linear_model/linear/linear_model/content/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:

Qlinear/linear_model/linear/linear_model/linear/linear_model/content/SparseReshapeSparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/indices_linear/linear_model/linear/linear_model/linear/linear_model/content/to_sparse_input/dense_shapeHlinear/linear_model/linear/linear_model/linear/linear_model/content/Cast*-
_output_shapes
:’’’’’’’’’:
ą
Zlinear/linear_model/linear/linear_model/linear/linear_model/content/SparseReshape/IdentityIdentityJlinear/linear_model/linear/linear_model/linear/linear_model/content/lookup*
T0	*#
_output_shapes
:’’’’’’’’’
¦
\linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
„
[linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
”
Vlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SliceSliceSlinear/linear_model/linear/linear_model/linear/linear_model/content/SparseReshape:1\linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice/begin[linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
 
Vlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
®
Ulinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/ProdProdVlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SliceVlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Const*
T0	*
_output_shapes
: 
£
alinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
 
^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Į
Ylinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2GatherV2Slinear/linear_model/linear/linear_model/linear/linear_model/content/SparseReshape:1alinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2/indices^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
æ
Wlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Cast/xPackUlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/ProdYlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:

^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseReshapeSparseReshapeQlinear/linear_model/linear/linear_model/linear/linear_model/content/SparseReshapeSlinear/linear_model/linear/linear_model/linear/linear_model/content/SparseReshape:1Wlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Cast/x*-
_output_shapes
:’’’’’’’’’:
ż
glinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseReshape/IdentityIdentityZlinear/linear_model/linear/linear_model/linear/linear_model/content/SparseReshape/Identity*
T0	*#
_output_shapes
:’’’’’’’’’
”
_linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
å
]linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GreaterEqualGreaterEqualglinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseReshape/Identity_linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’
ē
Vlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/WhereWhere]linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GreaterEqual*'
_output_shapes
:’’’’’’’’’
±
^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
É
Xlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/ReshapeReshapeVlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Where^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’
¢
`linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ų
[linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2_1GatherV2^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseReshapeXlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:’’’’’’’’’
¢
`linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ż
[linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2_2GatherV2glinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseReshape/IdentityXlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:’’’’’’’’’
ģ
Ylinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/IdentityIdentity`linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
¬
jlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ļ
xlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows[linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2_1[linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/GatherV2_2Ylinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Identityjlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’
Ķ
|linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ļ
~linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ļ
~linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
ó
vlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicexlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows|linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/strided_slice/stack~linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1~linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
end_mask*
shrink_axis_mask
²
olinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/UniqueUniquezlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

ylinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather#linear/linear_model/content/weightsolinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*6
_class,
*(loc:@linear/linear_model/content/weights*'
_output_shapes
:’’’’’’’’’6*
dtype0
ō
linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityylinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*6
_class,
*(loc:@linear/linear_model/content/weights*'
_output_shapes
:’’’’’’’’’6
Č
linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:’’’’’’’’’6
³
hlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1qlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/Unique:1vlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:’’’’’’’’’6
±
`linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
õ
Zlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape_1Reshapezlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2`linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’
ī
Vlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/ShapeShapehlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
®
dlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
°
flinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
°
flinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ā
^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/strided_sliceStridedSliceVlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Shapedlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/strided_slice/stackflinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/strided_slice/stack_1flinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Xlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Ę
Vlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/stackPackXlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/stack/0^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
Ģ
Ulinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/TileTileZlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape_1Vlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

[linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/zeros_like	ZerosLikehlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’6
Ŗ
Plinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sumSelectUlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Tile[linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/zeros_likehlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’6
č
Wlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Cast_1CastSlinear/linear_model/linear/linear_model/linear/linear_model/content/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Ø
^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
§
]linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
«
Xlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_1SliceWlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Cast_1^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_1/begin]linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ų
Xlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Shape_1ShapePlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum*
T0*
_output_shapes
:
Ø
^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
°
]linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
¬
Xlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_2SliceXlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Shape_1^linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_2/begin]linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

\linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
£
Wlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/concatConcatV2Xlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_1Xlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Slice_2\linear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
Ā
Zlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape_2ReshapePlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sumWlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/concat*
T0*'
_output_shapes
:’’’’’’’’’6
ź
Plinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasIdentityZlinear/linear_model/linear/linear_model/linear/linear_model/content/weighted_sum/Reshape_2*
T0*'
_output_shapes
:’’’’’’’’’6
“
Wlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:6*
dtype0
°
Hlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sumBiasAddPlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasWlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’6
M
bias/tagConst*
_output_shapes
: *
dtype0*
valueB
 Bbias
p
bias/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:6*
dtype0
O
biasHistogramSummarybias/tagbias/ReadVariableOp*
_output_shapes
: 

,zero_fraction/total_size/Size/ReadVariableOpReadVariableOp#linear/linear_model/content/weights*
_output_shapes
:	'6*
dtype0
a
zero_fraction/total_size/SizeConst*
_output_shapes
: *
dtype0	*
valueB		 R°½
`
zero_fraction/total_zero/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

zero_fraction/total_zero/EqualEqualzero_fraction/total_size/Sizezero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
“
#zero_fraction/total_zero/zero_countIfzero_fraction/total_zero/Equal#linear/linear_model/content/weightszero_fraction/total_size/Size*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*B
else_branch3R1
/zero_fraction_total_zero_zero_count_false_49655*
output_shapes
: *A
then_branch2R0
.zero_fraction_total_zero_zero_count_true_49654
~
,zero_fraction/total_zero/zero_count/IdentityIdentity#zero_fraction/total_zero/zero_count*
T0*
_output_shapes
: 
y
"zero_fraction/compute/float32_sizeCastzero_fraction/total_size/Size*

DstT0*

SrcT0	*
_output_shapes
: 

zero_fraction/compute/truedivRealDiv,zero_fraction/total_zero/zero_count/Identity"zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
n
"zero_fraction/zero_fraction_or_nanIdentityzero_fraction/compute/truediv*
T0*
_output_shapes
: 
v
fraction_of_zero_weights/tagsConst*
_output_shapes
: *
dtype0*)
value B Bfraction_of_zero_weights

fraction_of_zero_weightsScalarSummaryfraction_of_zero_weights/tags"zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 

zero_fraction_1/SizeSizeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*
_output_shapes
: *
out_type0	
a
zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’
z
zero_fraction_1/LessEqual	LessEqualzero_fraction_1/Sizezero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 

zero_fraction_1/condStatelessIfzero_fraction_1/LessEqualHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *3
else_branch$R"
 zero_fraction_1_cond_false_49704*
output_shapes
: *2
then_branch#R!
zero_fraction_1_cond_true_49703
`
zero_fraction_1/cond/IdentityIdentityzero_fraction_1/cond*
T0	*
_output_shapes
: 

&zero_fraction_1/counts_to_fraction/subSubzero_fraction_1/Sizezero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 

'zero_fraction_1/counts_to_fraction/CastCast&zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
w
)zero_fraction_1/counts_to_fraction/Cast_1Castzero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ŗ
*zero_fraction_1/counts_to_fraction/truedivRealDiv'zero_fraction_1/counts_to_fraction/Cast)zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
q
zero_fraction_1/fractionIdentity*zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 

#linear/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*/
value&B$ Blinear/fraction_of_zero_values

linear/fraction_of_zero_valuesScalarSummary#linear/fraction_of_zero_values/tagszero_fraction_1/fraction*
T0*
_output_shapes
: 
g
linear/activation/tagConst*
_output_shapes
: *
dtype0*"
valueB Blinear/activation

linear/activationHistogramSummarylinear/activation/tagHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
_output_shapes
: 

addAddV2dnn/logits/BiasAddHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*'
_output_shapes
:’’’’’’’’’6
D
head/logits/ShapeShapeadd*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
`
head/predictions/probabilitiesSoftmaxadd*
T0*'
_output_shapes
:’’’’’’’’’6
o
$head/predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
}
head/predictions/class_idsArgMaxadd$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:’’’’’’’’’
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:’’’’’’’’’

*head/predictions/class_string_lookup/ConstConst*
_output_shapes
:6*
dtype0*±
value§B¤6BasmBbatBcBcsBcppBcljBcmakeBcblBcoffeeBcssBcsvBdartBdmB
dockerfileBexBerlBf90BgoBgroovyBhsBhtmlBiniBjavaBjsBjsonBjlBktBlispBluaBmakefileBmdBmatlabBmmBmlBpasBpmBphpBps1BprologBpyBrBrbBrsBscalaBshBsqlBswiftBtexBtomlBtsBvBvbaBxmlByaml
k
)head/predictions/class_string_lookup/SizeConst*
_output_shapes
: *
dtype0*
value	B :6
r
0head/predictions/class_string_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
r
0head/predictions/class_string_lookup/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
Ž
*head/predictions/class_string_lookup/rangeRange0head/predictions/class_string_lookup/range/start)head/predictions/class_string_lookup/Size0head/predictions/class_string_lookup/range/delta*
_output_shapes
:6

)head/predictions/class_string_lookup/CastCast*head/predictions/class_string_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:6
p
,head/predictions/class_string_lookup/Const_1Const*
_output_shapes
: *
dtype0*
valueB	 BUNK
¼
/head/predictions/class_string_lookup/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*@
shared_name1/hash_table_41454ce0-12c0-4b2a-9243-af51f18abf94*
value_dtype0
ł
Chead/predictions/class_string_lookup/table_init/LookupTableImportV2LookupTableImportV2/head/predictions/class_string_lookup/hash_table)head/predictions/class_string_lookup/Cast*head/predictions/class_string_lookup/Const*	
Tin0	*

Tout0

4head/predictions/hash_table_Lookup/LookupTableFindV2LookupTableFindV2/head/predictions/class_string_lookup/hash_tablehead/predictions/ExpandDims,head/predictions/class_string_lookup/Const_1*	
Tin0	*

Tout0*'
_output_shapes
:’’’’’’’’’
I
head/predictions/ShapeShapeadd*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
^
head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :6
^
head/predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:6
c
!head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 

head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:6
c
!head/predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:

head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*
T0*'
_output_shapes
:’’’’’’’’’6
K
head/predictions/Shape_1Shapeadd*
T0*
_output_shapes
:
p
&head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

#head/predictions/ExpandDims_2/inputConst*
_output_shapes
:6*
dtype0*±
value§B¤6BasmBbatBcBcsBcppBcljBcmakeBcblBcoffeeBcssBcsvBdartBdmB
dockerfileBexBerlBf90BgoBgroovyBhsBhtmlBiniBjavaBjsBjsonBjlBktBlispBluaBmakefileBmdBmatlabBmmBmlBpasBpmBphpBps1BprologBpyBrBrbBrsBscalaBshBsqlBswiftBtexBtomlBtsBvBvbaBxmlByaml
c
!head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 

head/predictions/ExpandDims_2
ExpandDims#head/predictions/ExpandDims_2/input!head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:6
e
#head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:

head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:’’’’’’’’’6
X

head/ShapeShapehead/predictions/probabilities*
T0*
_output_shapes
:
b
head/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
d
head/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
d
head/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ę
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ū
head/ExpandDims/inputConst*
_output_shapes
:6*
dtype0*±
value§B¤6BasmBbatBcBcsBcppBcljBcmakeBcblBcoffeeBcssBcsvBdartBdmB
dockerfileBexBerlBf90BgoBgroovyBhsBhtmlBiniBjavaBjsBjsonBjlBktBlispBluaBmakefileBmdBmatlabBmmBmlBpasBpmBphpBps1BprologBpyBrBrbBrsBscalaBshBsqlBswiftBtexBtomlBtsBvBvbaBxmlByaml
U
head/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
r
head/ExpandDims
ExpandDimshead/ExpandDims/inputhead/ExpandDims/dim*
T0*
_output_shapes

:6
W
head/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
t
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
N*
T0*
_output_shapes
:
i
	head/TileTilehead/ExpandDimshead/Tile/multiples*
T0*'
_output_shapes
:’’’’’’’’’6

initNoOp
]
init_all_tablesNoOpD^head/predictions/class_string_lookup/table_init/LookupTableImportV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*Į
value·B“
Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBNdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB#linear/linear_model/content/weights

save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices*dnn/hiddenlayer_0/bias/Read/ReadVariableOp,dnn/hiddenlayer_0/kernel/Read/ReadVariableOp*dnn/hiddenlayer_1/bias/Read/ReadVariableOp,dnn/hiddenlayer_1/kernel/Read/ReadVariableOpbdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Read/ReadVariableOp#dnn/logits/bias/Read/ReadVariableOp%dnn/logits/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOp4linear/linear_model/bias_weights/Read/ReadVariableOp7linear/linear_model/content/weights/Read/ReadVariableOp"/device:CPU:0*
dtypes
2
	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
 
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*Į
value·B“
Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBNdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB#linear/linear_model/content/weights

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B 
Ģ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2
	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
_
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
c
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
a
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
c
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:

save/AssignVariableOp_4AssignVariableOpNdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weightssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Z
save/AssignVariableOp_5AssignVariableOpdnn/logits/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
\
save/AssignVariableOp_6AssignVariableOpdnn/logits/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0	*
_output_shapes
:
V
save/AssignVariableOp_7AssignVariableOpglobal_stepsave/Identity_8*
dtype0	
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
k
save/AssignVariableOp_8AssignVariableOp linear/linear_model/bias_weightssave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
o
save/AssignVariableOp_9AssignVariableOp#linear/linear_model/content/weightssave/Identity_10*
dtype0

save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shardę¢
ß
ī
$dnn_zero_fraction_1_cond_false_494411
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros»
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:’’’’’’’’’ :- )
'
_output_shapes
:’’’’’’’’’ 
ń

zero_fraction_1_cond_true_49703c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosķ
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:’’’’’’’’’62
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’62
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*&
_input_shapes
:’’’’’’’’’6:- )
'
_output_shapes
:’’’’’’’’’6

ŗ
/zero_fraction_total_zero_zero_count_false_49655S
@zero_fraction_readvariableop_linear_linear_model_content_weights:	'6&
"cast_zero_fraction_total_size_size	
mul¾
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_content_weights*
_output_shapes
:	'6*
dtype02
zero_fraction/ReadVariableOpl
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
valueB		 R°½2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqualū
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_49665*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_496642
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionh
CastCast"cast_zero_fraction_total_size_size*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
×
ź
$dnn_zero_fraction_2_cond_false_49510-
)count_nonzero_notequal_dnn_logits_biasadd
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros·
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:’’’’’’’’’62
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:’’’’’’’’’62
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:’’’’’’’’’6:- )
'
_output_shapes
:’’’’’’’’’6
ß
Ł
#dnn_zero_fraction_2_cond_true_49509-
)count_nonzero_notequal_dnn_logits_biasadd
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros·
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:’’’’’’’’’62
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’62
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:’’’’’’’’’6:- )
'
_output_shapes
:’’’’’’’’’6
į
ģ
"dnn_zero_fraction_cond_false_493711
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros¼
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*(
_output_shapes
:’’’’’’’’’2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*'
_input_shapes
:’’’’’’’’’:. *
(
_output_shapes
:’’’’’’’’’
ö
¤
map_while_body_49115
map_while_loop_counter
map_strided_slice_0
placeholder
placeholder_1
map_strided_slice_1_0U
Qtensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0	
add_1
map_strided_slice
add(
$tensorarrayv2write_tensorlistsetitem
map_strided_slice_1S
Otensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensoru
TensorArrayV2Read/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
TensorArrayV2Read/Const
#TensorArrayV2Read/TensorListGetItemTensorListGetItemQtensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0placeholder TensorArrayV2Read/Const:output:0*
_output_shapes
: *
element_dtype02%
#TensorArrayV2Read/TensorListGetItemż
ConstConst*
_output_shapes	
:N*
dtype0*ø
value­B©NB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
Const
StringsByteSplit/stackPack*TensorArrayV2Read/TensorListGetItem:item:0*
N*
T0*
_output_shapes
:2
StringsByteSplit/stack³
7StringsByteSplit/StringsByteSplit/StringSplit/delimiterConst*
_output_shapes
: *
dtype0*
valueB B 29
7StringsByteSplit/StringsByteSplit/StringSplit/delimiter 
-StringsByteSplit/StringsByteSplit/StringSplitStringSplitStringsByteSplit/stack:output:0@StringsByteSplit/StringsByteSplit/StringSplit/delimiter:output:0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’:*

skip_empty( 2/
-StringsByteSplit/StringsByteSplit/StringSplitæ
5StringsByteSplit/StringsByteSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5StringsByteSplit/StringsByteSplit/strided_slice/stackĆ
7StringsByteSplit/StringsByteSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7StringsByteSplit/StringsByteSplit/strided_slice/stack_1Ć
7StringsByteSplit/StringsByteSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7StringsByteSplit/StringsByteSplit/strided_slice/stack_2ä
/StringsByteSplit/StringsByteSplit/strided_sliceStridedSlice7StringsByteSplit/StringsByteSplit/StringSplit:indices:0>StringsByteSplit/StringsByteSplit/strided_slice/stack:output:0@StringsByteSplit/StringsByteSplit/strided_slice/stack_1:output:0@StringsByteSplit/StringsByteSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask*
end_mask*
shrink_axis_mask21
/StringsByteSplit/StringsByteSplit/strided_slice¼
7StringsByteSplit/StringsByteSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7StringsByteSplit/StringsByteSplit/strided_slice_1/stackĄ
9StringsByteSplit/StringsByteSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9StringsByteSplit/StringsByteSplit/strided_slice_1/stack_1Ą
9StringsByteSplit/StringsByteSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9StringsByteSplit/StringsByteSplit/strided_slice_1/stack_2½
1StringsByteSplit/StringsByteSplit/strided_slice_1StridedSlice5StringsByteSplit/StringsByteSplit/StringSplit:shape:0@StringsByteSplit/StringsByteSplit/strided_slice_1/stack:output:0BStringsByteSplit/StringsByteSplit/strided_slice_1/stack_1:output:0BStringsByteSplit/StringsByteSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask23
1StringsByteSplit/StringsByteSplit/strided_slice_1³
XStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast8StringsByteSplit/StringsByteSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:’’’’’’’’’2Z
XStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast¬
ZStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast:StringsByteSplit/StringsByteSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2\
ZStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Ō
bStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape\StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2d
bStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape
bStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2d
bStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstÉ
aStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdkStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0kStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2c
aStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod
fStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2h
fStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yÕ
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterjStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0oStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2f
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greaterč
aStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasthStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2c
aStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2f
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1¹
`StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax\StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2b
`StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max
bStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2d
bStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yĘ
`StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2iStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0kStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2b
`StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add¹
`StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuleStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2b
`StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul¾
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum^StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2f
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumĀ
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum^StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0hStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2f
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2f
dStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2æ
eStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount\StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0hStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0mStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:’’’’’’’’’2g
eStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount
_StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisČ
ZStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumlStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0hStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:’’’’’’’’’2\
ZStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum
cStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2e
cStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0
_StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisµ
ZStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2lStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0`StringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0hStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:’’’’’’’’’2\
ZStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat²
2StringsByteSplit/RaggedGetItem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2StringsByteSplit/RaggedGetItem/strided_slice/stackæ
4StringsByteSplit/RaggedGetItem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’26
4StringsByteSplit/RaggedGetItem/strided_slice/stack_1¶
4StringsByteSplit/RaggedGetItem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4StringsByteSplit/RaggedGetItem/strided_slice/stack_2Ł
,StringsByteSplit/RaggedGetItem/strided_sliceStridedSlicecStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0;StringsByteSplit/RaggedGetItem/strided_slice/stack:output:0=StringsByteSplit/RaggedGetItem/strided_slice/stack_1:output:0=StringsByteSplit/RaggedGetItem/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:’’’’’’’’’*

begin_mask2.
,StringsByteSplit/RaggedGetItem/strided_slice¶
4StringsByteSplit/RaggedGetItem/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4StringsByteSplit/RaggedGetItem/strided_slice_1/stackŗ
6StringsByteSplit/RaggedGetItem/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 28
6StringsByteSplit/RaggedGetItem/strided_slice_1/stack_1ŗ
6StringsByteSplit/RaggedGetItem/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6StringsByteSplit/RaggedGetItem/strided_slice_1/stack_2į
.StringsByteSplit/RaggedGetItem/strided_slice_1StridedSlicecStringsByteSplit/StringsByteSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0=StringsByteSplit/RaggedGetItem/strided_slice_1/stack:output:0?StringsByteSplit/RaggedGetItem/strided_slice_1/stack_1:output:0?StringsByteSplit/RaggedGetItem/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:’’’’’’’’’*
end_mask20
.StringsByteSplit/RaggedGetItem/strided_slice_1¶
4StringsByteSplit/RaggedGetItem/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4StringsByteSplit/RaggedGetItem/strided_slice_2/stackŗ
6StringsByteSplit/RaggedGetItem/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6StringsByteSplit/RaggedGetItem/strided_slice_2/stack_1ŗ
6StringsByteSplit/RaggedGetItem/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6StringsByteSplit/RaggedGetItem/strided_slice_2/stack_2®
.StringsByteSplit/RaggedGetItem/strided_slice_2StridedSlice5StringsByteSplit/RaggedGetItem/strided_slice:output:0=StringsByteSplit/RaggedGetItem/strided_slice_2/stack:output:0?StringsByteSplit/RaggedGetItem/strided_slice_2/stack_1:output:0?StringsByteSplit/RaggedGetItem/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.StringsByteSplit/RaggedGetItem/strided_slice_2¶
4StringsByteSplit/RaggedGetItem/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4StringsByteSplit/RaggedGetItem/strided_slice_3/stackŗ
6StringsByteSplit/RaggedGetItem/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6StringsByteSplit/RaggedGetItem/strided_slice_3/stack_1ŗ
6StringsByteSplit/RaggedGetItem/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6StringsByteSplit/RaggedGetItem/strided_slice_3/stack_2°
.StringsByteSplit/RaggedGetItem/strided_slice_3StridedSlice7StringsByteSplit/RaggedGetItem/strided_slice_1:output:0=StringsByteSplit/RaggedGetItem/strided_slice_3/stack:output:0?StringsByteSplit/RaggedGetItem/strided_slice_3/stack_1:output:0?StringsByteSplit/RaggedGetItem/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.StringsByteSplit/RaggedGetItem/strided_slice_3Ū
4StringsByteSplit/RaggedGetItem/strided_slice_4/stackPack7StringsByteSplit/RaggedGetItem/strided_slice_2:output:0*
N*
T0	*
_output_shapes
:26
4StringsByteSplit/RaggedGetItem/strided_slice_4/stackß
6StringsByteSplit/RaggedGetItem/strided_slice_4/stack_1Pack7StringsByteSplit/RaggedGetItem/strided_slice_3:output:0*
N*
T0	*
_output_shapes
:28
6StringsByteSplit/RaggedGetItem/strided_slice_4/stack_1ŗ
6StringsByteSplit/RaggedGetItem/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6StringsByteSplit/RaggedGetItem/strided_slice_4/stack_2ē
3StringsByteSplit/RaggedGetItem/strided_slice_4/CastCast?StringsByteSplit/RaggedGetItem/strided_slice_4/stack_2:output:0*

DstT0	*

SrcT0*
_output_shapes
:25
3StringsByteSplit/RaggedGetItem/strided_slice_4/Cast
.StringsByteSplit/RaggedGetItem/strided_slice_4StridedSlice6StringsByteSplit/StringsByteSplit/StringSplit:values:0=StringsByteSplit/RaggedGetItem/strided_slice_4/stack:output:0?StringsByteSplit/RaggedGetItem/strided_slice_4/stack_1:output:07StringsByteSplit/RaggedGetItem/strided_slice_4/Cast:y:0*
Index0	*
T0*#
_output_shapes
:’’’’’’’’’20
.StringsByteSplit/RaggedGetItem/strided_slice_4Æ
4StringsByteSplit/RaggedGetItem/strided_slice_5/ConstConst*
_output_shapes
: *
dtype0*
valueB 26
4StringsByteSplit/RaggedGetItem/strided_slice_5/Const”
.StringsByteSplit/RaggedGetItem/strided_slice_5StridedSlice7StringsByteSplit/RaggedGetItem/strided_slice_4:output:0=StringsByteSplit/RaggedGetItem/strided_slice_5/Const:output:0=StringsByteSplit/RaggedGetItem/strided_slice_5/Const:output:0=StringsByteSplit/RaggedGetItem/strided_slice_5/Const:output:0*
Index0*
T0*#
_output_shapes
:’’’’’’’’’20
.StringsByteSplit/RaggedGetItem/strided_slice_5
StringNGrams/ShapeShape7StringsByteSplit/RaggedGetItem/strided_slice_5:output:0*
T0*
_output_shapes
:2
StringNGrams/Shape
 StringNGrams/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 StringNGrams/strided_slice/stack
"StringNGrams/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2$
"StringNGrams/strided_slice/stack_1
"StringNGrams/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"StringNGrams/strided_slice/stack_2¬
StringNGrams/strided_sliceStridedSliceStringNGrams/Shape:output:0)StringNGrams/strided_slice/stack:output:0+StringNGrams/strided_slice/stack_1:output:0+StringNGrams/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
StringNGrams/strided_slice
StringNGrams/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
StringNGrams/concat/values_1v
StringNGrams/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
StringNGrams/concat/axisÓ
StringNGrams/concatConcatV2#StringNGrams/strided_slice:output:0%StringNGrams/concat/values_1:output:0!StringNGrams/concat/axis:output:0*
N*
T0*
_output_shapes
:2
StringNGrams/concat·
&StringNGrams/RaggedFromRowStarts/ShapeShape7StringsByteSplit/RaggedGetItem/strided_slice_5:output:0*
T0*
_output_shapes
:2(
&StringNGrams/RaggedFromRowStarts/Shape¶
4StringNGrams/RaggedFromRowStarts/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4StringNGrams/RaggedFromRowStarts/strided_slice/stackŗ
6StringNGrams/RaggedFromRowStarts/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6StringNGrams/RaggedFromRowStarts/strided_slice/stack_1ŗ
6StringNGrams/RaggedFromRowStarts/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6StringNGrams/RaggedFromRowStarts/strided_slice/stack_2Ø
.StringNGrams/RaggedFromRowStarts/strided_sliceStridedSlice/StringNGrams/RaggedFromRowStarts/Shape:output:0=StringNGrams/RaggedFromRowStarts/strided_slice/stack:output:0?StringNGrams/RaggedFromRowStarts/strided_slice/stack_1:output:0?StringNGrams/RaggedFromRowStarts/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.StringNGrams/RaggedFromRowStarts/strided_sliceŲ
EStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/row_startsConst*
_output_shapes
:*
dtype0	*
valueB	R 2G
EStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/row_startsó
?StringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/CastCast7StringNGrams/RaggedFromRowStarts/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2A
?StringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/Cast
JStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/concat/values_1PackCStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/Cast:y:0*
N*
T0	*
_output_shapes
:2L
JStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/concat/values_1Ņ
FStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
FStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/concat/axis¶
AStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/concatConcatV2NStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/row_starts:output:0SStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/concat/values_1:output:0OStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/concat/axis:output:0*
N*
T0	*
_output_shapes
:2C
AStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/concat
&StringNGrams/StringNGrams/StringNGramsStringNGrams7StringsByteSplit/RaggedGetItem/strided_slice_5:output:0JStringNGrams/RaggedFromRowStarts/RowPartitionFromRowStarts/concat:output:0*)
_output_shapes
:’’’’’’’’’:*
left_pad *
ngram_widths
*
	pad_width *
preserve_short_sequences( *
	right_pad *
	separator 2(
&StringNGrams/StringNGrams/StringNGramsŖ
.StringNGrams/RaggedGetItem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.StringNGrams/RaggedGetItem/strided_slice/stack·
0StringNGrams/RaggedGetItem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’22
0StringNGrams/RaggedGetItem/strided_slice/stack_1®
0StringNGrams/RaggedGetItem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0StringNGrams/RaggedGetItem/strided_slice/stack_2
(StringNGrams/RaggedGetItem/strided_sliceStridedSlice6StringNGrams/StringNGrams/StringNGrams:ngrams_splits:07StringNGrams/RaggedGetItem/strided_slice/stack:output:09StringNGrams/RaggedGetItem/strided_slice/stack_1:output:09StringNGrams/RaggedGetItem/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2*
(StringNGrams/RaggedGetItem/strided_slice®
0StringNGrams/RaggedGetItem/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0StringNGrams/RaggedGetItem/strided_slice_1/stack²
2StringNGrams/RaggedGetItem/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2StringNGrams/RaggedGetItem/strided_slice_1/stack_1²
2StringNGrams/RaggedGetItem/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2StringNGrams/RaggedGetItem/strided_slice_1/stack_2
*StringNGrams/RaggedGetItem/strided_slice_1StridedSlice6StringNGrams/StringNGrams/StringNGrams:ngrams_splits:09StringNGrams/RaggedGetItem/strided_slice_1/stack:output:0;StringNGrams/RaggedGetItem/strided_slice_1/stack_1:output:0;StringNGrams/RaggedGetItem/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask2,
*StringNGrams/RaggedGetItem/strided_slice_1®
0StringNGrams/RaggedGetItem/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0StringNGrams/RaggedGetItem/strided_slice_2/stack²
2StringNGrams/RaggedGetItem/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2StringNGrams/RaggedGetItem/strided_slice_2/stack_1²
2StringNGrams/RaggedGetItem/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2StringNGrams/RaggedGetItem/strided_slice_2/stack_2
*StringNGrams/RaggedGetItem/strided_slice_2StridedSlice1StringNGrams/RaggedGetItem/strided_slice:output:09StringNGrams/RaggedGetItem/strided_slice_2/stack:output:0;StringNGrams/RaggedGetItem/strided_slice_2/stack_1:output:0;StringNGrams/RaggedGetItem/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2,
*StringNGrams/RaggedGetItem/strided_slice_2®
0StringNGrams/RaggedGetItem/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0StringNGrams/RaggedGetItem/strided_slice_3/stack²
2StringNGrams/RaggedGetItem/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2StringNGrams/RaggedGetItem/strided_slice_3/stack_1²
2StringNGrams/RaggedGetItem/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2StringNGrams/RaggedGetItem/strided_slice_3/stack_2
*StringNGrams/RaggedGetItem/strided_slice_3StridedSlice3StringNGrams/RaggedGetItem/strided_slice_1:output:09StringNGrams/RaggedGetItem/strided_slice_3/stack:output:0;StringNGrams/RaggedGetItem/strided_slice_3/stack_1:output:0;StringNGrams/RaggedGetItem/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2,
*StringNGrams/RaggedGetItem/strided_slice_3Ļ
0StringNGrams/RaggedGetItem/strided_slice_4/stackPack3StringNGrams/RaggedGetItem/strided_slice_2:output:0*
N*
T0	*
_output_shapes
:22
0StringNGrams/RaggedGetItem/strided_slice_4/stackÓ
2StringNGrams/RaggedGetItem/strided_slice_4/stack_1Pack3StringNGrams/RaggedGetItem/strided_slice_3:output:0*
N*
T0	*
_output_shapes
:24
2StringNGrams/RaggedGetItem/strided_slice_4/stack_1²
2StringNGrams/RaggedGetItem/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2StringNGrams/RaggedGetItem/strided_slice_4/stack_2Ū
/StringNGrams/RaggedGetItem/strided_slice_4/CastCast;StringNGrams/RaggedGetItem/strided_slice_4/stack_2:output:0*

DstT0	*

SrcT0*
_output_shapes
:21
/StringNGrams/RaggedGetItem/strided_slice_4/Cast
*StringNGrams/RaggedGetItem/strided_slice_4StridedSlice/StringNGrams/StringNGrams/StringNGrams:ngrams:09StringNGrams/RaggedGetItem/strided_slice_4/stack:output:0;StringNGrams/RaggedGetItem/strided_slice_4/stack_1:output:03StringNGrams/RaggedGetItem/strided_slice_4/Cast:y:0*
Index0	*
T0*#
_output_shapes
:’’’’’’’’’2,
*StringNGrams/RaggedGetItem/strided_slice_4§
0StringNGrams/RaggedGetItem/strided_slice_5/ConstConst*
_output_shapes
: *
dtype0*
valueB 22
0StringNGrams/RaggedGetItem/strided_slice_5/Const
*StringNGrams/RaggedGetItem/strided_slice_5StridedSlice3StringNGrams/RaggedGetItem/strided_slice_4:output:09StringNGrams/RaggedGetItem/strided_slice_5/Const:output:09StringNGrams/RaggedGetItem/strided_slice_5/Const:output:09StringNGrams/RaggedGetItem/strided_slice_5/Const:output:0*
Index0*
T0*#
_output_shapes
:’’’’’’’’’2,
*StringNGrams/RaggedGetItem/strided_slice_5\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis®
concatConcatV23StringNGrams/RaggedGetItem/strided_slice_5:output:0Const:output:0concat/axis:output:0*
N*
T0*#
_output_shapes
:’’’’’’’’’2
concatt
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stacky
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:N2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ź
strided_sliceStridedSliceconcat:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:’’’’’’’’’*

begin_mask2
strided_sliceĀ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderstrided_slice:output:0*
_output_shapes
: *
element_dtype02&
$TensorArrayV2Write/TensorListSetItemP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/y;
add_0AddV2placeholderadd/y:output:0*
T02
addT
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yL
add_1_0AddV2map_while_loop_counteradd_1/y:output:0*
T02
add_1"
add	add_0:z:0"
add_1add_1_0:z:0"(
map_strided_slicemap_strided_slice_0",
map_strided_slice_1map_strided_slice_1_0"¤
Otensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorQtensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0"\
$tensorarrayv2write_tensorlistsetitem4TensorArrayV2Write/TensorListSetItem:output_handle:0*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Š
Ø
 zero_fraction_1_cond_false_49704c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosķ
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:’’’’’’’’’62
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:’’’’’’’’’62
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*&
_input_shapes
:’’’’’’’’’6:- )
'
_output_shapes
:’’’’’’’’’6
é
Ū
!dnn_zero_fraction_cond_true_493701
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros¼
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:’’’’’’’’’2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*'
_input_shapes
:’’’’’’’’’:. *
(
_output_shapes
:’’’’’’’’’
ē
Ż
#dnn_zero_fraction_1_cond_true_494401
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros»
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:’’’’’’’’’ :- )
'
_output_shapes
:’’’’’’’’’ 
Õ
z
zero_fraction_cond_false_496657
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros¹
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	'62
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes
:	'62
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes
:	'6:% !

_output_shapes
:	'6
Ž
Ģ
map_while_cond_49114
map_while_loop_counter
map_strided_slice
placeholder
placeholder_1
less_map_strided_slice1
-map_while_cond_49114___redundant_placeholder0

logicaland
Z
LessLessplaceholderless_map_strided_slice*
T0*
_output_shapes
: 2
Lessd
Less_1Lessmap_while_loop_countermap_strided_slice*
T0*
_output_shapes
: 2
Less_1T

LogicalAnd
LogicalAnd
Less_1:z:0Less:z:0*
_output_shapes
: 2

LogicalAnd"

logicalandLogicalAnd:z:0*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

_
.zero_fraction_total_zero_zero_count_true_49654
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
ö
b
zero_fraction_cond_true_496647
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros¹
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	'62
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	'62
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes
:	'6:% !

_output_shapes
:	'6"Ģ<
save/Const:0save/Identity:0save/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"%
saved_model_main_op


group_deps"Å
	summaries·
“
+dnn/hiddenlayer_0/fraction_of_zero_values:0
dnn/hiddenlayer_0/activation:0
+dnn/hiddenlayer_1/fraction_of_zero_values:0
dnn/hiddenlayer_1/activation:0
$dnn/logits/fraction_of_zero_values:0
dnn/logits/activation:0
bias:0
fraction_of_zero_weights:0
 linear/fraction_of_zero_values:0
linear/activation:0"\
table_initializerG
E
Chead/predictions/class_string_lookup/table_init/LookupTableImportV2"Ę
trainable_variables®«

Pdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights:0Udnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Assignddnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Read/ReadVariableOp:0(2mdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal:08
Ø
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ø
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
Ė
%linear/linear_model/content/weights:0*linear/linear_model/content/weights/Assign9linear/linear_model/content/weights/Read/ReadVariableOp:0(27linear/linear_model/content/weights/Initializer/zeros:08
æ
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08"©
	variables
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H

Pdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights:0Udnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Assignddnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Read/ReadVariableOp:0(2mdnn/input_from_feature_columns/input_layer/content_embedding/embedding_weights/Initializer/truncated_normal:08
Ø
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ø
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
Ė
%linear/linear_model/content/weights:0*linear/linear_model/content/weights/Assign9linear/linear_model/content/weights/Read/ReadVariableOp:0(27linear/linear_model/content/weights/Initializer/zeros:08
æ
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08*Ī
classification»
*
inputs 
Placeholder:0’’’’’’’’’-
classes"
head/Tile:0’’’’’’’’’6A
scores7
 head/predictions/probabilities:0’’’’’’’’’6tensorflow/serving/classify*ę
predictŚ
+
content 
Placeholder:0’’’’’’’’’?
all_class_ids.
head/predictions/Tile:0’’’’’’’’’6?
all_classes0
head/predictions/Tile_1:0’’’’’’’’’6A
	class_ids4
head/predictions/ExpandDims:0	’’’’’’’’’X
classesM
6head/predictions/hash_table_Lookup/LookupTableFindV2:0’’’’’’’’’&
logits
add:0’’’’’’’’’6H
probabilities7
 head/predictions/probabilities:0’’’’’’’’’6tensorflow/serving/predict*Ļ
serving_default»
*
inputs 
Placeholder:0’’’’’’’’’-
classes"
head/Tile:0’’’’’’’’’6A
scores7
 head/predictions/probabilities:0’’’’’’’’’6tensorflow/serving/classify