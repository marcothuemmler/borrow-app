import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_editor.model.freezed.dart';
part 'item_editor.model.g.dart';

@freezed
class ItemEditorModel with _$ItemEditorModel {
  factory ItemEditorModel({
    required bool isLoading,
    required bool hasError,
    required ItemListItemModel? item,
    required CategorySettingsCategoryListModel? availableCategories,
  }) = _ItemEditorModel;

  factory ItemEditorModel.fromJson(Map<String, dynamic> json) =>
      _$ItemEditorModelFromJson(json);
}