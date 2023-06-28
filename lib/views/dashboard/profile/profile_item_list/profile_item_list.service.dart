import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.model.dart";

abstract class ProfileItemListService {
  Future<List<ProfileItemListItemModel>> getItemsFromOwner({
    required String groupId,
  });
  Future<CategorySettingsCategoryListModel> getCategories({
    required String groupId,
  });
  Future<void> deleteItem({required String id});

  Future<void> setItemAvailability({
    required String itemId,
    required bool availability,
  });
}
