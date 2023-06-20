import "package:borrow_app/views/profile_settings/profile_settings.model.dart";
import "package:image_picker/image_picker.dart";

abstract class ProfileSettingsService {
  Future<ProfileSettingsUserModel> loadProfileData();

  Future<ProfileSettingsUserModel> patchUser({
    required ProfileSettingsUserModel user,
  });

  Future<void> putProfileImage({required XFile profileImage});

  Future<XFile> getProfileImage({required String imageUrl});

  Future<void> deleteProfileImage();

  Future<void> deleteAccount({required String password});
}
