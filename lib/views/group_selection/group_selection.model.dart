import "package:freezed_annotation/freezed_annotation.dart";
import "package:image_picker/image_picker.dart";

part "group_selection.model.freezed.dart";
part "group_selection.model.g.dart";

@freezed
class GroupSelectionModel with _$GroupSelectionModel {
  factory GroupSelectionModel({
    required bool isLoading,
    required bool hasError,
    required GroupSelectionUserModel? user,
    required GroupSelectionGroupModel? newGroup,
    required XFile? groupImage,
    required InvitationModel? invitations,
  }) = _GroupSelectionModel;
}

@freezed
class GroupSelectionUserModel with _$GroupSelectionUserModel {
  factory GroupSelectionUserModel({
    required String id,
    required String username,
    @Default(<GroupSelectionGroupModel>[])
        List<GroupSelectionGroupModel> groups,
  }) = _UserModel;

  factory GroupSelectionUserModel.fromJson(Map<String, dynamic> json) =>
      _$GroupSelectionUserModelFromJson(json);
}

@freezed
class GroupSelectionGroupModel with _$GroupSelectionGroupModel {
  factory GroupSelectionGroupModel({
    String? id,
    required String name,
    required String? description,
    String? imageUrl,
    String? creatorId,
  }) = _GroupSelectionGroupModel;

  factory GroupSelectionGroupModel.fromJson(Map<String, dynamic> json) =>
      _$GroupSelectionGroupModelFromJson(json);
}

@freezed
class CreateGroupDTO with _$CreateGroupDTO {
  factory CreateGroupDTO({
    required String name,
    required String? description,
    required String creatorId,
  }) = _CreateGroupDTO;

  factory CreateGroupDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupDTOFromJson(json);
}

@freezed
class InvitationModel with _$InvitationModel {
  factory InvitationModel({
    required String groupId,
    @Default(<String>{}) Set<String> emails,
  }) = _InvitationModel;

  factory InvitationModel.fromJson(Map<String, dynamic> json) =>
      _$InvitationModelFromJson(json);
}
