import 'package:borrow_app/views/chat/chat.model.dart';
import 'package:borrow_app/views/chat/chat.service.dart';
import 'package:borrow_app/views/chat/chat.view.dart';

class ChatControllerImplementation extends ChatController {
  final String _userId;
  final ChatService _chatService;

  ChatControllerImplementation({
    ChatModel? model,
    required String userId,
    required ChatService chatService,
  })  : _userId = userId,
        _chatService = chatService,
        super(
          model ??
              ChatModel(
                isLoading: false,
                hasError: false,
                messages: List<MessageModel>.empty(),
              ),
        ) {
    _init();
  }

  void _init() {
    _loadMessages();
  }

  void _loadMessages() async {
    try {
      state = state.copyWith(isLoading: true, hasError: false);
      final List<MessageModel> messages =
          await _chatService.loadMessages(userId: _userId);
      state = state.copyWith(messages: messages, isLoading: false);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void sendMessage({required String message}) async {
    if (message.isNotEmpty) {
      final sentMessage = await _chatService.sendMessage(
        message: message,
        recipientId: _userId,
      );
      state = state.copyWith(
        messages: [...state.messages, sentMessage],
      );
    }
  }
}
