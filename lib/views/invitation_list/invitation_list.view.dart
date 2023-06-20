import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/invitation_list/invitation_list.model.dart";
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
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).invitations)),
      body: SafeArea(
        child: Column(
          children: <Expanded>[
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: model.invitations.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final InvitationListInvitationModel invitation =
                      model.invitations.elementAt(index);
                  return Text(invitation.id);
                },
              ),
            ),
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
