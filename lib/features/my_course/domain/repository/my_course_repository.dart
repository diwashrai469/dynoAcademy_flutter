import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/my_course/data/model/my_courses_response_model.dart';

abstract class IMyCourseRepository {
  Future<Either<NetworkFailure, MyCoursesResponseModel>> getMyCourse();
}
