import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/course_details/data/model/add_to_cart_response_model/add_to_cart_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_status_response_model/course_status_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_videos_preview_response_model/course_videos_preview_response_model.dart';
import 'package:dynoacademy/features/course_details/data/services/courses_details_services.dart';
import 'package:dynoacademy/features/course_details/domain/repository/courses_details_repository.dart';
import 'package:injectable/injectable.dart';

import '../model/course_details_response_model/course_details_response_model.dart';

@Injectable(as: ICourseDetailsRepository)
class CourseDetailsRepositoryImpl extends ICourseDetailsRepository {
  final CourseDetailsServices _courseDetailsServices;

  CourseDetailsRepositoryImpl(this._courseDetailsServices);
  @override
  Future<Either<NetworkFailure, CourseDetailsResponseModel>>
      getSingleCourseCourses({required String slug}) async {
    try {
      var result = await _courseDetailsServices.getSingleCourse(slug);
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<NetworkFailure, CourseVideosPreviewResponseModel>>
      getCousePreviewVideos({required String courseId}) async {
    try {
      var result = await _courseDetailsServices.getVideosPreview(courseId);
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<NetworkFailure, AddtoCartResponseModel>> addToCart(
      {required String courseId}) async {
    try {
      var result = await _courseDetailsServices.addTocart(courseId);
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<NetworkFailure, CourseStatusResponseModel>> getCourseStatus(
      {required String courseId}) async {
    try {
      var result = await _courseDetailsServices.checkCourseStatus(courseId);
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
