import 'package:borrow_app/views/item_editor/item_editor.model.dart';

abstract class ItemEditorService {
  Future<ItemEditorItemModel> getItemEditorDetails({required String itemId});
  Future<void> patchItem({required String itemId, required ItemEditorModel model, required String categoryId});
}
