import 'package:borrow_app/views/chat/chat.view.dart';
import 'package:borrow_app/widgets/various_components/chat_bubble.widget.dart';

class ChatControllerImplementation extends ChatController {
  final String userId;

  // TODO: proper model
  ChatControllerImplementation({List<ChatBubble>? model, required this.userId})
      : super(
          model ??
              [
                const ChatBubble(isOwnMessage: false, message: "hallo"),
              ],
        );

  @override
  void sendMessage({required String message}) {
    // TODO: backend call
    if (message.isNotEmpty) {
      state = [...state, ChatBubble(isOwnMessage: true, message: message)];
    }
  }
}
