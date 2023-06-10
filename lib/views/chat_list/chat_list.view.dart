import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/chat_list/chat_list.model.dart';
import 'package:flutter/cupertino.dart';
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
                          (chatRoom) => Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 19,
                                        backgroundColor:
                                            CupertinoColors.systemGrey5,
                                        child: Icon(
                                          Icons.person,
                                          color: CupertinoColors.systemGrey,
                                        ),
                                      ),
                                      title: Text(
                                        "tap me",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  onTap: () => controller.navigateToChat(
                                    chatRoomId: chatRoom.id,
                                  ),
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

abstract class ChatListController extends StateNotifier<ChatListModel> {
  ChatListController(super.state);

  void navigateToChat({required String chatRoomId});
}
