part of 'course_details_bloc.dart';


@immutable

abstract class CourseDetailsState {}


class CourseDetailsInitialState extends CourseDetailsState {}


class CourseDetailsLoadingState extends CourseDetailsState {}


class CourseDetailsLoadedState extends CourseDetailsState {

  final bool? isAddingToCart;


  final CourseStatusResponseModel? courseStatus;


  final CourseDetailsResponseModel? courseDetailsResponseModel;


  CourseDetailsLoadedState({

    this.isAddingToCart,

    this.courseDetailsResponseModel,

    this.courseStatus,

  });

}


class CourseLessonLoadedState extends CourseDetailsState {

  final String videoUrl;


  final CourseLessonsResponseModel? courseLessonsResponseModel;


  CourseLessonLoadedState(this.videoUrl, this.courseLessonsResponseModel);

}


class SelectedCourseLessonVideoUrlState extends CourseDetailsState {

  final String selectedVideoUrl;


  SelectedCourseLessonVideoUrlState({required this.selectedVideoUrl});

}


class CourseVideoPreviewLoadedState extends CourseDetailsState {

  final String? videoUri;


  final CourseVideosPreviewResponseModel? courseVideosPreviewResponseModel;


  CourseVideoPreviewLoadedState(

      {this.courseVideosPreviewResponseModel, this.videoUri});

}


class SelectedVideoUrlState extends CourseDetailsState {

  final String selectedVideoUrl;


  SelectedVideoUrlState({required this.selectedVideoUrl});

}

