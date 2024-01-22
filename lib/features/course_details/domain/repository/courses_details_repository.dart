import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/course_details/data/model/add_to_cart_response_model/add_to_cart_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_details_response_model/course_details_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_lessons_response_model/course_lessons_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_status_response_model/course_status_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_videos_preview_response_model/course_videos_preview_response_model.dart';

abstract class ICourseDetailsRepository {
  Future<Either<NetworkFailure, CourseDetailsResponseModel>>
      getSingleCourseCourses({required String slug});

  Future<Either<NetworkFailure, CourseVideosPreviewResponseModel>>
      getCousePreviewVideos({required String courseId});

  Future<Either<NetworkFailure, AddtoCartResponseModel>> addToCart(
      {required String courseId});

  Future<Either<NetworkFailure, CourseStatusResponseModel>> getCourseStatus(
      {required String courseId});
  Future<Either<NetworkFailure, CourseLessonsResponseModel>> getCourseLesson(
      {required String courseId});
}
