import 'package:dynoacademy/features/config/data/model/config_response_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/intercepters.dart';

@injectable
class ConfigServices {
  final DioService _httpService;

  ConfigServices(this._httpService);

  Future<ConfigResponseModel> getConfig() async {
    var response = await _httpService.http.get("/v1/users/get-config");
    return ConfigResponseModel.fromJson(response.data);
  }
}
