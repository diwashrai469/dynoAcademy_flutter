import 'package:dio/dio.dart';
import 'package:dynoacademy/core/services/intercepters.dart';
import 'package:injectable/injectable.dart';

import '../model/login_response_model.dart';

@injectable
class LoginServices {
  final DioService _dioService;
  LoginServices(this._dioService);

  Future<LoginResponseModel> login(String email, String password) async {
    var response = await Dio().post(
      "https://api.dynoacademy.com/api/v1/users/login",
      data: {"email": email, "password": password},
    );

    return LoginResponseModel.fromJson(response.data);
  }
}
