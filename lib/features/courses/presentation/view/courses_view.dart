import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    print("build called");

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
            return const CircularProgressIndicator();
          }
          if (state is DataLoaded) {
            return Center(
              child: Text(
                state.courseResponseModel?.pageProps?.courseData?.data?.first
                        .courseDescription ??
                    '',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.black),
              ),
            );
          } else {
            return const Text("Somthis went worng");
          }
        },
      ),
    );
  }
}
