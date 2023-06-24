import "package:freezed_annotation/freezed_annotation.dart";

part "item_list.model.freezed.dart";
part "item_list.model.g.dart";

@freezed
class ItemListModel with _$ItemListModel {
  factory ItemListModel({
    required bool isLoading,
    required bool hasError,
    required ItemListCategoryModel? selectedCategory,
    required ItemListGroupModel? group,
    required List<ItemListItemModel> items,
  }) = _ItemListModel;

  factory ItemListModel.fromJson(Map<String, dynamic> json) =>
      _$ItemListModelFromJson(json);
}

@freezed
class ItemListGroupModel with _$ItemListGroupModel {
  factory ItemListGroupModel({
    required String id,
    required String name,
    required String? description,
    required List<ItemListCategoryModel> categories,
    required List<ItemListItemModel> items,
  }) = _ItemListGroupModel;

  factory ItemListGroupModel.fromJson(Map<String, dynamic> json) =>
      _$ItemListGroupModelFromJson(json);
}

@freezed
class ItemListCategoryModel with _$ItemListCategoryModel {
  factory ItemListCategoryModel({
    String? id,
    required String name,
    String? description,
  }) = _ItemListCategoryModel;

  factory ItemListCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ItemListCategoryModelFromJson(json);
}

@freezed
class ItemListItemModel with _$ItemListItemModel {
  factory ItemListItemModel({
    required String id,
    required String name,
    required String? description,
    required ItemListCategoryModel? category,
    required ItemListUserModel owner,
    String? imageUrl,
  }) = _ItemListItemModel;

  factory ItemListItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemListItemModelFromJson(json);
}

@freezed
class ItemListUserModel with _$ItemListUserModel {
  factory ItemListUserModel({
    required String id,
    required String username,
  }) = _ItemListUserModel;

  factory ItemListUserModel.fromJson(Map<String, dynamic> json) =>
      _$ItemListUserModelFromJson(json);
}
