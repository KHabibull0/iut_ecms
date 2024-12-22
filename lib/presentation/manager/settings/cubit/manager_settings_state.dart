import 'package:freezed_annotation/freezed_annotation.dart';

part 'manager_settings_state.freezed.dart';

@freezed
class ManagerSettingsBuildable with _$ManagerSettingsBuildable {
  const factory ManagerSettingsBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _ManagerSettingsBuildable;
}

@freezed
class ManagerSettingsListenable with _$ManagerSettingsListenable {
  const factory ManagerSettingsListenable() = _ManagerSettingsListenable;
}
