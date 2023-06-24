import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/mixins/form_validator.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/item_editor/item_editor.model.dart";
import "package:borrow_app/widgets/dropdowns/dropdown.widget.dart";
import "package:borrow_app/widgets/textform_fields/textfield.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:image_picker/image_picker.dart";

class ItemEditorView extends ConsumerWidget {
  final String? _itemId;
  final String _groupId;
  final String? _preselectedCategory;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ItemEditorView({
    super.key,
    required String? itemId,
    required String groupId,
    required String? preselectedCategory,
  })  : _groupId = groupId,
        _itemId = itemId,
        _preselectedCategory = preselectedCategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ItemEditorParameters itemEditorParameters = ItemEditorParameters(
      itemId: _itemId,
      groupId: _groupId,
      preselectedCategory: _preselectedCategory,
    );
    final ItemEditorController controller = ref.read(
      providers.itemEditorProvider(itemEditorParameters).notifier,
    );
    final ItemEditorModel model = ref.watch(
      providers.itemEditorProvider(itemEditorParameters),
    );
    if (model.isLoading) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (model.hasError) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(AppLocalizations.of(context).unspecifiedError),
        ),
      );
    }
    final ItemEditorItemModel item = model.item;
    return Scaffold(
      appBar: AppBar(
        title: Text(_itemId is String ? item.name : "New item"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 600),
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                                boxShadow: <BoxShadow>[
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
                        Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 30),
                              Center(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        DropdownWidget<ItemEditorCategoryModel>(
                                          hint: Text(
                                            AppLocalizations.of(context)
                                                .category,
                                          ),
                                          items: model.categories,
                                          onChanged: controller.selectCategory,
                                          value: model.item.category,
                                          mapFunction: (
                                            ItemEditorCategoryModel category,
                                          ) {
                                            return DropdownMenuItem<
                                                ItemEditorCategoryModel>(
                                              value: category,
                                              child: Text(category.name),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                    if (model.categoryNotSelected)
                                      Text(
                                        AppLocalizations.of(context)
                                            .categoryNotSelected,
                                        style: const TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextFieldWidget(
                                text: AppLocalizations.of(context).name,
                                validator: (String? value) {
                                  return controller.validateFormField(
                                    fieldType: FormValidationType.itemName,
                                    context: context,
                                    value: value,
                                  );
                                },
                                onChanged: controller.setName,
                                autocorrect: false,
                                initialValue: model.item.name,
                              ),
                              const SizedBox(height: 15),
                              TextFieldWidget(
                                text: AppLocalizations.of(context).description,
                                validator: null,
                                onChanged: controller.setDescription,
                                autocorrect: false,
                                initialValue: model.item.description,
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        controller.save();
                                      }
                                    },
                                    child: Text(
                                      AppLocalizations.of(context).save,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

abstract class ItemEditorController extends StateNotifier<ItemEditorModel>
    with FormValidator {
  ItemEditorController(super.model);

  void setName(String value);

  void setDescription(String value);

  void setItemImage(XFile? image);

  void save();

  void selectCategory(ItemEditorCategoryModel? category);
}