import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/services/api/rest_backend_service.dart';
import 'package:borrow_app/util/dio.util.dart';
import 'package:borrow_app/views/authentication/login/login.controller.dart';
import 'package:borrow_app/views/authentication/login/login.view.dart';
import 'package:borrow_app/views/authentication/signup/signup.controller.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/authentication/signup/signup.view.dart';
import 'package:borrow_app/views/home/group.controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../views/home/group.view.dart';

final providers = Providers();

class Providers {
  final dioProvider = Provider<Dio>((ProviderRef ref) => DioUtil.dio);

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

  final StateNotifierProvider<SignupController, SignupDto> signupControllerProvider =
      StateNotifierProvider<SignupController, SignupDto>(
    (ref) => SignupControllerImplementation(
      authService: ref.read(providers.backendServiceProvider),
    ),
  );

  final StateNotifierProvider<LoginController, LoginDto> loginControllerProvider =
      StateNotifierProvider<LoginController, LoginDto>(
    (ref) => LoginControllerImplementation(
      authService: ref.read(providers.backendServiceProvider),
    ),
  );

  final StateNotifierProvider<GroupController, int> groupControllerProvider =
      StateNotifierProvider<GroupController, int>((ref) => GroupControllerImplementation(0));
}
