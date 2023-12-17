import 'package:dio/dio.dart';
import 'package:dynoacademy/features/course_details/data/model/course_details_response_model/course_details_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_videos_preview_response_model/course_videos_preview_response_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/intercepters.dart';

@injectable
class CourseDetailsServices {
  final DioService _httpService;

  CourseDetailsServices(this._httpService);

  Future<CourseDetailsResponseModel> getSingleCourse(String slug) async {
    var response = await _httpService.http.get(
        "/_next/data/9NUMGI0YF3QB6vluXUC9a/view-course/$slug.json?view_course_slug=$slug");

    return CourseDetailsResponseModel.fromJson(response.data);
  }

  Future<CourseVideosPreviewResponseModel> getVideosPreview(
      String courseid) async {
    var response = await Dio().get(
        "https://api.dynoacademy.com/api/v1/courses/previewLessons/$courseid");

    return CourseVideosPreviewResponseModel.fromJson(response.data);
  }
}
