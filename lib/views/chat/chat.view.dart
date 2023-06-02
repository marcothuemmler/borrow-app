import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/widgets/various_components/chat_bubble.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatView extends ConsumerWidget {
  final String itemId;
  final String userId;
  final textController = TextEditingController();

  ChatView({super.key, required this.itemId, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.read(providers.chatControllerProvider(userId).notifier);
    final model = ref.watch(providers.chatControllerProvider(userId));
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
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 15,
                          right: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: model,
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
                              controller: textController,
                              minLines: 1,
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
                                message: textController.text,
                              );
                              textController.clear();
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
}

abstract class ChatController extends StateNotifier<List<ChatBubble>> {
  ChatController(super.state);

  void sendMessage({required String message});
}
