import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:borrow_app/views/item_editor/item_editor.model.dart';

class ItemEditorView extends ConsumerWidget {
  final String? itemId;

  ItemEditorView({super.key, required this.itemId});

  final TextEditingController itemNameController = TextEditingController();
  final TextEditingController itemDescriptionController =
      TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final controller = ref.read(
      providers.itemEditorProvider(itemId).notifier,
    );
    final model = ref.watch(providers.itemEditorProvider(itemId));
    itemNameController.text = model.item == null ? "" : model.item!.name;
    itemDescriptionController.text =
      model.item == null || model.item!.description == null ?
      "" : model.item!.description!;

    if (model.isLoading) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (model.hasError) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: Text("Something went wrong")),
      );
    }
    if(model.item == null) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: Text("Something went wrong")),
      );
    } else {
      final item = model.item!;
      return Scaffold(
        appBar: AppBar(
          title: Text(item.name),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Center(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: AspectRatio(
                              aspectRatio: 1.5,
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
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
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(7),
                                  ),
                                  child: Image.asset(
                                    "assets/images/default.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: const [
                              SizedBox(width: 5),
                              Spacer(),
                              SizedBox(width: 5)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 30),
                              TextFieldWidget(
                                text: "Name",
                                validator: null,
                                onChanged: null,
                                autocorrect: false,
                                controller: itemNameController,
                              ),
                              const SizedBox(height: 30),
                              TextFieldWidget(
                                text: "Beschreibung",
                                validator: null,
                                onChanged: null,
                                autocorrect: false,
                                controller: itemDescriptionController,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () => {},
                  child: const Text("Speichern"),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    }
  }
}

abstract class ItemEditorController extends StateNotifier<ItemEditorModel> {
  ItemEditorController(super.model);

  void setName({required String value});

  void setDescription({required String value});

  void save();
}
