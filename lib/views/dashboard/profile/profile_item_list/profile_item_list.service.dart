import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart';

abstract class ProfileItemListService {
  Future<List<ItemListItemModel>> getItemsFromOwner({
    required String groupId,
  });
  Future<CategorySettingsCategoryListModel> getCategories({
    required String groupId,
  });
}
