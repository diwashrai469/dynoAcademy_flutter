import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/log_in/data/model/login_response_model.dart';
import 'package:dynoacademy/features/log_in/data/services/login_services.dart';
import 'package:dynoacademy/features/log_in/doman/repository/login_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ILoginRepository)
class LoginRepositoryImpl extends ILoginRepository {
  final LoginServices _loginServices;

  LoginRepositoryImpl(this._loginServices);
  @override
  Future<Either<NetworkFailure, LoginResponseModel>> loginuser(
      {required String email, required String password}) async {
    try {
      var result = await _loginServices.login(email, password);
      return Right(result!);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
