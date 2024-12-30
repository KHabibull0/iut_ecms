import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashBuildable with _$SplashBuildable {
  const factory SplashBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(false) bool isServerStarted,
  }) = _SplashBuildable;
}

@freezed
class SplashListenable with _$SplashListenable {
  const factory SplashListenable({
    @Default(false) bool isServerStarted,
  }) = _SplashListenable;
}
