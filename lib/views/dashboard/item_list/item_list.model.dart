import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_list.model.freezed.dart';
part 'item_list.model.g.dart';

@freezed
class ItemListModel with _$ItemListModel {
  factory ItemListModel({
    required bool isLoading,
    required bool hasError,
    required CategoryModel? selectedCategory,
    required GroupModel? group,
    required List<ItemModel> items,
  }) = _ItemListModel;
}

@freezed
class GroupModel with _$GroupModel {
  factory GroupModel({
    required String id,
    required String name,
    required String? description,
    required List<CategoryModel> categories,
    required List<ItemModel> items,
  }) = _GroupModel;

  factory GroupModel.fromJson(Map<String, dynamic> json) =>
      _$GroupModelFromJson(json);
}

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    String? id,
    required String name,
    String? description,
    String? groupId,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class CreateCategoryDTO with _$CreateCategoryDTO {
  factory CreateCategoryDTO({
    required String name,
    required String? description,
    required String? groupId,
  }) = _CreateCategoryDTO;
  factory CreateCategoryDTO.fromJson(Map<String, dynamic> json) => _$CreateCategoryDTOFromJson(json);
}


@freezed
class ItemModel with _$ItemModel {
  factory ItemModel({
    required String id,
    required String name,
    required String? description,
    required CategoryModel category,
    required UserModel owner,
  }) = _ItemsModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}
@freezed
class CategoryListModel with _$CategoryListModel {
  factory CategoryListModel({
    required String? groupId,
    required List<CategoryModel> categories,
  }) = _CategoryListModel;

  factory CategoryListModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryListModelFromJson(json);
}

@freezed
class CategoryListDetailModel with _$CategoryListDetailModel {
  factory CategoryListDetailModel({
    required bool isLoading,
    required bool hasError,
    required CategoryListModel items,
  }) = _CategoryListDetailModel;
}

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String username,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
