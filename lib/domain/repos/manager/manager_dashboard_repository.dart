import 'package:dartz/dartz.dart';
import 'package:iut_ecms/domain/models/dashboard_model/manager_dashboard_model.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';

abstract class ManagerDashboardRepository {
  Future<Either<String, ManagerDashboardModel>> getDashboardStatistics();
  Future<Either<String, List<MajorsModel>>> getMajors();
}
