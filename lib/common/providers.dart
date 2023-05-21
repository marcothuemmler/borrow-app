import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/services/api/dio_service.dart';
import 'package:borrow_app/services/api/rest_backend_service.dart';
import 'package:borrow_app/services/routing/router.dart';
import 'package:borrow_app/services/storage/secure_storage_service.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/authentication/login/login.controller.dart';
import 'package:borrow_app/views/authentication/login/login.view.dart';
import 'package:borrow_app/views/authentication/signup/signup.controller.dart';
import 'package:borrow_app/views/authentication/signup/signup.view.dart';
import 'package:borrow_app/views/dashboard/dashboard.controller.dart';
import 'package:borrow_app/views/dashboard/dashboard.model.dart';
import 'package:borrow_app/views/dashboard/dashboard_wrapper.view.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.controller.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.view.dart';
import 'package:borrow_app/views/home/group.controller.dart';
import 'package:borrow_app/views/home/group.view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final providers = Providers();

class Providers {
  final dioProvider = Provider<Dio>((ProviderRef ref) => Dio());

  final Provider<GoRouter> routerProvider = routerProviderDef;

  final secureStorageServiceProvider = Provider<SecureStorageService>(
    (ProviderRef ref) => SecureStorageService(),
  );

  final dioServiceProvider = Provider<DioService>(
    (ProviderRef ref) => DioService(
      dio: ref.watch(providers.dioProvider),
      storageService: ref.watch(providers.secureStorageServiceProvider),
    ),
  );

  final Provider<BackendServiceAggregator> backendServiceProvider = Provider<BackendServiceAggregator>(
    (ProviderRef ref) => RestBackendServiceImplementation(
      dioClient: ref.watch(providers.dioProvider),
      storageService: ref.watch(providers.secureStorageServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProvider<SignupController, SignupDto> signupControllerProvider =
      AutoDisposeStateNotifierProvider<SignupController, SignupDto>(
    (ref) => SignupControllerImplementation(
      authService: ref.watch(providers.backendServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProvider<LoginController, LoginModel> loginControllerProvider =
      AutoDisposeStateNotifierProvider<LoginController, LoginModel>(
    (ref) => LoginControllerImplementation(
      authService: ref.watch(providers.backendServiceProvider),
    ),
  );

  final StateNotifierProviderFamily<DashboardController, DashboardModel, String> dashboardControllerProvider =
      StateNotifierProviderFamily<DashboardController, DashboardModel, String>(
    (ref, groupId) => DashboardControllerImplementation(
      router: ref.watch(providers.routerProvider),
      groupId: groupId,
    ),
  );

  final AutoDisposeStateNotifierProviderFamily<ItemListController, ItemListModel, String> itemListControllerProvider =
      AutoDisposeStateNotifierProviderFamily<ItemListController, ItemListModel, String>(
    (ref, groupId) => ItemListControllerImplementation(
      itemListService: ref.watch(providers.backendServiceProvider),
      router: ref.watch(providers.routerProvider),
      groupId: groupId,
    ),
  );

  final StateNotifierProvider<GroupController, int> groupControllerProvider =
      StateNotifierProvider<GroupController, int>((ref) => GroupControllerImplementation(0));
}
