import "package:borrow_app/common/mixins/category_dialog.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.model.dart";
import "package:borrow_app/widgets/buttons/dotted_border_button.widget.dart";
import "package:borrow_app/widgets/cards/item_card.widget.dart";
import "package:borrow_app/widgets/dropdowns/dropdown.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

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

    return SafeArea(
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
                        return ItemCard(
                          item: item,
                          onTap: () => controller.navigateToItem(
                            itemId: item.id,
                          ),
                        );
                      },
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () => context.pushNamed(
                        newItemRoute.name,
                        pathParameters: <String, String>{"groupId": groupId},
                      ),
                      child: Text(AppLocalizations.of(context).addNewItem),
                    ),
                  )
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
                  DottedBorderButton(
                    title: AppLocalizations.of(context).addNewItem,
                    icon: const Icon(Icons.add),
                    onTap: () {
                      context.pushNamed(
                        newItemRoute.name,
                        pathParameters: <String, String>{"groupId": groupId},
                      );
                    },
                    width: 200,
                  ),
                ],
              ),
            ),
        ],
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
}
