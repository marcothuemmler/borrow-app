import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_list.model.freezed.dart';
part 'item_list.model.g.dart';

@freezed
class ItemListModel with _$ItemListModel {
  factory ItemListModel({
    required bool isLoading,
    required bool hasError,
    required Option<List<ItemModel>> items,
  }) = _ItemListModel;
}

@freezed
class ItemModel with _$ItemModel {
  factory ItemModel({
    required String id,
    required String name,
    required String? description,
    required CategoryModel category,
    required GroupModel? group,
    required UserModel owner,
  }) = _ItemsModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
}

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    required String id,
    required String name,
    required String? description,
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

@freezed
class GroupModel with _$GroupModel {
  factory GroupModel({
    required String id,
    required String name,
    required String? description,
  }) = _GroupModel;

  factory GroupModel.fromJson(Map<String, dynamic> json) => _$GroupModelFromJson(json);
}
