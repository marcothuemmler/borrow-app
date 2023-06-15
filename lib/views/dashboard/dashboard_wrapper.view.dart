import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/dashboard.model.dart";
import "package:borrow_app/widgets/dialogs/item_filter_bottom_sheet.dialog.dart";
import "package:borrow_app/widgets/menus/app_menu.widget.dart";
import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

class DashboardWrapperView extends ConsumerWidget {
  final Widget child;
  final String groupId;

  const DashboardWrapperView({
    super.key,
    required this.child,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(
      providers.dashboardControllerProvider(groupId).notifier,
    );
    final model = ref.watch(providers.dashboardControllerProvider(groupId));
    final location = GoRouter.of(context).location.toLowerCase();
    return Scaffold(
      appBar: AppBar(
        leading: location.contains("settings")
            ? BackButton(onPressed: controller.goBack)
            : null,
        title: Text(
          model.currentIndex == 0
              ? AppLocalizations.of(context).browse
              : AppLocalizations.of(context).groupSettings,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          if (model.currentIndex == 0)
            IconButton(
              onPressed: () => showModalBottomSheet(
                enableDrag: true,
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.8,
                ),
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                context: context,
                builder: (context) => ItemFilterBottomSheet(groupId: groupId),
              ),
              icon: const Icon(Icons.filter_alt_sharp),
            ),
          const AppMenu(),
        ],
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.setCurrentIndex,
        currentIndex: model.currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
    );
  }
}

abstract class DashboardController extends StateNotifier<DashboardModel> {
  DashboardController(super.model);

  void setCurrentIndex(int index);

  void goBack();
}
