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
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(60, 120, 240, 1),
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: const Text(
                          "hallo",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(240, 240, 240, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: const Text("hallo"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(60, 120, 240, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: const Text(
                          "Was letzte Preis",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  color: const Color.fromRGBO(220, 220, 220, 1),
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
    );
  }
}

abstract class ChatController extends StateNotifier<int> {
  ChatController(super.state);

  void sendMessage();
}
