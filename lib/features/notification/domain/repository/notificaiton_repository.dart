import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/notification/data/model/notification_response_model.dart';

abstract class INotificationRepository {
  Future<Either<NetworkFailure, NotificationResponseModel>> getNotification();
}
