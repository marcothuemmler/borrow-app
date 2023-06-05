import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/widgets/cards/settings_card.widget.dart';
import 'package:borrow_app/widgets/dialogs/new_category_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesSettingsView extends ConsumerWidget {
  final String groupId;

  const CategoriesSettingsView({
    super.key,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(
      providers.categoriesListProvider(groupId).notifier,
    );
    final model = ref.watch(providers.categoriesListProvider(groupId));

    if (model.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (model.hasError || model.items is! CategoryListModel) {
      return const Center(child: Text("something went wrong"));
    }
    final categories = model.items!.categories;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: categories.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = categories[index];
                return SettingsCardView(text: item.name, function: () {});
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => _onNewCategory(context, controller),
              child: const Text("Neue Kategorie"),
            ),
          )
        ],
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

abstract class CategoriesSettingsController
    extends StateNotifier<CategoryListDetailModel> {
  CategoriesSettingsController(super.state);

  Future<void> loadCategories();

  void setNewCategoryName(String name);

  void setNewCategoryDescription(String description);

  void addCategory();

  void createNewCategory();

  String? validateFormField({required String fieldName});
}
