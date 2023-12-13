import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';


part 'courses_cubit_state.dart';


class CoursesCubitCubit extends Cubit<CoursesCubitState> {

  CoursesCubitCubit() : super(CoursesCubitInitial());

}

