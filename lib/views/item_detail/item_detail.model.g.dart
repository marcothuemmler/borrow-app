// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDetailItemModel _$$_ItemDetailItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItemDetailItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      owner:
          ItemDetailUserModel.fromJson(json['owner'] as Map<String, dynamic>),
      category: ItemDetailCategoryModel.fromJson(
          json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemDetailItemModelToJson(
        _$_ItemDetailItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'owner': instance.owner,
      'category': instance.category,
    };

_$_ItemDetailCategoryModel _$$_ItemDetailCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItemDetailCategoryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      parent: json['parent'] == null
          ? null
          : ItemDetailCategoryModel.fromJson(
              json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemDetailCategoryModelToJson(
        _$_ItemDetailCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'parent': instance.parent,
    };

_$_ItemDetailUserModel _$$_ItemDetailUserModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItemDetailUserModel(
      id: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_ItemDetailUserModelToJson(
        _$_ItemDetailUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
