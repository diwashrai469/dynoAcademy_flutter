import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/courses/data/model/course_response_model/course_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class ICoursesRepository {
  Future<Either<NetworkFailure, CourseResponseModel>> getCourses();
}
