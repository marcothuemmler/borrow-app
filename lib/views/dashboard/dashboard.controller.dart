import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/dashboard/dashboard.model.dart";
import "package:borrow_app/views/dashboard/dashboard_wrapper.view.dart";
import "package:go_router/go_router.dart";

class DashboardControllerImplementation extends DashboardController {
  final GoRouter _router;

  DashboardControllerImplementation({
    DashboardModel? model,
    required GoRouter router,
  })  : _router = router,
        super(
          model ??
              DashboardModel(
                currentIndex: 0,
                currentTitle: "Browse",
                selectedCategory: null,
              ),
        );

  @override
  void setCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
    if (state.currentIndex == 0) {
      state = state.copyWith(currentTitle: "Browse");
      _router.goNamed(groupRoute.name);
    }
    if (state.currentIndex == 1) {
      state = state.copyWith(currentTitle: "Profile");
      _router.pushNamed(profileRoute.name);
    }
  }

  @override
  void setCategory(String? category) {
    state = state.copyWith(selectedCategory: category);
  }
}
