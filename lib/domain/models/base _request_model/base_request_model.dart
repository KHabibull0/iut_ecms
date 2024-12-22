import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_request_model.freezed.dart';
part 'base_request_model.g.dart';

@freezed
class BaseRequestModel with _$BaseRequestModel {
  const factory BaseRequestModel({
    String? entity,
    String? action,
    Object? data,
    String? token,
  }) = _BaseRequestModel;

  factory BaseRequestModel.fromJson(Map<String, dynamic> json) => _$BaseRequestModelFromJson(json);
}
