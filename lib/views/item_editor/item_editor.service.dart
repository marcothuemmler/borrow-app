import 'package:borrow_app/views/item_detail/item_detail.model.dart';

abstract class ItemEditorService {
  Future<ItemDetailItemModel> getItemDetails({required String itemId});
}
