import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/utils/html_tags_remover.dart';
import 'package:dynoacademy/common/widgets/k_button.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/features/course_details/data/model/course_details_response_model/course_details_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_status_response_model/course_status_response_model.dart';
import 'package:dynoacademy/features/esewa/esewa.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/constant/app_dimens.dart';
import '../bloc/course_details_bloc.dart';

Widget courseDetailsListview(
    {required BuildContext context,
    CourseData? courseDataDetails,
    required String courseid,
    required CourseDetailsLoadedState state,
    required Data? courseStatus}) {
  void onpressedAction() {
    if (courseStatus?.courseStatus == null) {
      context
          .read<CourseDetailsBloc>()
          .add(AddToCartEvent(courseId: courseDataDetails?.id ?? ''));
    }
    if ((courseStatus?.courseStatus == "active")) {
      locator<AppRouters>().push(
        CourseLesson(
            courseId: courseid,
            courseTitle: courseDataDetails?.courseName ?? ''),
      );
    }
    if ((courseStatus?.courseStatus == "pending")) {
      Esewa().pay();
    }
  }

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
                  courseId: courseid,
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
                  courseId: courseid,
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
            isBusy: state.isAddingToCart ?? false,
            child: buildButtonContent(courseStatus),
            onPressed: () => onpressedAction(),
          ),
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

Widget buildButtonContent(Data? courseStatus) {
  if (courseStatus?.courseStatus == "pending") {
    return Row(
      children: [
        const Icon(
          Icons.check_circle,
          color: successColor,
        ),
        sWidthSpan,
        const Text("Procced to payment"),
      ],
    );
  } else if (courseStatus?.courseStatus == "active") {
    return const Text("Go to course");
  } else {
    return Row(
      children: [
        const Icon(Icons.shopping_cart_outlined),
        xsWidthSpan,
        const Text("Add To Cart"),
      ],
    );
  }
}
