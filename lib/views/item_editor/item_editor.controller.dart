import "package:borrow_app/views/item_editor/item_editor.model.dart";
import "package:borrow_app/views/item_editor/item_editor.service.dart";
import "package:borrow_app/views/item_editor/item_editor.view.dart";
import "package:go_router/go_router.dart";
import "package:image_picker/image_picker.dart";

class ItemEditorControllerImplementation extends ItemEditorController {
  final String? _itemId;
  final String _groupId;
  final ItemEditorService _itemEditorService;
  final String? _preselectedCategory;

  ItemEditorControllerImplementation({
    ItemEditorModel? model,
    required ItemEditorParameters itemEditorParameters,
    required ItemEditorService itemEditorService,
    required GoRouter router,
  })  : _itemEditorService = itemEditorService,
        _itemId = itemEditorParameters.itemId,
        _groupId = itemEditorParameters.groupId,
        _preselectedCategory = itemEditorParameters.preselectedCategory,
        super(
          model ??
              const ItemEditorModel(
                isLoading: false,
                hasError: false,
                itemImage: null,
                categories: <ItemEditorCategoryModel>[],
                item: ItemEditorItemModel(
                  name: "",
                  category: null,
                ),
                categoryNotSelected: false,
              ),
        ) {
    _init();
  }

  Future<void> _init() async {
    if (_itemId is String) {
      getItemDetails();
    }
    _getCategories();
  }

  Future<void> getItemDetails() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final ItemEditorItemModel response =
          await _itemEditorService.getItemEditorDetails(itemId: _itemId!);
      // if (response.imageUrl is String) {
      //   image = await _itemEditorService.getItemImage(
      //     imageUrl: item.imageUrl!,
      //   );
      // }
      state = state.copyWith(item: response, isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void save() async {
    String? itemId = _itemId;
    if (state.item.category is ItemEditorCategoryModel) {
      if (_itemId is String) {
        await _itemEditorService.patchItem(itemId: _itemId!, item: state.item);
      } else {
        itemId = await _itemEditorService.postItem(
          item: state.item,
          groupId: _groupId,
        );
      }
      if (state.itemImage is XFile && itemId is String) {
        _itemEditorService.putItemImage(
          itemId: itemId,
          image: state.itemImage!,
        );
      }
      _init();
    } else {
      state = state.copyWith(categoryNotSelected: true);
    }
  }

  @override
  void setDescription(String value) {
    state = state.copyWith.item(description: value);
  }

  @override
  void setName(String value) {
    state = state.copyWith.item(name: value);
  }

  void setItemImage(XFile? image) {
    state = state.copyWith(itemImage: image);
  }

  @override
  void selectCategory(ItemEditorCategoryModel? category) {
    state = state.copyWith(
      item: state.item.copyWith(category: category),
      categoryNotSelected: false,
    );
  }

  void _getCategories() async {
    final List<ItemEditorCategoryModel> categories =
        await _itemEditorService.getCategoriesForItemEditor(
      groupId: _groupId,
    );
    if (_itemId is! String && _preselectedCategory?.isNotEmpty == true) {
      final ItemEditorItemModel item = state.item.copyWith(
        category: categories.firstWhere(
          (ItemEditorCategoryModel category) =>
              category.id == _preselectedCategory,
        ),
      );
      state = state.copyWith(categories: categories, item: item);
    } else {
      state = state.copyWith(categories: categories);
    }
  }
}
