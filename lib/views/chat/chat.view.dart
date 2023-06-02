import 'package:borrow_app/widgets/various_components/chat_bubble.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatView extends ConsumerWidget {
  final String itemId;
  final String userId;

  const ChatView({super.key, required this.itemId, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      ChatBubble(isOwnMessage: true, message: "hallo"),
                      ChatBubble(isOwnMessage: false, message: "hallo"),
                      ChatBubble(
                        isOwnMessage: true,
                        message: "Was letzte Preis?",
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    color: const Color.fromRGBO(240, 240, 240, 1),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send_outlined),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract class ChatController extends StateNotifier<int> {
  ChatController(super.state);

  void sendMessage();
}
