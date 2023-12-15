import 'package:dynoacademy/features/course_details/data/model/course_details_response_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/intercepters.dart';

@injectable
class CourseDetailsServices {
  final DioService _httpService;

  CourseDetailsServices(this._httpService);

  Future<CourseDetailsResponseModel> getSingleCourse(String slug) async {
    var response = await _httpService.getDioInstance().get(
        "/_next/data/9NUMGI0YF3QB6vluXUC9a/view-course/$slug.json?view_course_slug=$slug");

    return CourseDetailsResponseModel.fromJson(response.data);
  }
}
