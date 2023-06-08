// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_settings.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateCategoryDTO _$CreateCategoryDTOFromJson(Map<String, dynamic> json) {
  return _CreateCategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$CreateCategoryDTO {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCategoryDTOCopyWith<CreateCategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCategoryDTOCopyWith<$Res> {
  factory $CreateCategoryDTOCopyWith(
          CreateCategoryDTO value, $Res Function(CreateCategoryDTO) then) =
      _$CreateCategoryDTOCopyWithImpl<$Res, CreateCategoryDTO>;
  @useResult
  $Res call({String name, String? description, String? groupId});
}

/// @nodoc
class _$CreateCategoryDTOCopyWithImpl<$Res, $Val extends CreateCategoryDTO>
    implements $CreateCategoryDTOCopyWith<$Res> {
  _$CreateCategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? groupId = freezed,
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
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateCategoryDTOCopyWith<$Res>
    implements $CreateCategoryDTOCopyWith<$Res> {
  factory _$$_CreateCategoryDTOCopyWith(_$_CreateCategoryDTO value,
          $Res Function(_$_CreateCategoryDTO) then) =
      __$$_CreateCategoryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? description, String? groupId});
}

/// @nodoc
class __$$_CreateCategoryDTOCopyWithImpl<$Res>
    extends _$CreateCategoryDTOCopyWithImpl<$Res, _$_CreateCategoryDTO>
    implements _$$_CreateCategoryDTOCopyWith<$Res> {
  __$$_CreateCategoryDTOCopyWithImpl(
      _$_CreateCategoryDTO _value, $Res Function(_$_CreateCategoryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_$_CreateCategoryDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateCategoryDTO implements _CreateCategoryDTO {
  _$_CreateCategoryDTO(
      {required this.name, required this.description, required this.groupId});

  factory _$_CreateCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCategoryDTOFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String? groupId;

  @override
  String toString() {
    return 'CreateCategoryDTO(name: $name, description: $description, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCategoryDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCategoryDTOCopyWith<_$_CreateCategoryDTO> get copyWith =>
      __$$_CreateCategoryDTOCopyWithImpl<_$_CreateCategoryDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCategoryDTOToJson(
      this,
    );
  }
}

abstract class _CreateCategoryDTO implements CreateCategoryDTO {
  factory _CreateCategoryDTO(
      {required final String name,
      required final String? description,
      required final String? groupId}) = _$_CreateCategoryDTO;

  factory _CreateCategoryDTO.fromJson(Map<String, dynamic> json) =
      _$_CreateCategoryDTO.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$_CreateCategoryDTOCopyWith<_$_CreateCategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CategorySettingsCategoryListModel _$CategorySettingsCategoryListModelFromJson(
    Map<String, dynamic> json) {
  return _CategorySettingsCategoryListModel.fromJson(json);
}

/// @nodoc
mixin _$CategorySettingsCategoryListModel {
  String? get groupId => throw _privateConstructorUsedError;
  List<CategorySettingsCategoryModel> get categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorySettingsCategoryListModelCopyWith<CategorySettingsCategoryListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorySettingsCategoryListModelCopyWith<$Res> {
  factory $CategorySettingsCategoryListModelCopyWith(
          CategorySettingsCategoryListModel value,
          $Res Function(CategorySettingsCategoryListModel) then) =
      _$CategorySettingsCategoryListModelCopyWithImpl<$Res,
          CategorySettingsCategoryListModel>;
  @useResult
  $Res call({String? groupId, List<CategorySettingsCategoryModel> categories});
}

/// @nodoc
class _$CategorySettingsCategoryListModelCopyWithImpl<$Res,
        $Val extends CategorySettingsCategoryListModel>
    implements $CategorySettingsCategoryListModelCopyWith<$Res> {
  _$CategorySettingsCategoryListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategorySettingsCategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategorySettingsCategoryListModelCopyWith<$Res>
    implements $CategorySettingsCategoryListModelCopyWith<$Res> {
  factory _$$_CategorySettingsCategoryListModelCopyWith(
          _$_CategorySettingsCategoryListModel value,
          $Res Function(_$_CategorySettingsCategoryListModel) then) =
      __$$_CategorySettingsCategoryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? groupId, List<CategorySettingsCategoryModel> categories});
}

/// @nodoc
class __$$_CategorySettingsCategoryListModelCopyWithImpl<$Res>
    extends _$CategorySettingsCategoryListModelCopyWithImpl<$Res,
        _$_CategorySettingsCategoryListModel>
    implements _$$_CategorySettingsCategoryListModelCopyWith<$Res> {
  __$$_CategorySettingsCategoryListModelCopyWithImpl(
      _$_CategorySettingsCategoryListModel _value,
      $Res Function(_$_CategorySettingsCategoryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? categories = null,
  }) {
    return _then(_$_CategorySettingsCategoryListModel(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategorySettingsCategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategorySettingsCategoryListModel
    implements _CategorySettingsCategoryListModel {
  _$_CategorySettingsCategoryListModel(
      {required this.groupId,
      required final List<CategorySettingsCategoryModel> categories})
      : _categories = categories;

  factory _$_CategorySettingsCategoryListModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CategorySettingsCategoryListModelFromJson(json);

  @override
  final String? groupId;
  final List<CategorySettingsCategoryModel> _categories;
  @override
  List<CategorySettingsCategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategorySettingsCategoryListModel(groupId: $groupId, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySettingsCategoryListModel &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupId, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategorySettingsCategoryListModelCopyWith<
          _$_CategorySettingsCategoryListModel>
      get copyWith => __$$_CategorySettingsCategoryListModelCopyWithImpl<
          _$_CategorySettingsCategoryListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategorySettingsCategoryListModelToJson(
      this,
    );
  }
}

abstract class _CategorySettingsCategoryListModel
    implements CategorySettingsCategoryListModel {
  factory _CategorySettingsCategoryListModel(
          {required final String? groupId,
          required final List<CategorySettingsCategoryModel> categories}) =
      _$_CategorySettingsCategoryListModel;

  factory _CategorySettingsCategoryListModel.fromJson(
          Map<String, dynamic> json) =
      _$_CategorySettingsCategoryListModel.fromJson;

  @override
  String? get groupId;
  @override
  List<CategorySettingsCategoryModel> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_CategorySettingsCategoryListModelCopyWith<
          _$_CategorySettingsCategoryListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryListDetailModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  CategorySettingsCategoryListModel? get items =>
      throw _privateConstructorUsedError;
  CategorySettingsCategoryModel? get newCategory =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryListDetailModelCopyWith<CategoryListDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListDetailModelCopyWith<$Res> {
  factory $CategoryListDetailModelCopyWith(CategoryListDetailModel value,
          $Res Function(CategoryListDetailModel) then) =
      _$CategoryListDetailModelCopyWithImpl<$Res, CategoryListDetailModel>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      CategorySettingsCategoryListModel? items,
      CategorySettingsCategoryModel? newCategory});

  $CategorySettingsCategoryListModelCopyWith<$Res>? get items;
  $CategorySettingsCategoryModelCopyWith<$Res>? get newCategory;
}

/// @nodoc
class _$CategoryListDetailModelCopyWithImpl<$Res,
        $Val extends CategoryListDetailModel>
    implements $CategoryListDetailModelCopyWith<$Res> {
  _$CategoryListDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? items = freezed,
    Object? newCategory = freezed,
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
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as CategorySettingsCategoryListModel?,
      newCategory: freezed == newCategory
          ? _value.newCategory
          : newCategory // ignore: cast_nullable_to_non_nullable
              as CategorySettingsCategoryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategorySettingsCategoryListModelCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $CategorySettingsCategoryListModelCopyWith<$Res>(_value.items!,
        (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategorySettingsCategoryModelCopyWith<$Res>? get newCategory {
    if (_value.newCategory == null) {
      return null;
    }

    return $CategorySettingsCategoryModelCopyWith<$Res>(_value.newCategory!,
        (value) {
      return _then(_value.copyWith(newCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryListDetailModelCopyWith<$Res>
    implements $CategoryListDetailModelCopyWith<$Res> {
  factory _$$_CategoryListDetailModelCopyWith(_$_CategoryListDetailModel value,
          $Res Function(_$_CategoryListDetailModel) then) =
      __$$_CategoryListDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      CategorySettingsCategoryListModel? items,
      CategorySettingsCategoryModel? newCategory});

  @override
  $CategorySettingsCategoryListModelCopyWith<$Res>? get items;
  @override
  $CategorySettingsCategoryModelCopyWith<$Res>? get newCategory;
}

/// @nodoc
class __$$_CategoryListDetailModelCopyWithImpl<$Res>
    extends _$CategoryListDetailModelCopyWithImpl<$Res,
        _$_CategoryListDetailModel>
    implements _$$_CategoryListDetailModelCopyWith<$Res> {
  __$$_CategoryListDetailModelCopyWithImpl(_$_CategoryListDetailModel _value,
      $Res Function(_$_CategoryListDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? items = freezed,
    Object? newCategory = freezed,
  }) {
    return _then(_$_CategoryListDetailModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as CategorySettingsCategoryListModel?,
      newCategory: freezed == newCategory
          ? _value.newCategory
          : newCategory // ignore: cast_nullable_to_non_nullable
              as CategorySettingsCategoryModel?,
    ));
  }
}

/// @nodoc

class _$_CategoryListDetailModel implements _CategoryListDetailModel {
  _$_CategoryListDetailModel(
      {required this.isLoading,
      required this.hasError,
      required this.items,
      required this.newCategory});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final CategorySettingsCategoryListModel? items;
  @override
  final CategorySettingsCategoryModel? newCategory;

  @override
  String toString() {
    return 'CategoryListDetailModel(isLoading: $isLoading, hasError: $hasError, items: $items, newCategory: $newCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryListDetailModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.newCategory, newCategory) ||
                other.newCategory == newCategory));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, items, newCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryListDetailModelCopyWith<_$_CategoryListDetailModel>
      get copyWith =>
          __$$_CategoryListDetailModelCopyWithImpl<_$_CategoryListDetailModel>(
              this, _$identity);
}

abstract class _CategoryListDetailModel implements CategoryListDetailModel {
  factory _CategoryListDetailModel(
          {required final bool isLoading,
          required final bool hasError,
          required final CategorySettingsCategoryListModel? items,
          required final CategorySettingsCategoryModel? newCategory}) =
      _$_CategoryListDetailModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  CategorySettingsCategoryListModel? get items;
  @override
  CategorySettingsCategoryModel? get newCategory;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryListDetailModelCopyWith<_$_CategoryListDetailModel>
      get copyWith => throw _privateConstructorUsedError;
}

CategorySettingsCategoryModel _$CategorySettingsCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _CategorySettingsCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategorySettingsCategoryModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorySettingsCategoryModelCopyWith<CategorySettingsCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorySettingsCategoryModelCopyWith<$Res> {
  factory $CategorySettingsCategoryModelCopyWith(
          CategorySettingsCategoryModel value,
          $Res Function(CategorySettingsCategoryModel) then) =
      _$CategorySettingsCategoryModelCopyWithImpl<$Res,
          CategorySettingsCategoryModel>;
  @useResult
  $Res call({String? id, String name, String? description, String? groupId});
}

/// @nodoc
class _$CategorySettingsCategoryModelCopyWithImpl<$Res,
        $Val extends CategorySettingsCategoryModel>
    implements $CategorySettingsCategoryModelCopyWith<$Res> {
  _$CategorySettingsCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategorySettingsCategoryModelCopyWith<$Res>
    implements $CategorySettingsCategoryModelCopyWith<$Res> {
  factory _$$_CategorySettingsCategoryModelCopyWith(
          _$_CategorySettingsCategoryModel value,
          $Res Function(_$_CategorySettingsCategoryModel) then) =
      __$$_CategorySettingsCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name, String? description, String? groupId});
}

/// @nodoc
class __$$_CategorySettingsCategoryModelCopyWithImpl<$Res>
    extends _$CategorySettingsCategoryModelCopyWithImpl<$Res,
        _$_CategorySettingsCategoryModel>
    implements _$$_CategorySettingsCategoryModelCopyWith<$Res> {
  __$$_CategorySettingsCategoryModelCopyWithImpl(
      _$_CategorySettingsCategoryModel _value,
      $Res Function(_$_CategorySettingsCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_$_CategorySettingsCategoryModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategorySettingsCategoryModel
    implements _CategorySettingsCategoryModel {
  _$_CategorySettingsCategoryModel(
      {this.id, required this.name, this.description, this.groupId});

  factory _$_CategorySettingsCategoryModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CategorySettingsCategoryModelFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? groupId;

  @override
  String toString() {
    return 'CategorySettingsCategoryModel(id: $id, name: $name, description: $description, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySettingsCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategorySettingsCategoryModelCopyWith<_$_CategorySettingsCategoryModel>
      get copyWith => __$$_CategorySettingsCategoryModelCopyWithImpl<
          _$_CategorySettingsCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategorySettingsCategoryModelToJson(
      this,
    );
  }
}

abstract class _CategorySettingsCategoryModel
    implements CategorySettingsCategoryModel {
  factory _CategorySettingsCategoryModel(
      {final String? id,
      required final String name,
      final String? description,
      final String? groupId}) = _$_CategorySettingsCategoryModel;

  factory _CategorySettingsCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategorySettingsCategoryModel.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$_CategorySettingsCategoryModelCopyWith<_$_CategorySettingsCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}
