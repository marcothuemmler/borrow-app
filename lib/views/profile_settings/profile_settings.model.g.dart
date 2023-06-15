// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_settings.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileSettingsUserModel _$$_ProfileSettingsUserModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileSettingsUserModel(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_ProfileSettingsUserModelToJson(
        _$_ProfileSettingsUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
    };

_$_UpdateUserDto _$$_UpdateUserDtoFromJson(Map<String, dynamic> json) =>
    _$_UpdateUserDto(
      username: json['username'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_UpdateUserDtoToJson(_$_UpdateUserDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
    };
