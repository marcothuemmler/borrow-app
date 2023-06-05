// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_settings.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$_CategorySettingsCategoryListModel
    _$$_CategorySettingsCategoryListModelFromJson(Map<String, dynamic> json) =>
        _$_CategorySettingsCategoryListModel(
          groupId: json['groupId'] as String?,
          categories: (json['categories'] as List<dynamic>)
              .map((e) => CategorySettingsCategoryModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_CategorySettingsCategoryListModelToJson(
        _$_CategorySettingsCategoryListModel instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'categories': instance.categories,
    };

_$_CategorySettingsCategoryModel _$$_CategorySettingsCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategorySettingsCategoryModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$_CategorySettingsCategoryModelToJson(
        _$_CategorySettingsCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'groupId': instance.groupId,
    };
