import 'package:dynoacademy/core/services/intercepters.dart';
import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:injectable/injectable.dart';

import '../model/login_response_model.dart';

@injectable
class LoginServices {
  final DioService _dioService;
  final ToastService _toastService;

  LoginServices(this._dioService, this._toastService);

  Future<LoginResponseModel?> login(String email, String password) async {
    try {
      var response = await _dioService.http.post(
        "/v1/users/login",
        data: {"email": email, "password": password},
      );
      return LoginResponseModel.fromJson(response.data);
    } catch (e) {
      _toastService.e(e.toString());
      rethrow;
    }
  }
}
