import "package:borrow_app/views/group_selection/group_selection.model.dart";
import "package:image_picker/image_picker.dart";

abstract class GroupSelectionService {
  Future<GroupSelectionUserModel> getGroups();

  Future<GroupSelectionGroupModel> postGroup(GroupSelectionGroupModel group);

  Future<void> putGroupImage({
    required String groupId,
    required XFile? groupImage,
  });

  Future<void> inviteGroupMembers({required InvitationModel payload});
}
