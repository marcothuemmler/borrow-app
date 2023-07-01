abstract class ChatService {
  Future<void> requestMessages({required String room});

  Future<void> sendMessage({
    required String room,
    required String message,
    required String recipientId,
    required String? senderId,
  });

  void onMessage(void Function(Map<String, dynamic> json) handler);

  void onMessages(void Function(List<Map<String, dynamic>> json) handler);

  void connectSocket();

  void disposeSocket();
}
