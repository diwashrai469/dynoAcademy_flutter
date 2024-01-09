import 'dart:async';


import 'package:bloc/bloc.dart';


import 'package:dynoacademy/core/services/network_services.dart';


import 'package:injectable/injectable.dart';


import 'package:dynoacademy/core/services/toast_services.dart';


import 'package:dynoacademy/features/notification/data/model/notification_response_model.dart';


import 'package:dynoacademy/features/notification/domain/usecase/notification_usecase.dart';


part 'notification_event.dart';


part 'notification_state.dart';


@injectable

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {

  final NotificationUsecase _notificationUsecase;


  final ToastService _toastService;


  NotificationBloc(

    this._notificationUsecase,

    this._toastService,

  ) : super(NotificationLoadingState()) {

    on<GetNotificationEvent>(_handGetNotification);

  }


  FutureOr<void> _handGetNotification(

      GetNotificationEvent event, Emitter<NotificationState> emit) async {

    emit(NotificationLoadingState());


    var result = await _notificationUsecase.call();


    result.fold(

      (NetworkFailure error) {

        _toastService.e(error.message ?? "Faild to load data");

      },

      (NotificationResponseModel data) {

        emit(

          NotificationLoadedState(data),

        );

      },

    );

  }

}

