import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:iut_ecms/core/constants/constants.dart';
import 'package:iut_ecms/domain/models/auth_interceptor/auth_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class NetworkModule {
  Dio dio(AuthInterceptor authInterceptor) {
    final dio = Dio();

    dio.options.baseUrl = Constants.uniCmsBaseUrl;

    dio.interceptors.add(authInterceptor);

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
