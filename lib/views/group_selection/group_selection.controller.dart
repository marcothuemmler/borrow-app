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
                newGroup: null,
              ),
        ) {
    _init();
  }

  void _init() {
    _getGroups();
  }

  Future<void> _getGroups() async {
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
  Future<void> addGroup({required bool? confirmed}) async {
    if (confirmed is! bool || !confirmed) {
      return;
    }
    await _groupSelectionService.postGroup(state.newGroup!);
    _getGroups();
  }

  @override
  String? validateFormField({required String fieldName}) {
    switch (fieldName) {
      case 'groupName':
        return state.newGroup!.name.length > 2
            ? null
            : "Der Gruppenname muss größer als 2 sein";
      case 'groupDescription':
        return null;
      default:
        return null;
    }
  }

  @override
  void createNewGroup() {
    state = state.copyWith(newGroup: GroupModel(name: "", description: null));
  }

  @override
  void setNewGroupName(String value) {
    state = state.copyWith.newGroup!(name: value);
  }

  @override
  void setNewGroupDescription(String value) {
    state = state.copyWith.newGroup!(description: value);
  }
}
