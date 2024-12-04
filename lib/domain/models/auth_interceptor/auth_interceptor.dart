import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/constants/constants.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/domain/models/storage/storage.dart';
import 'package:iut_ecms/domain/models/tokens/tokens.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:logger/web.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class AuthInterceptor extends QueuedInterceptor {
  final Storage _storage;
  final Logger log;

  AuthInterceptor(this._storage, this.log);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final Tokens? tokens = _storage.tokens.call();

    final preferences = await SharedPreferences.getInstance();
    final locale = preferences.getString('locale')?.toLocale().languageCode ??
        Strings.supportedLocales.first.languageCode;
    options.headers.addAll({'Accept-Language': locale});

    if (tokens == null) return handler.next(options);

    String? access = tokens.access;
    if (access == null) {
      return handler.reject(DioException(requestOptions: options), true);
    }

    if (JwtDecoder.isExpired(access)) {
      access = await refreshToken(tokens.refresh!);
    }

    options.headers.addAll({'Authorization': 'Bearer $access'});

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      await _storage.tokens.set(null);
    }
    return handler.next(err);
  }

  Future<String?> refreshToken(String refresh) async {
    try {
      final dio = Dio();
      dio.options.baseUrl = Constants.uniCmsBaseUrl;

      final request = {'refresh': refresh};
      final response = await dio.post('/user/token/refresh/', data: request);

      final tokens = Tokens(refresh: refresh, access: response.data['access']);
      await _storage.tokens.set(tokens);
      return tokens.access;
    } catch (e, stackTrace) {
      log.e(e.toString(), error: e, stackTrace: stackTrace);
      return null;
    }
  }
}
