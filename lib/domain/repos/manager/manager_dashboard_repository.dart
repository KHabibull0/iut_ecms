import 'package:dartz/dartz.dart';
import 'package:iut_ecms/domain/models/dashboard_model/manager_dashboard_model.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';
import 'package:iut_ecms/domain/models/subjects_model/subjects_model.dart';

abstract class ManagerDashboardRepository {
  Future<Either<String, ManagerDashboardModel>> getDashboardStatistics();
  Future<Either<String, List<MajorsModel>>> getMajors();
  Future<Either<String, List<SubjectsModel>>> getSubjects({required MajorsModel major});
  Future<String> addMajor({required MajorsModel major});
  Future<String> updateMajor({required MajorsModel major});
  Future<String> deleteMajor({required MajorsModel major});
  Future<String> addSubject({required String name, required int majorId});
  Future<String> updateSubject({required SubjectsModel subjects});
  Future<String> deleteSubject({required SubjectsModel subjects});
}
