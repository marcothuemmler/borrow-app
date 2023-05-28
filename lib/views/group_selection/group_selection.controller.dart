import 'package:borrow_app/views/group_selection/group_selection.model.dart';
import 'package:borrow_app/views/group_selection/group_selection.service.dart';
import 'package:borrow_app/views/group_selection/group_selection.view.dart';
import 'package:dartz/dartz.dart';

class GroupSelectionControllerImplementation extends GroupSelectionController {
  final GroupSelectionService _groupSelectionService;

  GroupSelectionControllerImplementation({
    GroupSelectionModel? state,
    required GroupSelectionService groupSelectionService,
  })  : _groupSelectionService = groupSelectionService,
        super(
          state ??
              GroupSelectionModel(
                isLoading: true,
                hasError: false,
                user: none(),
              ),
        ) {
    _init();
  }

  void _init() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await _groupSelectionService.getGroups();
      state = state.copyWith(
        user: optionOf(response),
        isLoading: false,
        hasError: false,
      );
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void addGroup(GroupModel group) {
    // state = [...state, GroupModel(name: "", description: "", creatorID: "")];
  }
}
