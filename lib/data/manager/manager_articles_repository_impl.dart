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
import 'package:iut_ecms/domain/models/article_model/article_model.dart';
import 'package:iut_ecms/domain/models/base%20_request_model/base_request_model.dart';
import 'package:iut_ecms/domain/models/base_response_model/base_response_model.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/domain/repos/manager/manager_article_repository.dart';
import 'package:iut_ecms/domain/repos/socket_manager.dart';

@Injectable(as: ManagerArticleRepository)
class ManagerArticlesRepositoryImpl extends ManagerArticleRepository {
  ManagerArticlesRepositoryImpl(this.dio, this._socketManager);
  final SocketManager _socketManager;
  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();
  final Dio dio;

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
  Future<String> addArticles({required ArticleModel articleModel}) async {
    try {
      FormData formData = FormData();
      formData.files.add(MapEntry(
          'file',
          await MultipartFile.fromFile(articleModel.file!,
              filename: articleModel.file!.split('/').last)));
      formData.fields.add(MapEntry('title', articleModel.title!));
      formData.fields.add(MapEntry('subjectId', articleModel.subjectId.toString()));
      formData.fields.add(MapEntry('reference', articleModel.reference!));
      formData.fields.add(MapEntry('publishYear', articleModel.publishYear.toString()));
      formData.fields.add(MapEntry('author', articleModel.author!));

      final response = await dio.post(
        SocketConfig.ARTICLES_SENT_FILE_URL,
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
  Future<String> addArticlesToSocket({required ArticleModel articleModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(articleModel.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.CREATE_ARTICLE,
      entity: SocketEntity.ARTICLE,
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
  Future<String> deleteArticles({required ArticleModel articleModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;
    final encodedData = jsonEncode(articleModel.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.DELETE_ARTICLE,
      entity: SocketEntity.ARTICLE,
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
  Future<Either<String, List<ArticleModel>>> getArticles(
      {required ArticleModel articleModel}) async {
    await _socketManager.connect(SocketConfig.SOCKET_HOST, SocketConfig.SOCKET_PORT);
    final String accessToken = _sharedPrefs.getTokens().accessToken!;

    final encodedData = jsonEncode(articleModel.toJson());

    final baseRequest = BaseRequestModel(
      action: SocketActions.GET_ARTICLES,
      entity: SocketEntity.ARTICLE,
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
        if (baseResponse.action == SocketActions.GET_ARTICLES) {
          final statistics = articlesFromJsonAsList(dataMap);
          log('Article:...: ${statistics.toString()}');
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
}
