import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/extensions/build_context_extensions.dart";
import "package:borrow_app/common/mixins/category_dialog.mixin.dart";
import "package:borrow_app/common/mixins/form_validator.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/categories_settings.view.dart";
import "package:borrow_app/views/item_editor/item_editor.model.dart";
import "package:borrow_app/widgets/dropdowns/dropdown.widget.dart";
import "package:borrow_app/widgets/textform_fields/textfield.widget.dart";
import "package:borrow_app/widgets/various_components/image_upload.widget.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:image_picker/image_picker.dart";

class ItemEditorView extends ConsumerWidget with CategoryDialogMixin {
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
    final ItemEditorItemModel item = model.item;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _itemId is String ? item.name : AppLocalizations.of(context).newItem,
        ),
      ),
      body: Stack(
        children: <Widget>[
          if (context.isPortrait)
            SafeArea(
              child: SingleChildScrollView(
                child: _ItemEditor.portrait(
                  categoryNotSelected: model.categoryNotSelected,
                  patchedItemImage: model.patchedItemImage,
                  formKey: _formKey,
                  onImageChanged: controller.setItemImage,
                  categories: model.categories,
                  item: item,
                  onItemNameChanged: controller.setName,
                  onItemDescriptionChanged: controller.setDescription,
                  nameValidator: (String? value) {
                    return controller.validateFormField(
                      fieldType: FormValidationType.itemName,
                      context: context,
                      value: value,
                    );
                  },
                  onCategoryChanged: (ItemEditorCategoryModel? category) {
                    _selectCategory(
                      category: category,
                      controller: controller,
                      ref: ref,
                      context: context,
                    );
                  },
                  onSaveButtonPressed: () => _saveItem(controller, context),
                ),
              ),
            )
          else
            SafeArea(
              child: _ItemEditor.landscape(
                categoryNotSelected: model.categoryNotSelected,
                patchedItemImage: model.patchedItemImage,
                formKey: _formKey,
                onImageChanged: controller.setItemImage,
                categories: model.categories,
                item: item,
                onItemNameChanged: controller.setName,
                onItemDescriptionChanged: controller.setDescription,
                nameValidator: (String? value) => controller.validateFormField(
                  fieldType: FormValidationType.itemName,
                  context: context,
                  value: value,
                ),
                onCategoryChanged: (ItemEditorCategoryModel? category) {
                  _selectCategory(
                    category: category,
                    controller: controller,
                    ref: ref,
                    context: context,
                  );
                },
                onSaveButtonPressed: () => _saveItem(controller, context),
              ),
            ),
          if (model.isProcessing)
            const ColoredBox(
              color: Colors.white38,
              child: Center(child: CircularProgressIndicator()),
            )
        ],
      ),
    );
  }

  void _selectCategory({
    required ItemEditorCategoryModel? category,
    required ItemEditorController controller,
    required WidgetRef ref,
    required BuildContext context,
  }) {
    if (category?.id is String) {
      controller.selectCategory(category);
    } else {
      final CategoriesSettingsController categoriesSettingsController =
          ref.read(providers.categoriesListProvider(_groupId).notifier);
      showNewCategoryDialog(categoriesSettingsController, context)
          .then((bool? success) {
        if (success == true) {
          categoriesSettingsController.addCategory().then((_) {
            controller.refreshCategories();
          });
        }
      });
    }
  }

  void _saveItem(ItemEditorController controller, BuildContext context) {
    if (_formKey.currentState!.validate()) {
      controller.save().then((bool? success) {
        if (success is bool) {
          final SnackBar snackBar = SnackBar(
            content: Text(
              success == true
                  ? AppLocalizations.of(context).itemSavedSuccessfully
                  : AppLocalizations.of(context).itemSaveFailed,
            ),
            backgroundColor: success == true ? Colors.green : Colors.red,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          if (success) {
            Future<void>.delayed(
              const Duration(milliseconds: 700),
              context.pop,
            );
          }
        }
      });
    }
  }
}

class _ItemEditor extends StatelessWidget {
  const _ItemEditor._({
    required bool isPortrait,
    required bool categoryNotSelected,
    required XFile? patchedItemImage,
    required GlobalKey<FormState> formKey,
    required void Function(XFile?) onImageChanged,
    required List<ItemEditorCategoryModel> categories,
    required ItemEditorItemModel item,
    required void Function(String) onItemNameChanged,
    required void Function(String) onItemDescriptionChanged,
    required String? Function(String?) nameValidator,
    required void Function(ItemEditorCategoryModel?) onCategoryChanged,
    required void Function() onSaveButtonPressed,
  })  : _onSaveButtonPressed = onSaveButtonPressed,
        _item = item,
        _categories = categories,
        _formKey = formKey,
        _patchedItemImage = patchedItemImage,
        _nameValidator = nameValidator,
        _onCategoryChanged = onCategoryChanged,
        _onItemDescriptionChanged = onItemDescriptionChanged,
        _onItemNameChanged = onItemNameChanged,
        _onImageChanged = onImageChanged,
        _categoryNotSelected = categoryNotSelected,
        _isPortrait = isPortrait;

  final bool _isPortrait;
  final bool _categoryNotSelected;
  final void Function(XFile? image) _onImageChanged;
  final void Function(String name) _onItemNameChanged;
  final void Function(String description) _onItemDescriptionChanged;
  final void Function(ItemEditorCategoryModel? category) _onCategoryChanged;
  final String? Function(String?) _nameValidator;
  final XFile? _patchedItemImage;
  final GlobalKey<FormState> _formKey;
  final List<ItemEditorCategoryModel> _categories;
  final ItemEditorItemModel _item;
  final void Function() _onSaveButtonPressed;

  factory _ItemEditor.portrait({
    required bool categoryNotSelected,
    required XFile? patchedItemImage,
    required GlobalKey<FormState> formKey,
    required void Function(XFile? image) onImageChanged,
    required List<ItemEditorCategoryModel> categories,
    required ItemEditorItemModel item,
    required void Function(String name) onItemNameChanged,
    required void Function(String description) onItemDescriptionChanged,
    required String? Function(String?) nameValidator,
    required void Function(ItemEditorCategoryModel? category) onCategoryChanged,
    required void Function() onSaveButtonPressed,
  }) =>
      _ItemEditor._(
        isPortrait: true,
        categoryNotSelected: categoryNotSelected,
        patchedItemImage: patchedItemImage,
        formKey: formKey,
        onImageChanged: onImageChanged,
        categories: categories,
        item: item,
        onItemNameChanged: onItemNameChanged,
        onItemDescriptionChanged: onItemDescriptionChanged,
        nameValidator: nameValidator,
        onCategoryChanged: onCategoryChanged,
        onSaveButtonPressed: onSaveButtonPressed,
      );

  factory _ItemEditor.landscape({
    required bool categoryNotSelected,
    required XFile? patchedItemImage,
    required GlobalKey<FormState> formKey,
    required void Function(XFile? image) onImageChanged,
    required List<ItemEditorCategoryModel> categories,
    required ItemEditorItemModel item,
    required void Function(String name) onItemNameChanged,
    required void Function(String description) onItemDescriptionChanged,
    required String? Function(String?) nameValidator,
    required void Function(ItemEditorCategoryModel? category) onCategoryChanged,
    required void Function() onSaveButtonPressed,
  }) =>
      _ItemEditor._(
        isPortrait: false,
        categoryNotSelected: categoryNotSelected,
        patchedItemImage: patchedItemImage,
        formKey: formKey,
        onImageChanged: onImageChanged,
        categories: categories,
        item: item,
        onItemNameChanged: onItemNameChanged,
        onItemDescriptionChanged: onItemDescriptionChanged,
        nameValidator: nameValidator,
        onCategoryChanged: onCategoryChanged,
        onSaveButtonPressed: onSaveButtonPressed,
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: _isPortrait ? 30 : 15,
      ),
      child: Flex(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: _isPortrait ? Axis.vertical : Axis.horizontal,
        children: <Widget>[
          Flexible(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: AspectRatio(
                      aspectRatio: 1.5,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
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
                          borderRadius: BorderRadius.circular(7),
                          child: ImageUpload(
                            image: _patchedItemImage,
                            onImageChanged: _onImageChanged,
                            text: "",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!_isPortrait)
            const VerticalDivider(
              width: 40,
              color: CupertinoColors.systemGrey2,
            ),
          Flexible(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (_isPortrait) const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        DropdownWidget<ItemEditorCategoryModel>(
                          hint: Text(
                            AppLocalizations.of(context).category,
                          ),
                          items: <ItemEditorCategoryModel>[
                            ..._categories,
                            ItemEditorCategoryModel(
                              id: null,
                              name: AppLocalizations.of(context).newCategory,
                            )
                          ],
                          onChanged: _onCategoryChanged,
                          value: _item.category,
                          mapFunction: (ItemEditorCategoryModel category) {
                            return DropdownMenuItem<ItemEditorCategoryModel>(
                              value: category,
                              child: Text(category.name),
                            );
                          },
                        ),
                      ],
                    ),
                    if (_categoryNotSelected)
                      Text(
                        AppLocalizations.of(context).categoryNotSelected,
                        style: const TextStyle(color: Colors.red),
                      ),
                    TextFieldWidget(
                      text: AppLocalizations.of(context).name,
                      validator: _nameValidator,
                      onChanged: _onItemNameChanged,
                      autocorrect: false,
                      initialValue: _item.name,
                    ),
                    TextFieldWidget(
                      text: AppLocalizations.of(context).description,
                      validator: null,
                      onChanged: _onItemDescriptionChanged,
                      autocorrect: false,
                      initialValue: _item.description,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: _onSaveButtonPressed,
                          child: Text(AppLocalizations.of(context).save),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
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

  Future<bool?> save();

  void refreshCategories();

  void selectCategory(ItemEditorCategoryModel? category);
}
