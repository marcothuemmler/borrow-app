import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_list.model.freezed.dart';
part 'chat_list.model.g.dart';

@freezed
class ChatListModel with _$ChatListModel {
  const factory ChatListModel({
    required bool isLoading,
    required bool hasError,
    required List<ChatRoomModel> chats,
  }) = _ChatListModel;
}

@freezed
class ChatRoomModel with _$ChatRoomModel {
  const factory ChatRoomModel({
    required String id,
    required List<ChatRoomMessageModel> messages,
  }) = _ChatRoomModel;

  factory ChatRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomModelFromJson(json);
}

@freezed
class ChatRoomMessageModel with _$ChatRoomMessageModel {
  const factory ChatRoomMessageModel({
    required String content,
    required DateTime createdAt,
    required ChatRoomUserModel sender,
  }) = _ChatRoomMessageModel;

  factory ChatRoomMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomMessageModelFromJson(json);
}

@freezed
class ChatRoomUserModel with _$ChatRoomUserModel {
  const factory ChatRoomUserModel({
    required String id,
    required String username,
    String? imageUrl,
  }) = _ChatRoomUserModel;

  factory ChatRoomUserModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomUserModelFromJson(json);
}
