import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInBuildable with _$SignInBuildable {
  const factory SignInBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _SignInBuildable;
}

@freezed
class SignInListenable with _$SignInListenable {
  const factory SignInListenable() = _SignInListenable;
}
