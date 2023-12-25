import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/features/course_cart/data/model/course_cart_response_model/course_cart_response_model.dart';
import 'package:dynoacademy/features/course_cart/data/model/delete_cart_course_response_model/delete_cart_course_response_model.dart';
import 'package:dynoacademy/features/course_cart/domain/repository/course_cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CourseCartUsecase {
  final ICourseCartRepository iCourseCartRepository;

  CourseCartUsecase(this.iCourseCartRepository);

  Future<Either<NetworkFailure, CourseCartResponseModel>>
      getCartCourse() async {
    return await iCourseCartRepository.getCartCourse();
  }

  Future<Either<NetworkFailure, DeleteCartCourseResponseModel>> removeFromCart(
      {required String courseId}) async {
    return await iCourseCartRepository.removeFromCart(courseId);
  }
}
