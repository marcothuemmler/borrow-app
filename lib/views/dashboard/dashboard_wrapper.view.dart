import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/dashboard.model.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/widgets/dropdowns/dropdown.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

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
    final dashboardController = ref.read(
      providers.dashboardControllerProvider(groupId).notifier,
    );
    final groupController = ref.read(
      providers.itemListControllerProvider(groupId).notifier,
    );
    final dashboardModel = ref.watch(
      providers.dashboardControllerProvider(groupId),
    );
    final groupModel = ref.watch(
      providers.itemListControllerProvider(groupId),
    );
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
                items: [
                  ...?groupModel.group?.categories,
                  CategoryModel(name: "All"),
                ],
                onChanged: groupController.selectCategory,
                value: groupModel.selectedCategory,
                mapFunction: (category) => DropdownMenuItem(
                  value: category,
                  child: Text(category.name),
                ),
              )
          ],
        ),
      ),
      body: child,
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
