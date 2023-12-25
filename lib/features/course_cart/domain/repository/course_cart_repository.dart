import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/course_cart/data/model/course_cart_response_model/course_cart_response_model.dart';
import 'package:dynoacademy/features/course_cart/data/model/delete_cart_course_response_model/delete_cart_course_response_model.dart';

abstract class ICourseCartRepository {
  Future<Either<NetworkFailure, CourseCartResponseModel>> getCartCourse();
  Future<Either<NetworkFailure, DeleteCartCourseResponseModel>> removeFromCart(
      String courseId);
}
