import 'package:freezed_annotation/freezed_annotation.dart';

part 'subjects_model.freezed.dart';
part 'subjects_model.g.dart';

@freezed
class SubjectsModel with _$SubjectsModel {
  const factory SubjectsModel({
    int? subjectId,
    String? name,
    int? totalMaterialsCount,
  }) = _SubjectsModel;

  factory SubjectsModel.fromJson(Map<String, dynamic> json) => _$SubjectsModelFromJson(json);
}

List<SubjectsModel> subjectsFromJsonAsList(dynamic json) =>
    List<SubjectsModel>.from(json.map((element) => SubjectsModel.fromJson(element)));
