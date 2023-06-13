import 'package:freezed_annotation/freezed_annotation.dart';

import '../item_detail/item_detail.model.dart';

part 'item_editor.model.freezed.dart';
part 'item_editor.model.g.dart';

@freezed
class ItemEditorModel with _$ItemEditorModel {
  factory ItemEditorModel({
    required bool isLoading,
    required bool hasError,
    required ItemEditorItemModel? item,
  }) = _ItemEditorModel;
}

@freezed
class ItemEditorItemModel with _$ItemEditorItemModel {
  factory ItemEditorItemModel({
    required String id,
    required String name,
    String? description,
    required ItemDetailCategoryModel category,
  }) = _ItemEditorItemModel;

  factory ItemEditorItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemEditorItemModelFromJson(json);
}