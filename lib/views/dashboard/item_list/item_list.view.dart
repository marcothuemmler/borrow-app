import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/widgets/buttons/dotted_border_button.widget.dart';
import 'package:borrow_app/widgets/cards/item_card.widget.dart';
import 'package:borrow_app/widgets/dialogs/new_category_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemListView extends ConsumerWidget {
  final String groupId;

  const ItemListView({super.key, required this.groupId});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(
      providers.itemListControllerProvider(groupId).notifier,
    );
    final model = ref.watch(providers.itemListControllerProvider(groupId));

    Future<bool?> _showNewCategoryDialog(ItemListController controller) async {
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

    if (model.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (model.hasError || model.group is! GroupModel) {
      return const Center(child: Text("something went wrong"));
    }
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (model.items.isNotEmpty)
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: model.items.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final item = model.items.elementAt(index);
                  return ItemCard(
                    item: item,
                    onTap: () => controller.navigateToItem(itemId: item.id),
                  );
                },
              ),
            )
          else
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      "It's empty in here",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 25),
                  DottedBorderButton(
                    title: "Create a new category",
                    icon: const Icon(Icons.add),
                    onTap: onNewCategory,
                    width: 200,
                  ),
                  const SizedBox(height: 10),
                  DottedBorderButton(
                    title: "Add a new item",
                    icon: const Icon(Icons.add),
                    onTap: controller.createItem,
                    width: 200,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

abstract class ItemListController extends StateNotifier<ItemListModel> {
  ItemListController(ItemListModel model) : super(model);

  void navigateToItem({required String itemId});

  void selectCategory(CategoryModel? category);

  void setNewCategoryName(String name);
  void setNewCategoryDescription(String description);

  void createItem();

  void addCategory();
}
