import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/my_course/data/model/my_courses_response_model.dart';
import 'package:dynoacademy/features/my_course/data/services/my_course_services.dart';
import 'package:dynoacademy/features/my_course/domain/repository/my_course_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IMyCourseRepository)
class MyCoursesRepositoryImpl extends IMyCourseRepository {
  final MyCourseServices _courseServices;
  MyCoursesRepositoryImpl(this._courseServices);
  @override
  Future<Either<NetworkFailure, MyCoursesResponseModel>> getMyCourse() async {
    try {
      var result = await _courseServices.getMyCourse();
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
