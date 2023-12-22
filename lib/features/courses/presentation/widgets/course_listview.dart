import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget courseViewList(
    {required DataLoaded state, required BuildContext context}) {
  return SingleChildScrollView(
    child: Padding(
      padding: AppDimens.mainPagePadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mHeightSpan,
          Text(
            "Available Courses",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: primaryColor,
                  fontSize: AppDimens.headlineFontSizeSmall,
                  fontWeight: AppDimens.lfontweight,
                ),
          ),
          Text(
            "Check out our course offering and stay tuned for more to come!",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: darkGrey,
                  fontSize: AppDimens.headlineFontSizeXSmall,
                  fontWeight: AppDimens.mfontweight,
                ),
          ),
          mHeightSpan,
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state
                    .courseResponseModel?.pageProps?.courseData?.data?.length ??
                0,
            itemBuilder: (context, index) {
              final courseDataIndex = state
                  .courseResponseModel?.pageProps?.courseData?.data?[index];
              return GestureDetector(
                onTap: () => locator<AppRouters>().push(CourseDetails(
                    slug: courseDataIndex?.courseSlug ?? '',
                    courseid: courseDataIndex?.sId ?? '')),
                child: Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    border: Border.all(color: disabledColor),
                  ),
                  child: Column(
                    children: [
                      Hero(
                        tag: courseDataIndex?.sId ?? '',
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child:
                              Image.network(courseDataIndex?.thumbnail ?? ''),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 15,
                        ),
                        child: Column(
                          children: [
                            Text(
                              courseDataIndex?.courseName ?? '',
                              style: appTextStyle(context)?.copyWith(
                                fontWeight: AppDimens.lfontweight,
                                fontSize: AppDimens.headlineFontSizeXSmall,
                              ),
                            ),
                            ListTile(
                              minVerticalPadding: 0,
                              titleTextStyle: appTextStyle(context)?.copyWith(
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
                                courseDataIndex?.studentsEnrolled.toString() ??
                                    "0",
                              ),
                              subtitle: const Text("enrolled"),
                              trailing: Text(
                                  "रु ${courseDataIndex?.cost.toString()}"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}
