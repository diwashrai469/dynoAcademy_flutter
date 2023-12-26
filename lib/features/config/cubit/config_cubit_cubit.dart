import 'dart:async';


import 'package:bloc/bloc.dart';


import 'package:dynoacademy/core/services/local_storage.dart';


import 'package:dynoacademy/core/services/network_services.dart';


import 'package:dynoacademy/core/services/toast_services.dart';


import 'package:dynoacademy/features/config/data/model/config_response_model.dart';


import 'package:dynoacademy/features/config/domain/usecase/config_usecase.dart';


import 'package:flutter/material.dart';


import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:injectable/injectable.dart';


part 'config_cubit_state.dart';


@injectable

class ConfigCubitCubit extends Cubit<ConfigCubitState> {

  final ConfigUsecase _configUsecase;


  final LocalStorageService _localStorageService;


  final ToastService _toastService;


  ConfigCubitCubit(

      this._configUsecase, this._toastService, this._localStorageService)

      : super(ConfigInitialState());


  void getConfigTimePeriodic() {

    Timer.periodic(

      const Duration(seconds: 5),

      (timer) async {

        getConfig();

      },

    );

  }


  getConfig() async {

    String? token = _localStorageService.read(LocalStorageKeys.accessToken);


    if (token == null) {

      return;

    }


    emit(ConfigLoadingState());


    var result = await _configUsecase.getConfig();


    result.fold(

      (NetworkFailure error) async {

        _toastService.e(error.message.toString());

      },

      (ConfigResponseModel data) async {

        emit(

          ConfigLoadedState(configResponseModel: data),

        );

      },

    );

  }

}

