import "package:borrow_app/services/api/backend_service.dart";
import "package:borrow_app/services/api/rest_backend_service.dart";
import "package:borrow_app/services/api/websocket_service.dart";
import "package:borrow_app/services/routing/router.dart";
import "package:borrow_app/services/storage/secure_storage.service.dart";
import "package:borrow_app/util/dio.util.dart";
import "package:borrow_app/views/authentication/auth.model.dart";
import "package:borrow_app/views/authentication/login/login.controller.dart";
import "package:borrow_app/views/authentication/login/login.view.dart";
import "package:borrow_app/views/authentication/signup/signup.controller.dart";
import "package:borrow_app/views/authentication/signup/signup.view.dart";
import "package:borrow_app/views/chat/chat.controller.dart";
import "package:borrow_app/views/chat/chat.model.dart";
import "package:borrow_app/views/chat/chat.view.dart";
import "package:borrow_app/views/chat_list/chat_list.controller.dart";
import "package:borrow_app/views/chat_list/chat_list.model.dart";
import "package:borrow_app/views/chat_list/chat_list.view.dart";
import "package:borrow_app/views/dashboard/dashboard.controller.dart";
import "package:borrow_app/views/dashboard/dashboard.model.dart";
import "package:borrow_app/views/dashboard/dashboard_wrapper.view.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.controller.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.view.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/categories_settings.controller.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/categories_settings.view.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:borrow_app/views/group_selection/group_selection.controller.dart";
import "package:borrow_app/views/group_selection/group_selection.model.dart";
import "package:borrow_app/views/group_selection/group_selection.view.dart";
import "package:borrow_app/views/invitation_list/invitation_list.controller.dart";
import "package:borrow_app/views/invitation_list/invitation_list.model.dart";
import "package:borrow_app/views/invitation_list/invitation_list.view.dart";
import "package:borrow_app/views/item_detail/item_detail.controller.dart";
import "package:borrow_app/views/item_detail/item_detail.model.dart";
import "package:borrow_app/views/item_detail/item_detail.view.dart";
import "package:borrow_app/views/profile_settings/profile_settings.controller.dart";
import "package:borrow_app/views/profile_settings/profile_settings.model.dart";
import "package:borrow_app/views/profile_settings/profile_settings.view.dart";
import "package:dio/dio.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_secure_storage/flutter_secure_storage.dart";
import "package:go_router/go_router.dart";

final Providers providers = Providers();

class Providers {
  final Provider<Dio> dioProvider = Provider<Dio>(
    (ProviderRef<Dio> ref) => DioUtil.dio,
  );

  final Provider<GoRouter> routerProvider = routerProviderDef;

  final Provider<FlutterSecureStorage> secureStorageProvider =
      Provider<FlutterSecureStorage>(
    (ProviderRef<FlutterSecureStorage> ref) => const FlutterSecureStorage(),
  );

  final ChangeNotifierProvider<SecureStorageService>
      secureStorageServiceProvider =
      ChangeNotifierProvider<SecureStorageService>(
    (ChangeNotifierProviderRef<SecureStorageService> ref) =>
        SecureStorageService(
      storage: ref.read(providers.secureStorageProvider),
    ),
  );

  final Provider<BackendServiceAggregator> backendServiceProvider =
      Provider<BackendServiceAggregator>(
    (ProviderRef<BackendServiceAggregator> ref) =>
        RestBackendServiceImplementation(
      dioClient: ref.read(providers.dioProvider),
      storageService: ref.read(providers.secureStorageServiceProvider),
    ),
  );

  final Provider<WebSocketService> webSocketServiceProvider =
      Provider<WebSocketService>(
    (ProviderRef<WebSocketService> ref) => WebSocketService(),
  );

  final StateNotifierProvider<SignupController, SignupModel>
      signupControllerProvider =
      StateNotifierProvider<SignupController, SignupModel>(
    (StateNotifierProviderRef<SignupController, SignupModel> ref) =>
        SignupControllerImplementation(
      authService: ref.read(providers.backendServiceProvider),
    ),
  );

  final StateNotifierProvider<LoginController, LoginModel>
      loginControllerProvider =
      StateNotifierProvider<LoginController, LoginModel>(
    (StateNotifierProviderRef<LoginController, LoginModel> ref) =>
        LoginControllerImplementation(
      authService: ref.read(providers.backendServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProviderFamily<DashboardController,
          DashboardModel, String> dashboardControllerProvider =
      AutoDisposeStateNotifierProvider.family<DashboardController,
          DashboardModel, String>(
    (
      AutoDisposeStateNotifierProviderRef<DashboardController, DashboardModel>
          ref,
      String groupId,
    ) =>
        DashboardControllerImplementation(
      router: ref.read(providers.routerProvider),
      groupId: groupId,
    ),
  );

  final AutoDisposeStateNotifierProviderFamily<ItemListController,
          ItemListModel, String> itemListControllerProvider =
      AutoDisposeStateNotifierProvider.family<ItemListController, ItemListModel,
          String>(
    (
      AutoDisposeStateNotifierProviderRef<ItemListController, ItemListModel>
          ref,
      String groupId,
    ) =>
        ItemListControllerImplementation(
      itemListService: ref.read(providers.backendServiceProvider),
      router: ref.read(providers.routerProvider),
      groupId: groupId,
    ),
  );

  final AutoDisposeStateNotifierProvider<GroupSelectionController,
          GroupSelectionModel> groupSelectionControllerProvider =
      AutoDisposeStateNotifierProvider<GroupSelectionController,
          GroupSelectionModel>(
    (
      AutoDisposeStateNotifierProviderRef<GroupSelectionController,
              GroupSelectionModel>
          ref,
    ) =>
        GroupSelectionControllerImplementation(
      groupSelectionService: ref.read(providers.backendServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProviderFamily<ItemDetailController,
          ItemDetailModel, String> itemDetailControllerProvider =
      AutoDisposeStateNotifierProvider.family<ItemDetailController,
          ItemDetailModel, String>(
    (
      AutoDisposeStateNotifierProviderRef<ItemDetailController, ItemDetailModel>
          ref,
      String itemId,
    ) =>
        ItemDetailControllerImplementation(
      itemId: itemId,
      itemDetailService: ref.read(providers.backendServiceProvider),
      router: ref.read(providers.routerProvider),
    ),
  );

  final AutoDisposeStateNotifierProviderFamily<ChatController, ChatModel,
          ChatControllerParameters> chatControllerProvider =
      AutoDisposeStateNotifierProvider.family<ChatController, ChatModel,
          ChatControllerParameters>((
    AutoDisposeStateNotifierProviderRef<ChatController, ChatModel> ref,
    ChatControllerParameters parameters,
  ) {
    ref.onDispose(ref.read(providers.webSocketServiceProvider).disposeSocket);
    return ChatControllerImplementation(
      parameters: parameters,
      socketService: ref.read(providers.webSocketServiceProvider),
      storageService: ref.read(providers.secureStorageServiceProvider),
    );
  });

  final StateNotifierProviderFamily<CategoriesSettingsController,
          CategoryListDetailModel, String> categoriesListProvider =
      StateNotifierProvider.family<CategoriesSettingsController,
          CategoryListDetailModel, String>(
    (
      StateNotifierProviderRef<CategoriesSettingsController,
              CategoryListDetailModel>
          ref,
      String groupId,
    ) =>
        CategoriesSettingsControllerImplementation(
      groupId: groupId,
      categorySettingsService: ref.read(providers.backendServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProvider<ChatListController, ChatListModel>
      chatListControllerProvider =
      AutoDisposeStateNotifierProvider<ChatListController, ChatListModel>(
    (
      AutoDisposeStateNotifierProviderRef<ChatListController, ChatListModel>
          ref,
    ) =>
        ChatListControllerImplementation(
      chatListService: ref.read(providers.backendServiceProvider),
      router: ref.read(providers.routerProvider),
      storageService: ref.read(providers.secureStorageServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProvider<ProfileSettingsController,
          ProfileSettingsModel> profileSettingsControllerProvider =
      AutoDisposeStateNotifierProvider<ProfileSettingsController,
          ProfileSettingsModel>(
    (
      AutoDisposeStateNotifierProviderRef<ProfileSettingsController,
              ProfileSettingsModel>
          ref,
    ) =>
        ProfileSettingsControllerImplementation(
      profileSettingsService: ref.read(providers.backendServiceProvider),
    ),
  );

  final AutoDisposeStateNotifierProvider<InvitationListController,
          InvitationListModel> invitationListControllerProvider =
      AutoDisposeStateNotifierProvider<InvitationListController,
          InvitationListModel>(
    (
      AutoDisposeStateNotifierProviderRef<InvitationListController,
              InvitationListModel>
          ref,
    ) =>
        InvitationListControllerImplementation(
      invitationListService: ref.read(providers.backendServiceProvider),
    ),
  );
}
