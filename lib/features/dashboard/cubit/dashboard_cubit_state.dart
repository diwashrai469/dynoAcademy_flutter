part of 'dashboard_cubit_cubit.dart';

@immutable
abstract class DashboardCubitState {
  const DashboardCubitState();
}

class DataLoadingState extends DashboardCubitState {}

class DataInitialState extends DashboardCubitState {}

class DataLoadedState extends DashboardCubitState {
  final ConfigResponseModel? configResponseModel;

  const DataLoadedState({required this.configResponseModel});
}
