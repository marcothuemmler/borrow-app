import "package:borrow_app/services/api/websocket_service.dart";
import "package:borrow_app/services/storage/secure_storage.service.dart";
import "package:borrow_app/views/chat/chat.model.dart";
import "package:borrow_app/views/chat/chat.view.dart";

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
                messages: <MessageModel>[],
                userId: null,
              ),
        ) {
    _init();
  }

  void _init() async {
    state = state.copyWith(userId: await _storageService.read(key: "user-id"));
    _socketService.onMessage(_loadMessage);
    _socketService.onMessages(_loadMessages);
    _socketService.connectSocket();
    final String? roomId = _parameters.item.ownerId != state.userId
        ? state.userId
        : _parameters.otherUserId;
    _socketService.requestMessages(
      room: "${_parameters.item.id}|${_parameters.item.ownerId}|$roomId",
    );
  }

  void _loadMessage(dynamic json) async {
    state = state.copyWith(
      messages: <MessageModel>[...state.messages, await _messageFromJson(json)],
    );
  }

  void _loadMessages(dynamic data) async {
    final List<MessageModel> messages = await Future.wait(
      List<Future<MessageModel>>.from(data.map(_messageFromJson)),
    );
    state = state.copyWith(messages: messages);
  }

  Future<MessageModel> _messageFromJson(dynamic json) async {
    final MessageModel message = MessageModel.fromJson(json);
    return message.copyWith(isOwnMessage: message.sender.id == state.userId);
  }

  @override
  void sendMessage({required String message}) async {
    if (message.isNotEmpty) {
      final String? roomId = _parameters.item.ownerId != state.userId
          ? state.userId
          : _parameters.otherUserId;
      await _socketService.sendMessage(
        room: "${_parameters.item.id}|${_parameters.item.ownerId}|$roomId",
        message: message,
        senderId: state.userId,
        recipientId: _parameters.otherUserId,
      );
    }
  }
}
