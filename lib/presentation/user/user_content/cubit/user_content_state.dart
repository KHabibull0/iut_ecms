import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_content_state.freezed.dart';

@freezed
class UserContentBuildable with _$UserContentBuildable {
  const factory UserContentBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UserContentBuildable;
}

@freezed
class UserContentListenable with _$UserContentListenable {
  const factory UserContentListenable() = _UserContentListenable;
}
