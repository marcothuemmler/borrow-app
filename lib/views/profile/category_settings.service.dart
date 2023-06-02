import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';

abstract class CategorySettingsService {
  Future<List<CategoryModel>> getCategories({required String groupId});
  Future<void> postCategory(CategoryModel model);
}
