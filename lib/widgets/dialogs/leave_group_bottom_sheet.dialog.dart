import "package:borrow_app/common/providers.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/dashboard/profile/group_settings/group_settings.model.dart";
import "package:borrow_app/views/dashboard/profile/group_settings/group_settings.view.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

class LeaveGroupBottomSheet extends ConsumerWidget {
  const LeaveGroupBottomSheet({super.key, required String groupId})
      : _groupId = groupId;

  final String _groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GroupSettingsController controller = ref.read(
      providers.groupSettingsControllerProvider(_groupId).notifier,
    );
    final GroupSettingsModel model = ref.watch(
      providers.groupSettingsControllerProvider(_groupId),
    );
    if (model.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return SafeArea(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "${AppLocalizations.of(context).leaveGroup}?",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                AppLocalizations.of(context).leaveGroupWarning,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () async {
                  final bool success = await controller.leaveGroup();
                  if (success && controller.mounted) {
                    if (ref.exists(
                      providers.groupSelectionControllerProvider,
                    )) {
                      // ignore: unused_result
                      ref.refresh(providers.groupSelectionControllerProvider);
                    }
                    context.goNamed(groupSelectionRoute.name);
                  }
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                child: Text(AppLocalizations.of(context).leaveGroup),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
