import "package:borrow_app/common/providers.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/services/storage/secure_storage.service.dart";
import "package:borrow_app/views/authentication/login/login.view.dart";
import "package:borrow_app/views/authentication/signup/signup.view.dart";
import "package:borrow_app/views/chat/chat.view.dart";
import "package:borrow_app/views/chat_list/chat_list.view.dart";
import "package:borrow_app/views/dashboard/dashboard_wrapper.view.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.view.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/categories_settings.view.dart";
import "package:borrow_app/views/dashboard/profile/group_settings/group_settings.view.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.view.dart";
import "package:borrow_app/views/group_selection/group_selection.view.dart";
import "package:borrow_app/views/home/home.view.dart";
import "package:borrow_app/views/invitation_list/invitation_list.view.dart";
import "package:borrow_app/views/item_detail/item_detail.view.dart";
import "package:borrow_app/views/item_editor/item_editor.view.dart";
import "package:borrow_app/views/profile_settings/profile_settings.view.dart";
import "package:borrow_app/views/welcome/welcome.view.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

MaterialPage<Widget> _errorPage({
  required GoRouterState state,
  required String error,
}) {
  return MaterialPage<Widget>(
    key: state.pageKey,
    child: Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(error)),
    ),
  );
}

final Provider<GoRouter> routerProviderDef =
    Provider<GoRouter>((ProviderRef<GoRouter> ref) {
  final SecureStorageService storageService =
      ref.read(providers.secureStorageServiceProvider);
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    refreshListenable: storageService,
    redirect: (BuildContext context, GoRouterState state) async {
      final bool isLoggedIn =
          await storageService.containsKey(key: "refreshToken");
      final bool isLoginIn = state.matchedLocation == "/login";
      final bool isSigningUp = state.matchedLocation == "/signup";
      final bool signedUp = state.matchedLocation == "/welcome";
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
    routes: <RouteBase>[
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: homeRoute.name,
        path: homeRoute.path,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const MaterialPage<HomeView>(child: HomeView()),
        routes: <RouteBase>[
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: loginRoute.name,
            path: loginRoute.path,
            pageBuilder: (BuildContext context, GoRouterState state) =>
                const MaterialPage<LoginView>(child: LoginView()),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: signupRoute.name,
            path: signupRoute.path,
            pageBuilder: (BuildContext context, GoRouterState state) =>
                const MaterialPage<SignupView>(child: SignupView()),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: welcomeRoute.name,
            path: welcomeRoute.path,
            builder: (BuildContext context, GoRouterState state) =>
                const WelcomeView(),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: groupSelectionRoute.name,
            path: groupSelectionRoute.path,
            pageBuilder: (BuildContext context, GoRouterState state) =>
                const MaterialPage<GroupSelectionView>(
              child: GroupSelectionView(),
            ),
            routes: <RouteBase>[
              ShellRoute(
                navigatorKey: _shellNavigatorKey,
                pageBuilder:
                    (BuildContext context, GoRouterState state, Widget child) {
                  final String? groupId = state.pathParameters["groupId"];
                  if (groupId is! String) {
                    return _errorPage(state: state, error: "No ID provided");
                  }
                  return MaterialPage<DashboardWrapperView>(
                    child: DashboardWrapperView(groupId: groupId, child: child),
                  );
                },
                routes: <RouteBase>[
                  GoRoute(
                    parentNavigatorKey: _shellNavigatorKey,
                    name: groupRoute.name,
                    path: groupRoute.path,
                    builder: (BuildContext context, GoRouterState state) {
                      final String groupId = state.pathParameters["groupId"]!;
                      return ItemListView(groupId: groupId);
                    },
                    routes: <GoRoute>[
                      GoRoute(
                        parentNavigatorKey: _shellNavigatorKey,
                        name: groupSettingsRoute.name,
                        path: groupSettingsRoute.path,
                        builder: (BuildContext context, GoRouterState state) =>
                            GroupSettingsView(
                          groupId: state.pathParameters["groupId"]!,
                        ),
                      ),
                      GoRoute(
                        parentNavigatorKey: _shellNavigatorKey,
                        name: categorySettingsRoute.name,
                        path: categorySettingsRoute.path,
                        builder: (BuildContext context, GoRouterState state) =>
                            CategoriesSettingsView(
                          groupId: state.pathParameters["groupId"]!,
                        ),
                      ),
                      GoRoute(
                        parentNavigatorKey: _shellNavigatorKey,
                        name: profileItemListRoute.name,
                        path: profileItemListRoute.path,
                        builder: (BuildContext context, GoRouterState state) {
                          return ProfileItemListView(
                            groupId: state.pathParameters["groupId"]!,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: chatRoute.name,
            path: chatRoute.path,
            pageBuilder: (BuildContext context, GoRouterState state) {
              final String? userId = state.pathParameters["userId"];
              final String? itemId = state.queryParameters["itemId"];
              final String? ownerId = state.queryParameters["ownerId"];
              if (userId is! String ||
                  itemId is! String ||
                  ownerId is! String) {
                return _errorPage(state: state, error: "No ID provided");
              }
              return MaterialPage<ChatView>(
                child: ChatView(
                  itemId: itemId,
                  ownerId: ownerId,
                  otherUserId: userId,
                ),
              );
            },
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: itemDetailRoute.name,
            path: itemDetailRoute.path,
            pageBuilder: (BuildContext context, GoRouterState state) {
              final String? itemId = state.pathParameters["itemId"];
              if (itemId is! String) {
                return _errorPage(
                  state: state,
                  error: "No ID provided",
                );
              }
              return CustomTransitionPage<ItemDetailView>(
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
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: itemEditorRoute.name,
            path: itemEditorRoute.path,
            pageBuilder: (BuildContext context, GoRouterState state) {
              final String? itemId = state.pathParameters["itemId"];
              final String? groupId = state.pathParameters["groupId"];
              if (groupId is! String) {
                return _errorPage(state: state, error: "No groupId provided");
              }
              return CustomTransitionPage<ItemEditorView>(
                barrierColor: Colors.black26,
                child: ItemEditorView(
                  itemId: itemId,
                  groupId: groupId,
                  preselectedCategory: null,
                ),
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
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: newItemRoute.name,
            path: newItemRoute.path,
            pageBuilder: (BuildContext context, GoRouterState state) {
              final String? groupId = state.pathParameters["groupId"];
              final String? category =
                  state.queryParameters["preselectedCategory"];
              if (groupId is! String) {
                return _errorPage(state: state, error: "No groupId provided");
              }
              return CustomTransitionPage<ItemEditorView>(
                barrierColor: Colors.black26,
                child: ItemEditorView(
                  itemId: null,
                  groupId: groupId,
                  preselectedCategory: category,
                ),
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
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: chatListRoute.name,
            path: chatListRoute.path,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return const MaterialPage<ChatListView>(child: ChatListView());
            },
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: profileRoute.name,
            path: profileRoute.path,
            builder: (BuildContext context, GoRouterState state) =>
                ProfileSettingsView(),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            name: invitationsRoute.name,
            path: invitationsRoute.path,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return const MaterialPage<ChatListView>(
                child: InvitationListView(),
              );
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (BuildContext context, GoRouterState state) => _errorPage(
      state: state,
      error: state.error.toString(),
    ),
  );
});
