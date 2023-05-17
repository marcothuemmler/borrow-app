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
    dio.options.baseUrl = dotenv.get("API_URL");
    dio.options.contentType = Headers.jsonContentType;

    dio.interceptors.add(
      PrettyDioLogger(requestHeader: true),
    );

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final accessToken = await storage.read(key: 'accessToken');
          final refreshToken = await storage.read(key: 'refreshToken');
          if (options.path.contains("/auth/refresh")) {
            options.headers['Authorization'] = 'Bearer $refreshToken';
          } else {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          return handler.next(options);
        },
        onError: (DioError error, handler) async {
          if (error.response?.statusCode == 401) {
            if (await storage.containsKey(key: 'refreshToken') &&
                !error.requestOptions.path.contains("/auth/login")) {
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
      storage.write(key: 'accessToken', value: response.data['accessToken']);
      storage.write(key: 'refreshToken', value: response.data['refreshToken']);
      return true;
    } else {
      storage.deleteAll();
      return false;
    }
  }
}
