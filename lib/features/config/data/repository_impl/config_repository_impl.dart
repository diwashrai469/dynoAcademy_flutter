import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/config/data/model/config_response_model.dart';
import 'package:dynoacademy/features/config/data/services/config_services.dart';
import 'package:dynoacademy/features/config/domain/repository/config_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IConfigRepository)
class ConfigRepositoryImpl extends IConfigRepository {
  final ConfigServices _configServices;

  ConfigRepositoryImpl(this._configServices);

  @override
  Future<Either<NetworkFailure, ConfigResponseModel>> getConfig() async {
    try {
      var result = await _configServices.getConfig();
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
