import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/chat/chat.model.dart';
import 'package:borrow_app/widgets/various_components/chat_bubble.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatView extends ConsumerWidget {
  final String itemId;
  final String userId;
  final _textController = TextEditingController();
  final _scrollController = ScrollController();

  ChatView({
    super.key,
    required this.itemId,
    required this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.read(providers.chatControllerProvider(userId).notifier);
    final model = ref.watch(providers.chatControllerProvider(userId));
    WidgetsBinding.instance.addPostFrameCallback(_scrollDown);
    return Scaffold(
      appBar: AppBar(title: const Text("Title")),
      body: ColoredBox(
        color: const Color.fromRGBO(240, 240, 240, 1),
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.bottomCenter,
            children: [
              ColoredBox(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ...model.messages.map((message) {
                              return ChatBubble(
                                isOwnMessage: message.isOwnMessage,
                                content: message.content,
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      color: const Color.fromRGBO(240, 240, 240, 1),
                      child: Row(
                        children: [
                          Flexible(
                            child: TextField(
                              autofocus: true,
                              keyboardType: TextInputType.multiline,
                              controller: _textController,
                              maxLines: null,
                              decoration: const InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                              controller.sendMessage(
                                message: _textController.text.trim(),
                              );
                              _textController.clear();
                            },
                            icon: const Icon(Icons.send_outlined),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _scrollDown(Duration timeStamp) {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 150),
      curve: Curves.bounceInOut,
    );
  }
}

abstract class ChatController extends StateNotifier<ChatModel> {
  ChatController(super.state);

  void sendMessage({required String message});
}
