import 'package:bloc/bloc.dart';


import 'package:dynoacademy/core/services/network_services.dart';


import 'package:dynoacademy/core/services/toast_services.dart';


import 'package:dynoacademy/features/my_course/data/model/my_courses_response_model.dart';


import 'package:dynoacademy/features/my_course/domain/usecase/my_course_usecase.dart';


import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:injectable/injectable.dart';


part 'my_course_state.dart';


@injectable

class MyCourseCubit extends Cubit<MyCourseState> {

  final MyCourseUsecase _myCourseUsecase;


  final ToastService _toastService;


  MyCourseCubit(this._myCourseUsecase, this._toastService)

      : super(MyCourseInitialState());


  getMyCourse() async {

    emit(MyCourseLoadingState());


    var result = await _myCourseUsecase.call();


    result.fold(

      (NetworkFailure error) {

        _toastService.e(error.message.toString());


        emit(
          MyCourseErrorState(
            error.message.toString(),
          ),
        );

      },

      (MyCoursesResponseModel data) {

        if (data.data?.isEmpty == true || data.data == null) {

          emit(MyCourseEmptyState());

        } else {

          emit(MyCourseLoadedState(data));

        }

      },

    );

  }

}

