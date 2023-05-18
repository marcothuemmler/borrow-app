import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/services/api/rest_backend_service.dart';
import 'package:borrow_app/services/routing/router.dart';
import 'package:borrow_app/util/dio.util.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/authentication/login/login.controller.dart';
import 'package:borrow_app/views/authentication/login/login.view.dart';
import 'package:borrow_app/views/authentication/signup/signup.controller.dart';
import 'package:borrow_app/views/authentication/signup/signup.view.dart';
import 'package:borrow_app/views/dashboard/dashboard.controller.dart';
import 'package:borrow_app/views/dashboard/dashboard.model.dart';
import 'package:borrow_app/views/dashboard/dashboard_wrapper.view.dart';
import 'package:borrow_app/views/home/group.controller.dart';
import 'package:borrow_app/views/home/group.view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

final providers = Providers();

class Providers {
  final dioProvider = Provider<Dio>((ProviderRef ref) => DioUtil.dio);

  final Provider<GoRouter> routerProvider = routerProviderDef;

  final secureStorageProvider = Provider<FlutterSecureStorage>(
    (ProviderRef ref) => DioUtil.storage,
  );

  final Provider<BackendServiceAggregator> backendServiceProvider = Provider<BackendServiceAggregator>(
    (ProviderRef ref) => RestBackendServiceImplementation(
      dioClient: ref.watch(providers.dioProvider),
      baseUri: Uri.parse(dotenv.get("API_URL")),
      secureStorage: ref.watch(providers.secureStorageProvider),
    ),
  );

  final AutoDisposeStateNotifierProvider<SignupController, SignupDto> signupControllerProvider =
      AutoDisposeStateNotifierProvider<SignupController, SignupDto>(
    (ref) => SignupControllerImplementation(
      authService: ref.watch(providers.backendServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProvider<LoginController, LoginDto> loginControllerProvider =
      AutoDisposeStateNotifierProvider<LoginController, LoginDto>(
    (ref) => LoginControllerImplementation(
      authService: ref.watch(providers.backendServiceProvider),
    ),
  );

  final StateNotifierProvider<DashboardController, DashboardModel> dashboardControllerProvider =
      StateNotifierProvider<DashboardController, DashboardModel>(
    (ref) => DashboardControllerImplementation(
      router: ref.watch(providers.routerProvider),
    ),
  );

  final StateNotifierProvider<GroupController, int> groupControllerProvider =
      StateNotifierProvider<GroupController, int>((ref) => GroupControllerImplementation(0));
}
