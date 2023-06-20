import "package:freezed_annotation/freezed_annotation.dart";

part "auth.model.freezed.dart";
part "auth.model.g.dart";

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    required bool hasError,
    required bool isLoading,
    required LoginDto loginDto,
  }) = _LoginModel;
}

@freezed
class SignupModel with _$SignupModel {
  const factory SignupModel({
    required bool hasError,
    required bool isLoading,
    required SignupDto signupDto,
  }) = _SignupModel;
}

@freezed
class SignupDto with _$SignupDto {
  const factory SignupDto({
    required String? email,
    required String? username,
    required String? password,
  }) = _SignupDto;

  factory SignupDto.fromJson(Map<String, Object?> json) =>
      _$SignupDtoFromJson(json);
}

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String? email,
    required String? password,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, Object?> json) =>
      _$LoginDtoFromJson(json);
}
