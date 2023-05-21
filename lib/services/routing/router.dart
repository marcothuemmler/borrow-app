import "package:borrow_app/common/providers.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/authentication/login/login.view.dart";
import "package:borrow_app/views/authentication/signup/signup.view.dart";
import "package:borrow_app/views/dashboard/dashboard_wrapper.view.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.view.dart";
import "package:borrow_app/views/home/home.view.dart";
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
      final storageService = ref.watch(providers.secureStorageServiceProvider);
      final isLoggedIn = await storageService.containsKey(key: "refreshToken");
      final isLoginIn = RegExp(r"^/(login|signup)").hasMatch(state.location);
      if (!isLoggedIn && !isLoginIn) {
        return homeRoute.path;
      }
      // if (isLoggedIn && isLoginIn) {
      //   return "/${groupsRoute.path}";
      // }
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
            parentNavigatorKey: _rootNavigatorKey,
            name: loginRoute.name,
            path: loginRoute.path,
            pageBuilder: (context, state) => const MaterialPage(child: LoginView()),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: signupRoute.name,
            path: signupRoute.path,
            pageBuilder: (context, state) => const MaterialPage(child: SignupView()),
          ),
          // TODO: group selection screen
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: groupsRoute.name,
            path: groupsRoute.path,
            pageBuilder: (context, state) => MaterialPage(child: Container()),
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
                parentNavigatorKey: _shellNavigatorKey,
                name: groupRoute.name,
                path: groupRoute.path,
                builder: (context, state) {
                  final String groupId = state.pathParameters['groupId']!;
                  return ItemListView(groupId: groupId);
                },
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    name: itemRoute.name,
                    path: itemRoute.path,
                    builder: (context, state) {
                      return Container();
                    },
                  )
                ],
              ),
              GoRoute(
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
