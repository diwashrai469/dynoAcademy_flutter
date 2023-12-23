import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/utils/html_tags_remover.dart';
import 'package:dynoacademy/common/widgets/k_button.dart';
import 'package:dynoacademy/common/widgets/k_empty_data_widget.dart';
import 'package:dynoacademy/common/widgets/k_loading_indicator.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/constant/app_dimens.dart';
import '../bloc/course_details_bloc.dart';

@RoutePage()
class CourseDetails extends StatelessWidget {
  final String slug;
  final String courseid;
  const CourseDetails({super.key, required this.slug, required this.courseid});

  @override
  Widget build(BuildContext context) {
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
        bloc.add(GetSingleCourseDetailsEvent(slug: slug));
        bloc.add(CheckCourseStatusEvent(courseId: courseid));

        return bloc;
      },
      child: Builder(builder: (context) {
        return BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
          builder: (_, state) {
            if (state is CourseDetailsLoadingState) {
              return Center(child: kLoadingIndicator(context: context));
            }
            if (state is CourseDetailsLoadedState) {
              final courseDataDetails =
                  state.courseDetailsResponseModel?.pageProps?.courseData;
              final courseStatus = state.courseStatus?.data;

              print("before:${courseStatus?.courseStatus}");

              return courseDataDetails == null
                  ? Center(child: kLoadingIndicator(context: context))
                  : SingleChildScrollView(
                      child: Padding(
                        padding: AppDimens.mainPagePadding,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            mHeightSpan,
                            Text(
                              courseDataDetails.courseName ?? '',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: primaryColor,
                                    fontSize: AppDimens.headlineFontSizeSSmall,
                                    fontWeight: AppDimens.lfontweight,
                                  ),
                            ),
                            lHeightSpan,
                            GestureDetector(
                              onTap: () => locator<AppRouters>().push(
                                PreviewCourseVideos(
                                    courseId: courseDataDetails.id ?? '',
                                    courseTitle:
                                        courseDataDetails.courseName ?? ''),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Hero(
                                    tag: courseDataDetails.id ?? '',
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                          courseDataDetails.thumbnail ?? ''),
                                    ),
                                  ),
                                  Positioned(
                                    top: 75.h,
                                    child: const CircleAvatar(
                                      backgroundColor: disabledColor,
                                      child: Icon(Icons.play_arrow),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            mHeightSpan,
                            KButton(
                              child: const Text("Preview Course"),
                              onPressed: () => locator<AppRouters>().push(
                                PreviewCourseVideos(
                                    courseId: courseDataDetails.id ?? '',
                                    courseTitle:
                                        courseDataDetails.courseName ?? ''),
                              ),
                            ),
                            mHeightSpan,
                            Text(courseDataDetails.courseInfo ?? ''),
                            mHeightSpan,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.leaderboard_sharp,
                                      color: successColor,
                                    ),
                                    sWidthSpan,
                                    Text(courseDataDetails.skillLevel ?? '--')
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.person,
                                      color: Colors.blue,
                                    ),
                                    sWidthSpan,
                                    Text(
                                        "${courseDataDetails.studentsEnrolled ?? "-- "} Enrolls"),
                                  ],
                                ),
                                Text(
                                  "रु ${courseDataDetails.cost.toString()}",
                                  style: appTextStyle(context)?.copyWith(
                                      color: primaryColor,
                                      fontWeight: AppDimens.lfontweight,
                                      fontSize:
                                          AppDimens.headlineFontSizeSSmall),
                                ),
                              ],
                            ),
                            lHeightSpan,
                            KButton(
                              isBusy: state.isAddingToCart,
                              child: courseStatus?.courseStatus == "pending"
                                  ? Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.check_mark_circled,
                                          color: successColor,
                                        ),
                                        xsWidthSpan,
                                        const Text("Added to Cart"),
                                      ],
                                    )
                                  : Row(
                                      children: [
                                        const Icon(
                                            Icons.shopping_cart_outlined),
                                        xsWidthSpan,
                                        const Text("Add To Cart"),
                                      ],
                                    ),
                              onPressed: () {
                                if (courseStatus == null) {
                                  BlocProvider.of<CourseDetailsBloc>(context)
                                      .add(AddToCartEvent(
                                          courseId:
                                              courseDataDetails.id ?? ''));
                                  BlocProvider.of<CourseDetailsBloc>(context)
                                      .add(CheckCourseStatusEvent(
                                          courseId: courseid));
                                }
                              },
                            ),
                            elHeightSpan,
                            Text(
                              "About Course",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: primaryColor,
                                    fontSize: AppDimens.headlineFontSizeSmall,
                                    fontWeight: AppDimens.lfontweight,
                                  ),
                            ),
                            Text(
                              removeHtmlTags(
                                  courseDataDetails.courseDescription ?? ''),
                            )
                          ],
                        ),
                      ),
                    );
            } else if (state is CourseDetailsEmptyState) {
              return Center(child: kEmptyDataWidget("No any courses"));
            }
            return Center(child: Text("Unexpected state: $state"));
          },
        );
      }),
    );
  }
}
