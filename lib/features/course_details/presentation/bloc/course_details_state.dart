part of 'course_details_bloc.dart';


sealed class CourseDetailsState extends Equatable {

  final CourseDetailsResponseModel? courseDetailsResponseModel;


  final String? videoUri;


  final CourseVideosPreviewResponseModel? courseVideosPreviewResponseModel;


  const CourseDetailsState({

    this.courseDetailsResponseModel,

    this.courseVideosPreviewResponseModel,

    this.videoUri,

  });


  @override

  List<Object?> get props =>

      [courseDetailsResponseModel, courseVideosPreviewResponseModel, videoUri];

}


class CourseDetailsLoading extends CourseDetailsState {}


class SelectedVideoUrl extends CourseDetailsState {

  const SelectedVideoUrl({

    required String selectedVideoUrl,

  }) : super(videoUri: selectedVideoUrl);

}


class CourseDetailsEmpty extends CourseDetailsState {}


class CourseDetailsLoaded extends CourseDetailsState {

  const CourseDetailsLoaded({

    required super.courseDetailsResponseModel,

  });

}


class CourseVideoPreviewLoaded extends CourseDetailsState {

  const CourseVideoPreviewLoaded({

    required String videoUrl,

    required super.courseVideosPreviewResponseModel,

  }) : super(

          videoUri: videoUrl,

        );

}

