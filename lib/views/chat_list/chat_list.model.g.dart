// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoomModel _$$_ChatRoomModelFromJson(Map<String, dynamic> json) =>
    _$_ChatRoomModel(
      id: json['id'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatRoomMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatRoomModelToJson(_$_ChatRoomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messages': instance.messages,
    };

_$_ChatRoomMessageModel _$$_ChatRoomMessageModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChatRoomMessageModel(
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      sender:
          ChatRoomUserModel.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatRoomMessageModelToJson(
        _$_ChatRoomMessageModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'sender': instance.sender,
    };

_$_ChatRoomUserModel _$$_ChatRoomUserModelFromJson(Map<String, dynamic> json) =>
    _$_ChatRoomUserModel(
      id: json['id'] as String,
      username: json['username'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_ChatRoomUserModelToJson(
        _$_ChatRoomUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'imageUrl': instance.imageUrl,
    };
