import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/profile/category_settings.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_item_list.model.freezed.dart';
part 'profile_item_list.model.g.dart';

@freezed
class ProfileItemListModel with _$ProfileItemListModel {
  factory ProfileItemListModel({
    required bool isLoading,
    required bool hasError,
    required CategorySettingsCategoryListModel? categories,
    required List<ItemListItemModel> items,
    List<ItemListItemModel>? filteredItems,
    required String groupId,
    required CategorySettingsCategoryModel? selectedCategory,
  }) = _ProfileItemListModel;

  factory ProfileItemListModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileItemListModelFromJson(json);
}
