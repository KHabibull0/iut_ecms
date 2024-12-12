import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings_state.freezed.dart';

@freezed
class UserSettingsBuildable with _$UserSettingsBuildable {
  const factory UserSettingsBuildable({
    @Default(false) bool isLoading,
    @Default(false) bool error,
  }) = _UserSettingsBuildable;
}

@freezed
class UserSettingsListenable with _$UserSettingsListenable {
  const factory UserSettingsListenable() = _UserSettingsListenable;
}
