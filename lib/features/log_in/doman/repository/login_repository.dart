import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/log_in/data/model/login_response_model.dart';

abstract class ILoginRepository {
  Future<Either<NetworkFailure, LoginResponseModel>> loginuser(
      {required String email, required String password});
}
