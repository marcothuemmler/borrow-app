import 'package:borrow_app/views/item_editor/item_editor.model.dart';

abstract class ItemEditorService {
  Future<ItemEditorItemModel> getItemEditorDetails({required String itemId});
}
