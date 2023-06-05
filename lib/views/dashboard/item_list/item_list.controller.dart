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
                newCategory: null,
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

  @override
  void createItem() {
    // TODO: implement createItem
  }

  @override
  void setNewCategoryDescription(String description) {
    state = state.copyWith.newCategory!(description: description);
  }

  @override
  void setNewCategoryName(String name) {
    state = state.copyWith.newCategory!(name: name);
  }

  @override
  Future<void> addCategory() async {
    await _itemListService.postCategory(
      groupId: _groupId,
      model: state.newCategory!,
    );
    _init();
  }

  @override
  void createNewCategory() {
    state = state.copyWith(
      newCategory: CategoryModel(name: ""),
    );
  }

  @override
  String? validateFormField({required String fieldName}) {
    switch (fieldName) {
      case "categoryName":
        return state.newCategory!.name.length < 3
            ? "Gruppennamen müssen mindestens 3 Zeichen beinhalten"
            : null;
    }
    return null;
  }
}
