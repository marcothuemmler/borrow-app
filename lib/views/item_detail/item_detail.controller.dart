import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/item_detail/item_detail.model.dart";
import "package:borrow_app/views/item_detail/item_detail.service.dart";
import "package:borrow_app/views/item_detail/item_detail.view.dart";
import "package:go_router/go_router.dart";

class ItemDetailControllerImplementation extends ItemDetailController {
  final String _itemId;
  final ItemDetailService _itemDetailService;
  final GoRouter _router;

  ItemDetailControllerImplementation({
    ItemDetailModel? model,
    required String itemId,
    required ItemDetailService itemDetailService,
    required GoRouter router,
  })  : _itemDetailService = itemDetailService,
        _itemId = itemId,
        _router = router,
        super(
          model ??
              ItemDetailModel(
                isLoading: false,
                hasError: false,
                item: null,
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
      final ItemDetailItemModel response =
          await _itemDetailService.getItemDetails(itemId: itemId);
      state = state.copyWith(item: response, isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void contactOwner({required String ownerId}) {
    if (state.item is! ItemDetailItemModel) {
      return;
    }
    _router.pushNamed(
      chatRoute.name,
      pathParameters: <String, String>{"userId": ownerId},
      queryParameters: <String, String>{
        "ownerId": ownerId,
        "itemId": state.item!.id,
      },
    );
  }

  @override
  void selectDate() {
    // TODO: implement selectdate
  }
}
