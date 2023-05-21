import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioUtil {
  static final dio = Dio();
  static const storage = FlutterSecureStorage();

  factory DioUtil() => DioUtil._internal();

  DioUtil._internal();

  Future<void> init() async {
    await dotenv.load(fileName: 'assets/.env');
    dio.options.baseUrl = dotenv.get("API_URL");
    dio.options.contentType = Headers.jsonContentType;

    dio.interceptors.add(
      PrettyDioLogger(requestHeader: true),
    );

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final isRefreshPath = options.path.contains("/auth/refresh");
          final key = isRefreshPath ? "refreshToken" : "accessToken";
          final authToken = await storage.read(key: key);
          options.headers['Authorization'] = 'Bearer $authToken';
          return handler.next(options);
        },
        onError: (DioError error, handler) async {
          if (error.response?.statusCode == 401) {
            if (await storage.containsKey(key: 'refreshToken') && !error.requestOptions.path.contains("/auth/login")) {
              if (await refreshToken()) {
                return handler.resolve(await _retry(error.requestOptions));
              }
            }
          }
          return handler.next(error);
        },
      ),
    );
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  Future<bool> refreshToken() async {
    final response = await dio.post('/auth/refresh');
    if (response.statusCode == 200) {
      await storage.write(key: 'accessToken', value: response.data['accessToken']);
      await storage.write(key: 'refreshToken', value: response.data['refreshToken']);
      return true;
    } else {
      await storage.deleteAll();
      return false;
    }
  }
}
