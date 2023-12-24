import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:dynoacademy/features/course_details/data/model/add_to_cart_response_model/add_to_cart_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_status_response_model/course_status_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_videos_preview_response_model/course_videos_preview_response_model.dart';
import 'package:dynoacademy/features/course_details/domain/usecases/get_single_courses_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/network_services.dart';
import '../../data/model/course_details_response_model/course_details_response_model.dart';

part 'course_details_event.dart';
part 'course_details_state.dart';

@injectable
class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  final GetSingleCoursesUsecase _getSingleCoursesUsecase;

  final ToastService _toastService;

  CourseDetailsBloc(this._getSingleCoursesUsecase, this._toastService)
      : super(CourseDetailsInitialState()) {
    on<GetSingleCourseDetailsEvent>(_handleGetSingleCourseDetails);

    on<GetVideosPreviewEvent>(_handleGetVideoPreview);

    on<ChangeVideoUrlEvent>(_handlechangeVideoUrl);

    on<AddToCartEvent>(_handleaddToCart);
  }

  FutureOr<void> _handleGetSingleCourseDetails(
      GetSingleCourseDetailsEvent event,
      Emitter<CourseDetailsState> emit) async {
    emit(CourseDetailsLoadingState());
    final CourseDetailsResponseModel courseDetailsResponseModel =
        await getCourseDetails(event.slug);
    final CourseStatusResponseModel courseStatus =
        await getCourseStatus(event.courseId);
    emit(CourseDetailsLoadedState(
        courseDetailsResponseModel: courseDetailsResponseModel,
        courseStatus: courseStatus));
  }

  FutureOr<void> _handleaddToCart(
      AddToCartEvent event, Emitter<CourseDetailsState> emit) async {
    CourseDetailsLoadedState currentState = state as CourseDetailsLoadedState;

    emit(CourseDetailsLoadedState(
      isAddingToCart: true,
      courseDetailsResponseModel: currentState.courseDetailsResponseModel,
      courseStatus: currentState.courseStatus,
    ));
    await addToCart(event.courseId);
    final CourseStatusResponseModel courseStatus =
        await getCourseStatus(event.courseId);
    emit(
      CourseDetailsLoadedState(
          isAddingToCart: false,
          courseDetailsResponseModel: currentState.courseDetailsResponseModel,
          courseStatus: courseStatus),
    );
  }

  FutureOr<void> _handleGetVideoPreview(
      GetVideosPreviewEvent event, Emitter<CourseDetailsState> emit) async {
    emit(CourseDetailsLoadingState());
    final CourseVideosPreviewResponseModel courseVideosPreviewResponseModel =
        await getCoursePreviewVideos(event.courseId);
    emit(CourseVideoPreviewLoadedState(
        courseVideosPreviewResponseModel: courseVideosPreviewResponseModel,
        videoUri: courseVideosPreviewResponseModel.data?.first.lessonVideoUrl));
  }

  FutureOr<void> _handlechangeVideoUrl(
      ChangeVideoUrlEvent event, Emitter<CourseDetailsState> emit) {
    CourseVideoPreviewLoadedState currentState =
        state as CourseVideoPreviewLoadedState;

    emit(CourseVideoPreviewLoadedState(
        courseVideosPreviewResponseModel:
            currentState.courseVideosPreviewResponseModel,
        videoUri: event.videoUrl));
  }

  //all the call method are define below whcih are linked to repository
  //below call method will also handel the error that occures during api call

  Future<CourseDetailsResponseModel> getCourseDetails(String slug) async {
    var result = await _getSingleCoursesUsecase.call(slug);
    return result.fold(
      (NetworkFailure error) {
        _toastService.e(error.message.toString());
        throw error;
      },
      (CourseDetailsResponseModel data) => data,
    );
  }

  addToCart(String coursId) async {
    var result = await _getSingleCoursesUsecase.addToCart(coursId);
    return result.fold(
      (NetworkFailure error) {
        _toastService.e(error.message.toString());
        throw error;
      },
      (AddtoCartResponseModel data) => _toastService.s(data.message ?? ""),
    );
  }

  Future<CourseStatusResponseModel> getCourseStatus(String courseId) async {
    var result = await _getSingleCoursesUsecase.getCourseStatus(courseId);
    return result.fold(
      (NetworkFailure error) {
        _toastService.e(error.message.toString());
        throw error;
      },
      (CourseStatusResponseModel data) => data,
    );
  }

  Future<CourseVideosPreviewResponseModel> getCoursePreviewVideos(
      String courseId) async {
    var result = await _getSingleCoursesUsecase.getVideoPreview(courseId);
    return result.fold(
      (NetworkFailure error) {
        _toastService.e(error.message.toString());
        throw error;
      },
      (CourseVideosPreviewResponseModel data) => data,
    );
  }
}
