import 'package:borrow_app/common/mixins/form_validator.mixin.dart';
import 'package:borrow_app/views/item_editor/item_editor.model.dart';
import 'package:borrow_app/views/item_editor/item_editor.service.dart';
import 'package:borrow_app/views/item_editor/item_editor.view.dart';
import 'package:go_router/go_router.dart';

class ItemEditorControllerImplementation extends ItemEditorController {
  String? _itemId;
  final String _groupId;
  final ItemEditorService _itemEditorService;
  String? _name;
  String? _description;

  ItemEditorControllerImplementation({
    ItemEditorModel? model,
    required ItemEditorParameters itemEditorParameters,
    required ItemEditorService itemEditorService,
    required GoRouter router,
  })  : _itemEditorService = itemEditorService,
        _itemId = itemEditorParameters.itemId,
        _groupId = itemEditorParameters.groupId,
        super(
          model ??
              const ItemEditorModel(
                isLoading: false,
                hasError: false,
                categories: [],
                item: ItemEditorItemModel(
                  name: '',
                  category: null,
                ),
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

  ItemEditorModel copyParamsToState() {
    final item = state.item;
    return state.copyWith(
      item: item.copyWith(
        name: _name == null ? "" : _name!,
        description: _description == null ? item.description : (_description == "" ? null : _description),
      ),
    );
  }

  Future<void> getItemDetails() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await _itemEditorService.getItemEditorDetails(
        itemId: _itemId!,
      );
      state = state.copyWith(item: response, isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void save() async {
    state = copyParamsToState();
    if (_itemId is String) {
      await _itemEditorService.patchItem(itemId: _itemId!, item: state.item);
      _init();
    } else {
      if(state.item.category != null) {
        final res = await _itemEditorService.postItem(
          item: state.item, groupId: _groupId,);
        _itemId = res;
        _init();
      }
    }
  }

  @override
  void setDescription(String value) {
    _description = value;
  }

  @override
  void setName(String value) {
    _name = value;
  }

  @override
  void selectCategory(ItemEditorCategoryModel? category) {
    state = copyParamsToState().copyWith.item(category: category);
  }

  void _getCategories() async {
    final categories = await _itemEditorService.getCategoriesForItemEditor(
      groupId: _groupId,
    );
    state = state.copyWith(categories: categories);
  }
}
