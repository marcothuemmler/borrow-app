import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';

abstract class ItemListService {
  Future<List<ItemModel>> getItemsByGroupId({required String groupId});
}
