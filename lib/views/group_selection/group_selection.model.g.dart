// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_selection.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      username: json['username'] as String,
      groups: (json['groups'] as List<dynamic>?)
              ?.map((e) =>
                  GroupSelectionGroupModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'groups': instance.groups,
    };

_$_GroupSelectionGroupModel _$$_GroupSelectionGroupModelFromJson(
        Map<String, dynamic> json) =>
    _$_GroupSelectionGroupModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      creatorId: json['creatorId'] as String?,
    );

Map<String, dynamic> _$$_GroupSelectionGroupModelToJson(
        _$_GroupSelectionGroupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'creatorId': instance.creatorId,
    };

_$_CreateGroupDTO _$$_CreateGroupDTOFromJson(Map<String, dynamic> json) =>
    _$_CreateGroupDTO(
      name: json['name'] as String,
      description: json['description'] as String?,
      creatorId: json['creatorId'] as String,
    );

Map<String, dynamic> _$$_CreateGroupDTOToJson(_$_CreateGroupDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'creatorId': instance.creatorId,
    };

_$_InvitationModel _$$_InvitationModelFromJson(Map<String, dynamic> json) =>
    _$_InvitationModel(
      groupId: json['groupId'] as String,
      emails:
          (json['emails'] as List<dynamic>?)?.map((e) => e as String).toSet() ??
              const <String>{},
    );

Map<String, dynamic> _$$_InvitationModelToJson(_$_InvitationModel instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'emails': instance.emails.toList(),
    };
