import "package:borrow_app/views/invitation_list/invitation_list.model.dart";

abstract class InvitationListService {
  Future<List<InvitationListInvitationModel>> loadInvitations();

  Future<void> deleteGroupInvitation({required String groupId});

  Future<void> joinGroup({required String groupId});
}
