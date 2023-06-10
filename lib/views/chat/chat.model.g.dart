// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      createdAt: DateTime.parse(json['createdAt'] as String),
      sender: MessageUserModel.fromJson(json['sender'] as Map<String, dynamic>),
      recipient:
          MessageUserModel.fromJson(json['recipient'] as Map<String, dynamic>),
      content: json['content'] as String,
      isOwnMessage: json['isOwnMessage'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'sender': instance.sender,
      'recipient': instance.recipient,
      'content': instance.content,
      'isOwnMessage': instance.isOwnMessage,
    };

_$_MessageUserModel _$$_MessageUserModelFromJson(Map<String, dynamic> json) =>
    _$_MessageUserModel(
      id: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_MessageUserModelToJson(_$_MessageUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

_$_SendMessageDto _$$_SendMessageDtoFromJson(Map<String, dynamic> json) =>
    _$_SendMessageDto(
      roomId: json['roomId'] as String,
      senderId: json['senderId'] as String,
      recipientId: json['recipientId'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_SendMessageDtoToJson(_$_SendMessageDto instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'senderId': instance.senderId,
      'recipientId': instance.recipientId,
      'content': instance.content,
    };
