import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/utils/html_tags_remover.dart';
import 'package:dynoacademy/common/widgets/k_button.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/course_details_bloc.dart';

Widget courseDetailsList(
    {required CourseDetailsState state, required BuildContext context}) {
  final courseDataDetails =
      state.courseDetailsResponseModel?.pageProps?.courseData;
  return SingleChildScrollView(
    child: Padding(
      padding: AppDimens.mainPagePadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mHeightSpan,
          Text(
            courseDataDetails?.courseName ?? '',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: primaryColor,
                  fontSize: AppDimens.headlineFontSizeSSmall,
                  fontWeight: AppDimens.lfontweight,
                ),
          ),
          lHeightSpan,
          GestureDetector(
            onTap: () => locator<AppRouters>().push(
              PreviewCourseVideos(
                  courseId: courseDataDetails?.id ?? '',
                  courseTitle: courseDataDetails?.courseName ?? ''),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Hero(
                  tag: courseDataDetails?.id ?? '',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(courseDataDetails?.thumbnail ?? ''),
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
                  courseId: courseDataDetails?.id ?? '',
                  courseTitle: courseDataDetails?.courseName ?? ''),
            ),
          ),
          mHeightSpan,
          Text(courseDataDetails?.courseInfo ?? ''),
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
                  Text(courseDataDetails?.skillLevel ?? '--')
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
                      "${courseDataDetails?.studentsEnrolled ?? "-- "} Enrolls"),
                ],
              ),
              Text(
                "रु ${courseDataDetails?.cost.toString()}",
                style: appTextStyle(context)?.copyWith(
                    color: primaryColor,
                    fontWeight: AppDimens.lfontweight,
                    fontSize: AppDimens.headlineFontSizeSSmall),
              ),
            ],
          ),
          lHeightSpan,
          KButton(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.shopping_cart_outlined),
                  sWidthSpan,
                  const Text("Add To Cart"),
                ],
              ),
              onPressed: () {}),
          elHeightSpan,
          Text(
            "About Course",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: primaryColor,
                  fontSize: AppDimens.headlineFontSizeSmall,
                  fontWeight: AppDimens.lfontweight,
                ),
          ),
          Text(
            removeHtmlTags(courseDataDetails?.courseDescription ?? ''),
          )
        ],
      ),
    ),
  );
}
