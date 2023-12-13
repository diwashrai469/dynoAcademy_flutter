part of 'courses_cubit_cubit.dart';


sealed class CoursesCubitState extends Equatable {

  final CourseResponseModel? courseResponseModel;


  const CoursesCubitState({this.courseResponseModel});


  @override

  List<Object> get props => [courseResponseModel ?? {}];

}


final class DataLoading extends CoursesCubitState {}


class DataLoaded extends CoursesCubitState {

  const DataLoaded(CourseResponseModel courseResponseModel)

      : super(courseResponseModel: courseResponseModel);

}

