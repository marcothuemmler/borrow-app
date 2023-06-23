import "package:borrow_app/common/mixins/category_dialog.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.model.dart";
import "package:borrow_app/widgets/cards/item_card_dismissible.widget.dart";
import "package:borrow_app/widgets/dropdowns/dropdown.widget.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class ProfileItemListView extends ConsumerWidget with CategoryDialogMixin {
  final String groupId;

  const ProfileItemListView({super.key, required this.groupId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProfileItemListController controller = ref.read(
      providers.profileItemListControllerProvider(groupId).notifier,
    );
    final ProfileItemListModel model =
        ref.watch(providers.profileItemListControllerProvider(groupId));
    if (model.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (model.hasError) {
      return Center(child: Text(AppLocalizations.of(context).unspecifiedError));
    }

    final List<ItemListItemModel> filteredItems = model.filteredItems;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (filteredItems.isNotEmpty)
              Expanded(
                child: Column(
                  children: <Widget>[
                    getDropDownMenu(controller, model, context),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.only(top: 20),
                        itemCount: model.filteredItems.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          final ItemListItemModel item =
                            model.filteredItems.elementAt(index);
                          return ItemCardDismissible(
                            onTap: controller.navigateToItem,
                            onDismiss: controller.deleteItem,
                            item: item,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            else
              Expanded(
                child: Column(
                  children: <Widget>[
                    getDropDownMenu(controller, model, context),
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
                  ],
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
        onPressed: () => {controller.navigateToNewItem()},
        label: Text(AppLocalizations.of(context).addNewItem),
      ),
    );
  }

  Widget getDropDownMenu(
    ProfileItemListController controller,
    ProfileItemListModel model,
    BuildContext context,
  ) {
    return DropdownWidget<CategorySettingsCategoryModel>(
      hint: Text(AppLocalizations.of(context).category),
      items: <CategorySettingsCategoryModel>[
        ...?model.categories?.categories,
        CategorySettingsCategoryModel(
          name: AppLocalizations.of(context).allCategories,
        ),
      ],
      onChanged: controller.selectCategory,
      value: model.selectedCategory,
      mapFunction: (CategorySettingsCategoryModel category) {
        return DropdownMenuItem<CategorySettingsCategoryModel>(
          value: category,
          child: Text(category.name),
        );
      },
    );
  }
}

abstract class ProfileItemListController
    extends StateNotifier<ProfileItemListModel> {
  ProfileItemListController(super.model);

  void navigateToItem({required String itemId});

  void selectCategory(CategorySettingsCategoryModel? category);

  void navigateToNewItem();

  void deleteItem({required String itemId});
}
