import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class NetworkModule {
  Dio dio() {
    final dio = Dio();

    dio.options.baseUrl = 'http://v1/api/books';

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: kDebugMode,
        requestBody: kDebugMode,
        responseBody: kDebugMode,
        responseHeader: kDebugMode,
        error: kDebugMode,
        compact: true,
        maxWidth: 90,
      ),
    );

    return dio;
  }
}
