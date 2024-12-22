import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_letters/cubit/manage_e_letters_state.dart';

@injectable
class ManageELettersCubit extends BaseCubit<ManageELettersBuildable, ManageELettersListenable> {
  ManageELettersCubit() : super(const ManageELettersBuildable());
}
