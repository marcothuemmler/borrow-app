import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.model.freezed.dart';
part 'chat.model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    required bool isLoading,
    required bool hasError,
    required List<MessageModel> messages,
  }) = _ChatModel;
}

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required DateTime createdAt,
    required MessageUserModel sender,
    required MessageUserModel recipient,
    required String content,
    @Default(false) bool isOwnMessage,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}

@freezed
class MessageUserModel with _$MessageUserModel {
  const factory MessageUserModel({
    required String id,
    required String username,
  }) = _MessageUserModel;

  factory MessageUserModel.fromJson(Map<String, dynamic> json) =>
      _$MessageUserModelFromJson(json);
}

@freezed
class SendMessageDto with _$SendMessageDto {
  const factory SendMessageDto({
    required String roomId,
    required String senderId,
    required String recipientId,
    required String content,
  }) = _SendMessageDto;

  factory SendMessageDto.fromJson(Map<String, dynamic> json) =>
      _$SendMessageDtoFromJson(json);
}

@freezed
class ChatControllerParameters with _$ChatControllerParameters {
  const factory ChatControllerParameters({
    required MessageItemModel item,
    required String otherUserId,
  }) = _ChatControllerParameters;
}

@freezed
class MessageItemModel with _$MessageItemModel {
  const factory MessageItemModel({
    required String id,
    required String ownerId,
  }) = _MessageItemModel;
}
