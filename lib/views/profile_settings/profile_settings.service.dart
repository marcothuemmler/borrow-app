import 'package:borrow_app/views/profile_settings/profile_settings.model.dart';

abstract class ProfileSettingsService {
  Future<ProfileSettingsUserModel> loadProfileData();

  Future<ProfileSettingsUserModel> patchUser({
    required ProfileSettingsUserModel user,
  });
}
