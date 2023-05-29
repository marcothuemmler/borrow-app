// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupModel _$$_GroupModelFromJson(Map<String, dynamic> json) =>
    _$_GroupModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GroupModelToJson(_$_GroupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'categories': instance.categories,
      'items': instance.items,
    };

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'groupId': instance.groupId,
    };

_$_CreateCategoryDTO _$$_CreateCategoryDTOFromJson(Map<String, dynamic> json) =>
    _$_CreateCategoryDTO(
      name: json['name'] as String,
      description: json['description'] as String?,
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$_CreateCategoryDTOToJson(
        _$_CreateCategoryDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'groupId': instance.groupId,
    };

_$_ItemsModel _$$_ItemsModelFromJson(Map<String, dynamic> json) =>
    _$_ItemsModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      owner: UserModel.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemsModelToJson(_$_ItemsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'owner': instance.owner,
    };

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
