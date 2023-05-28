import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/common/theme_data.dart';
import 'package:borrow_app/util/dio.util.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await DioUtil().init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dio = ref.read(providers.dioProvider);
    final storageService = ref.read(providers.secureStorageServiceProvider);
    final backendService = ref.read(providers.backendServiceProvider);

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final isRefreshPath = options.path == ("/auth/refresh");
          options.disableRetry = options.path.startsWith("/auth");
          final key = isRefreshPath ? "refreshToken" : "accessToken";
          final authorizationToken = await storageService.read(key: key);
          options.headers['Authorization'] = 'Bearer $authorizationToken';
          return handler.next(options);
        },
      ),
    );

    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        retries: 1,
        retryDelays: const [
          Duration(seconds: 1),
        ],
        retryEvaluator: (error, attempt) async {
          if (error.response?.statusCode == 401) {
            return await backendService.refreshTokens();
          }
          return false;
        },
      ),
    );

    return MaterialApp.router(
      theme: themeData,
      routerConfig: ref.watch(providers.routerProvider),
      debugShowCheckedModeBanner: false,
    );
  }
}
