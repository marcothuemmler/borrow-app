import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/dashboard/dashboard.model.dart";
import "package:borrow_app/widgets/cards/item_card.widget.dart";
import "package:borrow_app/widgets/dropdowns/dropdown.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class DashboardWrapperView extends ConsumerStatefulWidget {
  final Widget child;

  const DashboardWrapperView({
    super.key,
    required this.child,
  });

  @override
  ConsumerState<DashboardWrapperView> createState() => _DashboardWrapperViewState();
}

class _DashboardWrapperViewState extends ConsumerState<DashboardWrapperView> {
  @override
  Widget build(BuildContext context) {
    final DashboardController controller = ref.read(providers.dashboardControllerProvider.notifier);
    final DashboardModel model = ref.watch(providers.dashboardControllerProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(model.currentTitle ?? ""),
            if (model.currentIndex == 0)
              DropdownWidget<String?>(
                hint: const Text("Category"),
                items: model.categories,
                onChanged: controller.setCategory,
                value: model.selectedCategory,
                mapFunction: (item) => DropdownMenuItem(
                  value: item,
                  child: Text(item!),
                ),
              )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 25), child: Text("Items:")),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const ItemCard();
                },
              ),
            ),
          ],
        ),
      ),
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

  void setCategory(String? category);
}
