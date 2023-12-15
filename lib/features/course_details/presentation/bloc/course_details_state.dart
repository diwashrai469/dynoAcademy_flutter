part of 'course_details_bloc.dart';

sealed class CourseDetailsState extends Equatable {
  final CourseDetailsResponseModel? courseResponseModel;
  final CourseVideosPreviewResponseModel? courseVideosPreviewResponseModel;

  const CourseDetailsState(
      {this.courseResponseModel, this.courseVideosPreviewResponseModel});

  @override
  List<Object> get props => [courseResponseModel ?? {}];
}

final class CourseDetailsLoading extends CourseDetailsState {}

final class CourseDetailsEmpty extends CourseDetailsState {}

final class CourseDetailsLoaded extends CourseDetailsState {
  const CourseDetailsLoaded(CourseDetailsResponseModel courseResponseModel)
      : super(courseResponseModel: courseResponseModel);
}

final class CourseVideoPreviewLoaded extends CourseDetailsState {
  const CourseVideoPreviewLoaded(
      CourseVideosPreviewResponseModel courseVideosPreviewResponseModel)
      : super(
            courseVideosPreviewResponseModel: courseVideosPreviewResponseModel);
}
