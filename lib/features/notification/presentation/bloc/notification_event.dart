part of 'notification_bloc.dart';


sealed class NotificationEvent {

  NotificationEvent();

}


class GetNotificationEvent extends NotificationEvent {}
