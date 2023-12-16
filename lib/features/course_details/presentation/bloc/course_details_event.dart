part of 'course_details_bloc.dart';


sealed class CourseDetailsEvent extends Equatable {

  const CourseDetailsEvent();


  @override

  List<Object> get props => [];

}


class GetSingleCourseDetails extends CourseDetailsEvent {

  final String slug;


  const GetSingleCourseDetails({required this.slug});

}


class GetVideosPreview extends CourseDetailsEvent {

  final String courseId;


  const GetVideosPreview({required this.courseId});

}


class ChangeVideoUrl extends CourseDetailsEvent {

  final String videoUrl;


  const ChangeVideoUrl({required this.videoUrl});


  @override

  List<Object> get props => [videoUrl];

}

