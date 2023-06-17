import 'package:borrow_app/views/item_editor/item_editor.model.dart';

import '../item_detail/item_detail.model.dart';

abstract class ItemEditorService {
  Future<ItemEditorItemModel> getItemEditorDetails({required String itemId});
  Future<void> patchItem({
    required String itemId,
    required ItemEditorItemModel item,
  });
  Future<String> postItem({
    required ItemEditorItemModel item, required String groupId,
  });

  Future<List<ItemEditorCategoryModel>> getCategoriesForItemEditor({
    required String groupId,
  });
}
