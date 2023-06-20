import "package:borrow_app/views/invitation_list/invitation_list.model.dart";

abstract class InvitationListService {
  Future<List<InvitationListInvitationModel>> loadInvitations();

  void deleteGroupInvitation({required String groupId});

  void joinGroup({required String groupId});
}
