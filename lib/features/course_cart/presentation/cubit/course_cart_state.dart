part of 'course_cart_cubit.dart';


sealed class CourseCartState extends Equatable {

  const CourseCartState();


  @override

  List<Object> get props => [];

}


final class DataLoadingState extends CourseCartState {}


final class DataInitialState extends CourseCartState {}


final class DataErrorState extends CourseCartState {}


final class DataLoadedState extends CourseCartState {

  final bool? isRemovingFromCart;


  final CourseCartResponseModel? courseCartResponseModel;


  const DataLoadedState(
      {this.isRemovingFromCart, this.courseCartResponseModel});

}


final class DataEmptyState extends CourseCartState {}

