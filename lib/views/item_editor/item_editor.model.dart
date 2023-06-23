import "package:freezed_annotation/freezed_annotation.dart";
import "package:image_picker/image_picker.dart";

part "item_editor.model.freezed.dart";
part "item_editor.model.g.dart";

@freezed
class ItemEditorModel with _$ItemEditorModel {
  const factory ItemEditorModel({
    required bool isLoading,
    required bool hasError,
    required bool categoryNotSelected,
    required ItemEditorItemModel item,
    required XFile? itemImage,
    required List<ItemEditorCategoryModel> categories,
  }) = _ItemEditorModel;
}

@freezed
class ItemEditorItemModel with _$ItemEditorItemModel {
  const factory ItemEditorItemModel({
    String? itemId,
    required String name,
    String? description,
    required ItemEditorCategoryModel? category,
  }) = _ItemEditorItemModel;

  factory ItemEditorItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemEditorItemModelFromJson(json);
}

@freezed
class ItemEditorParameters with _$ItemEditorParameters {
  const factory ItemEditorParameters({
    required String? itemId,
    required String groupId,
    required String? preselectedCategory,
  }) = _ItemEditorParameters;
}

@freezed
class ItemEditorCategoryModel with _$ItemEditorCategoryModel {
  const factory ItemEditorCategoryModel({
    required String id,
    required String name,
    String? description,
  }) = _ItemEditorCategoryModel;

  factory ItemEditorCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ItemEditorCategoryModelFromJson(json);
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

@freezed
class NewItemEditorItemModelDTO with _$NewItemEditorItemModelDTO {
  factory NewItemEditorItemModelDTO({
    required String name,
    String? description,
    required String categoryId,
    required String ownerId,
    required String groupId,
  }) = _NewItemEditorItemModelDTO;

  factory NewItemEditorItemModelDTO.fromJson(Map<String, dynamic> json) =>
      _$NewItemEditorItemModelDTOFromJson(json);
}
