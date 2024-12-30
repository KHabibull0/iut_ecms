import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_letter_model.freezed.dart';
part 'e_letter_model.g.dart';

@freezed
class ELetterModel with _$ELetterModel {
  const factory ELetterModel({
    int? eLetterId,
    int? subjectId,
    String? author,
    String? title,
    String? type,
    String? relatedTo,
    String? file,
    String? path,
  }) = _ELetterModel;

  factory ELetterModel.fromJson(Map<String, dynamic> json) => _$ELetterModelFromJson(json);
}

List<ELetterModel> eLettersFromJsonAsList(dynamic json) =>
    List<ELetterModel>.from(json.map((element) => ELetterModel.fromJson(element)));
