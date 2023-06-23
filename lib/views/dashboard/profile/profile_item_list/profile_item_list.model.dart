import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "profile_item_list.model.freezed.dart";
part "profile_item_list.model.g.dart";

@freezed
class ProfileItemListModel with _$ProfileItemListModel {
  factory ProfileItemListModel({
    required bool isLoading,
    required bool hasError,
    required CategorySettingsCategoryListModel? categories,
    required List<ProfileItemListItemModel> items,
    required List<ProfileItemListItemModel> filteredItems,
    required CategorySettingsCategoryModel? selectedCategory,
  }) = _ProfileItemListModel;

  factory ProfileItemListModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileItemListModelFromJson(json);
}

@freezed
class ProfileItemListCategoryModel with _$ProfileItemListCategoryModel {
  factory ProfileItemListCategoryModel({
    String? id,
    required String name,
    String? description,
  }) = _ProfileItemListCategoryModel;

  factory ProfileItemListCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileItemListCategoryModelFromJson(json);
}

@freezed
class ProfileItemListItemModel with _$ProfileItemListItemModel {
  factory ProfileItemListItemModel({
    required String id,
    required String name,
    required String? description,
    required ProfileItemListCategoryModel? category,
    required ProfileItemListUserModel owner,
    required bool isActive,
    String? imageUrl,
  }) = _ProfileItemListItemModel;

  factory ProfileItemListItemModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileItemListItemModelFromJson(json);
}

@freezed
class ProfileItemListUserModel with _$ProfileItemListUserModel {
  factory ProfileItemListUserModel({
    required String id,
    required String username,
  }) = _ProfileItemListUserModel;

  factory ProfileItemListUserModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileItemListUserModelFromJson(json);
}
