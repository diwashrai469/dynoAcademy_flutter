import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import "app_routers.gr.dart";

@singleton
@AutoRouterConfig()
class AppRouters extends $AppRouters {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashView.page, initial: true),
        AutoRoute(
          page: DashboardView.page,
        ),
        AutoRoute(
          page: CourseView.page,
        ),
        AutoRoute(
          page: CourseDetails.page,
        ),
        AutoRoute(
          page: PreviewCourseVideos.page,
        ),
        AutoRoute(
          page: LoginView.page,
        ),
        AutoRoute(
          page: CourseCartView.page,
        ),
        AutoRoute(
          page: UnauthorizationView.page,
        ),
        AutoRoute(
          page: MyCourseView.page,
        ),
        AutoRoute(
          page: NotificationView.page,
        ),
      ];
}
