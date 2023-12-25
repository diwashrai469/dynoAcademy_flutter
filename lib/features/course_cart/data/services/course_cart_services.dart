import 'package:dynoacademy/features/course_cart/data/model/course_cart_response_model/course_cart_response_model.dart';
import 'package:dynoacademy/features/course_cart/data/model/delete_cart_course_response_model/delete_cart_course_response_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/intercepters.dart';

@injectable
class CourseCartServices {
  final DioService _httpService;

  CourseCartServices(this._httpService);

  Future<CourseCartResponseModel> getCartProducts() async {
    var response = await _httpService.http.get("/v1/courses/myCart");

    return CourseCartResponseModel.fromJson(response.data);
  }

  Future<DeleteCartCourseResponseModel> removeFromCart(String courseId) async {
    var response =
        await _httpService.http.delete("/v1/courses/removeFromCart/$courseId");

    return DeleteCartCourseResponseModel.fromJson(response.data);
  }
}
