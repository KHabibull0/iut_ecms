import 'package:dartz/dartz.dart';
import 'package:iut_ecms/domain/models/e_book_model/e_book_model.dart';
import 'package:iut_ecms/domain/models/e_letter_model/e_letter_model.dart';

abstract class ManagerContentRepository {
  /// BOOK
  Future<String> addBook({required EBookModel eBookModel});
  Future<String> deleteEBooks({required EBookModel eBookModel});
  Future<Either<String, List<EBookModel>>> getEBooks({required EBookModel eBookModel});

  /// E LETTER
  Future<String> addELetters({required ELetterModel eLetterModel});
  Future<String> addELettersToSocket({required ELetterModel eLetterModel});
  Future<String> deleteELetters({required ELetterModel eLetterModel});
  Future<Either<String, List<ELetterModel>>> getELetters({required ELetterModel eLetterModel});
}
