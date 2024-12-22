import 'package:dartz/dartz.dart';
import 'package:iut_ecms/domain/models/login/login_model.dart';
import 'package:iut_ecms/domain/models/register/register_model.dart';
import 'package:iut_ecms/domain/models/tokens/tokens.dart';

abstract class AuthRepository {
  Future<Either<String, Tokens>> login({required LoginModel loginModel});
  Future<Either<String, RegisterResponse>> register({required RegisterModel registerModel});
}
