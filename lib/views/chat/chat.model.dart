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
    required String senderId,
    required String recipientId,
    required String content,
    @Default(false) bool isOwnMessage,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
