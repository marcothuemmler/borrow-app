import "package:borrow_app/common/mixins/category_dialog.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.model.dart";
import "package:borrow_app/widgets/cards/dismissible_profile_item_card.widget.dart";
import "package:borrow_app/widgets/dropdowns/dropdown.widget.dart";
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
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final List<ProfileItemListItemModel> availableItems = model.filteredItems
        .where((ProfileItemListItemModel element) => element.isActive)
        .toList();
    final List<ProfileItemListItemModel> borrowedItems = model.filteredItems
        .where((ProfileItemListItemModel element) => !element.isActive)
        .toList();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: isPortrait ? 10 : 5,
                  ),
                  child: DropdownWidget<CategorySettingsCategoryModel>(
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
                  ),
                ),
              ],
            ),
            Expanded(
              child: DefaultTabController(
                initialIndex: model.currentIndex,
                length: 2,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      onTap: controller.setCurrentIndex,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: isPortrait ? 15 : 5,
                      ),
                      labelStyle: const TextStyle(fontSize: 16),
                      unselectedLabelColor: Colors.black54,
                      labelColor: Colors.black87,
                      tabs: <Widget>[
                        Tab(text: AppLocalizations.of(context).availableItems),
                        Tab(text: AppLocalizations.of(context).borrowedItems),
                      ],
                    ),
                    if (model.isLoading)
                      const Expanded(
                        child: Center(child: CircularProgressIndicator()),
                      )
                    else if (model.hasError)
                      Expanded(
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context).unspecifiedError,
                          ),
                        ),
                      )
                    else
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Expanded(
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: availableItems.length,
                                    shrinkWrap: true,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final ProfileItemListItemModel item =
                                          availableItems.elementAt(index);
                                      return DismissibleProfileItemCard(
                                        text: AppLocalizations.of(context)
                                            .markItemBorrowed,
                                        item: item,
                                        onTap: controller.navigateToItem,
                                        onDismiss: controller.deleteItem,
                                        onTapToggleAvailability:
                                            controller.toggleAvailability,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Expanded(
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: borrowedItems.length,
                                    shrinkWrap: true,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final ProfileItemListItemModel item =
                                          borrowedItems.elementAt(index);
                                      return DismissibleProfileItemCard(
                                        text: AppLocalizations.of(context)
                                            .markItemAvailable,
                                        item: item,
                                        onTap: controller.navigateToItem,
                                        onDismiss: controller.deleteItem,
                                        onTapToggleAvailability:
                                            controller.toggleAvailability,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
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
        onPressed: controller.navigateToNewItem,
        label: Text(AppLocalizations.of(context).addNewItem),
      ),
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

  void toggleAvailability({
    required String itemId,
    required bool itemIsAvailable,
  });

  void setCurrentIndex(int index);
}
