import 'package:borrow_app/views/item_detail/item_detail.model.dart';

abstract class ItemDetailService {
  Future<ItemModel> getItemDetails({required String itemId});
}
