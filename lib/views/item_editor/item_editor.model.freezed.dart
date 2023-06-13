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
  ItemEditorItemModel? get item => throw _privateConstructorUsedError;

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
  $Res call({bool isLoading, bool hasError, ItemEditorItemModel? item});

  $ItemEditorItemModelCopyWith<$Res>? get item;
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
    Object? item = freezed,
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
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemEditorItemModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemEditorItemModelCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ItemEditorItemModelCopyWith<$Res>(_value.item!, (value) {
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
  $Res call({bool isLoading, bool hasError, ItemEditorItemModel? item});

  @override
  $ItemEditorItemModelCopyWith<$Res>? get item;
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
    Object? item = freezed,
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
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemEditorItemModel?,
    ));
  }
}

/// @nodoc

class _$_ItemEditorModel implements _ItemEditorModel {
  _$_ItemEditorModel(
      {required this.isLoading, required this.hasError, required this.item});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final ItemEditorItemModel? item;

  @override
  String toString() {
    return 'ItemEditorModel(isLoading: $isLoading, hasError: $hasError, item: $item)';
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
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemEditorModelCopyWith<_$_ItemEditorModel> get copyWith =>
      __$$_ItemEditorModelCopyWithImpl<_$_ItemEditorModel>(this, _$identity);
}

abstract class _ItemEditorModel implements ItemEditorModel {
  factory _ItemEditorModel(
      {required final bool isLoading,
      required final bool hasError,
      required final ItemEditorItemModel? item}) = _$_ItemEditorModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  ItemEditorItemModel? get item;
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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ItemDetailCategoryModel get category => throw _privateConstructorUsedError;

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
      {String id,
      String name,
      String? description,
      ItemDetailCategoryModel category});

  $ItemDetailCategoryModelCopyWith<$Res> get category;
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
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? category = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ItemDetailCategoryModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemDetailCategoryModelCopyWith<$Res> get category {
    return $ItemDetailCategoryModelCopyWith<$Res>(_value.category, (value) {
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
      {String id,
      String name,
      String? description,
      ItemDetailCategoryModel category});

  @override
  $ItemDetailCategoryModelCopyWith<$Res> get category;
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
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? category = null,
  }) {
    return _then(_$_ItemEditorItemModel(
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ItemDetailCategoryModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemEditorItemModel implements _ItemEditorItemModel {
  _$_ItemEditorItemModel(
      {required this.id,
      required this.name,
      this.description,
      required this.category});

  factory _$_ItemEditorItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemEditorItemModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final ItemDetailCategoryModel category;

  @override
  String toString() {
    return 'ItemEditorItemModel(id: $id, name: $name, description: $description, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemEditorItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, category);

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
  factory _ItemEditorItemModel(
          {required final String id,
          required final String name,
          final String? description,
          required final ItemDetailCategoryModel category}) =
      _$_ItemEditorItemModel;

  factory _ItemEditorItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemEditorItemModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  ItemDetailCategoryModel get category;
  @override
  @JsonKey(ignore: true)
  _$$_ItemEditorItemModelCopyWith<_$_ItemEditorItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
