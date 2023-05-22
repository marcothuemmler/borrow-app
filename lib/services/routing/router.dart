import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/authentication/login/login.view.dart";
import "package:borrow_app/views/authentication/signup/signup.view.dart";
import "package:borrow_app/views/group_selection/group_selection.view.dart";
// import "package:borrow_app/views/dashboard/dashboard_wrapper.view.dart";
import "package:borrow_app/views/home/home.view.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

final routerProviderDef = Provider<GoRouter>((ref) {
  return GoRouter(
    // TODO: redirect
    // debugLogDiagnostics: true,
    // redirect: (context, state) async {
    //   final secureStorage = ref.watch(providers.secureStorageProvider);
    //   final refreshToken = await secureStorage.read(key: "refreshToken");
    //   final isLoggedIn = refreshToken is String;
    //   final isLoginIn = RegExp(r"^/(login|signup)").hasMatch(state.location);
    //   if (!isLoggedIn && !isLoginIn) {
    //     return "/";
    //   }
    //   return null;
    // },
    routes: [
      GoRoute(
        name: homeRoute.name,
        path: homeRoute.path,
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeView(),
        ),
        routes: [
          GoRoute(
            name: loginRoute.name,
            path: loginRoute.path,
            pageBuilder: (context, state) => const MaterialPage(child: LoginView()),
          ),
          GoRoute(
            name: signupRoute.name,
            path: signupRoute.path,
            pageBuilder: (context, state) => const MaterialPage(child: SignupView()),
          ),
          // TODO: group selection screen
          GoRoute(
            name: groupsRoute.name,
            path: groupsRoute.path,
            pageBuilder: (context, state) => const MaterialPage(child: GroupSelectionView()),
          ),
          // TODO: Possibly replace with TabBarView
          // ShellRoute(
          //   pageBuilder: (context, state, child) => MaterialPage(child: DashboardWrapperView(child: child)),
          //   routes: [
          //     GoRoute(
          //       name: groupRoute.name,
          //       // TODO: get group by id from backend
          //       // path: "${groupRoute.name}/:id",
          //       path: groupRoute.path,
          //       builder: (context, state) => Container(),
          //       routes: [
          //         GoRoute(
          //           name: itemRoute.name,
          //           path: "${itemRoute.path}/:id",
          //           builder: (context, state) => Container(),
          //         )
          //       ],
          //     ),
          //     GoRoute(
          //       name: profileRoute.name,
          //       path: profileRoute.path,
          //       builder: (context, state) => Container(),
          //     )
          //   ],
          // ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(child: Text(state.error.toString())),
        ),
      );
    },
  );
});
