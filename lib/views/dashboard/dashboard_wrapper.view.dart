import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/dashboard.model.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/widgets/dropdowns/dropdown.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class DashboardWrapperView extends ConsumerStatefulWidget {
  final Widget child;
  final String groupId;

  const DashboardWrapperView({
    super.key,
    required this.child,
    required this.groupId,
  });

  @override
  ConsumerState<DashboardWrapperView> createState() => _DashboardWrapperViewState();
}

class _DashboardWrapperViewState extends ConsumerState<DashboardWrapperView> {
  @override
  Widget build(BuildContext context) {
    final dashboardController = ref.read(
      providers.dashboardControllerProvider(widget.groupId).notifier,
    );
    final groupController = ref.read(
      providers.itemListControllerProvider(widget.groupId).notifier,
    );
    final dashboardModel = ref.watch(providers.dashboardControllerProvider(widget.groupId));
    final groupModel = ref.watch(providers.itemListControllerProvider(widget.groupId));
    final categories = groupModel.group.toNullable()?.categories ?? [];
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(dashboardModel.currentTitle ?? ""),
            if (dashboardModel.currentIndex == 0)
              DropdownWidget<CategoryModel>(
                hint: const Text("Category"),
                items: categories,
                onChanged: groupController.selectCategory,
                value: groupModel.selectedCategory,
                mapFunction: (item) => DropdownMenuItem(
                  value: item,
                  child: Text(item.name),
                ),
              )
          ],
        ),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: dashboardController.setCurrentIndex,
        currentIndex: dashboardModel.currentIndex,
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
  DashboardController(DashboardModel model) : super(model);

  void setCurrentIndex(int index);
}
