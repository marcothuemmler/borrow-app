import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.service.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.view.dart';
import 'package:go_router/go_router.dart';

class ItemListControllerImplementation extends ItemListController {
  final ItemListService _itemListService;
  final String _groupId;
  final GoRouter _router;

  String newCategoryName = "";
  String newCategoryDescription = "";

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
      pathParameters: {"itemId": itemId, "groupId": _groupId},
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
    newCategoryDescription = description;
  }

  @override
  void setNewCategoryName(String name) {
    newCategoryName = name;
  }

  @override
  Future<void> addCategory() async {
    CategoryModel model = CategoryModel(
        name: newCategoryName,
        description: newCategoryDescription == "" ? null : newCategoryDescription,
        groupId: _groupId,
    );
    await _itemListService.postCategory(model);
    _init();
  }
}
