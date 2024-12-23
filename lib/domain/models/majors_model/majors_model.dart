import 'package:freezed_annotation/freezed_annotation.dart';

part 'majors_model.freezed.dart';
part 'majors_model.g.dart';

@freezed
class MajorsModel with _$MajorsModel {
  const factory MajorsModel({
    int? id,
    String? name,
  }) = _MajorsModel;

  factory MajorsModel.fromJson(Map<String, dynamic> json) => _$MajorsModelFromJson(json);
}

List<MajorsModel> majorsFromJsonAsList(dynamic json) =>
    List<MajorsModel>.from(json.map((element) => MajorsModel.fromJson(element)));
