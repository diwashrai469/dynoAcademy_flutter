import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart';
import 'package:dynoacademy/features/courses/data/model/course_response_model/course_response_model.dart';
import 'package:dynoacademy/features/courses/data/services/courses_services.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICoursesRepository)
class CourseRepositoryImpl extends ICoursesRepository {
  final CoursesServices _coursesServices;

  CourseRepositoryImpl(this._coursesServices);
  @override
  Future<Either<NetworkFailure, CourseResponseModel>> getCourses() async {
    try {
      var result = await _coursesServices.getProducts();
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
