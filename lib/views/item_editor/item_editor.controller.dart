import 'package:borrow_app/views/dashboard/profile/categories_settings/categories_settings.service.dart';
import 'package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart';
import 'package:borrow_app/views/item_detail/item_detail.model.dart';
import 'package:borrow_app/views/item_editor/item_editor.service.dart';
import 'package:borrow_app/views/item_editor/item_editor.view.dart';
import 'package:borrow_app/views/item_editor/item_editor.model.dart';
import 'package:go_router/go_router.dart';

class ItemEditorControllerImplementation extends ItemEditorController {
  final String? _itemId;
  final String _groupId;
  final ItemEditorService _itemEditorService;
  final CategoriesSettingsService _categorySettingsService;
  String? _name;
  String? _description;

  ItemEditorControllerImplementation({
    ItemEditorModel? model,
    required ItemEditorParameters itemEditorParameters,
    required ItemEditorService itemEditorService,
    required CategoriesSettingsService categoriesSettingsService,
    required GoRouter router,
  })  : _itemEditorService = itemEditorService,
        _itemId = itemEditorParameters.itemId,
        _groupId = itemEditorParameters.groupId,
        _categorySettingsService = categoriesSettingsService,

        super(
          model ??
              ItemEditorModel(
                isLoading: false,
                hasError: false,
                item: ItemEditorItemModel(name: '', category: null),
              ),
        ) {
    _init();
  }

  Future<void> _init() async {
    if (_itemId is String) {
      getItemDetails(itemId: _itemId!);
    }
  }

  Future<void> getItemDetails({required String itemId}) async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await _itemEditorService.getItemEditorDetails(itemId: itemId);
      state = state.copyWith(item: response, isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  ItemEditorModel copyParamsToState() {
    final item = state.item;
    return state.copyWith(
        item: item.copyWith(
            name: _name == null ? "" : _name!, description: _description,
        )
    );
  }

  @override
  void save() {
    if(_itemId != null) {
      state = copyParamsToState();
      _itemEditorService.patchItem(
          itemId: _itemId!,
          model: state.copyWith(item: state.item),);
    }
    _init();
  }

  @override
  void setDescription({required String value}) {
    _description = value;
  }

  @override
  void setName({required String value}) {
    _name = value;
  }

  @override
  void selectCategory(CategorySettingsCategoryModel? category) {
    if(category == null) {
      return;
    }
    final newState = copyParamsToState();
    final selectedCategoryModel = ItemDetailCategoryModel(
        id: category.id!,
        name: category.name);
    state = newState.copyWith(item: state.item.copyWith(category: selectedCategoryModel),);
  }

  @override
  Future<CategorySettingsCategoryListModel?> getCategories() async {
    return await _categorySettingsService.getCategories(groupId: _groupId);
  }
}
