part of 'my_course_cubit.dart';


@immutable

abstract class MyCourseState {

  const MyCourseState();

}


class MyCourseLoadingState extends MyCourseState {}


class MyCourseInitialState extends MyCourseState {}


class MyCourseEmptyState extends MyCourseState {}


class MyCourseLoadedState extends MyCourseState {

  final MyCoursesResponseModel? myCoursesResponseModel;


  const MyCourseLoadedState(this.myCoursesResponseModel);

}

