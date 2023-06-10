import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/item_detail/item_detail.model.dart';
import 'package:dartz/dartz.dart';
import 'package:go_router/go_router.dart';
import 'package:borrow_app/views/item_editor/item_editor.service.dart';
import 'package:borrow_app/views/item_editor/item_editor.view.dart';

class ItemEditorImplementation extends ItemEditorController {
  final String _itemId;
  final ItemEditorService _itemEditorService;
  final GoRouter _router;

  ItemEditorImplementation({
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

  void _init() {
    getItemDetails(itemId: _itemId);
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
  void contactOwner({required String ownerId}) {
    _router.pushNamed(
      chatRoute.name,
      pathParameters: {'userId': ownerId},
      queryParameters: {"itemId": _itemId},
    );
  }

  @override
  void selectDate() {
    // TODO: implement selectdate
  }
}
