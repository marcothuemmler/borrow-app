import "package:dio/dio.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";

/// CustomPrettyDioLogger omits logging for ResponseType.bytes
class CustomPrettyDioLogger extends PrettyDioLogger {
  CustomPrettyDioLogger({
    super.request,
    super.requestHeader,
    super.requestBody,
    super.responseHeader,
    super.responseBody,
    super.error,
    super.maxWidth,
    super.compact,
    super.logPrint,
  });

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.requestOptions.responseType == ResponseType.bytes) {
      handler.next(response);
    } else {
      super.onResponse(response, handler);
    }
  }
}
