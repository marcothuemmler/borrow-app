import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/chat_list/chat_list.model.dart";
import "package:borrow_app/widgets/items/chat_list_item.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class ChatListView extends ConsumerWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ChatListController controller = ref.read(
      providers.chatListControllerProvider.notifier,
    );
    final ChatListModel model = ref.watch(providers.chatListControllerProvider);
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).messages)),
      body: model.isLoading
          ? const Center(child: CircularProgressIndicator())
          : model.hasError
              ? Center(
                  child: Text(AppLocalizations.of(context).unspecifiedError),
                )
              : SafeArea(
                  child: Column(
                    children: <Widget>[
                      if (model.chats.isNotEmpty)
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: model.chats.length,
                              itemBuilder: (BuildContext context, int index) {
                                final ChatRoomModel chatRoom =
                                    model.chats.elementAt(index);
                                return ChatListItem(
                                  message: chatRoom.messages.first,
                                  onTap: () => controller.navigateToChat(
                                    chatRoomId: chatRoom.id,
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      else
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.1,
                            ),
                            child: Text(
                              AppLocalizations.of(context).emptyChatListMessage,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
    );
  }
}

abstract class ChatListController extends StateNotifier<ChatListModel> {
  ChatListController(super.state);

  void navigateToChat({required String chatRoomId});
}