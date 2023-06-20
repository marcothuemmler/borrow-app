import "package:borrow_app/views/invitation_list/invitation_list.model.dart";
import "package:borrow_app/views/invitation_list/invitation_list.service.dart";
import "package:borrow_app/views/invitation_list/invitation_list.view.dart";

class InvitationListControllerImplementation extends InvitationListController {
  InvitationListControllerImplementation({
    InvitationListModel? model,
    required InvitationListService invitationListService,
  })  : _invitationListService = invitationListService,
        super(
          model ??
              const InvitationListModel(
                isLoading: false,
                hasError: false,
                invitations: <InvitationListInvitationModel>[],
              ),
        ) {
    _init();
  }

  final InvitationListService _invitationListService;

  void _init() async {
    try {
      state = state.copyWith(isLoading: true, hasError: false);
      final List<InvitationListInvitationModel> response =
          await _invitationListService.loadInvitations();
      state = state.copyWith(isLoading: false, invitations: response);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void deleteGroupInvitation({required String groupId}) {
    _invitationListService.deleteGroupInvitation(groupId: groupId);
  }

  @override
  void joinGroup({required String groupId}) {
    _invitationListService.joinGroup(groupId: groupId);
  }
}
