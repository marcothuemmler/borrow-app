import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/views/group_selection/group_selection.model.dart';
import 'package:borrow_app/views/group_selection/group_selection.service.dart';
import 'package:borrow_app/views/group_selection/group_selection.view.dart';
import 'package:dartz/dartz.dart';

class GroupSelectionControllerImplementation extends GroupSelectionController {
  final GroupSelectionService groupSelectionService;
  String? newGroupName = "";
  String? newGroupDescription = "";
  GroupSelectionControllerImplementation({
    GroupSelectionModel? state,
    required this.groupSelectionService,
    required BackendServiceAggregator itemListService,
  }) : super(state ?? GroupSelectionModel(isLoading: true, hasError: false, user: none())) {
    _init();
  }

  void _init() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await groupSelectionService.getGroups();
      state = state.copyWith(user: optionOf(response), isLoading: false, hasError: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  Future<void> addGroup(GroupModel group) async {
    // state = [...state, GroupModel(name: "", description: "", creatorID: "")];
    final response = await groupSelectionService.postGroup(group);
    _init();
  }

  @override
  String? validateFormField({required String fieldName}) {
    switch (fieldName) {
      case 'groupName':
        return newGroupName!.length > 2
            ? null
            : "Der Gruppenname muss größer als 2 sein";
      case 'groupDescription':
        return null;
      default:
        return null;
    }
  }
  @override
  void setNewGroupName(String value) {
    newGroupName = value;
  }
  @override
  void setNewGroupDescription(String value) {
    newGroupDescription = value;
  }

  @override
  String? getNewGroupName() {
    return newGroupName;
  }

  @override
  String? getNewGroupDescription() {
    return newGroupName;
  }
}
