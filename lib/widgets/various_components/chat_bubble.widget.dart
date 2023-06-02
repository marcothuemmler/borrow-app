import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final bool isOwnMessage;
  final String message;

  const ChatBubble({
    super.key,
    required this.isOwnMessage,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isOwnMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: isOwnMessage
                ? const Color.fromRGBO(60, 120, 240, 1)
                : const Color.fromRGBO(240, 240, 240, 1),
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 2,
                offset: Offset(0, 1),
              )
            ],
          ),
          child: Text(
            message,
            style: TextStyle(
              color: isOwnMessage ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
