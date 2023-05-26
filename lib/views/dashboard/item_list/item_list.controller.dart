import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.service.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.view.dart';
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
                selectedCategory: null,
                hasError: false,
                isLoading: false,
                group: null,
                items: [],
              ),
        ) {
    _init();
  }

  void _init() {
    getGroupItemsAndCategories(id: groupId);
  }

  Future<void> getGroupItemsAndCategories({required String id}) async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await itemListService.getGroupItemsAndCategories(groupId: id);
      state = state.copyWith(
        group: response,
        isLoading: false,
        hasError: false,
      );
      filterItemsByCategory(category: state.selectedCategory);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void navigateToItem({required String itemId}) {
    _router.pushNamed(
      itemDetailRoute.name,
      pathParameters: {"itemId": itemId, "groupId": groupId},
    );
  }

  @override
  void selectCategory(CategoryModel? category) {
    final selectedCategory = category?.id is! String ? null : category;
    state = state.copyWith(selectedCategory: selectedCategory);
    filterItemsByCategory(category: selectedCategory);
  }

  void filterItemsByCategory({CategoryModel? category}) {
    if (state.group is GroupModel) {
      final filteredItems = state.group!.items.where((item) {
        return category is! CategoryModel || item.category.id == category.id;
      }).toList();
      state = state.copyWith(items: filteredItems);
    }
  }
}
