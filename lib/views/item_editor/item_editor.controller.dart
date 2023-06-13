import 'package:borrow_app/views/item_editor/item_editor.service.dart';
import 'package:borrow_app/views/item_editor/item_editor.view.dart';
import 'package:go_router/go_router.dart';
import 'package:borrow_app/views/item_editor/item_editor.model.dart';

class ItemEditorControllerImplementation extends ItemEditorController {
  final String? _itemId;
  final ItemEditorService _itemEditorService;
  String name = "";
  String description = "";

  ItemEditorControllerImplementation({
    ItemEditorModel? model,
    required String? itemId,
    required ItemEditorService itemEditorService,
    required GoRouter router,
  })  : _itemEditorService = itemEditorService,
        _itemId = itemId,
        super(
          model ??
              ItemEditorModel(
                isLoading: false,
                hasError: false,
                item: null,
              ),
        ) {
    _init();
  }

  Future<void> _init() async {
    if (_itemId is String) {
      getItemDetails(itemId: _itemId!);
    }
  }

  Future<void> getItemDetails({required String itemId}) async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await _itemEditorService.getItemEditorDetails(itemId: itemId);
      state = state.copyWith(item: response, isLoading: false);
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
