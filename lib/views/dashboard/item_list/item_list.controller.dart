import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.service.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.view.dart';
import 'package:dartz/dartz.dart';
import 'package:go_router/go_router.dart';

class ItemListControllerImplementation extends ItemListController {
  final ItemListService itemListService;
  final String groupId;
  final GoRouter _router;

  ItemListControllerImplementation({
    ItemListModel? model,
    required this.itemListService,
    required this.groupId,
    required GoRouter router,
  })  : _router = router,
        super(
          model ??
              ItemListModel(
                hasError: false,
                isLoading: true,
                items: none(),
              ),
        ) {
    _init();
  }

  void _init() {
    getItemsByGroupId(id: groupId);
  }

  Future<void> getItemsByGroupId({required String id}) async {
    state = state.copyWith(isLoading: true);
    try {
      final response = await itemListService.getItemsByGroupId(groupId: id);
      state = state.copyWith(items: optionOf(response), isLoading: false);
    } catch (error) {
      state = state.copyWith(hasError: true);
    }
  }

  @override
  void navigateToItem({required String itemId}) {
    _router.pushNamed(
      itemRoute.name,
      pathParameters: {"itemId": itemId, "groupId": groupId},
    );
  }
}
