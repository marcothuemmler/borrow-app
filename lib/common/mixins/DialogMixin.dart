import 'package:flutter/material.dart';

import 'package:borrow_app/views/profile/categories_settings.view.dart';
import 'package:borrow_app/widgets/dialogs/new_category_dialog.dart';

mixin CategoryDialogMixin {
  Future<bool?> showNewCategoryDialog(
      CategoriesSettingsController controller,
      BuildContext context,
      ) async {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return NewCategoryDialog(
          nameValidator: (_) =>
              controller.validateFormField(fieldName: "categoryName"),
          setName: controller.setNewCategoryName,
          setDescription: controller.setNewCategoryDescription,
          createCategoryCallback: controller.createNewCategory,
        );
      },
    );
  }
}