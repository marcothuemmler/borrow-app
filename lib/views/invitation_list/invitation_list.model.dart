import "package:freezed_annotation/freezed_annotation.dart";

part "invitation_list.model.freezed.dart";
part "invitation_list.model.g.dart";

@freezed
class InvitationListModel with _$InvitationListModel {
  const factory InvitationListModel({
    required bool isLoading,
    required bool hasError,
    required List<InvitationListInvitationModel> groupInvitations,
  }) = _InvitationListModel;
}

@freezed
class InvitationListInvitationModel with _$InvitationListInvitationModel {
  const factory InvitationListInvitationModel({
    required String id,
    required String name,
    String? description,
  }) = _InvitationListInvitationModel;

  factory InvitationListInvitationModel.fromJson(Map<String, dynamic> json) =>
      _$InvitationListInvitationModelFromJson(json);
}
