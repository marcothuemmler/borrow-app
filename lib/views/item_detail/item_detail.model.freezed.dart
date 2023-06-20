// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_detail.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemDetailModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  ItemDetailItemModel? get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemDetailModelCopyWith<ItemDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailModelCopyWith<$Res> {
  factory $ItemDetailModelCopyWith(
          ItemDetailModel value, $Res Function(ItemDetailModel) then) =
      _$ItemDetailModelCopyWithImpl<$Res, ItemDetailModel>;
  @useResult
  $Res call({bool isLoading, bool hasError, ItemDetailItemModel? item});

  $ItemDetailItemModelCopyWith<$Res>? get item;
}

/// @nodoc
class _$ItemDetailModelCopyWithImpl<$Res, $Val extends ItemDetailModel>
    implements $ItemDetailModelCopyWith<$Res> {
  _$ItemDetailModelCopyWithImpl(this._value, this._then);

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
              as ItemDetailItemModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemDetailItemModelCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ItemDetailItemModelCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemDetailModelCopyWith<$Res>
    implements $ItemDetailModelCopyWith<$Res> {
  factory _$$_ItemDetailModelCopyWith(
          _$_ItemDetailModel value, $Res Function(_$_ItemDetailModel) then) =
      __$$_ItemDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool hasError, ItemDetailItemModel? item});

  @override
  $ItemDetailItemModelCopyWith<$Res>? get item;
}

/// @nodoc
class __$$_ItemDetailModelCopyWithImpl<$Res>
    extends _$ItemDetailModelCopyWithImpl<$Res, _$_ItemDetailModel>
    implements _$$_ItemDetailModelCopyWith<$Res> {
  __$$_ItemDetailModelCopyWithImpl(
      _$_ItemDetailModel _value, $Res Function(_$_ItemDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? item = freezed,
  }) {
    return _then(_$_ItemDetailModel(
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
              as ItemDetailItemModel?,
    ));
  }
}

/// @nodoc

class _$_ItemDetailModel implements _ItemDetailModel {
  _$_ItemDetailModel(
      {required this.isLoading, required this.hasError, required this.item});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final ItemDetailItemModel? item;

  @override
  String toString() {
    return 'ItemDetailModel(isLoading: $isLoading, hasError: $hasError, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDetailModel &&
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
  _$$_ItemDetailModelCopyWith<_$_ItemDetailModel> get copyWith =>
      __$$_ItemDetailModelCopyWithImpl<_$_ItemDetailModel>(this, _$identity);
}

abstract class _ItemDetailModel implements ItemDetailModel {
  factory _ItemDetailModel(
      {required final bool isLoading,
      required final bool hasError,
      required final ItemDetailItemModel? item}) = _$_ItemDetailModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  ItemDetailItemModel? get item;
  @override
  @JsonKey(ignore: true)
  _$$_ItemDetailModelCopyWith<_$_ItemDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDetailItemModel _$ItemDetailItemModelFromJson(Map<String, dynamic> json) {
  return _ItemDetailItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemDetailItemModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isMyItem => throw _privateConstructorUsedError;
  ItemDetailUserModel get owner => throw _privateConstructorUsedError;
  ItemDetailCategoryModel get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDetailItemModelCopyWith<ItemDetailItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailItemModelCopyWith<$Res> {
  factory $ItemDetailItemModelCopyWith(
          ItemDetailItemModel value, $Res Function(ItemDetailItemModel) then) =
      _$ItemDetailItemModelCopyWithImpl<$Res, ItemDetailItemModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      bool isMyItem,
      ItemDetailUserModel owner,
      ItemDetailCategoryModel category});

  $ItemDetailUserModelCopyWith<$Res> get owner;
  $ItemDetailCategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class _$ItemDetailItemModelCopyWithImpl<$Res, $Val extends ItemDetailItemModel>
    implements $ItemDetailItemModelCopyWith<$Res> {
  _$ItemDetailItemModelCopyWithImpl(this._value, this._then);

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
    Object? isMyItem = null,
    Object? owner = null,
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
      isMyItem: null == isMyItem
          ? _value.isMyItem
          : isMyItem // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ItemDetailUserModel,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ItemDetailCategoryModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemDetailUserModelCopyWith<$Res> get owner {
    return $ItemDetailUserModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
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
abstract class _$$_ItemDetailItemModelCopyWith<$Res>
    implements $ItemDetailItemModelCopyWith<$Res> {
  factory _$$_ItemDetailItemModelCopyWith(_$_ItemDetailItemModel value,
          $Res Function(_$_ItemDetailItemModel) then) =
      __$$_ItemDetailItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      bool isMyItem,
      ItemDetailUserModel owner,
      ItemDetailCategoryModel category});

  @override
  $ItemDetailUserModelCopyWith<$Res> get owner;
  @override
  $ItemDetailCategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$_ItemDetailItemModelCopyWithImpl<$Res>
    extends _$ItemDetailItemModelCopyWithImpl<$Res, _$_ItemDetailItemModel>
    implements _$$_ItemDetailItemModelCopyWith<$Res> {
  __$$_ItemDetailItemModelCopyWithImpl(_$_ItemDetailItemModel _value,
      $Res Function(_$_ItemDetailItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? isMyItem = null,
    Object? owner = null,
    Object? category = null,
  }) {
    return _then(_$_ItemDetailItemModel(
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
      isMyItem: null == isMyItem
          ? _value.isMyItem
          : isMyItem // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ItemDetailUserModel,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ItemDetailCategoryModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemDetailItemModel implements _ItemDetailItemModel {
  _$_ItemDetailItemModel(
      {required this.id,
      required this.name,
      this.description,
      this.isMyItem = false,
      required this.owner,
      required this.category});

  factory _$_ItemDetailItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDetailItemModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isMyItem;
  @override
  final ItemDetailUserModel owner;
  @override
  final ItemDetailCategoryModel category;

  @override
  String toString() {
    return 'ItemDetailItemModel(id: $id, name: $name, description: $description, isMyItem: $isMyItem, owner: $owner, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDetailItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isMyItem, isMyItem) ||
                other.isMyItem == isMyItem) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, isMyItem, owner, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemDetailItemModelCopyWith<_$_ItemDetailItemModel> get copyWith =>
      __$$_ItemDetailItemModelCopyWithImpl<_$_ItemDetailItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDetailItemModelToJson(
      this,
    );
  }
}

abstract class _ItemDetailItemModel implements ItemDetailItemModel {
  factory _ItemDetailItemModel(
          {required final String id,
          required final String name,
          final String? description,
          final bool isMyItem,
          required final ItemDetailUserModel owner,
          required final ItemDetailCategoryModel category}) =
      _$_ItemDetailItemModel;

  factory _ItemDetailItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemDetailItemModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  bool get isMyItem;
  @override
  ItemDetailUserModel get owner;
  @override
  ItemDetailCategoryModel get category;
  @override
  @JsonKey(ignore: true)
  _$$_ItemDetailItemModelCopyWith<_$_ItemDetailItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDetailCategoryModel _$ItemDetailCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _ItemDetailCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ItemDetailCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ItemDetailCategoryModel? get parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDetailCategoryModelCopyWith<ItemDetailCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailCategoryModelCopyWith<$Res> {
  factory $ItemDetailCategoryModelCopyWith(ItemDetailCategoryModel value,
          $Res Function(ItemDetailCategoryModel) then) =
      _$ItemDetailCategoryModelCopyWithImpl<$Res, ItemDetailCategoryModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      ItemDetailCategoryModel? parent});

  $ItemDetailCategoryModelCopyWith<$Res>? get parent;
}

/// @nodoc
class _$ItemDetailCategoryModelCopyWithImpl<$Res,
        $Val extends ItemDetailCategoryModel>
    implements $ItemDetailCategoryModelCopyWith<$Res> {
  _$ItemDetailCategoryModelCopyWithImpl(this._value, this._then);

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
    Object? parent = freezed,
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
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ItemDetailCategoryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemDetailCategoryModelCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ItemDetailCategoryModelCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemDetailCategoryModelCopyWith<$Res>
    implements $ItemDetailCategoryModelCopyWith<$Res> {
  factory _$$_ItemDetailCategoryModelCopyWith(_$_ItemDetailCategoryModel value,
          $Res Function(_$_ItemDetailCategoryModel) then) =
      __$$_ItemDetailCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      ItemDetailCategoryModel? parent});

  @override
  $ItemDetailCategoryModelCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$_ItemDetailCategoryModelCopyWithImpl<$Res>
    extends _$ItemDetailCategoryModelCopyWithImpl<$Res,
        _$_ItemDetailCategoryModel>
    implements _$$_ItemDetailCategoryModelCopyWith<$Res> {
  __$$_ItemDetailCategoryModelCopyWithImpl(_$_ItemDetailCategoryModel _value,
      $Res Function(_$_ItemDetailCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? parent = freezed,
  }) {
    return _then(_$_ItemDetailCategoryModel(
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
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ItemDetailCategoryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemDetailCategoryModel implements _ItemDetailCategoryModel {
  _$_ItemDetailCategoryModel(
      {required this.id, required this.name, this.description, this.parent});

  factory _$_ItemDetailCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDetailCategoryModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final ItemDetailCategoryModel? parent;

  @override
  String toString() {
    return 'ItemDetailCategoryModel(id: $id, name: $name, description: $description, parent: $parent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDetailCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, parent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemDetailCategoryModelCopyWith<_$_ItemDetailCategoryModel>
      get copyWith =>
          __$$_ItemDetailCategoryModelCopyWithImpl<_$_ItemDetailCategoryModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDetailCategoryModelToJson(
      this,
    );
  }
}

abstract class _ItemDetailCategoryModel implements ItemDetailCategoryModel {
  factory _ItemDetailCategoryModel(
      {required final String id,
      required final String name,
      final String? description,
      final ItemDetailCategoryModel? parent}) = _$_ItemDetailCategoryModel;

  factory _ItemDetailCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_ItemDetailCategoryModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  ItemDetailCategoryModel? get parent;
  @override
  @JsonKey(ignore: true)
  _$$_ItemDetailCategoryModelCopyWith<_$_ItemDetailCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

ItemDetailUserModel _$ItemDetailUserModelFromJson(Map<String, dynamic> json) {
  return _ItemDetailUserModel.fromJson(json);
}

/// @nodoc
mixin _$ItemDetailUserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDetailUserModelCopyWith<ItemDetailUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailUserModelCopyWith<$Res> {
  factory $ItemDetailUserModelCopyWith(
          ItemDetailUserModel value, $Res Function(ItemDetailUserModel) then) =
      _$ItemDetailUserModelCopyWithImpl<$Res, ItemDetailUserModel>;
  @useResult
  $Res call({String id, String username, String? imageUrl});
}

/// @nodoc
class _$ItemDetailUserModelCopyWithImpl<$Res, $Val extends ItemDetailUserModel>
    implements $ItemDetailUserModelCopyWith<$Res> {
  _$ItemDetailUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemDetailUserModelCopyWith<$Res>
    implements $ItemDetailUserModelCopyWith<$Res> {
  factory _$$_ItemDetailUserModelCopyWith(_$_ItemDetailUserModel value,
          $Res Function(_$_ItemDetailUserModel) then) =
      __$$_ItemDetailUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, String? imageUrl});
}

/// @nodoc
class __$$_ItemDetailUserModelCopyWithImpl<$Res>
    extends _$ItemDetailUserModelCopyWithImpl<$Res, _$_ItemDetailUserModel>
    implements _$$_ItemDetailUserModelCopyWith<$Res> {
  __$$_ItemDetailUserModelCopyWithImpl(_$_ItemDetailUserModel _value,
      $Res Function(_$_ItemDetailUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_ItemDetailUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemDetailUserModel implements _ItemDetailUserModel {
  _$_ItemDetailUserModel(
      {required this.id, required this.username, this.imageUrl});

  factory _$_ItemDetailUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDetailUserModelFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ItemDetailUserModel(id: $id, username: $username, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDetailUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemDetailUserModelCopyWith<_$_ItemDetailUserModel> get copyWith =>
      __$$_ItemDetailUserModelCopyWithImpl<_$_ItemDetailUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDetailUserModelToJson(
      this,
    );
  }
}

abstract class _ItemDetailUserModel implements ItemDetailUserModel {
  factory _ItemDetailUserModel(
      {required final String id,
      required final String username,
      final String? imageUrl}) = _$_ItemDetailUserModel;

  factory _ItemDetailUserModel.fromJson(Map<String, dynamic> json) =
      _$_ItemDetailUserModel.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ItemDetailUserModelCopyWith<_$_ItemDetailUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
