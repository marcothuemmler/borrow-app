import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_settings.model.freezed.dart';
part 'category_settings.model.g.dart';

@freezed
class CreateCategoryDTO with _$CreateCategoryDTO {
  factory CreateCategoryDTO({
    required String name,
    required String? description,
    required String? groupId,
  }) = _CreateCategoryDTO;
  factory CreateCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryDTOFromJson(json);
}

@freezed
class CategorySettingsCategoryListModel
    with _$CategorySettingsCategoryListModel {
  factory CategorySettingsCategoryListModel({
    required String? groupId,
    required List<CategorySettingsCategoryModel> categories,
  }) = _CategorySettingsCategoryListModel;

  factory CategorySettingsCategoryListModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CategorySettingsCategoryListModelFromJson(json);
}

@freezed
class CategoryListDetailModel with _$CategoryListDetailModel {
  factory CategoryListDetailModel({
    required bool isLoading,
    required bool hasError,
    required CategorySettingsCategoryListModel? items,
    required CategorySettingsCategoryModel? newCategory,
  }) = _CategoryListDetailModel;
}

@freezed
class CategorySettingsCategoryModel with _$CategorySettingsCategoryModel {
  factory CategorySettingsCategoryModel({
    String? id,
    required String name,
    String? description,
    String? groupId,
  }) = _CategorySettingsCategoryModel;

  factory CategorySettingsCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategorySettingsCategoryModelFromJson(json);
}
