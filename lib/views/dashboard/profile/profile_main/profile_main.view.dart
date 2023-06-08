import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/widgets/items/settings_item.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfileMain extends ConsumerWidget {
  final String groupId;

  const ProfileMain({super.key, required this.groupId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.read(providers.loginControllerProvider.notifier);
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingsItem(
                    iconData: Icons.groups,
                    text: AppLocalizations.of(context).manageGroup,
                    onTap: () {
                      context.pushNamed(
                        groupSettingsRoute.name,
                        pathParameters: {"groupId": groupId},
                      );
                    },
                  ),
                  SettingsItem(
                    iconData: Icons.person,
                    text: AppLocalizations.of(context).profileSettings,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          SettingsItem(
            iconColor: Colors.red,
            iconData: Icons.power_settings_new,
            onTap: authController.logout,
            text: AppLocalizations.of(context).logout,
          ),
        ],
      ),
    );
  }
}
