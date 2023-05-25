import 'package:borrow_app/views/item_detail/item_detail.model.dart';
import 'package:borrow_app/views/item_detail/item_detail.service.dart';
import 'package:borrow_app/views/item_detail/item_detail.view.dart';
import 'package:dartz/dartz.dart';

class ItemDetailControllerImplementation extends ItemDetailController {
  final String itemId;
  final ItemDetailService itemDetailService;

  ItemDetailControllerImplementation({
    ItemDetailModel? model,
    required this.itemId,
    required this.itemDetailService,
  }) : super(
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
    getItemDetails(itemId: itemId);
  }

  Future<void> getItemDetails({required String itemId}) async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await itemDetailService.getItemDetails(itemId: itemId);
      state = state.copyWith(item: optionOf(response), isLoading: false, hasError: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void contactOwner({required String ownerId}) {
    // TODO: implement contactOwner
  }

  @override
  void selectDate() {
    // TODO: implement selectdate
  }
}
