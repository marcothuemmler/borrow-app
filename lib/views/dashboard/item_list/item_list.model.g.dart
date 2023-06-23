// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemListModel _$$_ItemListModelFromJson(Map<String, dynamic> json) =>
    _$_ItemListModel(
      isLoading: json['isLoading'] as bool,
      hasError: json['hasError'] as bool,
      selectedCategory: json['selectedCategory'] == null
          ? null
          : ItemListCategoryModel.fromJson(
              json['selectedCategory'] as Map<String, dynamic>),
      group: json['group'] == null
          ? null
          : ItemListGroupModel.fromJson(json['group'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItemListModelToJson(_$_ItemListModel instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'hasError': instance.hasError,
      'selectedCategory': instance.selectedCategory,
      'group': instance.group,
      'items': instance.items,
    };

_$_ItemListGroupModel _$$_ItemListGroupModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItemListGroupModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => ItemListCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItemListGroupModelToJson(
        _$_ItemListGroupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'categories': instance.categories,
      'items': instance.items,
    };

_$_ItemListCategoryModel _$$_ItemListCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItemListCategoryModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ItemListCategoryModelToJson(
        _$_ItemListCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$_ItemListItemModel _$$_ItemListItemModelFromJson(Map<String, dynamic> json) =>
    _$_ItemListItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : ItemListCategoryModel.fromJson(
              json['category'] as Map<String, dynamic>),
      owner: ItemListUserModel.fromJson(json['owner'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_ItemListItemModelToJson(
        _$_ItemListItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'owner': instance.owner,
      'imageUrl': instance.imageUrl,
    };

_$_ItemListUserModel _$$_ItemListUserModelFromJson(Map<String, dynamic> json) =>
    _$_ItemListUserModel(
      id: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_ItemListUserModelToJson(
        _$_ItemListUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
