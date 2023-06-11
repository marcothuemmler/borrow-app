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
      categories: json['categories'] == null
          ? null
          : CategorySettingsCategoryListModel.fromJson(
              json['categories'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      filteredItems: (json['filteredItems'] as List<dynamic>)
          .map((e) => ItemListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupId: json['groupId'] as String,
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
      'categories': instance.categories,
      'items': instance.items,
      'filteredItems': instance.filteredItems,
      'groupId': instance.groupId,
      'selectedCategory': instance.selectedCategory,
    };
