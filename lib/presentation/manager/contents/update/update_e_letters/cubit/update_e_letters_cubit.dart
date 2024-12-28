import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/models/e_letter_model/e_letter_model.dart';
import 'package:iut_ecms/domain/repos/manager/manager_content_repository.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_letters/cubit/update_e_letters_state.dart';

@injectable
class UpdateELettersCubit extends BaseCubit<UpdateELettersBuildable, UpdateELettersListenable> {
  UpdateELettersCubit(this._managerContentRepository) : super(const UpdateELettersBuildable());
  final ManagerContentRepository _managerContentRepository;

  void updateELetterType(String eLetterType) {
    build((buildable) => buildable.copyWith(selectedELetterType: eLetterType));
  }

  Future<String> pickPdfFile() async {
    build((buildable) => buildable.copyWith(uploadFileLoading: true));
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      String? filePath = result.files.single.path;
      if (filePath != null) {
        build((buildable) => buildable.copyWith(uploadFileLoading: false));
        return filePath;
      }
    } else {
      build((buildable) => buildable.copyWith(uploadFileLoading: false));
      return '';
    }
    build((buildable) => buildable.copyWith(uploadFileLoading: false));
    return '';
  }

  Future<String> addELetter({required ELetterModel eLetterModel}) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    String result = await _managerContentRepository.addELetters(eLetterModel: eLetterModel);
    build((buildable) => buildable.copyWith(loading: false, error: false));
    if (result.isEmpty) {
      return '';
    } else {
      return result;
    }
  }

  Future<String> addELetterToSocket({required ELetterModel eLetterModel}) async {
    String result = await _managerContentRepository.addELettersToSocket(eLetterModel: eLetterModel);
    if (result.isEmpty) {
      return '';
    } else {
      return result;
    }
  }
}
