import "package:borrow_app/common/interceptors/custom_pretty_dio_logger.dart";
import "package:dio/dio.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";

class DioUtil {
  static final Dio dio = Dio();

  factory DioUtil() => DioUtil._internal();

  DioUtil._internal();

  Future<void> init() async {
    await dotenv.load(fileName: "assets/.env");
    dio.options.baseUrl = dotenv.get("API_URL");
    dio.options.contentType = Headers.jsonContentType;

    dio.interceptors.add(
      CustomPrettyDioLogger(requestHeader: true),
    );
  }
}
