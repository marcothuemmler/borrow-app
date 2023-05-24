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
    final controller = ref.watch(providers.itemDetailControllerProvider(widget.itemId).notifier);
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
        appBar: AppBar(
          leading: const BackButton(),
          title: Text(item.name),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            constraints: const BoxConstraints(maxWidth: 500),
                            child: AspectRatio(
                              aspectRatio: 1.5,
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 3),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(7)),
                                  child: Image.asset(
                                    "assets/images/default.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 14,
                              backgroundColor: Color.fromARGB(255, 220, 220, 220),
                              child: Icon(Icons.person, color: Colors.grey, size: 18),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "@${item.owner.username}",
                              style: const TextStyle(color: Colors.black54),
                            ),
                            const Spacer(),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              ),
                              onPressed: () => controller.contactOwner(ownerId: item.owner.id),
                              child: const Text(
                                "Contact owner",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(width: 10)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 30),
                              const Text(
                                "Description:",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 20),
                              Text(item.description ?? "No description provided"),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30),
                              Text(
                                "Available:",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              // TODO: calendar / backend relation for availability
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract class ItemDetailController extends StateNotifier<ItemDetailModel> {
  ItemDetailController(ItemDetailModel model) : super(model);

  void contactOwner({required String ownerId});

  void selectDate();
}
