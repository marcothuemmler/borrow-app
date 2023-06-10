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
  const factory ChatRoomModel({required String id}) = _ChatRoomModel;
  factory ChatRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomModelFromJson(json);
}
