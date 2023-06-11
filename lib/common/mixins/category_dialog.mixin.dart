import 'package:borrow_app/common/enums/form_validation_type.enum.dart';
import 'package:borrow_app/views/dashboard/profile/categories_settings/categories_settings.view.dart';
import 'package:borrow_app/widgets/dialogs/new_category_dialog.dart';
import 'package:flutter/material.dart';

mixin CategoryDialogMixin {
  Future<bool?> showNewCategoryDialog(
    CategoriesSettingsController controller,
    BuildContext context,
  ) async {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return NewCategoryDialog(
          nameValidator: (value) => controller.validateFormField(
            context: context,
            fieldType: FormValidationType.categoryName,
            value: value,
          ),
          setName: controller.setNewCategoryName,
          setDescription: controller.setNewCategoryDescription,
          createCategoryCallback: controller.createNewCategory,
        );
      },
    );
  }
}
