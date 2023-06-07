// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_list.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemListModel _$ItemListModelFromJson(Map<String, dynamic> json) {
  return _ItemListModel.fromJson(json);
}

/// @nodoc
mixin _$ItemListModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  ItemListCategoryModel? get selectedCategory =>
      throw _privateConstructorUsedError;
  ItemListGroupModel? get group => throw _privateConstructorUsedError;
  List<ItemListItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemListModelCopyWith<ItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListModelCopyWith<$Res> {
  factory $ItemListModelCopyWith(
          ItemListModel value, $Res Function(ItemListModel) then) =
      _$ItemListModelCopyWithImpl<$Res, ItemListModel>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      ItemListCategoryModel? selectedCategory,
      ItemListGroupModel? group,
      List<ItemListItemModel> items});

  $ItemListCategoryModelCopyWith<$Res>? get selectedCategory;
  $ItemListGroupModelCopyWith<$Res>? get group;
}

/// @nodoc
class _$ItemListModelCopyWithImpl<$Res, $Val extends ItemListModel>
    implements $ItemListModelCopyWith<$Res> {
  _$ItemListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? selectedCategory = freezed,
    Object? group = freezed,
    Object? items = null,
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
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ItemListCategoryModel?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as ItemListGroupModel?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemListItemModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemListCategoryModelCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $ItemListCategoryModelCopyWith<$Res>(_value.selectedCategory!,
        (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemListGroupModelCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $ItemListGroupModelCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemListModelCopyWith<$Res>
    implements $ItemListModelCopyWith<$Res> {
  factory _$$_ItemListModelCopyWith(
          _$_ItemListModel value, $Res Function(_$_ItemListModel) then) =
      __$$_ItemListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      ItemListCategoryModel? selectedCategory,
      ItemListGroupModel? group,
      List<ItemListItemModel> items});

  @override
  $ItemListCategoryModelCopyWith<$Res>? get selectedCategory;
  @override
  $ItemListGroupModelCopyWith<$Res>? get group;
}

/// @nodoc
class __$$_ItemListModelCopyWithImpl<$Res>
    extends _$ItemListModelCopyWithImpl<$Res, _$_ItemListModel>
    implements _$$_ItemListModelCopyWith<$Res> {
  __$$_ItemListModelCopyWithImpl(
      _$_ItemListModel _value, $Res Function(_$_ItemListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? selectedCategory = freezed,
    Object? group = freezed,
    Object? items = null,
  }) {
    return _then(_$_ItemListModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ItemListCategoryModel?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as ItemListGroupModel?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemListItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemListModel implements _ItemListModel {
  _$_ItemListModel(
      {required this.isLoading,
      required this.hasError,
      required this.selectedCategory,
      required this.group,
      required final List<ItemListItemModel> items})
      : _items = items;

  factory _$_ItemListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemListModelFromJson(json);

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final ItemListCategoryModel? selectedCategory;
  @override
  final ItemListGroupModel? group;
  final List<ItemListItemModel> _items;
  @override
  List<ItemListItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemListModel(isLoading: $isLoading, hasError: $hasError, selectedCategory: $selectedCategory, group: $group, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      selectedCategory, group, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemListModelCopyWith<_$_ItemListModel> get copyWith =>
      __$$_ItemListModelCopyWithImpl<_$_ItemListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemListModelToJson(
      this,
    );
  }
}

abstract class _ItemListModel implements ItemListModel {
  factory _ItemListModel(
      {required final bool isLoading,
      required final bool hasError,
      required final ItemListCategoryModel? selectedCategory,
      required final ItemListGroupModel? group,
      required final List<ItemListItemModel> items}) = _$_ItemListModel;

  factory _ItemListModel.fromJson(Map<String, dynamic> json) =
      _$_ItemListModel.fromJson;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  ItemListCategoryModel? get selectedCategory;
  @override
  ItemListGroupModel? get group;
  @override
  List<ItemListItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListModelCopyWith<_$_ItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemListGroupModel _$ItemListGroupModelFromJson(Map<String, dynamic> json) {
  return _ItemListGroupModel.fromJson(json);
}

/// @nodoc
mixin _$ItemListGroupModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<ItemListCategoryModel> get categories =>
      throw _privateConstructorUsedError;
  List<ItemListItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemListGroupModelCopyWith<ItemListGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListGroupModelCopyWith<$Res> {
  factory $ItemListGroupModelCopyWith(
          ItemListGroupModel value, $Res Function(ItemListGroupModel) then) =
      _$ItemListGroupModelCopyWithImpl<$Res, ItemListGroupModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      List<ItemListCategoryModel> categories,
      List<ItemListItemModel> items});
}

/// @nodoc
class _$ItemListGroupModelCopyWithImpl<$Res, $Val extends ItemListGroupModel>
    implements $ItemListGroupModelCopyWith<$Res> {
  _$ItemListGroupModelCopyWithImpl(this._value, this._then);

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
    Object? categories = null,
    Object? items = null,
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
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ItemListCategoryModel>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemListItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemListGroupModelCopyWith<$Res>
    implements $ItemListGroupModelCopyWith<$Res> {
  factory _$$_ItemListGroupModelCopyWith(_$_ItemListGroupModel value,
          $Res Function(_$_ItemListGroupModel) then) =
      __$$_ItemListGroupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      List<ItemListCategoryModel> categories,
      List<ItemListItemModel> items});
}

/// @nodoc
class __$$_ItemListGroupModelCopyWithImpl<$Res>
    extends _$ItemListGroupModelCopyWithImpl<$Res, _$_ItemListGroupModel>
    implements _$$_ItemListGroupModelCopyWith<$Res> {
  __$$_ItemListGroupModelCopyWithImpl(
      _$_ItemListGroupModel _value, $Res Function(_$_ItemListGroupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? categories = null,
    Object? items = null,
  }) {
    return _then(_$_ItemListGroupModel(
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
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ItemListCategoryModel>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemListItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemListGroupModel implements _ItemListGroupModel {
  _$_ItemListGroupModel(
      {required this.id,
      required this.name,
      required this.description,
      required final List<ItemListCategoryModel> categories,
      required final List<ItemListItemModel> items})
      : _categories = categories,
        _items = items;

  factory _$_ItemListGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemListGroupModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  final List<ItemListCategoryModel> _categories;
  @override
  List<ItemListCategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ItemListItemModel> _items;
  @override
  List<ItemListItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemListGroupModel(id: $id, name: $name, description: $description, categories: $categories, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListGroupModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemListGroupModelCopyWith<_$_ItemListGroupModel> get copyWith =>
      __$$_ItemListGroupModelCopyWithImpl<_$_ItemListGroupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemListGroupModelToJson(
      this,
    );
  }
}

abstract class _ItemListGroupModel implements ItemListGroupModel {
  factory _ItemListGroupModel(
      {required final String id,
      required final String name,
      required final String? description,
      required final List<ItemListCategoryModel> categories,
      required final List<ItemListItemModel> items}) = _$_ItemListGroupModel;

  factory _ItemListGroupModel.fromJson(Map<String, dynamic> json) =
      _$_ItemListGroupModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  List<ItemListCategoryModel> get categories;
  @override
  List<ItemListItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListGroupModelCopyWith<_$_ItemListGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemListCategoryModel _$ItemListCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _ItemListCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ItemListCategoryModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemListCategoryModelCopyWith<ItemListCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListCategoryModelCopyWith<$Res> {
  factory $ItemListCategoryModelCopyWith(ItemListCategoryModel value,
          $Res Function(ItemListCategoryModel) then) =
      _$ItemListCategoryModelCopyWithImpl<$Res, ItemListCategoryModel>;
  @useResult
  $Res call({String? id, String name, String? description});
}

/// @nodoc
class _$ItemListCategoryModelCopyWithImpl<$Res,
        $Val extends ItemListCategoryModel>
    implements $ItemListCategoryModelCopyWith<$Res> {
  _$ItemListCategoryModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemListCategoryModelCopyWith<$Res>
    implements $ItemListCategoryModelCopyWith<$Res> {
  factory _$$_ItemListCategoryModelCopyWith(_$_ItemListCategoryModel value,
          $Res Function(_$_ItemListCategoryModel) then) =
      __$$_ItemListCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name, String? description});
}

/// @nodoc
class __$$_ItemListCategoryModelCopyWithImpl<$Res>
    extends _$ItemListCategoryModelCopyWithImpl<$Res, _$_ItemListCategoryModel>
    implements _$$_ItemListCategoryModelCopyWith<$Res> {
  __$$_ItemListCategoryModelCopyWithImpl(_$_ItemListCategoryModel _value,
      $Res Function(_$_ItemListCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$_ItemListCategoryModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemListCategoryModel implements _ItemListCategoryModel {
  _$_ItemListCategoryModel({this.id, required this.name, this.description});

  factory _$_ItemListCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemListCategoryModelFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'ItemListCategoryModel(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListCategoryModel &&
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
  _$$_ItemListCategoryModelCopyWith<_$_ItemListCategoryModel> get copyWith =>
      __$$_ItemListCategoryModelCopyWithImpl<_$_ItemListCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemListCategoryModelToJson(
      this,
    );
  }
}

abstract class _ItemListCategoryModel implements ItemListCategoryModel {
  factory _ItemListCategoryModel(
      {final String? id,
      required final String name,
      final String? description}) = _$_ItemListCategoryModel;

  factory _ItemListCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_ItemListCategoryModel.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListCategoryModelCopyWith<_$_ItemListCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemListItemModel _$ItemListItemModelFromJson(Map<String, dynamic> json) {
  return _ItemListItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemListItemModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ItemListCategoryModel? get category => throw _privateConstructorUsedError;
  ItemListUserModel get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemListItemModelCopyWith<ItemListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListItemModelCopyWith<$Res> {
  factory $ItemListItemModelCopyWith(
          ItemListItemModel value, $Res Function(ItemListItemModel) then) =
      _$ItemListItemModelCopyWithImpl<$Res, ItemListItemModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      ItemListCategoryModel? category,
      ItemListUserModel owner});

  $ItemListCategoryModelCopyWith<$Res>? get category;
  $ItemListUserModelCopyWith<$Res> get owner;
}

/// @nodoc
class _$ItemListItemModelCopyWithImpl<$Res, $Val extends ItemListItemModel>
    implements $ItemListItemModelCopyWith<$Res> {
  _$ItemListItemModelCopyWithImpl(this._value, this._then);

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
    Object? category = freezed,
    Object? owner = null,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ItemListCategoryModel?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ItemListUserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemListCategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ItemListCategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemListUserModelCopyWith<$Res> get owner {
    return $ItemListUserModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemListItemModelCopyWith<$Res>
    implements $ItemListItemModelCopyWith<$Res> {
  factory _$$_ItemListItemModelCopyWith(_$_ItemListItemModel value,
          $Res Function(_$_ItemListItemModel) then) =
      __$$_ItemListItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      ItemListCategoryModel? category,
      ItemListUserModel owner});

  @override
  $ItemListCategoryModelCopyWith<$Res>? get category;
  @override
  $ItemListUserModelCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_ItemListItemModelCopyWithImpl<$Res>
    extends _$ItemListItemModelCopyWithImpl<$Res, _$_ItemListItemModel>
    implements _$$_ItemListItemModelCopyWith<$Res> {
  __$$_ItemListItemModelCopyWithImpl(
      _$_ItemListItemModel _value, $Res Function(_$_ItemListItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? owner = null,
  }) {
    return _then(_$_ItemListItemModel(
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ItemListCategoryModel?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ItemListUserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemListItemModel implements _ItemListItemModel {
  _$_ItemListItemModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.category,
      required this.owner});

  factory _$_ItemListItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemListItemModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final ItemListCategoryModel? category;
  @override
  final ItemListUserModel owner;

  @override
  String toString() {
    return 'ItemListItemModel(id: $id, name: $name, description: $description, category: $category, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, category, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemListItemModelCopyWith<_$_ItemListItemModel> get copyWith =>
      __$$_ItemListItemModelCopyWithImpl<_$_ItemListItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemListItemModelToJson(
      this,
    );
  }
}

abstract class _ItemListItemModel implements ItemListItemModel {
  factory _ItemListItemModel(
      {required final String id,
      required final String name,
      required final String? description,
      required final ItemListCategoryModel? category,
      required final ItemListUserModel owner}) = _$_ItemListItemModel;

  factory _ItemListItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemListItemModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  ItemListCategoryModel? get category;
  @override
  ItemListUserModel get owner;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListItemModelCopyWith<_$_ItemListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemListUserModel _$ItemListUserModelFromJson(Map<String, dynamic> json) {
  return _ItemListUserModel.fromJson(json);
}

/// @nodoc
mixin _$ItemListUserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemListUserModelCopyWith<ItemListUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListUserModelCopyWith<$Res> {
  factory $ItemListUserModelCopyWith(
          ItemListUserModel value, $Res Function(ItemListUserModel) then) =
      _$ItemListUserModelCopyWithImpl<$Res, ItemListUserModel>;
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class _$ItemListUserModelCopyWithImpl<$Res, $Val extends ItemListUserModel>
    implements $ItemListUserModelCopyWith<$Res> {
  _$ItemListUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemListUserModelCopyWith<$Res>
    implements $ItemListUserModelCopyWith<$Res> {
  factory _$$_ItemListUserModelCopyWith(_$_ItemListUserModel value,
          $Res Function(_$_ItemListUserModel) then) =
      __$$_ItemListUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class __$$_ItemListUserModelCopyWithImpl<$Res>
    extends _$ItemListUserModelCopyWithImpl<$Res, _$_ItemListUserModel>
    implements _$$_ItemListUserModelCopyWith<$Res> {
  __$$_ItemListUserModelCopyWithImpl(
      _$_ItemListUserModel _value, $Res Function(_$_ItemListUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$_ItemListUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemListUserModel implements _ItemListUserModel {
  _$_ItemListUserModel({required this.id, required this.username});

  factory _$_ItemListUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemListUserModelFromJson(json);

  @override
  final String id;
  @override
  final String username;

  @override
  String toString() {
    return 'ItemListUserModel(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemListUserModelCopyWith<_$_ItemListUserModel> get copyWith =>
      __$$_ItemListUserModelCopyWithImpl<_$_ItemListUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemListUserModelToJson(
      this,
    );
  }
}

abstract class _ItemListUserModel implements ItemListUserModel {
  factory _ItemListUserModel(
      {required final String id,
      required final String username}) = _$_ItemListUserModel;

  factory _ItemListUserModel.fromJson(Map<String, dynamic> json) =
      _$_ItemListUserModel.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListUserModelCopyWith<_$_ItemListUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
