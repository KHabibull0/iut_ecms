import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/cubit/update_majors_state.dart';

@injectable
class UpdateMajorsCubit extends BaseCubit<UpdateMajorsBuildable, UpdateMajorsListenable> {
  UpdateMajorsCubit() : super(const UpdateMajorsBuildable());
}
