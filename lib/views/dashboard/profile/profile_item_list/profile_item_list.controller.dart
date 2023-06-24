import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.model.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.service.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.view.dart";
import "package:go_router/go_router.dart";

class ProfileItemListControllerImplementation
    extends ProfileItemListController {
  final ProfileItemListService _profileItemListService;
  final String _groupId;
  final GoRouter _router;

  ProfileItemListControllerImplementation({
    ProfileItemListModel? model,
    required ProfileItemListService profileItemListService,
    required String groupId,
    required GoRouter router,
  })  : _profileItemListService = profileItemListService,
        _groupId = groupId,
        _router = router,
        super(
          model ??
              ProfileItemListModel(
                currentIndex: 0,
                isLoading: false,
                hasError: false,
                categories: null,
                items: <ProfileItemListItemModel>[],
                filteredItems: <ProfileItemListItemModel>[],
                selectedCategory: null,
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
      final List<ProfileItemListItemModel> items =
          await _profileItemListService.getItemsFromOwner(
        groupId: id,
      );
      final CategorySettingsCategoryListModel categories =
          await _profileItemListService.getCategories(
        groupId: _groupId,
      );
      state = state.copyWith(
        isLoading: false,
        items: items,
        categories: categories,
      );
      _filterItemsByCategory(category: state.selectedCategory);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void navigateToItem({required String itemId}) {
    _router.pushNamed(
      itemEditorRoute.name,
      pathParameters: <String, String>{"itemId": itemId, "groupId": _groupId},
    );
  }

  @override
  void navigateToNewItem() {
    _router.pushNamed(
      newItemRoute.name,
      pathParameters: <String, String>{"groupId": _groupId},
      queryParameters: <String, String?>{
        "preselectedCategory": state.selectedCategory?.id,
      },
    );
  }

  @override
  void selectCategory(CategorySettingsCategoryModel? category) {
    final CategorySettingsCategoryModel? selectedCategory =
        category?.id is! String ? null : category;
    state = state.copyWith(selectedCategory: selectedCategory);
    _filterItemsByCategory(category: selectedCategory);
  }

  void _filterItemsByCategory({CategorySettingsCategoryModel? category}) {
    final List<ProfileItemListItemModel> filteredItems =
        state.items.where((ProfileItemListItemModel item) {
      return category is! CategorySettingsCategoryModel ||
          item.category?.id == category.id;
    }).toList();
    state = state.copyWith(filteredItems: filteredItems);
  }

  @override
  void setCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }

  @override
  Future<void> deleteItem({required String itemId}) async {
    try {
      state = state.copyWith(hasError: false, isLoading: true);
      await _profileItemListService.deleteItem(id: itemId);
      state = state.copyWith(isLoading: false);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void toggleAvailability({
    required String itemId,
    required bool itemIsAvailable,
  }) async {
    try {
      state = state.copyWith(isLoading: true, hasError: false);
      await _profileItemListService.setItemAvailability(
        itemId: itemId,
        availability: !itemIsAvailable,
      );
      _init();
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }
}
