import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_detail.model.freezed.dart';
part 'item_detail.model.g.dart';

@freezed
class ItemDetailModel with _$ItemDetailModel {
  factory ItemDetailModel({
    required bool isLoading,
    required bool hasError,
    required Option<ItemModel> item,
  }) = _ItemDetailModel;
}

@freezed
class ItemModel with _$ItemModel {
  factory ItemModel({
    required String id,
    required String name,
    String? description,
    required UserModel owner,
    required CategoryModel category,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
}

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    required String id,
    required String name,
    String? description,
    CategoryModel? parent,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String username,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
