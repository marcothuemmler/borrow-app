import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/chat/chat.model.dart";
import "package:borrow_app/widgets/various_components/chat_bubble.widget.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class ChatView extends ConsumerWidget {
  final ChatControllerParameters _chatParameters;
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  ChatView({
    super.key,
    required String itemId,
    required String ownerId,
    required String otherUserId,
  }) : _chatParameters = ChatControllerParameters(
          item: MessageItemModel(id: itemId, ownerId: ownerId),
          otherUserId: otherUserId,
        );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ChatController controller = ref.read(
      providers.chatControllerProvider(_chatParameters).notifier,
    );
    final ChatModel model = ref.watch(
      providers.chatControllerProvider(_chatParameters),
    );
    WidgetsBinding.instance.addPostFrameCallback(_scrollDown);
    return Scaffold(
      appBar: AppBar(title: const Text("Title")),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SafeArea(
              bottom: false,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                controller: _scrollController,
                itemCount: model.messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return ChatBubble(
                    message: model.messages.elementAt(index),
                  );
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey6,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.black.withOpacity(0.16),
                )
              ],
            ),
            child: SafeArea(
              child: Row(
                children: <Widget>[
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
                    icon: const Icon(Icons.send),
                  )
                ],
              ),
            ),
          ),
        ],
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
