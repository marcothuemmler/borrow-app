import "package:freezed_annotation/freezed_annotation.dart";

part 'auth.model.freezed.dart';
part 'auth.model.g.dart';

@freezed
class SignupDto with _$SignupDto {
  const factory SignupDto({
    required String? email,
    required String? username,
    required String? password,
  }) = _SignupDto;

  factory SignupDto.fromJson(Map<String, Object?> json) => _$SignupDtoFromJson(json);
}

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String? email,
    required String? password,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, Object?> json) => _$LoginDtoFromJson(json);
}
