part of 'course_details_bloc.dart';


abstract class CourseDetailsState {

  final CourseDetailsResponseModel? courseDetailsResponseModel;


  final String? videoUri;


  final bool? isloading;


  final CourseVideosPreviewResponseModel? courseVideosPreviewResponseModel;


  CourseDetailsState({

    this.isloading,

    this.courseDetailsResponseModel,

    this.courseVideosPreviewResponseModel,

    this.videoUri,

  });


  // @override


  // List<Object?> get props =>


  //     [courseDetailsResponseModel, courseVideosPreviewResponseModel, videoUri];

}


class CourseDetailsLoading extends CourseDetailsState {}


class SelectedVideoUrl extends CourseDetailsState {

  SelectedVideoUrl({

    required String selectedVideoUrl,

  }) : super(videoUri: selectedVideoUrl);

}


class CourseDetailsEmpty extends CourseDetailsState {}


class CourseDetailsLoaded extends CourseDetailsState {
  final bool isAddingToCart;


  CourseDetailsLoaded({
    this.isAddingToCart = false,

    required super.courseDetailsResponseModel,

  });

}


class CourseVideoPreviewLoaded extends CourseDetailsState {

  CourseVideoPreviewLoaded({

    required String videoUrl,

    required super.courseVideosPreviewResponseModel,

  }) : super(

          videoUri: videoUrl,

        );

}

