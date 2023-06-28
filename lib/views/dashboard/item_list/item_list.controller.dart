import "package:borrow_app/common/enums/item_availability_filter_type.enum.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.service.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.view.dart";
import "package:go_router/go_router.dart";

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
                items: <ItemListItemModel>[],
                itemAvailabilityFilterType: ItemAvailabilityFilterType.showAll,
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
      _applyItemFilters();
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
    _applyItemFilters();
  }

  void _applyItemFilters() {
    if (state.group is ItemListGroupModel) {
      final ItemListCategoryModel? category = state.selectedCategory;
      List<ItemListItemModel> filteredItems =
          state.group!.items.where((ItemListItemModel item) {
        return category is! ItemListCategoryModel ||
            item.category?.id == category.id;
      }).toList();
      filteredItems = filteredItems.where(_availabilityFilterType).toList();
      state = state.copyWith(items: filteredItems);
    }
  }

  bool _availabilityFilterType(ItemListItemModel item) {
    switch (state.itemAvailabilityFilterType) {
      case ItemAvailabilityFilterType.showAvailable:
        return item.isActive;
      case ItemAvailabilityFilterType.showBorrowed:
        return !item.isActive;
      case ItemAvailabilityFilterType.showAll:
        return true;
    }
  }

  @override
  Future<void> refresh() async {
    await _getGroupItemsAndCategories(id: _groupId);
  }

  @override
  void setItemAvailabilityFilterType(
    ItemAvailabilityFilterType? itemFilterType,
  ) {
    if (itemFilterType is ItemAvailabilityFilterType) {
      state = state.copyWith(itemAvailabilityFilterType: itemFilterType);
      _applyItemFilters();
    }
  }
}
