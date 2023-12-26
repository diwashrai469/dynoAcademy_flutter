import 'package:bloc/bloc.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:dynoacademy/features/config/data/model/config_response_model.dart';
import 'package:dynoacademy/features/config/domain/usecase/config_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_cubit_state.dart';

@injectable
class DashboardCubitCubit extends Cubit<DashboardCubitState> {
  final ConfigUsecase _configUsecase;
  final ToastService _toastService;

  DashboardCubitCubit(this._configUsecase, this._toastService)
      : super(DataInitialState());

  getConfigData() async {
    emit(DataLoadingState());
    var result = await _configUsecase.getConfig();
    result.fold(
      (NetworkFailure error) async {
        _toastService.e(error.message.toString());
      },
      (ConfigResponseModel data) {
        emit(DataLoadedState(configResponseModel: data));
      },
    );
  }
}
