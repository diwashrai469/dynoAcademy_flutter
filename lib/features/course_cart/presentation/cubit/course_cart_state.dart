part of 'course_cart_cubit.dart';


@immutable

abstract class CourseCartState {

  const CourseCartState();

}


class DataLoadingState extends CourseCartState {}


class DataInitialState extends CourseCartState {}


class DataErrorState extends CourseCartState {}


class DataLoadedState extends CourseCartState {

  final bool? isRemovingFromCart;


  final int? selectedIndex;


  final CourseCartResponseModel? courseCartResponseModel;


  const DataLoadedState(

      {this.isRemovingFromCart,
      this.courseCartResponseModel,
      this.selectedIndex});

}


class DataEmptyState extends CourseCartState {}

