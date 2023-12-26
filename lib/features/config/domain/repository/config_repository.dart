import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/config/data/model/config_response_model.dart';

abstract class IConfigRepository {
  Future<Either<NetworkFailure, ConfigResponseModel>> getConfig();
}
