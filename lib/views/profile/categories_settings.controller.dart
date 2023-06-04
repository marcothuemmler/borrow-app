import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/profile/categories_settings.service.dart';
import 'package:go_router/go_router.dart';
import 'package:borrow_app/views/profile/categories_settings.view.dart';

class CategoriesSettingsControllerImplementation extends CategoriesSettingsController {
  final CategoriesSettingsService _categorySettingsService;
  final String _groupId;

  String newCategoryName = "";
  String newCategoryDescription = "";

  CategoriesSettingsControllerImplementation({
    List<CategoryModel>? model,
    required CategoriesSettingsService categorySettingsService,
    required String groupId,
    required GoRouter router,
  })
      : _categorySettingsService = categorySettingsService,
        _groupId = groupId,
        super(CategoryListDetailModel(isLoading: false, hasError: false, items: CategoryListModel(groupId: '', categories: []),)) {
    _init();
  }

  void _init() async {
    await loadCategories();
  }

  @override
  Future<void> loadCategories() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await _categorySettingsService.getCategories(groupId: _groupId);
      state = state.copyWith(isLoading: false, items: response);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  Future<void> addCategory() async {
    CategoryModel model = CategoryModel(
      name: newCategoryName,
      description: newCategoryDescription == "" ? null : newCategoryDescription,
      groupId: _groupId,
    );
    await _categorySettingsService.postCategory(model);
    _init();
  }

  @override
  void setNewCategoryDescription(String description) {
    newCategoryDescription = description;
  }

  @override
  void setNewCategoryName(String name) {
    newCategoryName = name;
  }
}