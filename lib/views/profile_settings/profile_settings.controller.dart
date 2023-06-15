import 'package:borrow_app/views/profile_settings/profile_settings.model.dart';
import 'package:borrow_app/views/profile_settings/profile_settings.service.dart';
import 'package:borrow_app/views/profile_settings/profile_settings.view.dart';

class ProfileSettingsControllerImplementation
    extends ProfileSettingsController {
  ProfileSettingsControllerImplementation({
    ProfileSettingsModel? model,
    required ProfileSettingsService profileSettingsService,
  })  : _profileSettingsService = profileSettingsService,
        super(
          model ??
              const ProfileSettingsModel(
                isLoading: false,
                hasError: false,
                userDataChanged: false,
                user: null,
                patchedUser: null,
              ),
        ) {
    _init();
  }

  final ProfileSettingsService _profileSettingsService;

  void _init() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final user = await _profileSettingsService.loadProfileData();
      state = state.copyWith(isLoading: false, user: user, patchedUser: user);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void patchUser() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await _profileSettingsService.patchUser(
        user: state.patchedUser!,
      );
      state = state.copyWith(user: response, isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void setUsername({required String username}) {
    state = state.copyWith.patchedUser!(username: username);
    state = state.copyWith(userDataChanged: state.patchedUser != state.user);
  }

  @override
  void setEmail({required String email}) {
    state = state.copyWith.patchedUser!(email: email);
    state = state.copyWith(userDataChanged: state.patchedUser != state.user);
  }
}
