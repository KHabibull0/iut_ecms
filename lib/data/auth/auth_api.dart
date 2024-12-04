import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthApi {
  AuthApi(this._dio);

  Dio _dio;
}
