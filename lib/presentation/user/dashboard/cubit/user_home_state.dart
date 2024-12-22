import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_home_state.freezed.dart';

@freezed
class UserHomeBuildable with _$UserHomeBuildable {
  const factory UserHomeBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UserHomeBuildable;
}

@freezed
class UserHomeListenable with _$UserHomeListenable {
  const factory UserHomeListenable() = _UserHomeListenable;
}
