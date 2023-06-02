import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/profile/category_settings.service.dart';
import 'package:dartz/dartz.dart';
import 'package:go_router/go_router.dart';
import 'package:borrow_app/views/profile/category_settings.view.dart';

class CategorySettingsControllerImplementation extends CategorySettingsController {
  final CategorySettingsService _categorySettingsService;
  final String _groupId;

  String newCategoryName = "";
  String newCategoryDescription = "";

  CategorySettingsControllerImplementation({
    List<CategoryModel>? model,
    required CategorySettingsService categorySettingsService,
    required String groupId,
    required GoRouter router,
  })
      : _categorySettingsService = categorySettingsService,
        _groupId = groupId,
        super([CategoryModel(name: "")]) {
    _init();
  }

  void _init() async {
    await loadCategories();
  }

  @override
  Future<void> loadCategories() async {
    try {
      final response = await _categorySettingsService.getCategories(groupId: _groupId);
      state = response;
    } catch (error) {
      throw Exception("Could not get group categories: $error");
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