import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/widgets/k_container_for_bottom_sheet.dart';
import 'package:dynoacademy/common/widgets/k_video_player.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../../../common/widgets/k_empty_data_widget.dart';
import '../../../../common/widgets/k_loading_indicator.dart';
import '../../../../core/injection/injection.dart';
import '../bloc/course_details_bloc.dart';

class PreviewCourseVideos extends StatefulWidget {
  final String courseId;
  final String courseTitle;

  const PreviewCourseVideos(
      {super.key, required this.courseId, required this.courseTitle});

  @override
  State<PreviewCourseVideos> createState() => _PreviewCourseVideosState();
}

class _PreviewCourseVideosState extends State<PreviewCourseVideos> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CourseDetailsBloc>(
      create: (_) {
        var bloc = locator<CourseDetailsBloc>();
        bloc.add(GetVideosPreview(courseId: widget.courseId));

        return bloc;
      },
      child: BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
        builder: (_, state) {
          if (state is CourseDetailsLoading) {
            return Center(child: kLoadingIndicator(context: context));
          }
          if (state is CourseVideoPreviewLoaded) {
            return bottomsheetContent(
                state: state,
                courseTitle: widget.courseTitle,
                context: context);
          } else if (state is CourseDetailsEmpty) {
            return Center(child: kEmptyDataWidget("No any courses"));
          }
          return const Text("Something went wrong");
        },
      ),
    );
  }
}

Widget bottomsheetContent(
    {required CourseDetailsState state,
    required String courseTitle,
    required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Column(
      children: [
        kContainerForBottomSheet(),
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
              onPressed: () => locator<AppRouters>().pop(),
              child: Text(
                "Close",
                style: appTextStyle(context)?.copyWith(
                    color: errorColor, fontWeight: AppDimens.lfontweight),
              )),
        ),
        Text(
          courseTitle,
          textAlign: TextAlign.center,
          style: appTextStyle(context)?.copyWith(
              fontWeight: AppDimens.lfontweight,
              fontSize: AppDimens.headlineFontSizeSSmall),
        ),
        sHeightSpan,
        Expanded(
          child: ListView.builder(
            itemCount:
                state.courseVideosPreviewResponseModel?.data?.length ?? 0,
            itemBuilder: (context, index) {
              final previewVideoIndex =
                  state.courseVideosPreviewResponseModel?.data?[index];
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: SizedBox(
                      height: 100,
                      child: KvideoPlayer(
                          videoPlayerController:
                              VideoPlayerController.networkUrl(Uri.parse(
                                  previewVideoIndex?.lesson_video_url ?? '')),
                          looping: false),
                    ),
                  )
                ],
              );
            },
          ),
        )
      ],
    ),
  );
}
