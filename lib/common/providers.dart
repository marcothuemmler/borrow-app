import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/services/api/rest_backend_service.dart';
import 'package:borrow_app/services/routing/router.dart';
import 'package:borrow_app/services/storage/secure_storage.service.dart';
import 'package:borrow_app/util/dio.util.dart';
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
import 'package:borrow_app/views/group_selection/group_selection.controller.dart';
import 'package:borrow_app/views/group_selection/group_selection.model.dart';
import 'package:borrow_app/views/group_selection/group_selection.view.dart';
import 'package:borrow_app/views/item_detail/item_detail.controller.dart';
import 'package:borrow_app/views/item_detail/item_detail.model.dart';
import 'package:borrow_app/views/item_detail/item_detail.view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

final providers = Providers();

class Providers {
  final dioProvider = Provider<Dio>((ProviderRef ref) => DioUtil.dio);

  final Provider<GoRouter> routerProvider = routerProviderDef;

  final secureStorageProvider = Provider<FlutterSecureStorage>(
    (ProviderRef ref) => const FlutterSecureStorage(),
  );

  final ChangeNotifierProvider<SecureStorageService>
      secureStorageServiceProvider =
      ChangeNotifierProvider<SecureStorageService>(
    (ref) => SecureStorageService(
      storage: ref.read(providers.secureStorageProvider),
    ),
  );

  final Provider<BackendServiceAggregator> backendServiceProvider =
      Provider<BackendServiceAggregator>(
    (ProviderRef ref) => RestBackendServiceImplementation(
      dioClient: ref.read(providers.dioProvider),
      storageService: ref.read(providers.secureStorageServiceProvider),
    ),
  );

  final StateNotifierProvider<SignupController, SignupModel>
      signupControllerProvider =
      StateNotifierProvider<SignupController, SignupModel>(
    (ref) => SignupControllerImplementation(
      authService: ref.read(providers.backendServiceProvider),
    ),
  );

  final StateNotifierProvider<LoginController, LoginModel>
      loginControllerProvider =
      StateNotifierProvider<LoginController, LoginModel>(
    (ref) => LoginControllerImplementation(
      authService: ref.read(providers.backendServiceProvider),
    ),
  );

  final StateNotifierProviderFamily<DashboardController, DashboardModel, String>
      dashboardControllerProvider =
      StateNotifierProviderFamily<DashboardController, DashboardModel, String>(
    (ref, groupId) => DashboardControllerImplementation(
      router: ref.read(providers.routerProvider),
      groupId: groupId,
    ),
  );

  final StateNotifierProviderFamily<ItemListController, ItemListModel, String>
      itemListControllerProvider =
      StateNotifierProviderFamily<ItemListController, ItemListModel, String>(
    (ref, groupId) => ItemListControllerImplementation(
      itemListService: ref.read(providers.backendServiceProvider),
      router: ref.read(providers.routerProvider),
      groupId: groupId,
    ),
  );

  final StateNotifierProvider<GroupSelectionController, GroupSelectionModel>
      groupSelectionControllerProvider =
      StateNotifierProvider<GroupSelectionController, GroupSelectionModel>(
    (ref) => GroupSelectionControllerImplementation(
      groupSelectionService: ref.read(providers.backendServiceProvider),
    ),
  );

  final StateNotifierProviderFamily<ItemDetailController, ItemDetailModel,
          String> itemDetailControllerProvider =
      StateNotifierProviderFamily<ItemDetailController, ItemDetailModel,
          String>(
    (ref, itemId) => ItemDetailControllerImplementation(
      itemId: itemId,
      itemDetailService: ref.read(providers.backendServiceProvider),
    ),
  );
}
