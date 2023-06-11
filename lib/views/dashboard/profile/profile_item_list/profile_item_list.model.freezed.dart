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
  List<ItemListItemModel> get items => throw _privateConstructorUsedError;
  List<ItemListItemModel> get filteredItems =>
      throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
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
      List<ItemListItemModel> items,
      List<ItemListItemModel> filteredItems,
      String groupId,
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
    Object? groupId = null,
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
              as List<ItemListItemModel>,
      filteredItems: null == filteredItems
          ? _value.filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<ItemListItemModel>,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
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
      List<ItemListItemModel> items,
      List<ItemListItemModel> filteredItems,
      String groupId,
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
    Object? groupId = null,
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
              as List<ItemListItemModel>,
      filteredItems: null == filteredItems
          ? _value._filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<ItemListItemModel>,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
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
      required final List<ItemListItemModel> items,
      required final List<ItemListItemModel> filteredItems,
      required this.groupId,
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
  final List<ItemListItemModel> _items;
  @override
  List<ItemListItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<ItemListItemModel> _filteredItems;
  @override
  List<ItemListItemModel> get filteredItems {
    if (_filteredItems is EqualUnmodifiableListView) return _filteredItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredItems);
  }

  @override
  final String groupId;
  @override
  final CategorySettingsCategoryModel? selectedCategory;

  @override
  String toString() {
    return 'ProfileItemListModel(isLoading: $isLoading, hasError: $hasError, categories: $categories, items: $items, filteredItems: $filteredItems, groupId: $groupId, selectedCategory: $selectedCategory)';
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
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
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
      groupId,
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
          required final List<ItemListItemModel> items,
          required final List<ItemListItemModel> filteredItems,
          required final String groupId,
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
  List<ItemListItemModel> get items;
  @override
  List<ItemListItemModel> get filteredItems;
  @override
  String get groupId;
  @override
  CategorySettingsCategoryModel? get selectedCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileItemListModelCopyWith<_$_ProfileItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
