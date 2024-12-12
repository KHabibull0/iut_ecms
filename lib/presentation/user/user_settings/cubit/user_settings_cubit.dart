import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/repos/settings_repository.dart';
import 'package:iut_ecms/presentation/user/user_settings/cubit/user_settings_state.dart';

@injectable
class UserSettingsCubit extends BaseCubit<UserSettingsBuildable, UserSettingsListenable> {
  UserSettingsCubit(this._settingsRepository) : super(UserSettingsBuildable()) {
    getTranslations();
  }

  SettingsRepository _settingsRepository;

  Future<void> getTranslations() async {
    return callable(
      future: _settingsRepository.getTranslations(),
    );
  }
}
