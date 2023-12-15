import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/course_details/data/model/course_details_response_model.dart';
import 'package:injectable/injectable.dart';

import '../repository/courses_repository.dart';

@injectable
class GetSingleCourses {
  final ICourseDetailsRepository iCourseDetailsRepository;

  GetSingleCourses(this.iCourseDetailsRepository);

  Future<Either<NetworkFailure, CourseDetailsResponseModel>> call(
      String slug) async {
    return await iCourseDetailsRepository.getSingleCourseCourses(slug: slug);
  }
}
