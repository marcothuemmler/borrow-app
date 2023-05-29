import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';

abstract class ItemListService {
  Future<GroupModel> getGroupItemsAndCategories({required String groupId});
  Future<CategoryModel> postCategory(CategoryModel model);
}
