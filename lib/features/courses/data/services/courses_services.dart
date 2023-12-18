import 'package:dio/dio.dart';
import 'package:dynoacademy/features/courses/data/model/course_response_model/course_response_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/intercepters.dart';

@injectable
class CoursesServices {
  final DioService _httpService;

  CoursesServices(this._httpService);

  Future<CourseResponseModel> getProducts() async {
    var response = await Dio().get(
        "https://dynoacademy.com/_next/data/9NUMGI0YF3QB6vluXUC9a/all-courses.json");

    return CourseResponseModel.fromJson(response.data);
  }
}
