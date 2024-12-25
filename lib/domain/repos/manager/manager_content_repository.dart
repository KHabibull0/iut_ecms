import 'package:dartz/dartz.dart';
import 'package:iut_ecms/domain/models/e_book_model/e_book_model.dart';

abstract class ManagerContentRepository {
  Future<String> addBook({required EBookModel eBookModel});
  Future<Either<String, List<EBookModel>>> getEBooks({required EBookModel eBookModel});
  Future<String> deleteEBooks({required EBookModel eBookModel});
}
