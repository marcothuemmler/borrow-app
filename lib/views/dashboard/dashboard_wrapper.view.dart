import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/dashboard.model.dart";
import "package:borrow_app/widgets/dialogs/item_filter_bottom_sheet.dialog.dart";
import "package:borrow_app/widgets/menus/app_menu.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class DashboardWrapperView extends ConsumerWidget {
  final Widget _child;
  final String _groupId;

  const DashboardWrapperView({
    super.key,
    required Widget child,
    required String groupId,
  })  : _groupId = groupId,
        _child = child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DashboardController controller = ref.read(
      providers.dashboardControllerProvider(_groupId).notifier,
    );
    final DashboardModel model =
        ref.watch(providers.dashboardControllerProvider(_groupId));
    return Scaffold(
      appBar: AppBar(
        leading: model.currentIndex == 1
            ? BackButton(onPressed: controller.goBack)
            : null,
        title: Text(
          model.currentIndex == 0
              ? AppLocalizations.of(context).browse
              : AppLocalizations.of(context).groupSettings,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        actions: <Widget>[
          if (model.currentIndex == 0)
            IconButton(
              onPressed: () => showModalBottomSheet<void>(
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
                builder: (BuildContext context) => ItemFilterBottomSheet(
                  groupId: _groupId,
                ),
              ),
              icon: const Icon(Icons.filter_alt_sharp),
            ),
          const AppMenu(),
        ],
      ),
      body: _child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.setCurrentIndex,
        currentIndex: model.currentIndex,
        items: const <BottomNavigationBarItem>[
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
