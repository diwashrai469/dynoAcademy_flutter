import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'local_storage.dart';
import 'network_services.dart';

@injectable
class DioService {
  Dio getDioInstance() {
    Dio dio = Dio(
      BaseOptions(
        // baseUrl: "http://192.168.101.15:4000/api/v1/",
        baseUrl: "https://dynoacademy.com",
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = LocalStorageService().read(
            LocalStorageKeys.accessToken,
          );

          if (token != null) {
            options.headers['Authorization'] = "Bearer $token";
            // options.headers['version'] = serverAppVersion;
          }

          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          if (e.type == DioExceptionType.badResponse) {
            if (e.response!.statusCode == 401) {
              LocalStorageService().clear(LocalStorageKeys.accessToken);

              Future.delayed(const Duration(milliseconds: 100), () {
                // Get.off(() => const LoginView());
              });
            }
          }
          return handler.next(
            NetworkFailure(
                requestOptions: e.requestOptions,
                error: e.error,
                response: e.response,
                type: e.type),
          );
        },
      ),
    );

    return dio;
  }
}
