import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_letters/cubit/update_e_letters_state.dart';

@injectable
class UpdateELettersCubit extends BaseCubit<UpdateELettersBuildable, UpdateELettersListenable> {
  UpdateELettersCubit() : super(const UpdateELettersBuildable());
}
