import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/chat_list/chat_list.model.dart';
import 'package:borrow_app/widgets/items/chat_list_item.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatListView extends ConsumerWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(providers.chatListControllerProvider.notifier);
    final model = ref.watch(providers.chatListControllerProvider);
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).messages)),
      body: model.isLoading
          ? const Center(child: CircularProgressIndicator())
          : model.hasError
              ? Center(
                  child: Text(AppLocalizations.of(context).unspecifiedError),
                )
              : SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        ...model.chats.map(
                          (chatRoom) {
                            final message = chatRoom.messages.elementAt(0);
                            return ChatListItem(
                              message: message,
                              onTap: () => controller.navigateToChat(
                                chatRoomId: chatRoom.id,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
    );
  }
}

abstract class ChatListController extends StateNotifier<ChatListModel> {
  ChatListController(super.state);

  void navigateToChat({required String chatRoomId});
}
