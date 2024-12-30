import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/settings/cubit/manager_settings_state.dart';

@injectable
class ManagerSettingsCubit extends BaseCubit<ManagerSettingsBuildable, ManagerSettingsListenable> {
  ManagerSettingsCubit() : super(const ManagerSettingsBuildable());
}
