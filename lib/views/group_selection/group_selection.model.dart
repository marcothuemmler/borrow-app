import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_selection.model.freezed.dart';
part 'group_selection.model.g.dart';

@freezed
class GroupSelectionModel with _$GroupSelectionModel {
  factory GroupSelectionModel({
    required bool isLoading,
    required bool hasError,
    required Option<UserModel> user,
  }) = _GroupSelectionModel;
}

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String username,
    @Default([]) List<GroupModel> groups,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class GroupModel with _$GroupModel {
  factory GroupModel({
    String? id,
    required String name,
    required String? description,
    String? creatorId,
  }) = _GroupModel;

  factory GroupModel.fromJson(Map<String, dynamic> json) => _$GroupModelFromJson(json);
}

@freezed
class CreateGroupDTO with _$CreateGroupDTO {
  factory CreateGroupDTO({
    required String name,
    required String? description,
    required String creatorId,
}) = _CreateGroupDTO;
  factory CreateGroupDTO.fromJson(Map<String, dynamic> json) => _$CreateGroupDTOFromJson(json);
}