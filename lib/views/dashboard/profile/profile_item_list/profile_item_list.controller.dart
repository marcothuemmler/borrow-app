import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart';
import 'package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.model.dart';
import 'package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.service.dart';
import 'package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.view.dart';
import 'package:go_router/go_router.dart';

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
                isLoading: false,
                hasError: false,
                categories: null,
                items: [],
                filteredItems: [],
                groupId: '',
                selectedCategory: null,
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
      final items = await _profileItemListService.getItemsFromOwner(
        groupId: id,
      );
      final categories = await _profileItemListService.getCategories(
        groupId: _groupId,
      );
      state = state.copyWith(
        isLoading: false,
        items: items,
        categories: categories,
      );
      filterItemsByCategory(category: state.selectedCategory);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void navigateToItem({required String itemId}) {
    _router.pushNamed(
      itemEditorRoute.name,
      pathParameters: {"itemId": itemId},
    );
  }

  @override
  void selectCategory(CategorySettingsCategoryModel? category) {
    final selectedCategory = category?.id is! String ? null : category;
    state = state.copyWith(selectedCategory: selectedCategory);
    filterItemsByCategory(category: selectedCategory);
  }

  void filterItemsByCategory({CategorySettingsCategoryModel? category}) {
    final filteredItems = state.items.where((item) {
      return category is! CategorySettingsCategoryModel ||
          item.category?.id == category.id;
    }).toList();
    state = state.copyWith(filteredItems: filteredItems);
  }
}
