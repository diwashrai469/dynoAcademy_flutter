import 'package:dio/dio.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:injectable/injectable.dart';
import 'local_storage.dart';
import 'network_services.dart';

@injectable
class DioService {
  late final Dio _dio;
  Dio get http => _dio;
  late final Dio _dio2;
  Dio get http2 => _dio2;
  final LocalStorageService _localStorageService;
  final AppRouters _appRouters;
  DioService(this._appRouters, this._localStorageService) {
    _dio = Dio();
    _dio.options.baseUrl = "https://api.dynoacademy.com/api";
    _dio2 = Dio();
    _dio2.options.baseUrl = "https://dynoacademy.com";
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          String? token =
              _localStorageService.read(LocalStorageKeys.accessToken);
          if (token != null) {
            options.headers['Authorization'] = "Bearer $token";
          }
          return handler.next(options); //continue
        },
        onResponse: (response, handler) {
          return handler.next(response); // continue
        },
        onError: (DioException e, handler) {
          if (e.type == DioExceptionType.badResponse) {
            if (e.response!.statusCode == 401) {
              _localStorageService.clear(LocalStorageKeys.accessToken);

              Future.delayed(const Duration(milliseconds: 100), () {
                _appRouters.pushAndPopUntil(
                  const LoginView(),
                  predicate: (route) => false,
                );
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
    _dio2.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          String? token =
              _localStorageService.read(LocalStorageKeys.accessToken);
          if (token != null) {
            options.headers['Authorization'] = "Bearer $token";
          }
          return handler.next(options); //continue
        },
        onResponse: (response, handler) {
          return handler.next(response); // continue
        },
        onError: (DioException e, handler) {
          if (e.type == DioExceptionType.badResponse) {
            if (e.response!.statusCode == 401) {
              _localStorageService.clear(LocalStorageKeys.accessToken);

              Future.delayed(const Duration(milliseconds: 100), () {
                _appRouters.pushAndPopUntil(
                  const LoginView(),
                  predicate: (route) => false,
                );
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
  }
}
