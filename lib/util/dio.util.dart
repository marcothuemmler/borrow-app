import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioUtil {
  static final dio = Dio();

  factory DioUtil() => DioUtil._internal();

  DioUtil._internal();

  Future<void> init() async {
    await dotenv.load(fileName: 'assets/.env');
    dio.options.baseUrl = dotenv.get("API_URL");
    dio.options.contentType = Headers.jsonContentType;

    dio.interceptors.add(
      PrettyDioLogger(requestHeader: true),
    );
  }
}
