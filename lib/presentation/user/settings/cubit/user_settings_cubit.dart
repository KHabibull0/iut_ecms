import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/models/language/language.dart';
import 'package:iut_ecms/domain/repos/user/settings_repository.dart';
import 'package:iut_ecms/presentation/user/settings/cubit/user_settings_state.dart';

@injectable
class UserSettingsCubit extends BaseCubit<UserSettingsBuildable, UserSettingsListenable> {
  UserSettingsCubit(this._settingsRepository) : super(UserSettingsBuildable());

  final SettingsRepository _settingsRepository;

  void changeLanguage(Language language) {
    build((buildable) => buildable.copyWith(language: language));
  }
}
