import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/constants/socket_actions.dart';
import 'package:iut_ecms/core/constants/socket_config.dart';
import 'package:iut_ecms/core/constants/socket_entity.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/domain/models/app_enum.dart';
import 'package:iut_ecms/domain/models/base%20_request_model/base_request_model.dart';
import 'package:iut_ecms/domain/models/base_response_model/base_response_model.dart';
import 'package:iut_ecms/domain/models/e_book_model/e_book_model.dart';
import 'package:iut_ecms/domain/models/e_letter_model/e_letter_model.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/domain/repos/manager/manager_content_repository.dart';
import 'package:iut_ecms/domain/repos/socket_manager.dart';

@Injectable(as: ManagerContentRepository)
class ManagerContentRepositoryImpl implements ManagerContentRepository {
  ManagerContentRepositoryImpl(this.dio, this._socketManager);
  final SocketManager _socketManager;
  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();
  Dio dio;

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
  Future<String> addBook({required EBookModel eBookModel}) async {
    try {
      FormData formData = FormData();
      formData.files.add(
        MapEntry(
          'book',
          await MultipartFile.fromFile(
            eBookModel.book!,
            filename: eBookModel.book!.split('/').last,
          ),
        ),
      );
      formData.fields.add(MapEntry('title', eBookModel.title!));
      formData.fields.add(MapEntry('author', eBookModel.author!));
      formData.fields.add(MapEntry('subjectId', eBookModel.subjectId.toString()));
      formData.fields.add(MapEntry('pageCount', eBookModel.pageCount.toString()));
      formData.fields.add(MapEntry('description', eBookModel.description!));

      final response = await dio.post(
        SocketConfig.E_BOOK_SENT_FILE_URL,
        data: formData,
        onSendProgress: (int sent, int total) {
          if (total != -1) {
            double progress = (sent / total) * 100;
            onProgress(sent, total);
            log('Uploading: $progress%');
          }
        },
      );

      if (response.statusCode == 201) {
        return '';
      } else {
        log(response.statusCode.toString());
        return 'Failed to upload book: ${response.statusMessage}';
      }
    } catch (e) {
      log(e.toString());
      return 'Error: $e';
    }
  }

  void onProgress(int sent, int total) {
    double progress = (sent / total) * 100;
    log("Upload progress: $progress%");
  }

  @override
  Future<Either<String, List<EBookModel>>> getEBooks({required EBookModel eBookModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;

    final encodedData = jsonEncode(eBookModel.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.GET_BOOKS,
      entity: SocketEntity.BOOK,
      data: encodedData,
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
        if (baseResponse.action == SocketActions.GET_BOOKS) {
          final statistics = eBooksFromJsonAsList(dataMap);
          log('EBooks statistics: ${statistics.toString()}');
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
  Future<String> deleteEBooks({required EBookModel eBookModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(eBookModel.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.DELETE_BOOK,
      entity: SocketEntity.BOOK,
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
  Future<Either<String, List<ELetterModel>>> getELetters(
      {required ELetterModel eLetterModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;

    final encodedData = jsonEncode(eLetterModel.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.GET_E_LETTERS,
      entity: SocketEntity.E_LETTER,
      data: encodedData,
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
        if (baseResponse.action == SocketActions.GET_E_LETTERS) {
          final statistics = eLettersFromJsonAsList(dataMap);
          log('ELetter:...: ${statistics.toString()}');
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
  Future<String> addELetters({required ELetterModel eLetterModel}) async {
    try {
      FormData formData = FormData();
      formData.files.add(
        MapEntry(
          'file',
          await MultipartFile.fromFile(
            eLetterModel.file!,
            filename: eLetterModel.file!.split('/').last,
          ),
        ),
      );
      formData.fields.add(MapEntry('title', eLetterModel.title!));
      formData.fields.add(MapEntry('author', eLetterModel.author!));
      formData.fields.add(MapEntry('subjectId', eLetterModel.subjectId.toString()));
      formData.fields.add(MapEntry('type', eLetterModel.type!));
      formData.fields.add(MapEntry('relatedTo', eLetterModel.relatedTo!));

      final response = await dio.post(
        SocketConfig.E_LETTER_SENT_FILE_URL,
        data: formData,
        onSendProgress: (int sent, int total) {
          if (total != -1) {
            double progress = (sent / total) * 100;
            onProgress(sent, total);
            log('Uploading: $progress%');
          }
        },
      );

      if (response.statusCode == 201) {
        return '';
      } else {
        log(response.statusCode.toString());
        return 'Failed to upload book: ${response.statusMessage}';
      }
    } catch (e) {
      log(e.toString());
      return 'Error: $e';
    }
  }

  @override
  Future<String> addELettersToSocket({required ELetterModel eLetterModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(eLetterModel.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.CREATE_E_LETTER,
      entity: SocketEntity.E_LETTER,
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
  Future<String> deleteELetters({required ELetterModel eLetterModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(eLetterModel.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.DELETE_E_LETTER,
      entity: SocketEntity.E_LETTER,
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
