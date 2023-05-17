// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupDto _$$_SignupDtoFromJson(Map<String, dynamic> json) => _$_SignupDto(
      email: json['email'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_SignupDtoToJson(_$_SignupDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
    };

_$_LoginDto _$$_LoginDtoFromJson(Map<String, dynamic> json) => _$_LoginDto(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_LoginDtoToJson(_$_LoginDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
