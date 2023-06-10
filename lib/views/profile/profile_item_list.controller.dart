import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/profile/category_settings.model.dart';
import 'package:borrow_app/views/profile/profile_item_list.model.dart';
import 'package:borrow_app/views/profile/profile_item_list.service.dart';
import 'package:borrow_app/views/profile/profile_item_list.view.dart';
import 'package:go_router/go_router.dart';

class ProfileItemListControllerImplementation extends ProfileItemListController {
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
          model ?? ProfileItemListModel(
              isLoading: false,
              hasError: false,
              categories: null,
              items: [],
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
      state = state.copyWith(isLoading: false, items: items, categories: categories);
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
  void selectCategory(CategorySettingsCategoryModel? category) {
    state = state.copyWith(selectedCategory: category);
    filterItemsByCategory(category: category);
  }

  void filterItemsByCategory({CategorySettingsCategoryModel? category}) {
    //if (state.group is ItemListGroupModel) {
      final filteredItems = state.items.where((item) {
        return category is! CategorySettingsCategoryModel ||
            item.category?.id == category?.id;
      }).toList();
      state = state.copyWith(items: filteredItems);
    //}
  }
}
