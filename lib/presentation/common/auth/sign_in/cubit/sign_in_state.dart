import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iut_ecms/domain/models/login/login_model.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInBuildable with _$SignInBuildable {
  const factory SignInBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(LoginModel()) LoginModel? loginModel,
  }) = _SignInBuildable;
}

@freezed
class SignInListenable with _$SignInListenable {
  const factory SignInListenable({required SignInEffect effect}) = _SignInListenable;
}

enum SignInEffect { SUCCESS, ERROR }
