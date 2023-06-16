import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_editor.model.freezed.dart';
part 'item_editor.model.g.dart';

@freezed
class ItemEditorModel with _$ItemEditorModel {
  const factory ItemEditorModel({
    required bool isLoading,
    required bool hasError,
    required ItemEditorItemModel item,
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
