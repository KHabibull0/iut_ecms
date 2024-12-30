import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/constants/socket_actions.dart';
import 'package:iut_ecms/core/constants/socket_config.dart';
import 'package:iut_ecms/core/constants/socket_entity.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/domain/models/app_enum.dart';
import 'package:iut_ecms/domain/models/base%20_request_model/base_request_model.dart';
import 'package:iut_ecms/domain/models/base_response_model/base_response_model.dart';
import 'package:iut_ecms/domain/models/dashboard_model/manager_dashboard_model.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/domain/models/subjects_model/subjects_model.dart';
import 'package:iut_ecms/domain/repos/manager/manager_dashboard_repository.dart';
import 'package:iut_ecms/domain/repos/socket_manager.dart';

@Injectable(as: ManagerDashboardRepository)
class ManagerDashboardRepositoryImpl extends ManagerDashboardRepository {
  ManagerDashboardRepositoryImpl(this._socketManager);
  final SocketManager _socketManager;

  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();

  Future<void> sentRequest({required model, required String action, required String entity}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(model.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.DELETE_MAJOR,
      entity: SocketEntity.SUBJECT,
      data: encodedData,
      token: accessToken,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);
  }

  String returnStatus(BaseResponseModel baseResponse) {
    if (baseResponse.status == ResponseStatus.SUCCESS.name) {
      if (baseResponse.data != null) {
        return '';
      }
    } else if (baseResponse.status == ResponseStatus.ERROR.name) {
      if (baseResponse.data != null) {
        final errorData = jsonDecode(baseResponse.data!);
        final errorMessage = errorData['message'] ?? 'Unknown error occurred';
        log('Error message: $errorMessage');
        return errorMessage;
      }
    }
    return 'Unknown error occurred';
  }

  @override
  Future<Either<String, ManagerDashboardModel>> getDashboardStatistics() async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;

    final baseRequest = BaseRequestModel(
      action: SocketActions.GET_STATISTICS,
      entity: SocketEntity.STATISTICS_DASHBOARD,
      data: null,
      token: accessToken,
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
        if (baseResponse.action == SocketActions.GET_STATISTICS) {
          final statistics = ManagerDashboardModel.fromJson(dataMap);

          log('dashboard statistics: ${statistics.toString()}');
          return right(statistics);
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
  Future<Either<String, List<MajorsModel>>> getMajors() async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;

    final baseRequest = BaseRequestModel(
      action: SocketActions.GET_MAJORS,
      entity: SocketEntity.MAJOR,
      data: null,
      token: accessToken,
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
        final List<dynamic> dataMap = jsonDecode(baseResponse.data!);
        if (baseResponse.action == SocketActions.GET_MAJORS) {
          final statistics = majorsFromJsonAsList(dataMap);
          log('dashboard statistics: ${statistics.toString()}');
          return right(statistics);
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
  Future<String> addMajor({required MajorsModel major}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(major.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.ADD_MAJOR,
      entity: SocketEntity.MAJOR,
      data: encodedData,
      token: accessToken,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);

    final response = await _socketManager.dataStream.first;
    final decodedResponse = jsonDecode(response);
    final baseResponse = BaseResponseModel.fromJson(decodedResponse);

    return returnStatus(baseResponse);
  }

  @override
  Future<String> updateMajor({required MajorsModel major}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(major.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.UPDATE_MAJOR,
      entity: SocketEntity.MAJOR,
      data: encodedData,
      token: accessToken,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);

    final response = await _socketManager.dataStream.first;
    final decodedResponse = jsonDecode(response);
    final baseResponse = BaseResponseModel.fromJson(decodedResponse);

    return returnStatus(baseResponse);
  }

  @override
  Future<String> deleteMajor({required MajorsModel major}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(major.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.DELETE_MAJOR,
      entity: SocketEntity.MAJOR,
      data: encodedData,
      token: accessToken,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);

    final response = await _socketManager.dataStream.first;
    final decodedResponse = jsonDecode(response);
    final baseResponse = BaseResponseModel.fromJson(decodedResponse);

    return returnStatus(baseResponse);
  }

  @override
  Future<Either<String, List<SubjectsModel>>> getSubjects({required MajorsModel major}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(major.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.GET_SUBJECTS,
      entity: SocketEntity.SUBJECT,
      data: encodedData,
      token: accessToken,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);

    final response = await _socketManager.dataStream.first;
    final decodedResponse = jsonDecode(response);
    final baseResponse = BaseResponseModel.fromJson(decodedResponse);

    if (baseResponse.status == ResponseStatus.SUCCESS.name) {
      if (baseResponse.data != null) {
        final List<dynamic> dataMap = jsonDecode(baseResponse.data!);
        if (baseResponse.action == SocketActions.GET_SUBJECTS) {
          final data = subjectsFromJsonAsList(dataMap);
          log('dashboard statistics: ${data.toString()}');
          return right(data);
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
    return left('Unexpected Error');
  }

  @override
  Future<String> addSubject({required String name, required int majorId}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final Map<String, dynamic> data = {'name': name, 'majorId': majorId};

    final encodedData = jsonEncode(data);

    final baseRequest = BaseRequestModel(
      action: SocketActions.ADD_SUBJECT,
      entity: SocketEntity.SUBJECT,
      data: encodedData,
      token: accessToken,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);

    final response = await _socketManager.dataStream.first;
    final decodedResponse = jsonDecode(response);
    final baseResponse = BaseResponseModel.fromJson(decodedResponse);

    return returnStatus(baseResponse);
  }

  @override
  Future<String> deleteSubject({required SubjectsModel subjects}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(subjects.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.DELETE_SUBJECT,
      entity: SocketEntity.SUBJECT,
      data: encodedData,
      token: accessToken,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);

    final response = await _socketManager.dataStream.first;
    final decodedResponse = jsonDecode(response);
    final baseResponse = BaseResponseModel.fromJson(decodedResponse);
    return returnStatus(baseResponse);
  }

  @override
  Future<String> updateSubject({required SubjectsModel subjects}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(subjects.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.UPDATE_SUBJECT,
      entity: SocketEntity.SUBJECT,
      data: encodedData,
      token: accessToken,
    );
    final request = jsonEncode(baseRequest.toJson());
    log(request);
    _socketManager.send(request);

    final response = await _socketManager.dataStream.first;
    final decodedResponse = jsonDecode(response);
    final baseResponse = BaseResponseModel.fromJson(decodedResponse);
    return returnStatus(baseResponse);
  }
}
