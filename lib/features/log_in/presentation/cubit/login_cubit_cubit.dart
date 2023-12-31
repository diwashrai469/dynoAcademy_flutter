import 'package:bloc/bloc.dart';


import 'package:dynoacademy/core/app_routers/app_routers.dart';


import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';


import 'package:dynoacademy/core/services/local_storage.dart';


import 'package:dynoacademy/core/services/network_services.dart';


import 'package:dynoacademy/core/services/toast_services.dart';


import 'package:dynoacademy/features/log_in/data/model/login_response_model.dart';


import 'package:dynoacademy/features/log_in/doman/usecase/login_user_usecase.dart';


import 'package:equatable/equatable.dart';


import 'package:injectable/injectable.dart';


part 'login_cubit_state.dart';


@injectable

class LogincubitCubit extends Cubit<LoginCubitCubitState> {

  final ToastService _toastService;


  final LocalStorageService _localStorageService;


  final AppRouters _appRouters;


  final LoginUserUsecase _loginUserUsecase;


  LogincubitCubit(this._toastService, this._loginUserUsecase, this._appRouters,

      this._localStorageService)

      : super(DataSignLoaded());


  loginUser({required String email, required String password}) async {

    emit(DataLoading());


    try {

      var result =

          await _loginUserUsecase.call(email: email, password: password);


      result.fold(

        (NetworkFailure error) async {

          _toastService.e(error.message.toString());


          emit(DataSignLoaded());

        },

        (LoginResponseModel data) async {

          _localStorageService.write(

              LocalStorageKeys.accessToken, data.accessToken);


          _appRouters.pushAndPopUntil(

            const DashboardView(),

            predicate: (route) => false,

          );

        },

      );

    } catch (e) {

      emit(DataSignLoaded());

    }

  }


  void toggleSwitch(bool newValue) {

    emit(newValue ? const SwitchOn() : const SwitchOff());

  }

}

