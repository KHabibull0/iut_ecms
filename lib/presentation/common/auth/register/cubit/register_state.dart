import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iut_ecms/domain/models/register/register_model.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterBuildable with _$RegisterBuildable {
  const factory RegisterBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(0) int currentIndex,
    @Default('') String? confirmedPassword,
    @Default(RegisterModel()) RegisterModel? registerModel,
  }) = _RegisterBuildable;
}

@freezed
class RegisterListenable with _$RegisterListenable {
  const factory RegisterListenable() = _RegisterListenable;
}
