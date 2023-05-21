import 'package:borrow_app/services/storage/secure_storage_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioService {
  final Dio _dio;
  final SecureStorageService _storageService;

  DioService({
    required Dio dio,
    required SecureStorageService storageService,
  })  : _dio = dio,
        _storageService = storageService {
    _init();
  }

  Future<void> _init() async {
    await dotenv.load(fileName: 'assets/.env');
    _dio.options.baseUrl = dotenv.get("API_URL");
    _dio.options.contentType = Headers.jsonContentType;

    _dio.interceptors.add(
      PrettyDioLogger(requestHeader: true),
    );

    _dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final accessToken = await _storageService.read(key: 'accessToken');
          final refreshToken = await _storageService.read(key: 'refreshToken');
          if (options.path.contains("/auth/refresh")) {
            options.headers['Authorization'] = 'Bearer $refreshToken';
          } else {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          return handler.next(options);
        },
        onError: (DioError error, handler) async {
          if (error.response?.statusCode == 401) {
            if (await _storageService.containsKey(key: 'refreshToken') &&
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
    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  Future<bool> refreshToken() async {
    final response = await _dio.post('/auth/refresh');
    if (response.statusCode == 200) {
      _storageService.writeTokenData(tokenData: response.data);
      return true;
    } else {
      _storageService.deleteAll();
      return false;
    }
  }
}
