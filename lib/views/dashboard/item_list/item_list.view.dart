import "package:borrow_app/common/enums/item_availability_filter_type.enum.dart";
import "package:borrow_app/common/mixins/category_dialog.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/widgets/buttons/dotted_border_button.widget.dart";
import "package:borrow_app/widgets/cards/item_card.widget.dart";
import "package:borrow_app/widgets/various_components/list_refresh_indicator.widget.dart";
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
    if (model.hasError) {
      return Center(child: Text(AppLocalizations.of(context).unspecifiedError));
    }
    return SafeArea(
      child: ListRefreshIndicator(
        isLoading: model.isLoading,
        onAction: controller.refresh,
        child: Column(
          children: <Widget>[
            if (model.items.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 15),
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
            else if (!model.isLoading)
              Expanded(
                child: CustomScrollView(
                  slivers: <SliverFillRemaining>[
                    SliverFillRemaining(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            AppLocalizations.of(context).emptyGroupMessage,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.blueGrey,
                            ),
                          ),
                          const SizedBox(height: 15),
                          DottedBorderButton(
                            title: AppLocalizations.of(context).addNewItem,
                            icon: const Icon(Icons.add),
                            onTap: controller.navigateToItemEditor,
                            width: 220,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

abstract class ItemListController extends StateNotifier<ItemListModel> {
  ItemListController(super.model);

  void navigateToItem({required String itemId});

  void navigateToItemEditor();

  void selectCategory(ItemListCategoryModel? category);

  Future<void> refresh();

  void setItemAvailabilityFilterType(
    ItemAvailabilityFilterType? itemFilterType,
  );
}
