import 'package:dynoacademy/features/course_details/data/model/add_to_cart_response_model/add_to_cart_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_details_response_model/course_details_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_status_response_model/course_status_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_videos_preview_response_model/course_videos_preview_response_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/intercepters.dart';

@injectable
class CourseDetailsServices {
  final DioService _httpService;

  CourseDetailsServices(this._httpService);

  Future<CourseDetailsResponseModel> getSingleCourse(String slug) async {
    var response = await _httpService.http2.get(
        "/_next/data/9NUMGI0YF3QB6vluXUC9a/view-course/$slug.json?view_course_slug=$slug");

    return CourseDetailsResponseModel.fromJson(response.data);
  }

  Future<CourseVideosPreviewResponseModel> getVideosPreview(
      String courseid) async {
    var response =
        await _httpService.http.get("/v1/courses/previewLessons/$courseid");

    return CourseVideosPreviewResponseModel.fromJson(response.data);
  }

  Future<AddtoCartResponseModel> addTocart(String courseId) async {
    var response = await _httpService.http
        .post("/v1/courses/addToCart", data: {"course_id": courseId});

    return AddtoCartResponseModel.fromJson(response.data);
  }

  Future<CourseStatusResponseModel> checkCourseStatus(String courseId) async {
    var response =
        await _httpService.http.get("/v1/courses/checkCourseStatus/$courseId");

    return CourseStatusResponseModel.fromJson(response.data);
  }
}
