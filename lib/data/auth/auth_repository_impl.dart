import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/constants/socket_actions.dart';
import 'package:iut_ecms/core/constants/socket_config.dart';
import 'package:iut_ecms/core/constants/socket_entity.dart';
import 'package:iut_ecms/domain/models/base%20_request_model/base_request_model.dart';
import 'package:iut_ecms/domain/models/base_response_model/base_response_model.dart';
import 'package:iut_ecms/domain/models/login/login_model.dart';
import 'package:iut_ecms/domain/models/register/register_model.dart';
import 'package:iut_ecms/domain/models/response_status.dart';
import 'package:iut_ecms/domain/models/tokens/tokens.dart';
import 'package:iut_ecms/domain/repos/auth_repository.dart';
import 'package:iut_ecms/domain/repos/socket_manager.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._socketManager);
  final SocketManager _socketManager;

  @override
  Future<Either<String, Tokens>> login({required LoginModel loginModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final encodedData = jsonEncode(loginModel.toJson());
    final baseRequest = BaseRequestModel(
      action: SocketActions.LOGIN,
      entity: SocketEntity.AUTH,
      data: encodedData,
      token: null,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);

    final response = await _socketManager.dataStream.first;
    final decodedResponse = jsonDecode(response);
    final baseResponse = BaseResponseModel.fromJson(decodedResponse);

    log(baseResponse.status.toString());
    if (baseResponse.status == ResponseStatus.SUCCESS.name) {
      if (baseResponse.data != null) {
        final Map<String, dynamic> dataMap = jsonDecode(baseResponse.data!);
        if (baseResponse.action == SocketActions.LOGIN) {
          final tokens = Tokens.fromJson(dataMap);
          final loginResponse = Tokens(
            role: baseResponse.role,
            accessToken: tokens.accessToken,
            refreshToken: tokens.refreshToken,
          );
          log(loginResponse.toString());
          return right(loginResponse);
        }
      }
    } else if (baseResponse.status == ResponseStatus.ERROR.name) {
      if (baseResponse.data != null) {
        final errorData = jsonDecode(baseResponse.data!);
        final errorMessage = errorData['message'] ?? 'Unknown error occurred';
        log(errorMessage);
        return left(errorMessage);
      }
    }

    return left('Unknown error occurred');
  }

  @override
  Future<Either<String, RegisterResponse>> register({required RegisterModel registerModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final encodedData = jsonEncode(registerModel.toJson());
    final baseRequest = BaseRequestModel(
      action: SocketActions.CREATE_STUDENT,
      entity: SocketEntity.STUDENT,
      data: encodedData,
      token: null,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);

    final response = await _socketManager.dataStream.first;
    final decodedResponse = jsonDecode(response);
    final baseResponse = BaseResponseModel.fromJson(decodedResponse);

    if (baseResponse.status == ResponseStatus.SUCCESS.name) {
      if (baseResponse.data != null) {
        final Map<String, dynamic> dataMap = jsonDecode(baseResponse.data!);
        if (baseResponse.action == SocketActions.CREATE_STUDENT) {
          final registerResponse = RegisterResponse.fromJson(dataMap);
          return right(registerResponse);
        }
      }
    } else if (baseResponse.status == ResponseStatus.ERROR.name) {
      if (baseResponse.data != null) {
        final errorData = jsonDecode(baseResponse.data!);
        final errorMessage = errorData['message'] ?? 'Unknown error occurred';
        return left(errorMessage);
      }
    }

    return left('Unknown error occurred');
  }
}
