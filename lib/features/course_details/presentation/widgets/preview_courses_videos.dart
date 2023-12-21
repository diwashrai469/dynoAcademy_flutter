import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/widgets/k_video_player.dart';
import 'package:dynoacademy/features/course_details/data/model/course_videos_preview_response_model/course_videos_preview_response_model.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import '../../../../common/widgets/k_empty_data_widget.dart';
import '../../../../common/widgets/k_loading_indicator.dart';
import '../../../../core/injection/injection.dart';
import '../bloc/course_details_bloc.dart';

@RoutePage()
class PreviewCourseVideos extends StatelessWidget {
  final String courseId;
  final String courseTitle;

  const PreviewCourseVideos(
      {super.key, required this.courseId, required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider<CourseDetailsBloc>(
        create: (_) {
          var bloc = locator<CourseDetailsBloc>();
          bloc.add(GetVideosPreview(courseId: courseId));

          return bloc;
        },
        child: BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
          builder: (_, state) {
            if (state is CourseDetailsLoading) {
              return Center(child: kLoadingIndicator(context: context));
            } else if (state is CourseVideoPreviewLoaded) {
              return buildContent(
                  videoUri: state.videoUri ?? '',
                  courseVideosPreviewResponseModel:
                      state.courseVideosPreviewResponseModel,
                  courseTitle: courseTitle,
                  context: context);
            } else if (state is CourseDetailsEmpty) {
              return Center(child: kEmptyDataWidget("No courses available"));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}

Widget buildContent(
    {required String videoUri,
    required CourseVideosPreviewResponseModel? courseVideosPreviewResponseModel,
    required String courseTitle,
    required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Column(
      children: [
        mHeightSpan,
        Text(
          courseTitle,
          textAlign: TextAlign.center,
          style: appTextStyle(context)?.copyWith(
              fontWeight: AppDimens.lfontweight,
              fontSize: AppDimens.headlineFontSizeSSmall),
        ),
        mHeightSpan,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: SizedBox(
            height: 200,
            child: KvideoPlayer(
              videoPlayerController: VideoPlayerController.networkUrl(
                Uri.parse(videoUri),
              ),
              looping: false,
            ),
          ),
        ),
        sHeightSpan,
        const Text("Free Preview Content. Orderd randomly:"),
        sHeightSpan,
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: courseVideosPreviewResponseModel?.data?.length ?? 0,
            itemBuilder: (context, index) {
              final previewVideoIndex =
                  courseVideosPreviewResponseModel?.data?[index];

              return Card(
                color: previewVideoIndex?.lessonVideoUrl == videoUri
                    ? Colors.blue.shade200
                    : null,
                child: ListTile(
                  onTap: () {
                    BlocProvider.of<CourseDetailsBloc>(context).add(
                        ChangeVideoUrl(
                            videoUrl: previewVideoIndex?.lessonVideoUrl ?? ''));
                  },
                  leading: const CircleAvatar(
                    backgroundColor: primaryColor,
                    radius: 20,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "${previewVideoIndex?.lessonIndex.toString() ?? ''}. ${previewVideoIndex?.lessonName ?? ''}",
                    style: appTextStyle(context)?.copyWith(
                      fontSize: AppDimens.headlineFontSizeXSmall,
                    ),
                  ),
                  trailing: Text(
                      "${previewVideoIndex?.lessonDurationMinutes.toString() ?? ''} min"),
                ),
              );
            },
          ),
        )
      ],
    ),
  );
}
