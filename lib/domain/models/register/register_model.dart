import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? studentId,
    String? university,
    String? birthDate,
    String? phoneNumber,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => _$RegisterModelFromJson(json);
}

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    String? email,
    String? password,
    String? studentId,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);
}
