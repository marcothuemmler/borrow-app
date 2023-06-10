import 'dart:developer';

import 'package:borrow_app/services/storage/secure_storage.service.dart';
import 'package:borrow_app/views/chat/chat.model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:socket_io_client/socket_io_client.dart';

class WebSocketService {
  final SecureStorageService _storageService;
  late final Socket _socket;

  WebSocketService({required SecureStorageService service})
      : _storageService = service {
    _socket = io(
      dotenv.get("API_URL"),
      OptionBuilder().setTransports(['websocket']).build(),
    );
  }

  void connectSocket() {
    _socket.onConnect((data) => log("io client connected"));
    _socket.onConnectError((error) => log("$error"));
    _socket.onDisconnect((data) => log("$data"));
    _socket.connect();
  }

  Future<void> requestMessages({required String room}) async {
    _socket.emit("findMessages", room);
  }

  Future<void> sendMessage({
    required String room,
    required String message,
    required String recipientId,
  }) async {
    final String? senderId = await _storageService.read(key: "user-id");
    final messageDto = SendMessageDto(
      roomId: room,
      senderId: senderId!,
      recipientId: recipientId,
      content: message,
    );
    _socket.emit("createMessage", messageDto);
  }

  void on(String event, dynamic Function(dynamic) handler) {
    _socket.on(event, handler);
  }

  void disposeSocket() {
    _socket.dispose();
  }
}
