import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../model/login_response_model.dart';

@injectable
class LoginServices {
  LoginServices();

  Future<LoginResponseModel> login(String email, String password) async {
    var response =
        await Dio().put("https://api.dynoacademy.com/api/v1/users/login");

    return LoginResponseModel.fromJson(response.data);
  }
}
