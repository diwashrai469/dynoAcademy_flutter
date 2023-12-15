import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/widgets/k_empty_data_widget.dart';
import 'package:dynoacademy/common/widgets/k_loading_indicator.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/features/course_details/presentation/widgets/course_details_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/course_details_bloc.dart';

@RoutePage()
class CourseDetails extends StatelessWidget {
  final String slug;
  const CourseDetails({super.key, required this.slug});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Course Details"),
      ),
      body: builderBody(context),
    );
  }

  BlocProvider<CourseDetailsBloc> builderBody(BuildContext context) {
    return BlocProvider<CourseDetailsBloc>(
      create: (_) {
        var bloc = locator<CourseDetailsBloc>();
        bloc.add(GetSingleCourseDetails(slug: slug));

        return bloc;
      },
      child: BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
        builder: (_, state) {
          if (state is CourseDetailsLoading) {
            return Center(child: kLoadingIndicator(context: context));
          }
          if (state is CourseDetailsLoaded) {
            return courseDetailsList(state: state, context: context);
          } else if (state is CourseDetailsEmpty) {
            return Center(child: kEmptyDataWidget("No any courses"));
          }
          return const Text("Something went wrong");
        },
      ),
    );
  }
}
