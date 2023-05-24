import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/item_detail/item_detail.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemDetailView extends ConsumerStatefulWidget {
  final String itemId;
  const ItemDetailView({super.key, required this.itemId});

  @override
  ConsumerState<ItemDetailView> createState() {
    return _ItemDetailViewState();
  }
}

class _ItemDetailViewState extends ConsumerState<ItemDetailView> {
  @override
  Widget build(BuildContext context) {
    final model = ref.watch(providers.itemDetailControllerProvider(widget.itemId));
    if (model.isLoading) {
      return Scaffold(
        appBar: AppBar(leading: const BackButton()),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    if (model.hasError) {
      return Scaffold(
        appBar: AppBar(leading: const BackButton()),
        body: const Center(
          child: Text("Something went wrong"),
        ),
      );
    }
    return model.item.fold(
      () => Scaffold(
        appBar: AppBar(leading: const BackButton()),
        body: const Center(
          child: Text("Something went wrong"),
        ),
      ),
      (item) => Scaffold(
        appBar: AppBar(leading: const BackButton(), title: Text(item.name)),
      ),
    );
  }
}

abstract class ItemDetailController extends StateNotifier<ItemDetailModel> {
  ItemDetailController(ItemDetailModel model) : super(model);
}
