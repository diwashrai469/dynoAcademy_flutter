import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/course_details/data/model/course_details_response_model/course_details_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_videos_preview_response_model/course_videos_preview_response_model.dart';

abstract class ICourseDetailsRepository {
  Future<Either<NetworkFailure, CourseDetailsResponseModel>>
      getSingleCourseCourses({required String slug});

  Future<Either<NetworkFailure, CourseVideosPreviewResponseModel>>
      getCousePreviewVideos({required String courseId});
}
