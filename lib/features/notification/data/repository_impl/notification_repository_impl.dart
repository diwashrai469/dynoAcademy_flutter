import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/notification/data/model/notification_response_model.dart';
import 'package:dynoacademy/features/notification/data/service/notification_service.dart';
import 'package:dynoacademy/features/notification/domain/repository/notificaiton_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: INotificationRepository)
class NotificationRepository extends INotificationRepository {
  final NotificaitonService _notificationService;
  NotificationRepository(this._notificationService);
  @override
  Future<Either<NetworkFailure, NotificationResponseModel>>
      getNotification() async {
    try {
      var result = await _notificationService.getNotification();
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
