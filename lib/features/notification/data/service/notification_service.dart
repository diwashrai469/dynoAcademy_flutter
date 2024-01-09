import 'package:dynoacademy/features/notification/data/model/notification_response_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/intercepters.dart';

@injectable
class NotificaitonService {
  final DioService _httpService;

  NotificaitonService(this._httpService);

  Future<NotificationResponseModel> getNotification() async {
    var response = await _httpService.http.get("/v1/users/notifications");

    return NotificationResponseModel.fromJson(response.data);
  }
}
