import "package:borrow_app/views/chat/chat.model.dart";
import "package:flutter/material.dart";

class ChatBubble extends StatelessWidget {
  final MessageModel _message;

  const ChatBubble({super.key, required MessageModel message})
      : _message = message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: _message.isOwnMessage
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: _message.isOwnMessage
                  ? const Color.fromRGBO(60, 120, 240, 1)
                  : const Color.fromRGBO(240, 240, 240, 1),
              borderRadius: const BorderRadius.all(Radius.circular(13)),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 2,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  child: Text(
                    _message.content,
                    style: TextStyle(
                      color:
                          _message.isOwnMessage ? Colors.white : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
