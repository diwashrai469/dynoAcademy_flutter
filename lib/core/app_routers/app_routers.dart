import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import "app_routers.gr.dart";

@singleton
@AutoRouterConfig()
class AppRouters extends $AppRouters {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DashboardView.page, initial: true),
        AutoRoute(
          page: CourseView.page,
        ),
        AutoRoute(
          page: CourseDetails.page,
        ),
        AutoRoute(
          page: PreviewCourseVideos.page,
        ),
      ];
}
