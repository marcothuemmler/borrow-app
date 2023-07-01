import "package:borrow_app/views/chat_list/chat_list.model.dart";
import "package:borrow_app/widgets/various_components/app_circle_avatar.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:intl/intl.dart";

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    super.key,
    required ChatRoomMessageModel message,
    required void Function() onTap,
  })  : _message = message,
        _onTap = onTap;

  final ChatRoomMessageModel _message;
  final void Function() _onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: ListTile(
          leading: AppCircleAvatar(
            imageUrl: _message.sender.imageUrl,
            radius: 19,
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "@${_message.sender.username}",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      _message.content,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Text(
                DateFormat(
                  "E H:mm",
                  AppLocalizations.of(context).localeName,
                ).format(_message.createdAt.toLocal()),
                style: const TextStyle(color: Colors.black54, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
