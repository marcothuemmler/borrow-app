import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/widgets/cards/item_card.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemListView extends ConsumerStatefulWidget {
  final String groupId;

  const ItemListView({
    super.key,
    required this.groupId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ItemListViewState();
  }
}

class _ItemListViewState extends ConsumerState<ItemListView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(
      providers.itemListControllerProvider(widget.groupId).notifier,
    );
    final model = ref.watch(
      providers.itemListControllerProvider(widget.groupId),
    );
    if (model.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (model.hasError) {
      return const Center(child: Text("something went wrong"));
    }
    return model.group.fold(
      () => const Center(child: Text("something went wrong")),
      (group) {
        return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: group.items.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ItemCard(
                      item: group.items.elementAt(index),
                      onTap: () => controller.navigateToItem(
                        itemId: group.items.elementAt(index).id,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

abstract class ItemListController extends StateNotifier<ItemListModel> {
  ItemListController(ItemListModel model) : super(model);

  void navigateToItem({required String itemId});
  void selectCategory(CategoryModel? category);
}
