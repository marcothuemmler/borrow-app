import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';

abstract class CategoriesSettingsService {
  Future<CategoryListModel> getCategories({required String groupId});
  Future<void> postCategory({
    required String groupId,
    required CategoryModel model,
  });
}
