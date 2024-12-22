import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_subjects/cubit/manage_subjects_state.dart';

@injectable
class ManageSubjectsCubit extends BaseCubit<ManageSubjectsBuildable, ManageSubjectsListenable> {
  ManageSubjectsCubit() : super(const ManageSubjectsBuildable());
  void updateHovering(String key, bool isHovering) {
    build((buildable) {
      final newHoverStates = {...buildable.hoverStates, key: isHovering};
      return buildable.copyWith(hoverStates: newHoverStates);
    });
  }
}
