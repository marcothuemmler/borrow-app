import 'package:borrow_app/views/group_selection/group_selection.model.dart';

abstract class GroupSelectionService {
  Future<UserModel> getGroups();
  Future<GroupModel> postGroup(GroupModel group);
}
