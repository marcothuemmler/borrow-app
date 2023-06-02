import 'package:borrow_app/views/chat/chat.model.dart';

abstract class ChatService {
  Future<List<MessageModel>> loadMessages({required String userId});

  Future<MessageModel> sendMessage({
    required String message,
    required String recipientId,
  });
}
