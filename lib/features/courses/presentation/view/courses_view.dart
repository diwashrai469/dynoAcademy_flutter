import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/widgets/k_loading_indicator.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart';
import 'package:dynoacademy/features/courses/presentation/widgets/course_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses"),
      ),
      body: builderBody(context),
    );
  }

  BlocProvider<CoursesCubitCubit> builderBody(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CoursesCubitCubit>()..initilise(),
      child: BlocBuilder<CoursesCubitCubit, CoursesCubitState>(
        builder: (_, state) {
          if (state is DataLoading) {
            return Center(child: kLoadingIndicator(context: context));
          }
          if (state is DataLoaded) {
            return courseViewList(state: state, context: context);
          } else {
            return const Center(child: Text("Somthing went wrong!"));
          }
        },
      ),
    );
  }
}
