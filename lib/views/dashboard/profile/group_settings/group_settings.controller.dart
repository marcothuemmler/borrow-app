import "package:borrow_app/views/dashboard/profile/group_settings/group_settings.model.dart";
import "package:borrow_app/views/dashboard/profile/group_settings/group_settings.service.dart";
import "package:borrow_app/views/dashboard/profile/group_settings/group_settings.view.dart";

class GroupSettingsControllerImplementation extends GroupSettingsController {
  GroupSettingsControllerImplementation({
    GroupSettingsModel? model,
    required String groupId,
    required GroupSettingsService groupSettingsService,
  })  : _groupId = groupId,
        _groupSettingsService = groupSettingsService,
        super(
          model ??
              const GroupSettingsModel(
                isLoading: false,
                hasError: false,
              ),
        );

  final String _groupId;
  final GroupSettingsService _groupSettingsService;

  @override
  Future<bool> leaveGroup() async {
    try {
      state = state.copyWith(isLoading: true, hasError: false);
      await _groupSettingsService.leaveGroup(groupId: _groupId);
      state = state.copyWith(isLoading: false);
      return true;
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
      return false;
    }
  }
}
