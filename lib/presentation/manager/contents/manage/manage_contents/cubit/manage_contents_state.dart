import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_contents_state.freezed.dart';

@freezed
class ManageContentsBuildable with _$ManageContentsBuildable {
  const factory ManageContentsBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _ManageContentsBuildable;
}

@freezed
class ManageContentsListenable with _$ManageContentsListenable {
  const factory ManageContentsListenable() = _ManageContentsListenable;
}
