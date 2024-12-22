import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_subjects/cubit/update_subjects_state.dart';

@injectable
class UpdateSubjectsCubit extends BaseCubit<UpdateSubjectsBuildable, UpdateSubjectsListenable> {
  UpdateSubjectsCubit() : super(const UpdateSubjectsBuildable());
}
