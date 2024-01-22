part of 'course_details_bloc.dart';


sealed class CourseDetailsEvent extends Equatable {

  const CourseDetailsEvent();


  @override

  List<Object> get props => [];

}


class GetSingleCourseDetailsEvent extends CourseDetailsEvent {

  final String slug;


  final String courseId;


  const GetSingleCourseDetailsEvent(

      {required this.slug, required this.courseId});

}


class GetCourseLesson extends CourseDetailsEvent {

  final String courseId;


  const GetCourseLesson({required this.courseId});

}


class ChangeVideoUrlOfCourseLessonEvent extends CourseDetailsEvent {

  final String videoUrl;


  const ChangeVideoUrlOfCourseLessonEvent({required this.videoUrl});


  @override

  List<Object> get props => [videoUrl];

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

