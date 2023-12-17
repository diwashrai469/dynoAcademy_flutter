import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart';
import 'package:dynoacademy/features/courses/data/model/course_response_model/course_response_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCoursesUsecase {
  final ICoursesRepository iCoursesRepository;

  GetCoursesUsecase(this.iCoursesRepository);

  Future<Either<NetworkFailure, CourseResponseModel>> call() async {
    return await iCoursesRepository.getCourses();
  }
}
