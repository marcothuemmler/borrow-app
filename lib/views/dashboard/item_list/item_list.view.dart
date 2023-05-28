import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/widgets/cards/item_card.widget.dart';
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
        ],
      ),
    );
  }
}

abstract class ItemListController extends StateNotifier<ItemListModel> {
  ItemListController(ItemListModel model) : super(model);

  void navigateToItem({required String itemId});

  void selectCategory(CategoryModel? category);
}
