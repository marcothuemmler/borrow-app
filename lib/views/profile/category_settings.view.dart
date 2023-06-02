import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/widgets/cards/settings_card.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/widgets/dialogs/new_category_dialog.dart';

class CategorySettingsView extends ConsumerWidget {
  final String groupId;
  const CategorySettingsView({
    super.key, required this.groupId,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(
      providers.categoriesListProvider(groupId).notifier,
    );
    final model = ref.watch(providers.categoriesListProvider(groupId));

    Future<bool?> _showNewCategoryDialog(CategorySettingsController controller) async {
      return showDialog<bool>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return NewCategoryDialog(
            nameValidator: null,
            descriptionValidator: null,
            setCategoryValidator: (String ) {  },
            setName: controller.setNewCategoryName,
            setDescription: controller.setNewCategoryDescription,
          );
        },
      );
    }

    void onNewCategory() {
      Future<bool?> res = _showNewCategoryDialog(controller);
      res.then((value) => {
        if(value is bool && value) {
          controller.addCategory()
        }
      });
    }


    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: model.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final item = model[index];
                  return SettingsCardView(text: item.name, function: () {});
                },
              ),
            ),
          Center(
            child: ElevatedButton(
              onPressed: onNewCategory,
              child: const Text("Neue Kategorie"),
            ),
          )
        ],
      ),
    );
  }
}


abstract class CategorySettingsController extends StateNotifier<List<CategoryModel>> {
  CategorySettingsController(super.state);
  Future<void> loadCategories();
  void setNewCategoryName(String name);
  void setNewCategoryDescription(String description);
  void addCategory();
}
