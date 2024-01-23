import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/widgets/k_loading_indicator.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/features/course_details/presentation/widgets/course_details_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/course_details_bloc.dart';

@RoutePage()
class CourseDetails extends StatelessWidget {
  final String slug;
  final String courseid;
  const CourseDetails({super.key, required this.slug, required this.courseid});

  @override
  Widget build(BuildContext context) {
    print(slug);
    print(courseid);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Course Details"),
      ),
      body: builderBody(),
    );
  }

  BlocProvider<CourseDetailsBloc> builderBody() {
    var bloc = locator<CourseDetailsBloc>();

    return BlocProvider<CourseDetailsBloc>(
      create: (_) {
        bloc.add(GetSingleCourseDetailsEvent(slug: slug, courseId: courseid));

        return bloc;
      },
      child: Builder(
        builder: (context) {
          return BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
            builder: (_, state) {
              if (state is CourseDetailsLoadingState) {
                return Center(child: kLoadingIndicator(context: context));
              }
              if (state is CourseDetailsLoadedState) {
                final courseDataDetails =
                    state.courseDetailsResponseModel?.pageProps?.courseData;
                final courseStatus = state.courseStatus?.data;

                return courseDetailsListview(
                  context: context,
                  courseDataDetails: courseDataDetails,
                  courseStatus: courseStatus,
                  courseid: courseid,
                  state: state,
                );
              }
              return Center(child: Text("Unexpected state: $state"));
            },
          );
        },
      ),
    );
  }
}
