// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_editor.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemEditorItemModel _$$_ItemEditorItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItemEditorItemModel(
      name: json['name'] as String,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : ItemDetailCategoryModel.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemEditorItemModelToJson(
        _$_ItemEditorItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
    };
