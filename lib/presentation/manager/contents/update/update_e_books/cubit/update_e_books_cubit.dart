import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/models/e_book_model/e_book_model.dart';
import 'package:iut_ecms/domain/repos/manager/manager_content_repository.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_books/cubit/update_e_books_state.dart';

@injectable
class UpdateEBooksCubit extends BaseCubit<UpdateEBooksBuildable, UpdateEBooksListenable> {
  UpdateEBooksCubit(this._managerContentRepository) : super(const UpdateEBooksBuildable());

  final ManagerContentRepository _managerContentRepository;

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

  Future<String> addEBook({required EBookModel eBookModel}) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    String result = await _managerContentRepository.addBook(eBookModel: eBookModel);
    build((buildable) => buildable.copyWith(loading: false, error: false));
    if (result.isEmpty) {
      return '';
    } else {
      return result;
    }
  }
}
