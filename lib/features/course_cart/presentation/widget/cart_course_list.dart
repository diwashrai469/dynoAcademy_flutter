import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/widgets/k_button.dart';
import 'package:dynoacademy/features/course_cart/data/model/course_cart_response_model/course_cart_response_model.dart';
import 'package:dynoacademy/features/course_cart/presentation/cubit/course_cart_cubit.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cartCourseList(
    {required BuildContext context,
    required DataLoadedState state,
    CourseCartResponseModel? courseCartResponseModel}) {
  return ListView.builder(
    itemCount: courseCartResponseModel?.data?.length ?? 0,
    itemBuilder: (context, index) {
      final courseCartDetails = courseCartResponseModel?.data?[index];

      return Container(
        margin: const EdgeInsets.all(15),
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
              child:
                  Image.network(courseCartDetails?.courseId?.thumbnail ?? ''),
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
                    titleTextStyle: appTextStyle(context)?.copyWith(
                      fontWeight: AppDimens.lfontweight,
                      fontSize: AppDimens.headlineFontSizeXXSmall,
                    ),
                    subtitleTextStyle: appTextStyle(context)?.copyWith(
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
                      courseCartDetails?.courseId?.studentsEnrolled
                              .toString() ??
                          "0",
                    ),
                    subtitle: const Text("enrolled"),
                    trailing: Text(
                        "रु ${courseCartDetails?.courseId?.cost.toString()}"),
                  ),
                  sHeightSpan,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      KButton(
                          isBusy: state.selectedIndex == index
                              ? state.isRemovingFromCart ?? false
                              : false,
                          backgroundColor: Colors.transparent,
                          size: ButtonSize.small,
                          bordered: true,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.delete,
                                color: darkErrorColor,
                              ),
                              sWidthSpan,
                              Text(
                                "Remove",
                                style: appTextStyle(context),
                              )
                            ],
                          ),
                          onPressed: () {
                            context.read<CourseCartCubit>().removeFromCart(
                                courseCartDetails?.courseId?.sId ?? '', index);
                          })
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
