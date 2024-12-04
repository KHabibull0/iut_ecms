import 'package:injectable/injectable.dart';
import 'package:iut_ecms/data/auth/auth_api.dart';
import 'package:iut_ecms/domain/repos/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._api);

  AuthApi _api;
}
