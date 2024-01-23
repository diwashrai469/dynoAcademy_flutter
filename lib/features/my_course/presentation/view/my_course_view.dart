import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/widgets/k_button.dart';
import 'package:dynoacademy/common/widgets/k_loading_indicator.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/features/my_course/presentation/cubit/my_course_cubit.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class MyCourseView extends StatelessWidget {
  const MyCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Course"),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return BlocProvider(
      create: (_) => locator<MyCourseCubit>()..getMyCourse(),
      child: Builder(builder: (context) {
        return BlocBuilder<MyCourseCubit, MyCourseState>(
          builder: (context, state) {
            if (state is MyCourseLoadingState) {
              return Center(
                child: kLoadingIndicator(context: context),
              );
            } else if (state is MyCourseEmptyState) {
              return Padding(
                padding: const EdgeInsets.all(20.0).dm,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.book,
                        size: 50.h,
                        color: disabledColor,
                      ),
                      Text(
                        "No any courses",
                        style: appTextStyle(context)?.copyWith(
                          fontSize: AppDimens.headlineFontSizeSmall,
                          color: disabledColor,
                          fontWeight: AppDimens.lfontweight,
                        ),
                      ),
                      sHeightSpan,
                      KButton(
                          child: const Text("Go to Courses"),
                          onPressed: () {
                            locator<AppRouters>().push(const CourseView());
                          })
                    ],
                  ),
                ),
              );
            } else if (state is MyCourseLoadedState) {
              return ListView.builder(
                itemCount: state.myCoursesResponseModel?.data?.length ?? 0,
                itemBuilder: (context, index) {
                  final courseCartDetails =
                      state.myCoursesResponseModel?.data?[index];

                  return GestureDetector(
                    onTap: () => locator<AppRouters>().push(CourseDetails(
                        slug: courseCartDetails?.courseId?.courseSlug ?? '',
                        courseid: courseCartDetails?.courseId?.sId ?? '')),
                    child: Container(
                      margin: const EdgeInsets.all(15).dg,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
                        border: Border.all(color: disabledColor),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.network(
                                courseCartDetails?.courseId?.thumbnail ?? ''),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 15,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  courseCartDetails?.courseId?.courseName ?? '',
                                  style: appTextStyle(context)?.copyWith(
                                    fontWeight: AppDimens.lfontweight,
                                    fontSize: AppDimens.headlineFontSizeXSmall,
                                  ),
                                ),
                                ListTile(
                                  minVerticalPadding: 0,
                                  titleTextStyle:
                                      appTextStyle(context)?.copyWith(
                                    fontWeight: AppDimens.lfontweight,
                                    fontSize: AppDimens.headlineFontSizeXXSmall,
                                  ),
                                  subtitleTextStyle:
                                      appTextStyle(context)?.copyWith(
                                    fontWeight: AppDimens.lfontweight,
                                    fontSize: AppDimens.headlineFontSizeXXSmall,
                                  ),
                                  leadingAndTrailingTextStyle:
                                      appTextStyle(context)?.copyWith(
                                    fontWeight: AppDimens.lfontweight,
                                    fontSize: AppDimens.headlineFontSizeXSmall,
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  leading: CircleAvatar(
                                    radius: 15.r,
                                    child: Icon(
                                      Icons.person,
                                      size: 20.h,
                                    ),
                                  ),
                                  title: Text(
                                    courseCartDetails
                                            ?.courseId?.studentsEnrolled
                                            .toString() ??
                                        "0",
                                  ),
                                  subtitle: const Text("enrolled"),
                                  trailing: Text(
                                      "रु ${courseCartDetails?.courseId?.cost.toString()}"),
                                ),
                                sHeightSpan,
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        );
      }),
    );
  }
}
