import 'package:borrow_app/views/item_detail/item_detail.model.dart';
import 'package:dartz/dartz.dart';
import 'package:go_router/go_router.dart';
import 'package:borrow_app/views/item_editor/item_editor.service.dart';
import 'package:borrow_app/views/item_editor/item_editor.view.dart';

class ItemEditorControllerImplementation extends ItemEditorController {
  final String _itemId;
  final ItemEditorService _itemEditorService;
  final GoRouter _router;
  String name = "";
  String description = "";

  ItemEditorControllerImplementation({
    ItemDetailModel? model,
    required String itemId,
    required ItemEditorService itemEditorService,
    required GoRouter router,
  })  : _itemEditorService = itemEditorService,
        _itemId = itemId,
        _router = router,
        super(
          model ??
              ItemDetailModel(
                isLoading: false,
                hasError: false,
                item: none(),
              ),
        ) {
    _init();
  }

  Future<void> _init() async {
    if(_itemId == null) {
      //final category = ItemDetailCategoryModel(id: '', name: '');
      //final userId = await _storageService.read(key: "user-id");
      //final userModel = ItemDetailUserModel(id: userId, username: "");
      //state = state.copyWith(item: Some(ItemDetailItemModel(id: '', name: '', owner: userModel, category: category)));
    } else {
      getItemDetails(itemId: _itemId!);
    }
  }

  Future<void> getItemDetails({required String itemId}) async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await _itemEditorService.getItemDetails(itemId: itemId);
      state = state.copyWith(item: optionOf(response), isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void save() {
    // TODO: implement save
  }

  @override
  void setDescription({required String value}) {
    description = value;
  }

  @override
  void setName({required String value}) {
    name = value;
  }
}
