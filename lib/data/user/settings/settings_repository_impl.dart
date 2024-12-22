import 'package:injectable/injectable.dart';
import 'package:iut_ecms/domain/repos/user/settings_repository.dart';

@Injectable(as: SettingsRepository)
class SettingsRepositoryImpl extends SettingsRepository {
  SettingsRepositoryImpl();
}
