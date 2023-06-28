import "dart:developer";

import "package:borrow_app/views/chat/chat.model.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:socket_io_client/socket_io_client.dart";

class WebSocketService {
  late final Socket _socket;

  WebSocketService() {
    _socket = io(
      dotenv.get("API_URL"),
      OptionBuilder().setTransports(<String>["websocket"]).build(),
    );
  }

  void connectSocket() {
    _socket.onConnect((dynamic data) => log("io client connected"));
    _socket.onConnectError((dynamic error) => log("$error"));
    _socket.onDisconnect((dynamic data) => log("$data"));
    _socket.connect();
  }

  Future<void> requestMessages({required String room}) async {
    _socket.emit("findMessages", room);
  }

  Future<void> sendMessage({
    required String room,
    required String message,
    required String recipientId,
    required String? senderId,
  }) async {
    final SendMessageDto messageDto = SendMessageDto(
      roomId: room,
      senderId: senderId!,
      recipientId: recipientId,
      content: message,
    );
    _socket.emit("createMessage", messageDto);
  }

  void disposeSocket() {
    _socket.dispose();
  }

  void onMessage(void Function(Map<String, dynamic> json) handler) {
    _socket.on("message", handler as void Function(dynamic));
  }

  void onMessages(void Function(List<Map<String, dynamic>> json) handler) {
    _socket.on("messages", handler as void Function(dynamic));
  }
}
