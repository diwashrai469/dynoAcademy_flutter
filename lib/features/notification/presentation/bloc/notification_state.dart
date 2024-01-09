part of 'notification_bloc.dart';


sealed class NotificationState {

  NotificationState();

}


class NotificationLoadingState extends NotificationState {}


class NotificationInitialState extends NotificationState {}


class NotificationLoadedState extends NotificationState {

  final NotificationResponseModel notificationResponseModel;


  NotificationLoadedState(this.notificationResponseModel);

}

