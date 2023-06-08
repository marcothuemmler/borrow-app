import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/widgets/items/settings_item.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class GroupSettingsView extends StatelessWidget {
  final String groupId;

  const GroupSettingsView({super.key, required this.groupId});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SettingsItem(
            iconData: Icons.category_rounded,
            text: AppLocalizations.of(context).categories,
            onTap: () {
              context.pushNamed(
                categorySettingsRoute.name,
                pathParameters: {"groupId": groupId},
              );
            },
          ),
          SettingsItem(
            iconData: Icons.emoji_objects,
            text: AppLocalizations.of(context).items,
            onTap: () {},
          ),
          SettingsItem(
            iconData: Icons.account_balance_wallet,
            text: AppLocalizations.of(context).balance,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
