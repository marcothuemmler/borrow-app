// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_editor.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemEditorItemModel _$$_ItemEditorItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItemEditorItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      category: ItemDetailCategoryModel.fromJson(
          json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemEditorItemModelToJson(
        _$_ItemEditorItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
    };
