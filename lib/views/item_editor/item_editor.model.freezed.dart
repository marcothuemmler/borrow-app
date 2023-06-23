// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_editor.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemEditorModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get categoryNotSelected => throw _privateConstructorUsedError;
  ItemEditorItemModel get item => throw _privateConstructorUsedError;
  XFile? get itemImage => throw _privateConstructorUsedError;
  List<ItemEditorCategoryModel> get categories =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemEditorModelCopyWith<ItemEditorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEditorModelCopyWith<$Res> {
  factory $ItemEditorModelCopyWith(
          ItemEditorModel value, $Res Function(ItemEditorModel) then) =
      _$ItemEditorModelCopyWithImpl<$Res, ItemEditorModel>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool categoryNotSelected,
      ItemEditorItemModel item,
      XFile? itemImage,
      List<ItemEditorCategoryModel> categories});

  $ItemEditorItemModelCopyWith<$Res> get item;
}

/// @nodoc
class _$ItemEditorModelCopyWithImpl<$Res, $Val extends ItemEditorModel>
    implements $ItemEditorModelCopyWith<$Res> {
  _$ItemEditorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? categoryNotSelected = null,
    Object? item = null,
    Object? itemImage = freezed,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryNotSelected: null == categoryNotSelected
          ? _value.categoryNotSelected
          : categoryNotSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemEditorItemModel,
      itemImage: freezed == itemImage
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ItemEditorCategoryModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemEditorItemModelCopyWith<$Res> get item {
    return $ItemEditorItemModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemEditorModelCopyWith<$Res>
    implements $ItemEditorModelCopyWith<$Res> {
  factory _$$_ItemEditorModelCopyWith(
          _$_ItemEditorModel value, $Res Function(_$_ItemEditorModel) then) =
      __$$_ItemEditorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool categoryNotSelected,
      ItemEditorItemModel item,
      XFile? itemImage,
      List<ItemEditorCategoryModel> categories});

  @override
  $ItemEditorItemModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ItemEditorModelCopyWithImpl<$Res>
    extends _$ItemEditorModelCopyWithImpl<$Res, _$_ItemEditorModel>
    implements _$$_ItemEditorModelCopyWith<$Res> {
  __$$_ItemEditorModelCopyWithImpl(
      _$_ItemEditorModel _value, $Res Function(_$_ItemEditorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? categoryNotSelected = null,
    Object? item = null,
    Object? itemImage = freezed,
    Object? categories = null,
  }) {
    return _then(_$_ItemEditorModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryNotSelected: null == categoryNotSelected
          ? _value.categoryNotSelected
          : categoryNotSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemEditorItemModel,
      itemImage: freezed == itemImage
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ItemEditorCategoryModel>,
    ));
  }
}

/// @nodoc

class _$_ItemEditorModel implements _ItemEditorModel {
  const _$_ItemEditorModel(
      {required this.isLoading,
      required this.hasError,
      required this.categoryNotSelected,
      required this.item,
      required this.itemImage,
      required final List<ItemEditorCategoryModel> categories})
      : _categories = categories;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool categoryNotSelected;
  @override
  final ItemEditorItemModel item;
  @override
  final XFile? itemImage;
  final List<ItemEditorCategoryModel> _categories;
  @override
  List<ItemEditorCategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ItemEditorModel(isLoading: $isLoading, hasError: $hasError, categoryNotSelected: $categoryNotSelected, item: $item, itemImage: $itemImage, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemEditorModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.categoryNotSelected, categoryNotSelected) ||
                other.categoryNotSelected == categoryNotSelected) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.itemImage, itemImage) ||
                other.itemImage == itemImage) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      categoryNotSelected,
      item,
      itemImage,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemEditorModelCopyWith<_$_ItemEditorModel> get copyWith =>
      __$$_ItemEditorModelCopyWithImpl<_$_ItemEditorModel>(this, _$identity);
}

abstract class _ItemEditorModel implements ItemEditorModel {
  const factory _ItemEditorModel(
          {required final bool isLoading,
          required final bool hasError,
          required final bool categoryNotSelected,
          required final ItemEditorItemModel item,
          required final XFile? itemImage,
          required final List<ItemEditorCategoryModel> categories}) =
      _$_ItemEditorModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get categoryNotSelected;
  @override
  ItemEditorItemModel get item;
  @override
  XFile? get itemImage;
  @override
  List<ItemEditorCategoryModel> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_ItemEditorModelCopyWith<_$_ItemEditorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemEditorItemModel _$ItemEditorItemModelFromJson(Map<String, dynamic> json) {
  return _ItemEditorItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemEditorItemModel {
  String? get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ItemEditorCategoryModel? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemEditorItemModelCopyWith<ItemEditorItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEditorItemModelCopyWith<$Res> {
  factory $ItemEditorItemModelCopyWith(
          ItemEditorItemModel value, $Res Function(ItemEditorItemModel) then) =
      _$ItemEditorItemModelCopyWithImpl<$Res, ItemEditorItemModel>;
  @useResult
  $Res call(
      {String? itemId,
      String name,
      String? description,
      ItemEditorCategoryModel? category});

  $ItemEditorCategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$ItemEditorItemModelCopyWithImpl<$Res, $Val extends ItemEditorItemModel>
    implements $ItemEditorItemModelCopyWith<$Res> {
  _$ItemEditorItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ItemEditorCategoryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemEditorCategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ItemEditorCategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemEditorItemModelCopyWith<$Res>
    implements $ItemEditorItemModelCopyWith<$Res> {
  factory _$$_ItemEditorItemModelCopyWith(_$_ItemEditorItemModel value,
          $Res Function(_$_ItemEditorItemModel) then) =
      __$$_ItemEditorItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? itemId,
      String name,
      String? description,
      ItemEditorCategoryModel? category});

  @override
  $ItemEditorCategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_ItemEditorItemModelCopyWithImpl<$Res>
    extends _$ItemEditorItemModelCopyWithImpl<$Res, _$_ItemEditorItemModel>
    implements _$$_ItemEditorItemModelCopyWith<$Res> {
  __$$_ItemEditorItemModelCopyWithImpl(_$_ItemEditorItemModel _value,
      $Res Function(_$_ItemEditorItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_ItemEditorItemModel(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ItemEditorCategoryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemEditorItemModel implements _ItemEditorItemModel {
  const _$_ItemEditorItemModel(
      {this.itemId,
      required this.name,
      this.description,
      required this.category});

  factory _$_ItemEditorItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemEditorItemModelFromJson(json);

  @override
  final String? itemId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final ItemEditorCategoryModel? category;

  @override
  String toString() {
    return 'ItemEditorItemModel(itemId: $itemId, name: $name, description: $description, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemEditorItemModel &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, name, description, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemEditorItemModelCopyWith<_$_ItemEditorItemModel> get copyWith =>
      __$$_ItemEditorItemModelCopyWithImpl<_$_ItemEditorItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemEditorItemModelToJson(
      this,
    );
  }
}

abstract class _ItemEditorItemModel implements ItemEditorItemModel {
  const factory _ItemEditorItemModel(
          {final String? itemId,
          required final String name,
          final String? description,
          required final ItemEditorCategoryModel? category}) =
      _$_ItemEditorItemModel;

  factory _ItemEditorItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemEditorItemModel.fromJson;

  @override
  String? get itemId;
  @override
  String get name;
  @override
  String? get description;
  @override
  ItemEditorCategoryModel? get category;
  @override
  @JsonKey(ignore: true)
  _$$_ItemEditorItemModelCopyWith<_$_ItemEditorItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemEditorParameters {
  String? get itemId => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String? get preselectedCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemEditorParametersCopyWith<ItemEditorParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEditorParametersCopyWith<$Res> {
  factory $ItemEditorParametersCopyWith(ItemEditorParameters value,
          $Res Function(ItemEditorParameters) then) =
      _$ItemEditorParametersCopyWithImpl<$Res, ItemEditorParameters>;
  @useResult
  $Res call({String? itemId, String groupId, String? preselectedCategory});
}

/// @nodoc
class _$ItemEditorParametersCopyWithImpl<$Res,
        $Val extends ItemEditorParameters>
    implements $ItemEditorParametersCopyWith<$Res> {
  _$ItemEditorParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? groupId = null,
    Object? preselectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      preselectedCategory: freezed == preselectedCategory
          ? _value.preselectedCategory
          : preselectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemEditorParametersCopyWith<$Res>
    implements $ItemEditorParametersCopyWith<$Res> {
  factory _$$_ItemEditorParametersCopyWith(_$_ItemEditorParameters value,
          $Res Function(_$_ItemEditorParameters) then) =
      __$$_ItemEditorParametersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? itemId, String groupId, String? preselectedCategory});
}

/// @nodoc
class __$$_ItemEditorParametersCopyWithImpl<$Res>
    extends _$ItemEditorParametersCopyWithImpl<$Res, _$_ItemEditorParameters>
    implements _$$_ItemEditorParametersCopyWith<$Res> {
  __$$_ItemEditorParametersCopyWithImpl(_$_ItemEditorParameters _value,
      $Res Function(_$_ItemEditorParameters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? groupId = null,
    Object? preselectedCategory = freezed,
  }) {
    return _then(_$_ItemEditorParameters(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      preselectedCategory: freezed == preselectedCategory
          ? _value.preselectedCategory
          : preselectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ItemEditorParameters implements _ItemEditorParameters {
  const _$_ItemEditorParameters(
      {required this.itemId,
      required this.groupId,
      required this.preselectedCategory});

  @override
  final String? itemId;
  @override
  final String groupId;
  @override
  final String? preselectedCategory;

  @override
  String toString() {
    return 'ItemEditorParameters(itemId: $itemId, groupId: $groupId, preselectedCategory: $preselectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemEditorParameters &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.preselectedCategory, preselectedCategory) ||
                other.preselectedCategory == preselectedCategory));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, groupId, preselectedCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemEditorParametersCopyWith<_$_ItemEditorParameters> get copyWith =>
      __$$_ItemEditorParametersCopyWithImpl<_$_ItemEditorParameters>(
          this, _$identity);
}

abstract class _ItemEditorParameters implements ItemEditorParameters {
  const factory _ItemEditorParameters(
      {required final String? itemId,
      required final String groupId,
      required final String? preselectedCategory}) = _$_ItemEditorParameters;

  @override
  String? get itemId;
  @override
  String get groupId;
  @override
  String? get preselectedCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ItemEditorParametersCopyWith<_$_ItemEditorParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemEditorCategoryModel _$ItemEditorCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _ItemEditorCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ItemEditorCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemEditorCategoryModelCopyWith<ItemEditorCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEditorCategoryModelCopyWith<$Res> {
  factory $ItemEditorCategoryModelCopyWith(ItemEditorCategoryModel value,
          $Res Function(ItemEditorCategoryModel) then) =
      _$ItemEditorCategoryModelCopyWithImpl<$Res, ItemEditorCategoryModel>;
  @useResult
  $Res call({String id, String name, String? description});
}

/// @nodoc
class _$ItemEditorCategoryModelCopyWithImpl<$Res,
        $Val extends ItemEditorCategoryModel>
    implements $ItemEditorCategoryModelCopyWith<$Res> {
  _$ItemEditorCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemEditorCategoryModelCopyWith<$Res>
    implements $ItemEditorCategoryModelCopyWith<$Res> {
  factory _$$_ItemEditorCategoryModelCopyWith(_$_ItemEditorCategoryModel value,
          $Res Function(_$_ItemEditorCategoryModel) then) =
      __$$_ItemEditorCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? description});
}

/// @nodoc
class __$$_ItemEditorCategoryModelCopyWithImpl<$Res>
    extends _$ItemEditorCategoryModelCopyWithImpl<$Res,
        _$_ItemEditorCategoryModel>
    implements _$$_ItemEditorCategoryModelCopyWith<$Res> {
  __$$_ItemEditorCategoryModelCopyWithImpl(_$_ItemEditorCategoryModel _value,
      $Res Function(_$_ItemEditorCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$_ItemEditorCategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemEditorCategoryModel implements _ItemEditorCategoryModel {
  const _$_ItemEditorCategoryModel(
      {required this.id, required this.name, this.description});

  factory _$_ItemEditorCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemEditorCategoryModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'ItemEditorCategoryModel(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemEditorCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemEditorCategoryModelCopyWith<_$_ItemEditorCategoryModel>
      get copyWith =>
          __$$_ItemEditorCategoryModelCopyWithImpl<_$_ItemEditorCategoryModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemEditorCategoryModelToJson(
      this,
    );
  }
}

abstract class _ItemEditorCategoryModel implements ItemEditorCategoryModel {
  const factory _ItemEditorCategoryModel(
      {required final String id,
      required final String name,
      final String? description}) = _$_ItemEditorCategoryModel;

  factory _ItemEditorCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_ItemEditorCategoryModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_ItemEditorCategoryModelCopyWith<_$_ItemEditorCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

ItemEditorItemModelDTO _$ItemEditorItemModelDTOFromJson(
    Map<String, dynamic> json) {
  return _ItemEditorItemModelDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemEditorItemModelDTO {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemEditorItemModelDTOCopyWith<ItemEditorItemModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEditorItemModelDTOCopyWith<$Res> {
  factory $ItemEditorItemModelDTOCopyWith(ItemEditorItemModelDTO value,
          $Res Function(ItemEditorItemModelDTO) then) =
      _$ItemEditorItemModelDTOCopyWithImpl<$Res, ItemEditorItemModelDTO>;
  @useResult
  $Res call({String name, String? description, String categoryId});
}

/// @nodoc
class _$ItemEditorItemModelDTOCopyWithImpl<$Res,
        $Val extends ItemEditorItemModelDTO>
    implements $ItemEditorItemModelDTOCopyWith<$Res> {
  _$ItemEditorItemModelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemEditorItemModelDTOCopyWith<$Res>
    implements $ItemEditorItemModelDTOCopyWith<$Res> {
  factory _$$_ItemEditorItemModelDTOCopyWith(_$_ItemEditorItemModelDTO value,
          $Res Function(_$_ItemEditorItemModelDTO) then) =
      __$$_ItemEditorItemModelDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? description, String categoryId});
}

/// @nodoc
class __$$_ItemEditorItemModelDTOCopyWithImpl<$Res>
    extends _$ItemEditorItemModelDTOCopyWithImpl<$Res,
        _$_ItemEditorItemModelDTO>
    implements _$$_ItemEditorItemModelDTOCopyWith<$Res> {
  __$$_ItemEditorItemModelDTOCopyWithImpl(_$_ItemEditorItemModelDTO _value,
      $Res Function(_$_ItemEditorItemModelDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? categoryId = null,
  }) {
    return _then(_$_ItemEditorItemModelDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemEditorItemModelDTO implements _ItemEditorItemModelDTO {
  _$_ItemEditorItemModelDTO(
      {required this.name, this.description, required this.categoryId});

  factory _$_ItemEditorItemModelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ItemEditorItemModelDTOFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String categoryId;

  @override
  String toString() {
    return 'ItemEditorItemModelDTO(name: $name, description: $description, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemEditorItemModelDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemEditorItemModelDTOCopyWith<_$_ItemEditorItemModelDTO> get copyWith =>
      __$$_ItemEditorItemModelDTOCopyWithImpl<_$_ItemEditorItemModelDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemEditorItemModelDTOToJson(
      this,
    );
  }
}

abstract class _ItemEditorItemModelDTO implements ItemEditorItemModelDTO {
  factory _ItemEditorItemModelDTO(
      {required final String name,
      final String? description,
      required final String categoryId}) = _$_ItemEditorItemModelDTO;

  factory _ItemEditorItemModelDTO.fromJson(Map<String, dynamic> json) =
      _$_ItemEditorItemModelDTO.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_ItemEditorItemModelDTOCopyWith<_$_ItemEditorItemModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

NewItemEditorItemModelDTO _$NewItemEditorItemModelDTOFromJson(
    Map<String, dynamic> json) {
  return _NewItemEditorItemModelDTO.fromJson(json);
}

/// @nodoc
mixin _$NewItemEditorItemModelDTO {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewItemEditorItemModelDTOCopyWith<NewItemEditorItemModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewItemEditorItemModelDTOCopyWith<$Res> {
  factory $NewItemEditorItemModelDTOCopyWith(NewItemEditorItemModelDTO value,
          $Res Function(NewItemEditorItemModelDTO) then) =
      _$NewItemEditorItemModelDTOCopyWithImpl<$Res, NewItemEditorItemModelDTO>;
  @useResult
  $Res call(
      {String name,
      String? description,
      String categoryId,
      String ownerId,
      String groupId});
}

/// @nodoc
class _$NewItemEditorItemModelDTOCopyWithImpl<$Res,
        $Val extends NewItemEditorItemModelDTO>
    implements $NewItemEditorItemModelDTOCopyWith<$Res> {
  _$NewItemEditorItemModelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? categoryId = null,
    Object? ownerId = null,
    Object? groupId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewItemEditorItemModelDTOCopyWith<$Res>
    implements $NewItemEditorItemModelDTOCopyWith<$Res> {
  factory _$$_NewItemEditorItemModelDTOCopyWith(
          _$_NewItemEditorItemModelDTO value,
          $Res Function(_$_NewItemEditorItemModelDTO) then) =
      __$$_NewItemEditorItemModelDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      String categoryId,
      String ownerId,
      String groupId});
}

/// @nodoc
class __$$_NewItemEditorItemModelDTOCopyWithImpl<$Res>
    extends _$NewItemEditorItemModelDTOCopyWithImpl<$Res,
        _$_NewItemEditorItemModelDTO>
    implements _$$_NewItemEditorItemModelDTOCopyWith<$Res> {
  __$$_NewItemEditorItemModelDTOCopyWithImpl(
      _$_NewItemEditorItemModelDTO _value,
      $Res Function(_$_NewItemEditorItemModelDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? categoryId = null,
    Object? ownerId = null,
    Object? groupId = null,
  }) {
    return _then(_$_NewItemEditorItemModelDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewItemEditorItemModelDTO implements _NewItemEditorItemModelDTO {
  _$_NewItemEditorItemModelDTO(
      {required this.name,
      this.description,
      required this.categoryId,
      required this.ownerId,
      required this.groupId});

  factory _$_NewItemEditorItemModelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NewItemEditorItemModelDTOFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String categoryId;
  @override
  final String ownerId;
  @override
  final String groupId;

  @override
  String toString() {
    return 'NewItemEditorItemModelDTO(name: $name, description: $description, categoryId: $categoryId, ownerId: $ownerId, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewItemEditorItemModelDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, categoryId, ownerId, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewItemEditorItemModelDTOCopyWith<_$_NewItemEditorItemModelDTO>
      get copyWith => __$$_NewItemEditorItemModelDTOCopyWithImpl<
          _$_NewItemEditorItemModelDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewItemEditorItemModelDTOToJson(
      this,
    );
  }
}

abstract class _NewItemEditorItemModelDTO implements NewItemEditorItemModelDTO {
  factory _NewItemEditorItemModelDTO(
      {required final String name,
      final String? description,
      required final String categoryId,
      required final String ownerId,
      required final String groupId}) = _$_NewItemEditorItemModelDTO;

  factory _NewItemEditorItemModelDTO.fromJson(Map<String, dynamic> json) =
      _$_NewItemEditorItemModelDTO.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String get categoryId;
  @override
  String get ownerId;
  @override
  String get groupId;
  @override
  @JsonKey(ignore: true)
  _$$_NewItemEditorItemModelDTOCopyWith<_$_NewItemEditorItemModelDTO>
      get copyWith => throw _privateConstructorUsedError;
}
