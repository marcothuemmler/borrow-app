import "package:borrow_app/common/providers.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/authentication/login/login.view.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

class AppMenu extends ConsumerWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LoginController controller = ref.read(
      providers.loginControllerProvider.notifier,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: PopupMenuButton<ListTile>(
        padding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        icon: const Icon(Icons.menu),
        itemBuilder: (BuildContext context) => <PopupMenuItem<ListTile>>[
          PopupMenuItem<ListTile>(
            onTap: () => context.pushNamed(chatListRoute.name),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5),
              minLeadingWidth: 8,
              leading: const Icon(Icons.notifications_rounded),
              title: Text(AppLocalizations.of(context).messages),
            ),
          ),
          PopupMenuItem<ListTile>(
            onTap: () => context.pushNamed(profileRoute.name),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5),
              minLeadingWidth: 8,
              leading: const Icon(Icons.settings),
              title: Text(AppLocalizations.of(context).preferences),
            ),
          ),
          PopupMenuItem<ListTile>(
            height: 1,
            child: Container(
              height: 1,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          PopupMenuItem<ListTile>(
            onTap: controller.logout,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5),
              minLeadingWidth: 8,
              leading: const Icon(Icons.logout, color: Colors.red),
              title: Text(AppLocalizations.of(context).logout),
            ),
          ),
        ],
      ),
    );
  }
}
