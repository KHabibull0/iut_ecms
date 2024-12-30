import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_contents/cubit/manage_contents_state.dart';

@injectable
class ManageContentsCubit extends BaseCubit<ManageContentsBuildable, ManageContentsListenable> {
  ManageContentsCubit() : super(const ManageContentsBuildable());
}
