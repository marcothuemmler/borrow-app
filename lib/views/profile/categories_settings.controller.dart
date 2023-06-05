import 'package:borrow_app/views/profile/categories_settings.service.dart';
import 'package:borrow_app/views/profile/categories_settings.view.dart';
import 'package:borrow_app/views/profile/category_settings.model.dart';

class CategoriesSettingsControllerImplementation
    extends CategoriesSettingsController {
  final CategoriesSettingsService _categorySettingsService;
  final String _groupId;

  CategoriesSettingsControllerImplementation({
    CategoryListDetailModel? model,
    required CategoriesSettingsService categorySettingsService,
    required String groupId,
  })  : _categorySettingsService = categorySettingsService,
        _groupId = groupId,
        super(
          model ??
              CategoryListDetailModel(
                isLoading: false,
                hasError: false,
                items: null,
                newCategory: null,
              ),
        ) {
    _init();
  }

  void _init() {
    loadCategories();
  }

  @override
  Future<void> loadCategories() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response =
          await _categorySettingsService.getCategories(groupId: _groupId);
      state = state.copyWith(isLoading: false, items: response);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  Future<void> addCategory() async {
    await _categorySettingsService.postCategory(
      groupId: _groupId,
      model: state.newCategory!,
    );
    loadCategories();
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
  void createNewCategory() {
    state = state.copyWith(
      newCategory: CategorySettingsCategoryModel(name: "", description: null),
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
