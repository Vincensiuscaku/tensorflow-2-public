��
	"serve8�y
W
asset_path_initializerPlaceholder*
shape: *
dtype0*
_output_shapes
: 
�
VariableVarHandleOp*
shape: *
_class
loc:@Variable*
shared_name
Variable*
_output_shapes
: *
dtype0
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
o
Variable/AssignAssignVariableOpVariableasset_path_initializer*
_class
loc:@Variable*
dtype0
z
Variable/Read/ReadVariableOpReadVariableOpVariable*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
�

hash_tableHashTableV2*
_output_shapes
: *�
shared_name}{hash_table_<google3.third_party.tensorflow.python.training.tracking.tracking.TrackableAsset object at 0x7f2376090a90>_-2_-1*
	key_dtype0*
value_dtype0	
r
unused_initial_variable_valuePlaceholder*
shape:
��*
dtype0* 
_output_shapes
:
��
�

Variable_1VarHandleOp*
dtype0*
shape:
��*
_class
loc:@Variable_1*
shared_name
Variable_1*
_output_shapes
: 
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
|
Variable_1/AssignAssignVariableOp
Variable_1unused_initial_variable_value*
_class
loc:@Variable_1*
dtype0
�
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1* 
_output_shapes
:
��*
_class
loc:@Variable_1*
dtype0
P
ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
���������
y
&StatefulPartitionedCall/ReadVariableOpReadVariableOpVariable^Variable/Assign*
dtype0*
_output_shapes
: 
�
StatefulPartitionedCallStatefulPartitionedCall&StatefulPartitionedCall/ReadVariableOp
hash_table*
Tout
2*
Tin
2*
_output_shapes
: *!
fR
__inference_<lambda>_121
8
NoOpNoOp^StatefulPartitionedCall^Variable/Assign
�
Const_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *�
value�B� B�
j
_vocabulary_file

_table

embeddings
	variables
trainable_variables

signatures
 
 
EC
VARIABLE_VALUE
Variable_1%embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 
t
serving_default_sentencesPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_sentences
hash_tableConst
Variable_1*)
f$R"
 __inference_signature_wrapper_96*
Tout
2*
Tin
2	*'
_output_shapes
:���������
O
saver_filenamePlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_1/Read/ReadVariableOpConst_1*
Tout
2**
_gradient_op_typePartitionedCall-153*
_output_shapes
: *
Tin
2*
fR
__inference_save_152
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename
Variable_1* 
fR
__inference_restore_166*
Tout
2**
_gradient_op_typePartitionedCall-167*
_output_shapes
: *
Tin
2�a
�)
�
__inference__preprocess_62
	sentences:
6none_lookup_none_lookup_lookuptablefindv2_table_handle;
7none_lookup_none_lookup_lookuptablefindv2_default_value	

identity_3	

identity_4	

identity_5	��)None_Lookup/None_Lookup/LookupTableFindV2�+None_Lookup_1/None_Lookup/LookupTableFindV2�)None_Lookup_1/None_Size/LookupTableSizeV2�'None_Lookup/None_Size/LookupTableSizeV2c
normalize/StaticRegexReplaceStaticRegexReplace	sentences*
pattern	[\p{P}]*
rewrite A
ExpandDims/dimConst*
dtype0*
valueB :
���������a

ExpandDims
ExpandDims%normalize/StaticRegexReplace:output:0ExpandDims/dim:output:0*
T0K
"DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0s
DenseToSparseTensor/NotEqualNotEqualExpandDims:output:0+DenseToSparseTensor/ignore_value/x:output:0*
T0F
DenseToSparseTensor/indicesWhere DenseToSparseTensor/NotEqual:z:0
DenseToSparseTensor/valuesGatherNdExpandDims:output:0#DenseToSparseTensor/indices:index:0*
Tparams0*
Tindices0	V
DenseToSparseTensor/dense_shapeShapeExpandDims:output:0*
T0*
out_type0	8
tokenize/ConstConst*
dtype0*
value	B B c
tokenize/StringSplitStringSplit%normalize/StaticRegexReplace:output:0tokenize/Const:output:0c
None_Lookup/hash_bucketStringToHashBucketFasttokenize/StringSplit:values:0*
num_buckets�
)None_Lookup/None_Lookup/LookupTableFindV2LookupTableFindV26none_lookup_none_lookup_lookuptablefindv2_table_handletokenize/StringSplit:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*

Tout0	*	
Tin0�
'None_Lookup/None_Size/LookupTableSizeV2LookupTableSizeV26none_lookup_none_lookup_lookuptablefindv2_table_handle*^None_Lookup/None_Lookup/LookupTableFindV2q
None_Lookup/AddAdd None_Lookup/hash_bucket:output:0.None_Lookup/None_Size/LookupTableSizeV2:size:0*
T0	�
None_Lookup/NotEqualNotEqual2None_Lookup/None_Lookup/LookupTableFindV2:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	�
None_Lookup/SelectSelectNone_Lookup/NotEqual:z:02None_Lookup/None_Lookup/LookupTableFindV2:values:0None_Lookup/Add:z:0*
T0	.
ConstConst*
valueB B *
dtype0V
None_Lookup_1/hash_bucketStringToHashBucketFastConst:output:0*
num_buckets�
+None_Lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV26none_lookup_none_lookup_lookuptablefindv2_table_handleConst:output:07none_lookup_none_lookup_lookuptablefindv2_default_value(^None_Lookup/None_Size/LookupTableSizeV2*	
Tin0*

Tout0	�
)None_Lookup_1/None_Size/LookupTableSizeV2LookupTableSizeV26none_lookup_none_lookup_lookuptablefindv2_table_handle,^None_Lookup_1/None_Lookup/LookupTableFindV2w
None_Lookup_1/AddAdd"None_Lookup_1/hash_bucket:output:00None_Lookup_1/None_Size/LookupTableSizeV2:size:0*
T0	�
None_Lookup_1/NotEqualNotEqual4None_Lookup_1/None_Lookup/LookupTableFindV2:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	�
None_Lookup_1/SelectSelectNone_Lookup_1/NotEqual:z:04None_Lookup_1/None_Lookup/LookupTableFindV2:values:0None_Lookup_1/Add:z:0*
T0	�
'SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowstokenize/StringSplit:indices:0None_Lookup/Select:output:0tokenize/StringSplit:shape:0None_Lookup_1/Select:output:0*
T0	W
IdentityIdentity8SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0*
T0	X

Identity_1Identity7SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	=

Identity_2Identitytokenize/StringSplit:shape:0*
T0	?
Max/reduction_indicesConst*
value	B : *
dtype0F
MaxMaxIdentity:output:0Max/reduction_indices:output:0*
T0	1
Const_1Const*
value	B	 R *
dtype0	=
ones_like/ShapeConst*
valueB:*
dtype09
ones_like/ConstConst*
value	B	 R*
dtype0	N
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	5
AddAddMax:output:0ones_like:output:0*
T0	6
MaximumMaximumConst_1:output:0Add:z:0*
T0	�

Identity_3IdentityIdentity:output:0*^None_Lookup/None_Lookup/LookupTableFindV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2(^None_Lookup/None_Size/LookupTableSizeV2*
T0	�

Identity_4IdentityIdentity_1:output:0*^None_Lookup/None_Lookup/LookupTableFindV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2(^None_Lookup/None_Size/LookupTableSizeV2*
T0	�

Identity_5IdentityMaximum:z:0*^None_Lookup/None_Lookup/LookupTableFindV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2(^None_Lookup/None_Size/LookupTableSizeV2*
T0	"!

identity_4Identity_4:output:0"!

identity_3Identity_3:output:0"!

identity_5Identity_5:output:02V
)None_Lookup/None_Lookup/LookupTableFindV2)None_Lookup/None_Lookup/LookupTableFindV22R
'None_Lookup/None_Size/LookupTableSizeV2'None_Lookup/None_Size/LookupTableSizeV22Z
+None_Lookup_1/None_Lookup/LookupTableFindV2+None_Lookup_1/None_Lookup/LookupTableFindV22V
)None_Lookup_1/None_Size/LookupTableSizeV2)None_Lookup_1/None_Size/LookupTableSizeV2
�
�
__inference_<lambda>_121
table_init_asset_filepath9
5table_init_initializetablefromtextfilev2_table_handle
identity��(table_init/InitializeTableFromTextFileV2�
(table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV25table_init_initializetablefromtextfilev2_table_handletable_init_asset_filepath*
value_index���������*
	key_index���������2
ConstConst*
dtype0*
valueB
 *  �?X
IdentityIdentityConst:output:0)^table_init/InitializeTableFromTextFileV2*
T0"
identityIdentity:output:02T
(table_init/InitializeTableFromTextFileV2(table_init/InitializeTableFromTextFileV2
�
�
__inference___call___84
	sentences"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2	I
Eembedding_lookup_sparse_embedding_lookup_read_readvariableop_resource
identity��<embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�(embedding_lookup_sparse/embedding_lookup�StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	sentencesstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*#
fR
__inference__preprocess_62*
Tout
2			*)
_gradient_op_typePartitionedCall-63*
Tin
2	`
+embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0b
-embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0b
-embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0�
%embedding_lookup_sparse/strided_sliceStridedSlice StatefulPartitionedCall:output:04embedding_lookup_sparse/strided_slice/stack:output:06embedding_lookup_sparse/strided_slice/stack_1:output:06embedding_lookup_sparse/strided_slice/stack_2:output:0*

begin_mask*
shrink_axis_mask*
end_mask*
Index0*
T0	l
embedding_lookup_sparse/CastCast.embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	S
embedding_lookup_sparse/UniqueUnique StatefulPartitionedCall:output:1*
T0	�
<embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpEembedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0�
1embedding_lookup_sparse/embedding_lookup/IdentityIdentityDembedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0�
(embedding_lookup_sparse/embedding_lookupResourceGatherEembedding_lookup_sparse_embedding_lookup_read_readvariableop_resource"embedding_lookup_sparse/Unique:y:0=^embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*O
_classE
CAloc:@embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	*
dtype0�
3embedding_lookup_sparse/embedding_lookup/Identity_1Identity1embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*O
_classE
CAloc:@embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�
3embedding_lookup_sparse/embedding_lookup/Identity_2Identity<embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*
T0�
embedding_lookup_sparseSparseSegmentSqrtN<embedding_lookup_sparse/embedding_lookup/Identity_2:output:0$embedding_lookup_sparse/Unique:idx:0 embedding_lookup_sparse/Cast:y:0*
T0�
IdentityIdentity embedding_lookup_sparse:output:0=^embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp)^embedding_lookup_sparse/embedding_lookup^StatefulPartitionedCall*
T0"
identityIdentity:output:02|
<embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp<embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2T
(embedding_lookup_sparse/embedding_lookup(embedding_lookup_sparse/embedding_lookup22
StatefulPartitionedCallStatefulPartitionedCall
�
�
__inference_save_152
file_prefix)
%savev2_variable_1_read_readvariableop
savev2_const_1

identity_1��SaveV2�
SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*X
valueOBMB%embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHU
SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0�
SaveV2SaveV2file_prefixSaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0%savev2_variable_1_read_readvariableopsavev2_const_1"/device:CPU:0*
dtypes
2B
IdentityIdentityfile_prefix^SaveV2"/device:CPU:0*
T0;

Identity_1IdentityIdentity:output:0^SaveV2*
T0"!

identity_1Identity_1:output:02
SaveV2SaveV2
�
}
__inference_restore_166
file_prefix
assignvariableop_variable_1

identity_2��	RestoreV2�AssignVariableOp�
RestoreV2/tensor_namesConst"/device:CPU:0*X
valueOBMB%embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0X
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
dtypes
22
IdentityIdentityRestoreV2:tensors:0*
T0a
AssignVariableOpAssignVariableOpassignvariableop_variable_1Identity:output:0*
dtype0
NoOpNoOpU

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0S

Identity_2IdentityIdentity_1:output:0
^RestoreV2^AssignVariableOp*
T0"!

identity_2Identity_2:output:02
	RestoreV2	RestoreV22$
AssignVariableOpAssignVariableOp
�
8
__inference__creator_103
identity��
hash_table�

hash_tableHashTableV2*�
shared_name}{hash_table_<google3.third_party.tensorflow.python.training.tracking.tracking.TrackableAsset object at 0x7f2376090a90>_-2_-1*
	key_dtype0*
value_dtype0	E
IdentityIdentityhash_table:table_handle:0^hash_table*
T0"
identityIdentity:output:02

hash_table
hash_table
�
�
 __inference_signature_wrapper_96
	sentences"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2	"
statefulpartitionedcall_args_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	sentencesstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3* 
fR
__inference___call___84*
Tout
2*)
_gradient_op_typePartitionedCall-90*
Tin
2	Y
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0"
identityIdentity:output:022
StatefulPartitionedCallStatefulPartitionedCall
�
�
__inference__initializer_112
table_init_asset_filepath9
5table_init_initializetablefromtextfilev2_table_handle
identity��(table_init/InitializeTableFromTextFileV2�
(table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV25table_init_initializetablefromtextfilev2_table_handletable_init_asset_filepath*
value_index���������*
	key_index���������/
ConstConst*
value	B :*
dtype0X
IdentityIdentityConst:output:0)^table_init/InitializeTableFromTextFileV2*
T0"
identityIdentity:output:02T
(table_init/InitializeTableFromTextFileV2(table_init/InitializeTableFromTextFileV2"L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*�
serving_default�
;
	sentences.
serving_default_sentences:0���������>
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp2(

asset_path_initializer:0
tokens.txt:�
�
_vocabulary_file

_table

embeddings
	variables
trainable_variables

signatures
__call__
_preprocess"
_generic_user_object
* 
)
_create_resource
	_initializeR 
:
��
'
0"
trackable_list_wrapper
,

serving_default"
signature_map
�2�
__inference___call___84�
���
FullArgSpec 
args�
jself
j	sentences
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� � "� *�
����������
�2�
__inference__preprocess_62�
���
FullArgSpec 
args�
jself
j	sentences
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� � "� *�
����������
�2�
__inference__creator_103�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� � "� *� 
�2�
__inference__initializer_112�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� � "� *� 
1B/
 __inference_signature_wrapper_96	sentences
	J
Constj
__inference___call___84O.�+
$�!
�
	sentences���������
� "�����������
__inference__preprocess_62.�+
$�!
�
	sentences���������
� "I�F
�
0���������	
�
1���������	
�
2	4
__inference__creator_103�

� 
� "� �
 __inference_signature_wrapper_96w;�8
� 
1�.
,
	sentences�
	sentences���������"3�0
.
output_0"�
output_0���������<
__inference__initializer_112�

� 
� "� 