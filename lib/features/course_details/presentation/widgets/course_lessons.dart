import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/widgets/k_video_player.dart';
import 'package:dynoacademy/features/course_details/data/model/course_lessons_response_model/course_lessons_response_model.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import '../../../../common/widgets/k_loading_indicator.dart';
import '../../../../core/injection/injection.dart';
import '../bloc/course_details_bloc.dart';

@RoutePage()
class CourseLesson extends StatelessWidget {
  final String courseId;
  final String courseTitle;

  const CourseLesson(
      {super.key, required this.courseId, required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider<CourseDetailsBloc>(
        create: (_) {
          var bloc = locator<CourseDetailsBloc>();
          bloc.add(GetCourseLesson(courseId: courseId));

          return bloc;
        },
        child: BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
          builder: (_, state) {
            if (state is CourseDetailsLoadingState) {
              return Center(child: kLoadingIndicator(context: context));
            } else if (state is CourseLessonLoadedState) {
              return buildContent(
                  videoUri: state.videoUrl,
                  courseLessonsResponseModel: state.courseLessonsResponseModel,
                  courseTitle: courseTitle,
                  context: context);
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}

Widget buildContent(
    {required String videoUri,
    required CourseLessonsResponseModel? courseLessonsResponseModel,
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
        const Text("Orderd randomly:"),
        sHeightSpan,
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: courseLessonsResponseModel?.data?.length ?? 0,
            itemBuilder: (context, indexs) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Text(
                            "${courseLessonsResponseModel?.data?[indexs].sectionIndex.toString() ?? ''}. ",
                            style: appTextStyle(context)?.copyWith(
                              fontSize: AppDimens.headlineFontSizeXSmall,
                            ),
                          ),
                          title: Text(
                            courseLessonsResponseModel
                                    ?.data?[indexs].sectionName ??
                                '',
                            style: appTextStyle(context)?.copyWith(
                                fontSize: AppDimens.headlineFontSizeSSmall,
                                fontWeight: AppDimens.lfontweight),
                          ),
                        )),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: courseLessonsResponseModel
                            ?.data?[indexs].lessons?.length ??
                        0,
                    itemBuilder: (context, index) {
                      final courseLessonData =
                          courseLessonsResponseModel?.data?[indexs];

                      return Card(
                        color:
                            courseLessonData?.lessons?[index].lessonVideoUrl ==
                                    videoUri
                                ? Colors.blue.shade200
                                : null,
                        child: ListTile(
                          onTap: () =>
                              BlocProvider.of<CourseDetailsBloc>(context).add(
                            ChangeVideoUrlOfCourseLessonEvent(
                                videoUrl: courseLessonData
                                        ?.lessons?[index].lessonVideoUrl ??
                                    ''),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: 20.r,
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            "${courseLessonData?.lessons?[index].lessonIndex.toString() ?? ''}. ${courseLessonData?.lessons?[index].lessonName ?? ''}",
                            style: appTextStyle(context)?.copyWith(
                              fontSize: AppDimens.headlineFontSizeXSmall,
                            ),
                          ),
                          trailing: Text(
                              "${courseLessonData?.lessons?[index].lessonDurationMinutes.toString() ?? ''} min"),
                        ),
                      );
                    },
                  ),
                  mHeightSpan,
                ],
              );
            },
          ),
        )
      ],
    ),
  );
}
