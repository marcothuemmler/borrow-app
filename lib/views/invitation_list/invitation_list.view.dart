import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/invitation_list/invitation_list.model.dart";
import "package:borrow_app/widgets/cards/information_card.widget.dart";
import "package:borrow_app/widgets/items/invitation_list_item.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class InvitationListView extends ConsumerWidget {
  const InvitationListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final InvitationListController controller = ref.read(
      providers.invitationListControllerProvider.notifier,
    );
    final InvitationListModel model = ref.watch(
      providers.invitationListControllerProvider,
    );
    if (model.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).invitations,
          ),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (model.hasError) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).invitations,
          ),
        ),
        body: Center(
          child: Text(AppLocalizations.of(context).unspecifiedError),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).invitations)),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            if (model.groupInvitations.isNotEmpty)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: model.groupInvitations.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final InvitationListInvitationModel groupInvitation =
                          model.groupInvitations.elementAt(index);
                      final String id = groupInvitation.id;
                      return InvitationListItem(
                        groupName: groupInvitation.name,
                        onTapJoin: () => controller.joinGroup(groupId: id),
                        onTapDelete: () => controller.deleteGroupInvitation(
                          groupId: id,
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
                    left: 30,
                    top: MediaQuery.of(context).size.height * 0.05,
                    right: 30,
                  ),
                  child: InformationCard(
                    message:
                        AppLocalizations.of(context).emptyInvitationsMessage,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

abstract class InvitationListController
    extends StateNotifier<InvitationListModel> {
  InvitationListController(super.state);

  void joinGroup({required String groupId});

  void deleteGroupInvitation({required String groupId});
}
