import 'package:borrow_app/common/mixins/form_validator.mixin.dart';
import 'package:borrow_app/views/group_selection/group_selection.model.dart';
import 'package:borrow_app/views/group_selection/group_selection.service.dart';
import 'package:borrow_app/views/group_selection/group_selection.view.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GroupSelectionControllerImplementation extends GroupSelectionController
    with FormValidator {
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
                groupImage: null,
                invitations: null,
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
  Future<void> addGroup({required bool confirmed}) async {
    if (!confirmed) {
      return;
    }
    try {
      state = state.copyWith(isLoading: true, hasError: false);
      final response = await _groupSelectionService.postGroup(state.newGroup!);
      if (state.groupImage is XFile) {
        await _groupSelectionService.putGroupImage(
          groupId: response.id!,
          groupImage: state.groupImage,
        );
      }
      _getGroups();
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void createNewGroup() {
    state = state.copyWith(
      newGroup: GroupSelectionGroupModel(name: "", description: null),
    );
  }

  @override
  void setNewGroupName(String value) {
    state = state.copyWith.newGroup!(name: value);
  }

  @override
  void setNewGroupDescription(String value) {
    state = state.copyWith.newGroup!(description: value);
  }

  @override
  void setGroupImage(XFile? file) {
    state = state.copyWith(groupImage: file);
  }

  @override
  void setupMemberInvitation({required String groupId}) {
    state = state.copyWith(
      invitations: InvitationModel(groupId: groupId, emails: {}),
    );
  }

  @override
  String? validateAndAddEmailToInvitations({
    required String? email,
    required BuildContext context,
  }) {
    final String? errorText = validateFormField(
      fieldName: "email",
      context: context,
      value: email,
    );
    if (errorText is! String) {
      state = state.copyWith.invitations!(
        emails: {...state.invitations!.emails, email!},
      );
    }
    return errorText;
  }

  @override
  void removeMailFromInvitations(String email) {
    state = state.copyWith.invitations!(
      emails: {...state.invitations!.emails.where((mail) => mail != email)},
    );
  }

  @override
  void inviteGroupMembers({required bool confirmed}) {
    if (confirmed) {
      _groupSelectionService.inviteGroupMembers(payload: state.invitations!);
    }
    state = state.copyWith(invitations: null);
  }
}
