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
                imageChanged: false,
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
      XFile? image;
      if (user.imageUrl is String) {
        image = await _profileSettingsService.getProfileImage(
          imageUrl: user.imageUrl!,
        );
      }
      state = state.copyWith(
        isLoading: false,
        user: user,
        patchedUser: user,
        profileImage: image,
        patchedProfileImage: image,
        userDataChanged: false,
        imageChanged: false,
      );
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  void patchUser() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      if (state.userDataChanged) {
        await _profileSettingsService.patchUser(user: state.patchedUser!);
      }
      final image = state.patchedProfileImage;
      if (state.imageChanged) {
        if (image is XFile) {
          await _profileSettingsService.putProfileImage(profileImage: image);
        } else {
          await _profileSettingsService.deleteProfileImage();
        }
      }
      _init();
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
    _checkIfImageChanged();
  }

  void _compareUserData() {
    state = state.copyWith(userDataChanged: state.user != state.patchedUser);
  }

  void _checkIfImageChanged() {
    state = state.copyWith(
      imageChanged: state.profileImage != state.patchedProfileImage,
    );
  }

  @override
  void deleteAccount({required String password}) async {
    try {
      state = state.copyWith(isLoading: true, hasError: false);
      await _profileSettingsService.deleteAccount(password: password);
      state = state.copyWith(isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }
}
