import 'package:borrow_app/common/providers.dart';
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
    final controller = ref.read(
      providers.dashboardControllerProvider(widget.groupId).notifier,
    );
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          // const Padding(padding: EdgeInsets.symmetric(horizontal: 25), child: Text("Items:")),
          // const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ItemCard(onTap: controller.navigateToItem);
              },
            ),
          ),
        ],
      ),
    );
  }
}
