
import 'package:dio/dio.dart';
import 'package:flutterapp/service/config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
    baseUrl: HttpConfig.baseURL,
    connectTimeout: HttpConfig.timeout,

  );

  static final Dio dio = Dio(baseOptions);
}