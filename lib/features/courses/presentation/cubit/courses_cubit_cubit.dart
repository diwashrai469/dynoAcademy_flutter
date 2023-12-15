import 'package:bloc/bloc.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:dynoacademy/features/courses/data/model/course_response_model/course_response_model.dart';
import 'package:dynoacademy/features/courses/domain/usecases/get_courses.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
part 'courses_cubit_state.dart';

@injectable
class CoursesCubitCubit extends Cubit<CoursesCubitState> {
  final GetCourses _getCourses;

  final ToastService _toastService;

  CoursesCubitCubit(this._getCourses, this._toastService)
      : super(DataLoading());

  initilise() {
    getCourse();
  }

  getCourse() async {
    emit(DataLoading());

    var result = await _getCourses.call();

    result.fold(
      (NetworkFailure error) async {
        _toastService.e(error.message.toString());
      },
      (CourseResponseModel data) async {
        emit(DataLoaded(data));
      },
    );
  }
}
