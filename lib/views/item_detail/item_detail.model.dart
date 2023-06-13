import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_detail.model.freezed.dart';
part 'item_detail.model.g.dart';

@freezed
class ItemDetailModel with _$ItemDetailModel {
  factory ItemDetailModel({
    required bool isLoading,
    required bool hasError,
    required Option<ItemDetailItemModel> item,
  }) = _ItemDetailModel;
}

@freezed
class ItemDetailItemModel with _$ItemDetailItemModel {
  factory ItemDetailItemModel({
    required String id,
    required String name,
    String? description,
    @Default(false) bool isMyItem,
    required ItemDetailUserModel owner,
    required ItemDetailCategoryModel category,
  }) = _ItemDetailItemModel;

  factory ItemDetailItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailItemModelFromJson(json);
}

@freezed
class ItemDetailCategoryModel with _$ItemDetailCategoryModel {
  factory ItemDetailCategoryModel({
    required String id,
    required String name,
    String? description,
    ItemDetailCategoryModel? parent,
  }) = _ItemDetailCategoryModel;

  factory ItemDetailCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailCategoryModelFromJson(json);
}

@freezed
class ItemDetailUserModel with _$ItemDetailUserModel {
  factory ItemDetailUserModel({
    required String id,
    required String username,
  }) = _ItemDetailUserModel;

  factory ItemDetailUserModel.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailUserModelFromJson(json);
}
