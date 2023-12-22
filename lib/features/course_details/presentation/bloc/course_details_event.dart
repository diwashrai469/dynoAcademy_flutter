part of 'course_details_bloc.dart';

sealed class CourseDetailsEvent extends Equatable {
  const CourseDetailsEvent();

  @override
  List<Object> get props => [];
}

class GetSingleCourseDetailsEvent extends CourseDetailsEvent {
  final String slug;

  const GetSingleCourseDetailsEvent({required this.slug});
}

class GetVideosPreviewEvent extends CourseDetailsEvent {
  final String courseId;

  const GetVideosPreviewEvent({required this.courseId});
}

class ChangeVideoUrlEvent extends CourseDetailsEvent {
  final String videoUrl;

  const ChangeVideoUrlEvent({required this.videoUrl});

  @override
  List<Object> get props => [videoUrl];
}

class AddToCartEvent extends CourseDetailsEvent {
  final String courseId;

  const AddToCartEvent({required this.courseId});

  @override
  List<Object> get props => [courseId];
}

class CheckCourseStatusEvent extends CourseDetailsEvent {
  final String courseId;

  const CheckCourseStatusEvent({required this.courseId});
}
