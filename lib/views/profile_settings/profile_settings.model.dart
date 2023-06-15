import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_settings.model.freezed.dart';
part 'profile_settings.model.g.dart';

@freezed
class ProfileSettingsModel with _$ProfileSettingsModel {
  const factory ProfileSettingsModel({
    required bool isLoading,
    required bool hasError,
    required bool userDataChanged,
    required ProfileSettingsUserModel? user,
    required ProfileSettingsUserModel? patchedUser,
  }) = _ProfileSettingsModel;
}

@freezed
class ProfileSettingsUserModel with _$ProfileSettingsUserModel {
  const factory ProfileSettingsUserModel({
    required String id,
    required String username,
    required String email,
    String? imageUrl,
  }) = _ProfileSettingsUserModel;

  factory ProfileSettingsUserModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileSettingsUserModelFromJson(json);
}

@freezed
class UpdateUserDto with _$UpdateUserDto {
  const factory UpdateUserDto({
    required String username,
    required String email,
  }) = _UpdateUserDto;

  factory UpdateUserDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDtoFromJson(json);
}
