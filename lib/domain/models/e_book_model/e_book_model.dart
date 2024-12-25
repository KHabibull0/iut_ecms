import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_book_model.freezed.dart';
part 'e_book_model.g.dart';

@freezed
class EBookModel with _$EBookModel {
  const factory EBookModel({
    int? bookId,
    int? subjectId,
    String? title,
    String? author,
    int? pageCount,
    String? book,
    String? description,
  }) = _EBookModel;

  factory EBookModel.fromJson(Map<String, dynamic> json) => _$EBookModelFromJson(json);
}

List<EBookModel> eBooksFromJsonAsList(dynamic json) =>
    List<EBookModel>.from(json.map((element) => EBookModel.fromJson(element)));
