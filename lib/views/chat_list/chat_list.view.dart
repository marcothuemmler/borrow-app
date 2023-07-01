import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/chat_list/chat_list.model.dart";
import "package:borrow_app/widgets/cards/information_card.widget.dart";
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
    if (model.isLoading) {
      return Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context).messages)),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (model.hasError) {
      return Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context).messages)),
        body: Center(
          child: Text(AppLocalizations.of(context).unspecifiedError),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).messages)),
      body: SafeArea(
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
                      final String id = chatRoom.id;
                      return ChatListItem(
                        message: chatRoom.messages.first,
                        onTap: () => controller.navigateToChat(chatRoomId: id),
                      );
                    },
                  ),
                ),
              )
            else
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                    top: MediaQuery.of(context).size.height * 0.05,
                    right: 30,
                  ),
                  child: InformationCard(
                    message: AppLocalizations.of(context).emptyChatListMessage,
                  ),
                ),
              ),
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
