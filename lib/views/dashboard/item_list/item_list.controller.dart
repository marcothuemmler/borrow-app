import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.service.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.view.dart';
import 'package:go_router/go_router.dart';

class ItemListControllerImplementation extends ItemListController {
  final ItemListService _itemListService;
  final String _groupId;
  final GoRouter _router;

  ItemListControllerImplementation({
    ItemListModel? model,
    required ItemListService itemListService,
    required String groupId,
    required GoRouter router,
  })  : _itemListService = itemListService,
        _groupId = groupId,
        _router = router,
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
    getGroupItemsAndCategories(id: _groupId);
  }

  Future<void> getGroupItemsAndCategories({required String id}) async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await _itemListService.getGroupItemsAndCategories(
        groupId: id,
      );
      state = state.copyWith(group: response, isLoading: false);
      filterItemsByCategory(category: state.selectedCategory);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void navigateToItem({required String itemId}) {
    _router.pushNamed(
      itemDetailRoute.name,
      pathParameters: {"itemId": itemId},
    );
  }

  @override
  void selectCategory(ItemListCategoryModel? category) {
    final selectedCategory = category?.id is! String ? null : category;
    state = state.copyWith(selectedCategory: selectedCategory);
    filterItemsByCategory(category: selectedCategory);
  }

  void filterItemsByCategory({ItemListCategoryModel? category}) {
    if (state.group is ItemListGroupModel) {
      final filteredItems = state.group!.items.where((item) {
        return category is! ItemListCategoryModel ||
            item.category?.id == category.id;
      }).toList();
      state = state.copyWith(items: filteredItems);
    }
  }
}
