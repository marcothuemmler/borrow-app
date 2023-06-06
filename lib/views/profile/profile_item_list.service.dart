import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';

abstract class ProfileItemListService {
  Future<ItemListGroupModel> getGroupItemsAndCategories({
    required String groupId,
  });
}
