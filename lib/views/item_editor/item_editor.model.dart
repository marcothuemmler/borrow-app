import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:borrow_app/views/item_detail/item_detail.model.dart';
part 'item_editor.model.freezed.dart';
part 'item_editor.model.g.dart';

@freezed
class ItemEditorModel with _$ItemEditorModel {
  factory ItemEditorModel({
    required bool isLoading,
    required bool hasError,
    required ItemEditorItemModel item,
  }) = _ItemEditorModel;
}

@freezed
class ItemEditorItemModel with _$ItemEditorItemModel {
  factory ItemEditorItemModel({
    String? itemId,
    required String name,
    String? description,
    required ItemDetailCategoryModel? category,
  }) = _ItemEditorItemModel;

  factory ItemEditorItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemEditorItemModelFromJson(json);
}

@freezed
class ItemEditorParameters with _$ItemEditorParameters {
  factory ItemEditorParameters({
    required String? itemId,
    required String groupId,
  }) = _ItemEditorParameters;
}

@freezed
class ItemEditorItemModelDTO with _$ItemEditorItemModelDTO {
  factory ItemEditorItemModelDTO({
    required String name,
    String? description,
    required String categoryId,
  }) = _ItemEditorItemModelDTO;

  factory ItemEditorItemModelDTO.fromJson(Map<String, dynamic> json) =>
      _$ItemEditorItemModelDTOFromJson(json);
}