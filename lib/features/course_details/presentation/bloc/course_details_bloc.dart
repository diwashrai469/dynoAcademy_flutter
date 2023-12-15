import 'package:bloc/bloc.dart';
import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:dynoacademy/features/course_details/domain/usecases/get_courses.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/network_services.dart';
import '../../data/model/course_details_response_model.dart';
part 'course_details_event.dart';
part 'course_details_state.dart';

@injectable
class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  final GetSingleCourses _getSingleCourses;
  final ToastService _toastService;

  CourseDetailsBloc(this._getSingleCourses, this._toastService)
      : super(CourseDetailsEmpty()) {
    on<GetSingleCourseDetails>(_handleGetSingleCourseDetails);
  }

  void _handleGetSingleCourseDetails(
      GetSingleCourseDetails event, Emitter<CourseDetailsState> emit) async {
    emit(CourseDetailsLoading());

    var result = await _getSingleCourses.call(event.slug);

    result.fold(
      (NetworkFailure error) {
        _toastService.e(error.message.toString());
      },
      (CourseDetailsResponseModel data) {
        emit(CourseDetailsLoaded(data));
      },
    );
  }
}
