import "package:borrow_app/common/providers.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/authentication/login/login.view.dart";
import "package:borrow_app/views/authentication/signup/signup.view.dart";
import "package:borrow_app/views/dashboard/dashboard_wrapper.view.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.view.dart";
import "package:borrow_app/views/group_selection/group_selection.view.dart";
import "package:borrow_app/views/home/home.view.dart";
import "package:borrow_app/views/item_detail/item_detail.view.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

MaterialPage _errorPage({
  required GoRouterState state,
  required String error,
}) {
  return MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(child: Text(error)),
    ),
  );
}

final routerProviderDef = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) async {
      final secureStorage = ref.watch(providers.secureStorageProvider);
      final isLoggedIn = await secureStorage.containsKey(key: "refreshToken");
      final isLoginIn = RegExp(r"^/(login)*$").hasMatch(state.location);
      if (isLoggedIn && isLoginIn) {
        return state.namedLocation(groupSelectionRoute.name);
      }
      return null;
    },
    routes: [
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: homeRoute.name,
        path: homeRoute.path,
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeView(),
        ),
        routes: [
          GoRoute(
            redirect: (context, state) => _redirect(
              context: context,
              state: state,
              ref: ref,
              location: loginRoute.name,
            ),
            parentNavigatorKey: _rootNavigatorKey,
            name: loginRoute.name,
            path: loginRoute.path,
            pageBuilder: (context, state) => const MaterialPage(child: LoginView()),
          ),
          GoRoute(
            redirect: (context, state) => _redirect(
              context: context,
              state: state,
              ref: ref,
              location: signupRoute.name,
            ),
            parentNavigatorKey: _rootNavigatorKey,
            name: signupRoute.name,
            path: signupRoute.path,
            pageBuilder: (context, state) => const MaterialPage(child: SignupView()),
          ),
          GoRoute(
            redirect: (context, state) => _redirect(context: context, state: state, ref: ref),
            parentNavigatorKey: _rootNavigatorKey,
            name: groupSelectionRoute.name,
            path: groupSelectionRoute.path,
            pageBuilder: (context, state) => const MaterialPage(child: GroupSelectionView()),
          ),
          // TODO: Possibly replace with TabBarView
          ShellRoute(
            navigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state, child) {
              final String? groupId = state.pathParameters['groupId'];
              if (groupId is! String) {
                return _errorPage(state: state, error: "No ID provided");
              }
              return MaterialPage(
                child: DashboardWrapperView(groupId: groupId, child: child),
              );
            },
            routes: [
              GoRoute(
                redirect: (context, state) => _redirect(context: context, state: state, ref: ref),
                parentNavigatorKey: _shellNavigatorKey,
                name: groupRoute.name,
                path: groupRoute.path,
                builder: (context, state) {
                  final String groupId = state.pathParameters['groupId']!;
                  return ItemListView(groupId: groupId);
                },
                routes: [
                  GoRoute(
                    redirect: (context, state) => _redirect(context: context, state: state, ref: ref),
                    parentNavigatorKey: _rootNavigatorKey,
                    name: itemDetailRoute.name,
                    path: itemDetailRoute.path,
                    pageBuilder: (context, state) {
                      final String itemId = state.pathParameters['itemId']!;
                      return CustomTransitionPage(
                        barrierColor: Colors.black26,
                        child: ItemDetailView(itemId: itemId),
                        transitionsBuilder: (
                          BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child,
                        ) {
                          return ScaleTransition(scale: animation, child: child);
                        },
                      );
                    },
                  )
                ],
              ),
              GoRoute(
                redirect: (context, state) => _redirect(context: context, state: state, ref: ref),
                parentNavigatorKey: _shellNavigatorKey,
                name: profileRoute.name,
                path: profileRoute.path,
                builder: (context, state) => Container(),
              )
            ],
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => _errorPage(
      state: state,
      error: state.error.toString(),
    ),
  );
});

Future<String?> _redirect({
  required BuildContext context,
  required GoRouterState state,
  required ProviderRef ref,
  String? location,
}) async {
  final returnLocation = location ?? homeRoute.name;
  final secureStorage = ref.watch(providers.secureStorageProvider);
  final isLoggedIn = await secureStorage.containsKey(key: "refreshToken");
  return isLoggedIn ? null : state.namedLocation(returnLocation);
}
