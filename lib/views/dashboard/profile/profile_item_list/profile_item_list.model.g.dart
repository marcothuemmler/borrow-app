// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_item_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileItemListModel _$$_ProfileItemListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileItemListModel(
      isLoading: json['isLoading'] as bool,
      hasError: json['hasError'] as bool,
      currentIndex: json['currentIndex'] as int,
      categories: json['categories'] == null
          ? null
          : CategorySettingsCategoryListModel.fromJson(
              json['categories'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              ProfileItemListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      filteredItems: (json['filteredItems'] as List<dynamic>)
          .map((e) =>
              ProfileItemListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedCategory: json['selectedCategory'] == null
          ? null
          : CategorySettingsCategoryModel.fromJson(
              json['selectedCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileItemListModelToJson(
        _$_ProfileItemListModel instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'hasError': instance.hasError,
      'currentIndex': instance.currentIndex,
      'categories': instance.categories,
      'items': instance.items,
      'filteredItems': instance.filteredItems,
      'selectedCategory': instance.selectedCategory,
    };

_$_ProfileItemListCategoryModel _$$_ProfileItemListCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileItemListCategoryModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ProfileItemListCategoryModelToJson(
        _$_ProfileItemListCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$_ProfileItemListItemModel _$$_ProfileItemListItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileItemListItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : ProfileItemListCategoryModel.fromJson(
              json['category'] as Map<String, dynamic>),
      owner: ProfileItemListUserModel.fromJson(
          json['owner'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_ProfileItemListItemModelToJson(
        _$_ProfileItemListItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'owner': instance.owner,
      'isActive': instance.isActive,
      'imageUrl': instance.imageUrl,
    };

_$_ProfileItemListUserModel _$$_ProfileItemListUserModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileItemListUserModel(
      id: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_ProfileItemListUserModelToJson(
        _$_ProfileItemListUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
