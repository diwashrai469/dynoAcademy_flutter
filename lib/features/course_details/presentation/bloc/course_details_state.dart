part of 'course_details_bloc.dart';


abstract class CourseDetailsState {

  final CourseDetailsResponseModel? courseDetailsResponseModel;


  final String? videoUri;


  final CourseStatusResponseModel? courseStatus;


  final CourseVideosPreviewResponseModel? courseVideosPreviewResponseModel;


  const CourseDetailsState({

    this.courseStatus,

    this.courseDetailsResponseModel,

    this.courseVideosPreviewResponseModel,

    this.videoUri,

  });


  // @override


  // List<Object?> get props => [


  //       courseDetailsResponseModel,


  //       courseVideosPreviewResponseModel,


  //       videoUri,


  //       courseStatus


  //     ];

}


class CourseDetailsLoadingState extends CourseDetailsState {}


class CourseDetailsEmptyState extends CourseDetailsState {}


class CourseDetailsLoadedState extends CourseDetailsState {

  final bool isAddingToCart;


  const CourseDetailsLoadedState({

    super.courseStatus,

    this.isAddingToCart = false,

    super.courseDetailsResponseModel,

  });

}


class SelectedVideoUrlState extends CourseDetailsState {

  const SelectedVideoUrlState({

    required String selectedVideoUrl,

  }) : super(videoUri: selectedVideoUrl);

}


class CourseVideoPreviewLoadedState extends CourseDetailsState {

  const CourseVideoPreviewLoadedState({

    required String videoUrl,

    required super.courseVideosPreviewResponseModel,

  }) : super(

          videoUri: videoUrl,

        );

}

