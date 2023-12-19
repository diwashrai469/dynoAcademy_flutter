part of 'courses_cubit_cubit.dart';


sealed class CoursesCubitState extends Equatable {

  const CoursesCubitState();


  @override

  List<Object> get props => [];

}


final class DataLoading extends CoursesCubitState {}


class DataLoaded extends CoursesCubitState {

  final CourseResponseModel? courseResponseModel;


  final List<String?>? userId;


  const DataLoaded({this.courseResponseModel, this.userId});

}

