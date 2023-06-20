import "package:borrow_app/common/mixins/category_dialog.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/categories_settings.view.dart";
import "package:borrow_app/widgets/buttons/dotted_border_button.widget.dart";
import "package:borrow_app/widgets/cards/item_card.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class ItemListView extends ConsumerWidget with CategoryDialogMixin {
  final String _groupId;

  const ItemListView({super.key, required String groupId}) : _groupId = groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ItemListController controller = ref.read(
      providers.itemListControllerProvider(_groupId).notifier,
    );
    final ItemListModel model = ref.watch(
      providers.itemListControllerProvider(_groupId),
    );
    if (model.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (model.hasError || model.group is! ItemListGroupModel) {
      return Center(child: Text(AppLocalizations.of(context).unspecifiedError));
    }
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (model.items.isNotEmpty)
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: model.items.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final ItemListItemModel item = model.items.elementAt(index);
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
                children: <Widget>[
                  Center(
                    child: Text(
                      AppLocalizations.of(context).emptyGroupMessage,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  DottedBorderButton(
                    title: AppLocalizations.of(context).newCategory,
                    icon: const Icon(Icons.add),
                    onTap: () => _onNewCategory(
                      ref.read(
                        providers.categoriesListProvider(_groupId).notifier,
                      ),
                      context,
                    ),
                    width: 220,
                  ),
                  const SizedBox(height: 10),
                  DottedBorderButton(
                    title: AppLocalizations.of(context).addNewItem,
                    icon: const Icon(Icons.add),
                    onTap: () => controller.navigateToItemEditor(itemId: ""),
                    width: 220,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _onNewCategory(
    CategoriesSettingsController controller,
    BuildContext context,
  ) async {
    final bool? value = await showNewCategoryDialog(controller, context);
    if (value ?? false) {
      controller.addCategory();
    }
  }
}

abstract class ItemListController extends StateNotifier<ItemListModel> {
  ItemListController(super.model);

  void navigateToItem({required String itemId});

  void navigateToItemEditor({required String itemId});

  void selectCategory(ItemListCategoryModel? category);
}
