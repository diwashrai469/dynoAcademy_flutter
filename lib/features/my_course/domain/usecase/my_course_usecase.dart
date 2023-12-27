import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/my_course/data/model/my_courses_response_model.dart';
import 'package:dynoacademy/features/my_course/domain/repository/my_course_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyCourseUsecase {
  final IMyCourseRepository _iMyCourseRepository;

  MyCourseUsecase(this._iMyCourseRepository);

  Future<Either<NetworkFailure, MyCoursesResponseModel>> call() async {
    return await _iMyCourseRepository.getMyCourse();
  }
}
