import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/dashboard.model.dart";
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
    final DashboardController controller = ref.read(
      providers.dashboardControllerProvider(widget.groupId).notifier,
    );
    final DashboardModel model = ref.watch(
      providers.dashboardControllerProvider(widget.groupId),
    );
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(model.currentTitle ?? ""),
            if (model.currentIndex == 0)
              DropdownWidget<String>(
                hint: const Text("Category"),
                items: model.categories,
                onChanged: controller.setCategoryFilter,
                value: model.selectedCategory,
                mapFunction: (item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ),
              )
          ],
        ),
      ),
      body: widget.child,
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
  DashboardController(DashboardModel model) : super(model);

  void setCurrentIndex(int index);

  void setCategoryFilter(String? category);
}
