import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/dashboard/profile/group_settings/group_settings.model.dart";
import "package:borrow_app/widgets/dialogs/leave_group_bottom_sheet.dialog.dart";
import "package:borrow_app/widgets/items/settings_item.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

class GroupSettingsView extends StatelessWidget {
  final String _groupId;

  const GroupSettingsView({super.key, required String groupId})
      : _groupId = groupId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            SettingsItem(
              iconData: Icons.category_rounded,
              text: AppLocalizations.of(context).categories,
              onTap: () {
                context.pushNamed(
                  categorySettingsRoute.name,
                  pathParameters: <String, String>{"groupId": _groupId},
                );
              },
            ),
            SettingsItem(
              iconData: Icons.emoji_objects,
              text: AppLocalizations.of(context).items,
              onTap: () => context.pushNamed(
                profileItemListRoute.name,
                pathParameters: <String, String>{"groupId": _groupId},
              ),
            ),
            SettingsItem(
              iconData: Icons.account_balance_wallet,
              text: AppLocalizations.of(context).balance,
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context).comingSoon),
                ),
              ),
            ),
            SettingsItem(
              iconData: Icons.logout,
              iconColor: Colors.red,
              text: AppLocalizations.of(context).leaveGroup,
              onTap: () => showModalBottomSheet<void>(
                isScrollControlled: true,
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                ),
                builder: (BuildContext context) => LeaveGroupBottomSheet(
                  groupId: _groupId,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

abstract class GroupSettingsController
    extends StateNotifier<GroupSettingsModel> {
  GroupSettingsController(super.state);

  Future<bool> leaveGroup();
}
