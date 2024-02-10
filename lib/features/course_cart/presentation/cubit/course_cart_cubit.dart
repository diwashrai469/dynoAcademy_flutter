import 'package:bloc/bloc.dart';


import 'package:dynoacademy/core/services/network_services.dart';


import 'package:dynoacademy/core/services/toast_services.dart';


import 'package:dynoacademy/features/course_cart/data/model/course_cart_response_model/course_cart_response_model.dart';


import 'package:dynoacademy/features/course_cart/data/model/delete_cart_course_response_model/delete_cart_course_response_model.dart';


import 'package:dynoacademy/features/course_cart/domain/usecase/course_cart_usecase.dart';


import 'package:dynoacademy/features/dashboard/cubit/dashboard_cubit_cubit.dart';


import 'package:flutter/material.dart';


import 'package:injectable/injectable.dart';


part 'course_cart_state.dart';


@injectable

class CourseCartCubit extends Cubit<CourseCartState> {

  final CourseCartUsecase _cartUsecase;


  final DashboardCubitCubit _dashboardCubitCubit;


  final ToastService _toastService;


  CourseCartCubit(

      this._cartUsecase, this._toastService, this._dashboardCubitCubit)

      : super(DataInitialState());


  getCartCourse({bool emitLoadingState = true}) async {

    if (emitLoadingState) {

      emit(CourseCartDataLoadingState());

    }


    var result = await _cartUsecase.getCartCourse();


    result.fold(

      (NetworkFailure error) async {

        _toastService.e(error.message.toString());


        emit(DataErrorState());

      },

      (CourseCartResponseModel data) async {

        if (data.data?.isEmpty == true || data.data == null) {

          emit(DataEmptyState());

        } else {

          emit(

            CourseCartDataLoadedState(

                courseCartResponseModel: data, isRemovingFromCart: false),

          );

        }

      },

    );

  }


  removeFromCart(String courseId, int selectedIndex) async {

    CourseCartDataLoadedState currentstate = state as CourseCartDataLoadedState;


    emit(CourseCartDataLoadedState(

        selectedIndex: selectedIndex,

        isRemovingFromCart: true,

        courseCartResponseModel: currentstate.courseCartResponseModel));


    var result = await _cartUsecase.removeFromCart(courseId: courseId);


    result.fold(

      (NetworkFailure error) async {

        _toastService.e(error.message.toString());


        emit(DataErrorState());

      },

      (DeleteCartCourseResponseModel data) async {

        _toastService.s(data.message ?? '');


        await _dashboardCubitCubit.getConfigData();


        await getCartCourse(emitLoadingState: false);

      },

    );

  }

}

