import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/config/data/model/config_response_model.dart';
import 'package:dynoacademy/features/config/domain/repository/config_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConfigUsecase {
  final IConfigRepository iConfigRepository;

  ConfigUsecase(this.iConfigRepository);

  Future<Either<NetworkFailure, ConfigResponseModel>> getConfig() async {
    return await iConfigRepository.getConfig();
  }
}
