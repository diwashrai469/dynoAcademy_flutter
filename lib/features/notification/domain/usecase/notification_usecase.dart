import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/notification/data/model/notification_response_model.dart';
import 'package:dynoacademy/features/notification/domain/repository/notificaiton_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class NotificationUsecase {
  final INotificationRepository _iNotificationRepository;

  NotificationUsecase(this._iNotificationRepository);

  Future<Either<NetworkFailure, NotificationResponseModel>> call() async {
    return await _iNotificationRepository.getNotification();
  }
}
