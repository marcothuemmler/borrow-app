import 'package:borrow_app/views/group_selection/group_selection.view.dart';

class GroupSelectionControllerImplementation extends GroupSelectionController {
  GroupSelectionControllerImplementation({List<String>? state}) : super(state ?? []) {
    _init();
  }

  void _init() {
    state = ["Sportverein", "WG", "Kaffeeklatsch", "Nachbarschaft"];
  }

  @override
  void addGroup(String groupName) {
    state = [...state, groupName];
  }
}
