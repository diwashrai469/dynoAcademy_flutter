import 'package:dynoacademy/features/my_course/data/model/my_courses_response_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/intercepters.dart';

@injectable
class MyCourseServices {
  final DioService _httpService;

  MyCourseServices(this._httpService);

  Future<MyCoursesResponseModel> getMyCourse() async {
    var response = await _httpService.http.get("/v1/courses/my");

    return MyCoursesResponseModel.fromJson(response.data);
  }
}
