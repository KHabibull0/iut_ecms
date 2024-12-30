import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_content_type_state.freezed.dart';

@freezed
class UserContentTypeBuildable with _$UserContentTypeBuildable {
  const factory UserContentTypeBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UserContentTypeBuildable;
}

@freezed
class UserContentTypeListenable with _$UserContentTypeListenable {
  const factory UserContentTypeListenable() = _UserContentTypeListenable;
}
