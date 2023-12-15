part of 'course_details_bloc.dart';

sealed class CourseDetailsState extends Equatable {
  final CourseDetailsResponseModel? courseResponseModel;

  const CourseDetailsState({this.courseResponseModel});

  @override
  List<Object> get props => [courseResponseModel ?? {}];
}

final class CourseDetailsLoading extends CourseDetailsState {}

final class CourseDetailsEmpty extends CourseDetailsState {}

final class CourseDetailsLoaded extends CourseDetailsState {
  const CourseDetailsLoaded(CourseDetailsResponseModel courseResponseModel)
      : super(courseResponseModel: courseResponseModel);
}
