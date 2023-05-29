import 'package:borrow_app/views/group_selection/group_selection.model.dart';

abstract class GroupSelectionService {
  Future<UserModel> getGroups();
  Future<void> postGroup(GroupModel group);
}
