part of 'course_details_bloc.dart';

abstract class CourseDetailsState {
  final CourseDetailsResponseModel? courseDetailsResponseModel;

  final String? videoUri;

  final CourseVideosPreviewResponseModel? courseVideosPreviewResponseModel;

  CourseDetailsState({
    this.courseDetailsResponseModel,
    this.courseVideosPreviewResponseModel,
    this.videoUri,
  });

  // @override

  // List<Object?> get props =>

  //     [courseDetailsResponseModel, courseVideosPreviewResponseModel, videoUri];
}

class CourseDetailsLoadingState extends CourseDetailsState {}

class SelectedVideoUrlState extends CourseDetailsState {
  SelectedVideoUrlState({
    required String selectedVideoUrl,
  }) : super(videoUri: selectedVideoUrl);
}

class CourseDetailsEmptyState extends CourseDetailsState {}

class CourseDetailsLoadedState extends CourseDetailsState {
  final bool isAddingToCart;
  final CourseStatusResponseModel? courseStatusResponseModel;

  CourseDetailsLoadedState({
    this.isAddingToCart = false,
    super.courseDetailsResponseModel,
    this.courseStatusResponseModel,
  });
}

class CourseVideoPreviewLoadedState extends CourseDetailsState {
  CourseVideoPreviewLoadedState({
    required String videoUrl,
    required super.courseVideosPreviewResponseModel,
  }) : super(
          videoUri: videoUrl,
        );
}
