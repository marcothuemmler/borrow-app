import 'package:borrow_app/common/mixins/DialogMixin.dart';
import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/profile/category_settings.model.dart';
import 'package:borrow_app/widgets/cards/settings_card.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesSettingsView extends ConsumerWidget with CategoryDialogMixin {
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
    if (model.hasError || model.items is! CategorySettingsCategoryListModel) {
      return const Center(child: Text("something went wrong"));
    }
    final categories = model.items!.categories;
    return SafeArea(
      child: Column(
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
    final bool? value = await showNewCategoryDialog(
      controller,
      context,
    );
    if (value ?? false) {
      controller.addCategory();
    }
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
