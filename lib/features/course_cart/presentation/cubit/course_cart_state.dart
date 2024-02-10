part of 'course_cart_cubit.dart';


@immutable

abstract class CourseCartState {

  const CourseCartState();

}


class CourseCartDataLoadingState extends CourseCartState {}


class DataInitialState extends CourseCartState {}


class DataErrorState extends CourseCartState {}


class CourseCartDataLoadedState extends CourseCartState {

  final bool? isRemovingFromCart;


  final int? selectedIndex;


  final CourseCartResponseModel? courseCartResponseModel;


  const CourseCartDataLoadedState(

      {this.isRemovingFromCart,

      this.courseCartResponseModel,

      this.selectedIndex});

}


class DataEmptyState extends CourseCartState {}

