import 'package:borrow_app/views/profile_settings/profile_settings.model.dart';
import 'package:borrow_app/views/profile_settings/profile_settings.service.dart';
import 'package:borrow_app/views/profile_settings/profile_settings.view.dart';
import 'package:image_picker/image_picker.dart';

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
                profileImage: null,
                patchedProfileImage: null,
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
      if (user.imageUrl is String) {
        final image = await _profileSettingsService.getProfileImage(
          imageUrl: user.imageUrl!,
        );
        state = state.copyWith(profileImage: image, patchedProfileImage: image);
      }
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
      final image = state.patchedProfileImage;
      if (image is XFile) {
        await _profileSettingsService.putProfileImage(profileImage: image);
      }
      state = state.copyWith(user: response, isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void setUsername({required String username}) {
    state = state.copyWith.patchedUser!(username: username);
    _compareUserData();
  }

  @override
  void setEmail({required String email}) {
    state = state.copyWith.patchedUser!(email: email);
    _compareUserData();
  }

  @override
  void setProfileImage(XFile? file) {
    state = state.copyWith(patchedProfileImage: file);
    _compareUserData();
  }

  void _compareUserData() {
    state = state.copyWith(
      userDataChanged: state.user != state.patchedUser ||
          state.profileImage != state.patchedProfileImage,
    );
  }
}
