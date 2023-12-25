import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/course_cart/data/model/course_cart_response_model/course_cart_response_model.dart';
import 'package:dynoacademy/features/course_cart/data/model/delete_cart_course_response_model/delete_cart_course_response_model.dart';
import 'package:dynoacademy/features/course_cart/data/services/course_cart_services.dart';
import 'package:dynoacademy/features/course_cart/domain/repository/course_cart_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICourseCartRepository)
class CourseCartRepositoryImpl extends ICourseCartRepository {
  final CourseCartServices _courseCartServices;

  CourseCartRepositoryImpl(this._courseCartServices);
  @override
  Future<Either<NetworkFailure, CourseCartResponseModel>>
      getCartCourse() async {
    try {
      var result = await _courseCartServices.getCartProducts();
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<NetworkFailure, DeleteCartCourseResponseModel>> removeFromCart(
      String courseId) async {
    try {
      var result = await _courseCartServices.removeFromCart(courseId);
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
