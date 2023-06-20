import "package:borrow_app/common/providers.dart";
import "package:borrow_app/common/theme_data.dart";
import "package:borrow_app/services/api/backend_service.dart";
import "package:borrow_app/services/storage/secure_storage.service.dart";
import "package:borrow_app/util/dio.util.dart";
import "package:dio/dio.dart";
import "package:dio_smart_retry/dio_smart_retry.dart";
import "package:flutter/material.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

void main() async {
  await DioUtil().init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Dio dio = ref.read(providers.dioProvider);
    final SecureStorageService storageService = ref.read(
      providers.secureStorageServiceProvider,
    );
    final BackendServiceAggregator backendService = ref.read(
      providers.backendServiceProvider,
    );

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          final String apiUrl = dotenv.get("API_URL");
          final bool isRefreshPath = options.path == ("/auth/refresh");
          options.disableRetry = options.path.startsWith("/auth") &&
              !options.path.contains("logout");
          final String key = isRefreshPath ? "refreshToken" : "accessToken";
          final String? authorizationToken =
              await storageService.read(key: key);
          if (options.uri.origin.toString().contains(apiUrl)) {
            options.headers["Authorization"] = "Bearer $authorizationToken";
          }
          return handler.next(options);
        },
      ),
    );

    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        retries: 1,
        retryDelays: const <Duration>[
          Duration(seconds: 1),
        ],
        retryEvaluator: (DioException error, int attempt) async {
          if (error.response?.statusCode == 401) {
            return await backendService.refreshTokens();
          }
          return false;
        },
      ),
    );

    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: themeData,
      routerConfig: ref.read(providers.routerProvider),
      debugShowCheckedModeBanner: false,
    );
  }
}
