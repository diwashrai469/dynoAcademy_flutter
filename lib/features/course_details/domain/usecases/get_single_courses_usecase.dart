import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/course_details/data/model/add_to_cart_response_model/add_to_cart_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_details_response_model/course_details_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_status_response_model/course_status_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_videos_preview_response_model/course_videos_preview_response_model.dart';
import 'package:injectable/injectable.dart';

import '../repository/courses_details_repository.dart';

@injectable
class GetSingleCoursesUsecase {
  final ICourseDetailsRepository iCourseDetailsRepository;

  GetSingleCoursesUsecase(this.iCourseDetailsRepository);

  Future<Either<NetworkFailure, CourseDetailsResponseModel>> call(
      String slug) async {
    return await iCourseDetailsRepository.getSingleCourseCourses(slug: slug);
  }

  Future<Either<NetworkFailure, CourseVideosPreviewResponseModel>>
      getVideoPreview(String courseId) async {
    return await iCourseDetailsRepository.getCousePreviewVideos(
        courseId: courseId);
  }

  Future<Either<NetworkFailure, AddtoCartResponseModel>> addToCart(
      String courseId) async {
    return await iCourseDetailsRepository.addToCart(courseId: courseId);
  }

  Future<Either<NetworkFailure, CourseStatusResponseModel>> getCourseStatus(
      String courseId) async {
    return await iCourseDetailsRepository.getCourseStatus(courseId: courseId);
  }
}
