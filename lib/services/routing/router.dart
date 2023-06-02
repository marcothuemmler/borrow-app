import "package:borrow_app/common/providers.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/authentication/login/login.view.dart";
import "package:borrow_app/views/authentication/signup/signup.view.dart";
import "package:borrow_app/views/chat/chat.view.dart";
import "package:borrow_app/views/dashboard/dashboard_wrapper.view.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.view.dart";
import "package:borrow_app/views/group_selection/group_selection.view.dart";
import "package:borrow_app/views/home/home.view.dart";
import "package:borrow_app/views/item_detail/item_detail.view.dart";
import "package:borrow_app/views/welcome/welcome.view.dart";
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
  final storageService = ref.read(providers.secureStorageServiceProvider);
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    refreshListenable: storageService,
    redirect: (context, state) async {
      final isLoggedIn = await storageService.containsKey(key: "refreshToken");
      final isLoginIn = state.matchedLocation == "/login";
      final isSigningUp = state.matchedLocation == "/signup";
      final signedUp = state.matchedLocation == "/welcome";
      if (isSigningUp || signedUp) {
        return null;
      }
      if (!isLoggedIn && !isLoginIn) {
        return state.namedLocation(homeRoute.name);
      }
      if (!isLoggedIn && isLoginIn) {
        return state.namedLocation(loginRoute.name);
      }
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
            parentNavigatorKey: _rootNavigatorKey,
            name: loginRoute.name,
            path: loginRoute.path,
            pageBuilder: (context, state) =>
                const MaterialPage(child: LoginView()),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: signupRoute.name,
            path: signupRoute.path,
            pageBuilder: (context, state) =>
                const MaterialPage(child: SignupView()),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: welcomeRoute.name,
            path: welcomeRoute.path,
            builder: (context, state) => const WelcomeView(),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: groupSelectionRoute.name,
            path: groupSelectionRoute.path,
            pageBuilder: (context, state) => const MaterialPage(
              child: GroupSelectionView(),
            ),
            routes: [
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
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: chatRoute.name,
            path: chatRoute.path,
            pageBuilder: (context, state) {
              final String? userId = state.pathParameters['userId'];
              final String? itemId = state.queryParameters['itemId'];
              if (userId is! String || itemId is! String) {
                return _errorPage(state: state, error: "No ID provided");
              }
              return MaterialPage(
                child: ChatView(
                  itemId: itemId,
                  userId: userId,
                ),
              );
            },
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: itemDetailRoute.name,
            path: itemDetailRoute.path,
            pageBuilder: (context, state) {
              final String? itemId = state.pathParameters['itemId'];
              if (itemId is! String) {
                return _errorPage(
                  state: state,
                  error: "No ID provided",
                );
              }
              return CustomTransitionPage(
                barrierColor: Colors.black26,
                child: ItemDetailView(itemId: itemId),
                transitionsBuilder: (
                  BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child,
                ) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
              );
            },
          )
        ],
      ),
    ],
    errorPageBuilder: (context, state) => _errorPage(
      state: state,
      error: state.error.toString(),
    ),
  );
});
