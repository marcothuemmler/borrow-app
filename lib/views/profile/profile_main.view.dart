import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/widgets/cards/settings_card.widget.dart';
import 'package:borrow_app/widgets/list_views/list_view.widget.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListViewWidget(
              itemList: [
                SettingsCardView(
                  text: AppLocalizations.of(context).manageGroup,
                  onTap: () {
                    context.goNamed(
                      groupSettingsRoute.name,
                      pathParameters: {"groupId": groupId},
                    );
                  },
                ),
                SettingsCardView(
                  text: AppLocalizations.of(context).profileSettings,
                  onTap: () {},
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: authController.logout,
                child: Text(AppLocalizations.of(context).logout),
              ),
            )
          ],
        ),
      ),
    );
  }
}
