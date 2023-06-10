import 'package:borrow_app/services/api/websocket_service.dart';
import 'package:borrow_app/services/storage/secure_storage.service.dart';
import 'package:borrow_app/views/chat/chat.model.dart';
import 'package:borrow_app/views/chat/chat.view.dart';

class ChatControllerImplementation extends ChatController {
  final ChatControllerParameters _parameters;
  final WebSocketService _socketService;
  final SecureStorageService _storageService;

  ChatControllerImplementation({
    ChatModel? model,
    required ChatControllerParameters parameters,
    required WebSocketService socketService,
    required SecureStorageService storageService,
  })  : _parameters = parameters,
        _socketService = socketService,
        _storageService = storageService,
        super(
          model ??
              const ChatModel(
                isLoading: false,
                hasError: false,
                messages: [],
              ),
        ) {
    _init();
  }

  void _init() async {
    final String? myUserId = await _storageService.read(key: "user-id");
    _socketService.on("message", (json) => _loadMessage(json, myUserId));
    _socketService.on("messages", (json) => _loadMessages(json, myUserId));
    _socketService.connectSocket();
    final String? roomId = _parameters.item.ownerId != myUserId
        ? myUserId
        : _parameters.otherUserId;
    _socketService.requestMessages(
      room: "${_parameters.item.id}|${_parameters.item.ownerId}|$roomId",
    );
  }

  void _loadMessage(json, String? myUserId) {
    final message = _messageFromJson(json, myUserId);
    state = state.copyWith(messages: [...state.messages, message]);
  }

  void _loadMessages(data, String? myUserId) {
    final messages = List<MessageModel>.from(
      data.map((json) => _messageFromJson(json, myUserId)),
    );
    state = state.copyWith(messages: messages);
  }

  MessageModel _messageFromJson(json, String? myUserId) {
    final message = MessageModel.fromJson(json);
    return message.copyWith(isOwnMessage: message.sender.id == myUserId);
  }

  @override
  void sendMessage({required String message}) async {
    if (message.isNotEmpty) {
      final String? myUserId = await _storageService.read(key: "user-id");
      final String? roomId = _parameters.item.ownerId != myUserId
          ? myUserId
          : _parameters.otherUserId;
      await _socketService.sendMessage(
        room: "${_parameters.item.id}|${_parameters.item.ownerId}|$roomId",
        message: message,
        recipientId: _parameters.otherUserId,
      );
    }
  }
}
