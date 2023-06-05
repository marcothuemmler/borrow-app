// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      senderId: json['senderId'] as String,
      recipientId: json['recipientId'] as String,
      content: json['content'] as String,
      isOwnMessage: json['isOwnMessage'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'recipientId': instance.recipientId,
      'content': instance.content,
      'isOwnMessage': instance.isOwnMessage,
    };
