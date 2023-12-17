import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/log_in/data/model/login_response_model.dart';
import 'package:dynoacademy/features/log_in/doman/repository/login_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUser {
  final ILoginRepository iLoginRepository;

  LoginUser(this.iLoginRepository);

  Future<Either<NetworkFailure, LoginResponseModel>> call(
      {required String email, required String password}) async {
    return await iLoginRepository.loginuser(email: email, password: password);
  }
}
