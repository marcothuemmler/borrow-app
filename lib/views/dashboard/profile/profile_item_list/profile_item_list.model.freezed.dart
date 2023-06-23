// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_item_list.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileItemListModel _$ProfileItemListModelFromJson(Map<String, dynamic> json) {
  return _ProfileItemListModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileItemListModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  CategorySettingsCategoryListModel? get categories =>
      throw _privateConstructorUsedError;
  List<ProfileItemListItemModel> get items =>
      throw _privateConstructorUsedError;
  List<ProfileItemListItemModel> get filteredItems =>
      throw _privateConstructorUsedError;
  CategorySettingsCategoryModel? get selectedCategory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileItemListModelCopyWith<ProfileItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileItemListModelCopyWith<$Res> {
  factory $ProfileItemListModelCopyWith(ProfileItemListModel value,
          $Res Function(ProfileItemListModel) then) =
      _$ProfileItemListModelCopyWithImpl<$Res, ProfileItemListModel>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      CategorySettingsCategoryListModel? categories,
      List<ProfileItemListItemModel> items,
      List<ProfileItemListItemModel> filteredItems,
      CategorySettingsCategoryModel? selectedCategory});

  $CategorySettingsCategoryListModelCopyWith<$Res>? get categories;
  $CategorySettingsCategoryModelCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class _$ProfileItemListModelCopyWithImpl<$Res,
        $Val extends ProfileItemListModel>
    implements $ProfileItemListModelCopyWith<$Res> {
  _$ProfileItemListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? categories = freezed,
    Object? items = null,
    Object? filteredItems = null,
    Object? selectedCategory = freezed,
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
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategorySettingsCategoryListModel?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProfileItemListItemModel>,
      filteredItems: null == filteredItems
          ? _value.filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<ProfileItemListItemModel>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategorySettingsCategoryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategorySettingsCategoryListModelCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $CategorySettingsCategoryListModelCopyWith<$Res>(_value.categories!,
        (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategorySettingsCategoryModelCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategorySettingsCategoryModelCopyWith<$Res>(
        _value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileItemListModelCopyWith<$Res>
    implements $ProfileItemListModelCopyWith<$Res> {
  factory _$$_ProfileItemListModelCopyWith(_$_ProfileItemListModel value,
          $Res Function(_$_ProfileItemListModel) then) =
      __$$_ProfileItemListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      CategorySettingsCategoryListModel? categories,
      List<ProfileItemListItemModel> items,
      List<ProfileItemListItemModel> filteredItems,
      CategorySettingsCategoryModel? selectedCategory});

  @override
  $CategorySettingsCategoryListModelCopyWith<$Res>? get categories;
  @override
  $CategorySettingsCategoryModelCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class __$$_ProfileItemListModelCopyWithImpl<$Res>
    extends _$ProfileItemListModelCopyWithImpl<$Res, _$_ProfileItemListModel>
    implements _$$_ProfileItemListModelCopyWith<$Res> {
  __$$_ProfileItemListModelCopyWithImpl(_$_ProfileItemListModel _value,
      $Res Function(_$_ProfileItemListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? categories = freezed,
    Object? items = null,
    Object? filteredItems = null,
    Object? selectedCategory = freezed,
  }) {
    return _then(_$_ProfileItemListModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategorySettingsCategoryListModel?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProfileItemListItemModel>,
      filteredItems: null == filteredItems
          ? _value._filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<ProfileItemListItemModel>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategorySettingsCategoryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileItemListModel implements _ProfileItemListModel {
  _$_ProfileItemListModel(
      {required this.isLoading,
      required this.hasError,
      required this.categories,
      required final List<ProfileItemListItemModel> items,
      required final List<ProfileItemListItemModel> filteredItems,
      required this.selectedCategory})
      : _items = items,
        _filteredItems = filteredItems;

  factory _$_ProfileItemListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileItemListModelFromJson(json);

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final CategorySettingsCategoryListModel? categories;
  final List<ProfileItemListItemModel> _items;
  @override
  List<ProfileItemListItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<ProfileItemListItemModel> _filteredItems;
  @override
  List<ProfileItemListItemModel> get filteredItems {
    if (_filteredItems is EqualUnmodifiableListView) return _filteredItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredItems);
  }

  @override
  final CategorySettingsCategoryModel? selectedCategory;

  @override
  String toString() {
    return 'ProfileItemListModel(isLoading: $isLoading, hasError: $hasError, categories: $categories, items: $items, filteredItems: $filteredItems, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileItemListModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._filteredItems, _filteredItems) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      categories,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_filteredItems),
      selectedCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileItemListModelCopyWith<_$_ProfileItemListModel> get copyWith =>
      __$$_ProfileItemListModelCopyWithImpl<_$_ProfileItemListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileItemListModelToJson(
      this,
    );
  }
}

abstract class _ProfileItemListModel implements ProfileItemListModel {
  factory _ProfileItemListModel(
          {required final bool isLoading,
          required final bool hasError,
          required final CategorySettingsCategoryListModel? categories,
          required final List<ProfileItemListItemModel> items,
          required final List<ProfileItemListItemModel> filteredItems,
          required final CategorySettingsCategoryModel? selectedCategory}) =
      _$_ProfileItemListModel;

  factory _ProfileItemListModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileItemListModel.fromJson;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  CategorySettingsCategoryListModel? get categories;
  @override
  List<ProfileItemListItemModel> get items;
  @override
  List<ProfileItemListItemModel> get filteredItems;
  @override
  CategorySettingsCategoryModel? get selectedCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileItemListModelCopyWith<_$_ProfileItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileItemListCategoryModel _$ProfileItemListCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileItemListCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileItemListCategoryModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileItemListCategoryModelCopyWith<ProfileItemListCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileItemListCategoryModelCopyWith<$Res> {
  factory $ProfileItemListCategoryModelCopyWith(
          ProfileItemListCategoryModel value,
          $Res Function(ProfileItemListCategoryModel) then) =
      _$ProfileItemListCategoryModelCopyWithImpl<$Res,
          ProfileItemListCategoryModel>;
  @useResult
  $Res call({String? id, String name, String? description});
}

/// @nodoc
class _$ProfileItemListCategoryModelCopyWithImpl<$Res,
        $Val extends ProfileItemListCategoryModel>
    implements $ProfileItemListCategoryModelCopyWith<$Res> {
  _$ProfileItemListCategoryModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProfileItemListCategoryModelCopyWith<$Res>
    implements $ProfileItemListCategoryModelCopyWith<$Res> {
  factory _$$_ProfileItemListCategoryModelCopyWith(
          _$_ProfileItemListCategoryModel value,
          $Res Function(_$_ProfileItemListCategoryModel) then) =
      __$$_ProfileItemListCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name, String? description});
}

/// @nodoc
class __$$_ProfileItemListCategoryModelCopyWithImpl<$Res>
    extends _$ProfileItemListCategoryModelCopyWithImpl<$Res,
        _$_ProfileItemListCategoryModel>
    implements _$$_ProfileItemListCategoryModelCopyWith<$Res> {
  __$$_ProfileItemListCategoryModelCopyWithImpl(
      _$_ProfileItemListCategoryModel _value,
      $Res Function(_$_ProfileItemListCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$_ProfileItemListCategoryModel(
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
class _$_ProfileItemListCategoryModel implements _ProfileItemListCategoryModel {
  _$_ProfileItemListCategoryModel(
      {this.id, required this.name, this.description});

  factory _$_ProfileItemListCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileItemListCategoryModelFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'ProfileItemListCategoryModel(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileItemListCategoryModel &&
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
  _$$_ProfileItemListCategoryModelCopyWith<_$_ProfileItemListCategoryModel>
      get copyWith => __$$_ProfileItemListCategoryModelCopyWithImpl<
          _$_ProfileItemListCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileItemListCategoryModelToJson(
      this,
    );
  }
}

abstract class _ProfileItemListCategoryModel
    implements ProfileItemListCategoryModel {
  factory _ProfileItemListCategoryModel(
      {final String? id,
      required final String name,
      final String? description}) = _$_ProfileItemListCategoryModel;

  factory _ProfileItemListCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileItemListCategoryModel.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileItemListCategoryModelCopyWith<_$_ProfileItemListCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileItemListItemModel _$ProfileItemListItemModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileItemListItemModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileItemListItemModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ProfileItemListCategoryModel? get category =>
      throw _privateConstructorUsedError;
  ProfileItemListUserModel get owner => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileItemListItemModelCopyWith<ProfileItemListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileItemListItemModelCopyWith<$Res> {
  factory $ProfileItemListItemModelCopyWith(ProfileItemListItemModel value,
          $Res Function(ProfileItemListItemModel) then) =
      _$ProfileItemListItemModelCopyWithImpl<$Res, ProfileItemListItemModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      ProfileItemListCategoryModel? category,
      ProfileItemListUserModel owner,
      bool isActive,
      String? imageUrl});

  $ProfileItemListCategoryModelCopyWith<$Res>? get category;
  $ProfileItemListUserModelCopyWith<$Res> get owner;
}

/// @nodoc
class _$ProfileItemListItemModelCopyWithImpl<$Res,
        $Val extends ProfileItemListItemModel>
    implements $ProfileItemListItemModelCopyWith<$Res> {
  _$ProfileItemListItemModelCopyWithImpl(this._value, this._then);

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
    Object? isActive = null,
    Object? imageUrl = freezed,
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
              as ProfileItemListCategoryModel?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileItemListUserModel,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileItemListCategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ProfileItemListCategoryModelCopyWith<$Res>(_value.category!,
        (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileItemListUserModelCopyWith<$Res> get owner {
    return $ProfileItemListUserModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileItemListItemModelCopyWith<$Res>
    implements $ProfileItemListItemModelCopyWith<$Res> {
  factory _$$_ProfileItemListItemModelCopyWith(
          _$_ProfileItemListItemModel value,
          $Res Function(_$_ProfileItemListItemModel) then) =
      __$$_ProfileItemListItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      ProfileItemListCategoryModel? category,
      ProfileItemListUserModel owner,
      bool isActive,
      String? imageUrl});

  @override
  $ProfileItemListCategoryModelCopyWith<$Res>? get category;
  @override
  $ProfileItemListUserModelCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_ProfileItemListItemModelCopyWithImpl<$Res>
    extends _$ProfileItemListItemModelCopyWithImpl<$Res,
        _$_ProfileItemListItemModel>
    implements _$$_ProfileItemListItemModelCopyWith<$Res> {
  __$$_ProfileItemListItemModelCopyWithImpl(_$_ProfileItemListItemModel _value,
      $Res Function(_$_ProfileItemListItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? owner = null,
    Object? isActive = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_ProfileItemListItemModel(
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
              as ProfileItemListCategoryModel?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileItemListUserModel,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileItemListItemModel implements _ProfileItemListItemModel {
  _$_ProfileItemListItemModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.category,
      required this.owner,
      required this.isActive,
      this.imageUrl});

  factory _$_ProfileItemListItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileItemListItemModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final ProfileItemListCategoryModel? category;
  @override
  final ProfileItemListUserModel owner;
  @override
  final bool isActive;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ProfileItemListItemModel(id: $id, name: $name, description: $description, category: $category, owner: $owner, isActive: $isActive, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileItemListItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, category, owner, isActive, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileItemListItemModelCopyWith<_$_ProfileItemListItemModel>
      get copyWith => __$$_ProfileItemListItemModelCopyWithImpl<
          _$_ProfileItemListItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileItemListItemModelToJson(
      this,
    );
  }
}

abstract class _ProfileItemListItemModel implements ProfileItemListItemModel {
  factory _ProfileItemListItemModel(
      {required final String id,
      required final String name,
      required final String? description,
      required final ProfileItemListCategoryModel? category,
      required final ProfileItemListUserModel owner,
      required final bool isActive,
      final String? imageUrl}) = _$_ProfileItemListItemModel;

  factory _ProfileItemListItemModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileItemListItemModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  ProfileItemListCategoryModel? get category;
  @override
  ProfileItemListUserModel get owner;
  @override
  bool get isActive;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileItemListItemModelCopyWith<_$_ProfileItemListItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileItemListUserModel _$ProfileItemListUserModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileItemListUserModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileItemListUserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileItemListUserModelCopyWith<ProfileItemListUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileItemListUserModelCopyWith<$Res> {
  factory $ProfileItemListUserModelCopyWith(ProfileItemListUserModel value,
          $Res Function(ProfileItemListUserModel) then) =
      _$ProfileItemListUserModelCopyWithImpl<$Res, ProfileItemListUserModel>;
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class _$ProfileItemListUserModelCopyWithImpl<$Res,
        $Val extends ProfileItemListUserModel>
    implements $ProfileItemListUserModelCopyWith<$Res> {
  _$ProfileItemListUserModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProfileItemListUserModelCopyWith<$Res>
    implements $ProfileItemListUserModelCopyWith<$Res> {
  factory _$$_ProfileItemListUserModelCopyWith(
          _$_ProfileItemListUserModel value,
          $Res Function(_$_ProfileItemListUserModel) then) =
      __$$_ProfileItemListUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class __$$_ProfileItemListUserModelCopyWithImpl<$Res>
    extends _$ProfileItemListUserModelCopyWithImpl<$Res,
        _$_ProfileItemListUserModel>
    implements _$$_ProfileItemListUserModelCopyWith<$Res> {
  __$$_ProfileItemListUserModelCopyWithImpl(_$_ProfileItemListUserModel _value,
      $Res Function(_$_ProfileItemListUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$_ProfileItemListUserModel(
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
class _$_ProfileItemListUserModel implements _ProfileItemListUserModel {
  _$_ProfileItemListUserModel({required this.id, required this.username});

  factory _$_ProfileItemListUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileItemListUserModelFromJson(json);

  @override
  final String id;
  @override
  final String username;

  @override
  String toString() {
    return 'ProfileItemListUserModel(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileItemListUserModel &&
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
  _$$_ProfileItemListUserModelCopyWith<_$_ProfileItemListUserModel>
      get copyWith => __$$_ProfileItemListUserModelCopyWithImpl<
          _$_ProfileItemListUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileItemListUserModelToJson(
      this,
    );
  }
}

abstract class _ProfileItemListUserModel implements ProfileItemListUserModel {
  factory _ProfileItemListUserModel(
      {required final String id,
      required final String username}) = _$_ProfileItemListUserModel;

  factory _ProfileItemListUserModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileItemListUserModel.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileItemListUserModelCopyWith<_$_ProfileItemListUserModel>
      get copyWith => throw _privateConstructorUsedError;
}
