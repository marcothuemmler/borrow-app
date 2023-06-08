import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/dashboard/dashboard.model.dart";
import "package:borrow_app/views/dashboard/dashboard_wrapper.view.dart";
import "package:go_router/go_router.dart";

class DashboardControllerImplementation extends DashboardController {
  final GoRouter _router;
  final String _groupId;

  DashboardControllerImplementation({
    DashboardModel? model,
    required GoRouter router,
    required String groupId,
  })  : _router = router,
        _groupId = groupId,
        super(model ?? DashboardModel(currentIndex: 0));

  @override
  void setCurrentIndex(int index) {
    _setCurrentIndex(index: index, pushNewRoute: true);
  }

  void _setCurrentIndex({required int index, required bool pushNewRoute}) {
    if (index == state.currentIndex) {
      return;
    }
    final newRoute = index == 0 ? groupRoute.name : profileRoute.name;
    state = state.copyWith(currentIndex: index);
    if (pushNewRoute) {
      _router.pushNamed(newRoute, pathParameters: {"groupId": _groupId});
    }
  }

  @override
  void goBack() {
    if (_router.location.contains(profileRoute.path)) {
      _setCurrentIndex(index: 0, pushNewRoute: false);
    }
    _router.pop();
  }
}
