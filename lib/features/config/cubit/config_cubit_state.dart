part of 'config_cubit_cubit.dart';


@immutable

abstract class ConfigCubitState {

  const ConfigCubitState();

}


class ConfigInitialState extends ConfigCubitState {}


class ConfigLoadingState extends ConfigCubitState {}


class ConfigLoadedState extends ConfigCubitState {

  final ConfigResponseModel? configResponseModel;


  const ConfigLoadedState({required this.configResponseModel});

}

