import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/mixins/form_validator.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:borrow_app/widgets/dialogs/new_category_dialog.dart";
import "package:borrow_app/widgets/items/dismissible_item.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class CategoriesSettingsView extends ConsumerWidget {
  final String _groupId;

  const CategoriesSettingsView({
    super.key,
    required String groupId,
  }) : _groupId = groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CategoriesSettingsController controller = ref.read(
      providers.categoriesListProvider(_groupId).notifier,
    );
    final CategoryListDetailModel model = ref.watch(
      providers.categoriesListProvider(_groupId),
    );

    if (model.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (model.hasError) {
      return Center(child: Text(AppLocalizations.of(context).unspecifiedError));
    }
    final List<CategorySettingsCategoryModel> categories =
        model.items!.categories;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: categories.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final CategorySettingsCategoryModel category =
                      categories.elementAt(index);
                  return DismissibleItem(
                    item: category,
                    onDismissed: (_) => controller.deleteCategory(category.id!),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add, size: 26),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        onPressed: () => _onNewCategory(context, controller),
        label: Text(AppLocalizations.of(context).newCategory),
      ),
    );
  }

  Future<void> _onNewCategory(
    BuildContext context,
    CategoriesSettingsController controller,
  ) async {
    final bool? value = await _showNewCategoryDialog(
      context,
      controller,
    );
    if (value ?? false) {
      controller.addCategory();
    }
  }

  Future<bool?> _showNewCategoryDialog(
    BuildContext context,
    CategoriesSettingsController controller,
  ) async {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return NewCategoryDialog(
          nameValidator: (String? value) => controller.validateFormField(
            fieldType: FormValidationType.categoryName,
            context: context,
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

abstract class CategoriesSettingsController
    extends StateNotifier<CategoryListDetailModel> with FormValidator {
  CategoriesSettingsController(super.state);

  void setNewCategoryName(String name);

  void setNewCategoryDescription(String description);

  void addCategory();

  void createNewCategory();

  Future<void> deleteCategory(String id);
}
