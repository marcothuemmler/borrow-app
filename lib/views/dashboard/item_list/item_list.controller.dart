import "package:borrow_app/common/mixins/filter_borrowed_items.mixin.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.service.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.view.dart";
import "package:go_router/go_router.dart";

class ItemListControllerImplementation extends ItemListController with FilterBorrowedItems {
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
                items: <ItemListItemModel>[],
                filterBorrowed: FilterBorrowedItemsOptions.ALL,
              ),
        ) {
    _init();
  }

  void _init() {
    _getGroupItemsAndCategories(id: _groupId);
  }

  Future<void> _getGroupItemsAndCategories({required String id}) async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final ItemListGroupModel response =
          await _itemListService.getGroupItemsAndCategories(
        groupId: id,
      );
      state = state.copyWith(group: response, isLoading: false);
      _filter();
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void navigateToItem({required String itemId}) {
    _router.pushNamed(
      itemDetailRoute.name,
      pathParameters: <String, String>{"itemId": itemId},
    );
  }

  @override
  void navigateToItemEditor() {
    _router.pushNamed(
      newItemRoute.name,
      pathParameters: <String, String>{"groupId": _groupId},
    );
  }

  @override
  void selectCategory(ItemListCategoryModel? category) {
    final ItemListCategoryModel? selectedCategory =
        category?.id is! String ? null : category;
    state = state.copyWith(selectedCategory: selectedCategory);
    _filter();
  }

  void _filter() {
    if (state.group is ItemListGroupModel) {
      final category = state.selectedCategory;

      final List<ItemListItemModel> filteredItems =
          state.group!.items.where((ItemListItemModel item) {
        return category is! ItemListCategoryModel ||
            item.category?.id == category.id;
      }).toList();

      bool filterIsBorrowed(ItemListItemModel e) {
        switch(state.filterBorrowed) {
          case FilterBorrowedItemsOptions.AVAILABLE: return e.isActive;
          case FilterBorrowedItemsOptions.BORROWED: return !e.isActive;
          default: return true;
        }
      }

      final List<ItemListItemModel> filteredItems2 =
        filteredItems.where(filterIsBorrowed).toList();
      state = state.copyWith(items: filteredItems2);
    }
  }

  @override
  Future<void> refresh() async {
    await _getGroupItemsAndCategories(id: _groupId);
  }

  @override
  void setShowBorrowed(FilterBorrowedItemsOptions o) {
    state = state.copyWith(filterBorrowed: o);
    _filter();
  }
}
