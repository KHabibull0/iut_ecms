import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_model.freezed.dart';
part 'base_response_model.g.dart';

@freezed
class BaseResponseModel with _$BaseResponseModel {
  const factory BaseResponseModel({
    String? action,
    String? status,
    String? role,
    String? data,
    String? entity,
  }) = _BaseResponseModel;

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseModelFromJson(json);
}
