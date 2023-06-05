import 'package:borrow_app/views/profile/category_settings.model.dart';

abstract class CategoriesSettingsService {
  Future<CategorySettingsCategoryListModel> getCategories({
    required String groupId,
  });
  Future<void> postCategory({
    required String groupId,
    required CategorySettingsCategoryModel model,
  });
}
