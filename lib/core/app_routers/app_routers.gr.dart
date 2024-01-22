// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:dynoacademy/features/course_cart/presentation/view/course_cart_view.dart'
    as _i1;
import 'package:dynoacademy/features/course_details/presentation/view/course_details_view.dart'
    as _i2;
import 'package:dynoacademy/features/course_details/presentation/widgets/course_lessons.dart'
    as _i3;
import 'package:dynoacademy/features/course_details/presentation/widgets/preview_courses_videos.dart'
    as _i9;
import 'package:dynoacademy/features/courses/presentation/view/courses_view.dart'
    as _i4;
import 'package:dynoacademy/features/dashboard/presentation/view/dashboard_view.dart'
    as _i5;
import 'package:dynoacademy/features/log_in/presentation/view/login_view.dart'
    as _i6;
import 'package:dynoacademy/features/my_course/presentation/view/my_course_view.dart'
    as _i7;
import 'package:dynoacademy/features/notification/presentation/view/notification_view.dart'
    as _i8;
import 'package:dynoacademy/features/splash/presentation/view/splash_view.dart'
    as _i10;
import 'package:dynoacademy/features/unauthorization/presentation/view/unauthorization_view.dart'
    as _i11;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouters extends _i12.RootStackRouter {
  $AppRouters({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    CourseCartView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CourseCartView(),
      );
    },
    CourseDetails.name: (routeData) {
      final args = routeData.argsAs<CourseDetailsArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CourseDetails(
          key: args.key,
          slug: args.slug,
          courseid: args.courseid,
        ),
      );
    },
    CourseLesson.name: (routeData) {
      final args = routeData.argsAs<CourseLessonArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CourseLesson(
          key: args.key,
          courseId: args.courseId,
          courseTitle: args.courseTitle,
        ),
      );
    },
    CourseView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CourseView(),
      );
    },
    DashboardView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardView(),
      );
    },
    LoginView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginView(),
      );
    },
    MyCourseView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MyCourseView(),
      );
    },
    NotificationView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NotificationView(),
      );
    },
    PreviewCourseVideos.name: (routeData) {
      final args = routeData.argsAs<PreviewCourseVideosArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.PreviewCourseVideos(
          key: args.key,
          courseId: args.courseId,
          courseTitle: args.courseTitle,
        ),
      );
    },
    SplashView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashView(),
      );
    },
    UnauthorizationView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.UnauthorizationView(),
      );
    },
  };
}

/// generated route for
/// [_i1.CourseCartView]
class CourseCartView extends _i12.PageRouteInfo<void> {
  const CourseCartView({List<_i12.PageRouteInfo>? children})
      : super(
          CourseCartView.name,
          initialChildren: children,
        );

  static const String name = 'CourseCartView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CourseDetails]
class CourseDetails extends _i12.PageRouteInfo<CourseDetailsArgs> {
  CourseDetails({
    _i13.Key? key,
    required String slug,
    required String courseid,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CourseDetails.name,
          args: CourseDetailsArgs(
            key: key,
            slug: slug,
            courseid: courseid,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseDetails';

  static const _i12.PageInfo<CourseDetailsArgs> page =
      _i12.PageInfo<CourseDetailsArgs>(name);
}

class CourseDetailsArgs {
  const CourseDetailsArgs({
    this.key,
    required this.slug,
    required this.courseid,
  });

  final _i13.Key? key;

  final String slug;

  final String courseid;

  @override
  String toString() {
    return 'CourseDetailsArgs{key: $key, slug: $slug, courseid: $courseid}';
  }
}

/// generated route for
/// [_i3.CourseLesson]
class CourseLesson extends _i12.PageRouteInfo<CourseLessonArgs> {
  CourseLesson({
    _i13.Key? key,
    required String courseId,
    required String courseTitle,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CourseLesson.name,
          args: CourseLessonArgs(
            key: key,
            courseId: courseId,
            courseTitle: courseTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseLesson';

  static const _i12.PageInfo<CourseLessonArgs> page =
      _i12.PageInfo<CourseLessonArgs>(name);
}

class CourseLessonArgs {
  const CourseLessonArgs({
    this.key,
    required this.courseId,
    required this.courseTitle,
  });

  final _i13.Key? key;

  final String courseId;

  final String courseTitle;

  @override
  String toString() {
    return 'CourseLessonArgs{key: $key, courseId: $courseId, courseTitle: $courseTitle}';
  }
}

/// generated route for
/// [_i4.CourseView]
class CourseView extends _i12.PageRouteInfo<void> {
  const CourseView({List<_i12.PageRouteInfo>? children})
      : super(
          CourseView.name,
          initialChildren: children,
        );

  static const String name = 'CourseView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DashboardView]
class DashboardView extends _i12.PageRouteInfo<void> {
  const DashboardView({List<_i12.PageRouteInfo>? children})
      : super(
          DashboardView.name,
          initialChildren: children,
        );

  static const String name = 'DashboardView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginView]
class LoginView extends _i12.PageRouteInfo<void> {
  const LoginView({List<_i12.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MyCourseView]
class MyCourseView extends _i12.PageRouteInfo<void> {
  const MyCourseView({List<_i12.PageRouteInfo>? children})
      : super(
          MyCourseView.name,
          initialChildren: children,
        );

  static const String name = 'MyCourseView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NotificationView]
class NotificationView extends _i12.PageRouteInfo<void> {
  const NotificationView({List<_i12.PageRouteInfo>? children})
      : super(
          NotificationView.name,
          initialChildren: children,
        );

  static const String name = 'NotificationView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PreviewCourseVideos]
class PreviewCourseVideos extends _i12.PageRouteInfo<PreviewCourseVideosArgs> {
  PreviewCourseVideos({
    _i13.Key? key,
    required String courseId,
    required String courseTitle,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          PreviewCourseVideos.name,
          args: PreviewCourseVideosArgs(
            key: key,
            courseId: courseId,
            courseTitle: courseTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'PreviewCourseVideos';

  static const _i12.PageInfo<PreviewCourseVideosArgs> page =
      _i12.PageInfo<PreviewCourseVideosArgs>(name);
}

class PreviewCourseVideosArgs {
  const PreviewCourseVideosArgs({
    this.key,
    required this.courseId,
    required this.courseTitle,
  });

  final _i13.Key? key;

  final String courseId;

  final String courseTitle;

  @override
  String toString() {
    return 'PreviewCourseVideosArgs{key: $key, courseId: $courseId, courseTitle: $courseTitle}';
  }
}

/// generated route for
/// [_i10.SplashView]
class SplashView extends _i12.PageRouteInfo<void> {
  const SplashView({List<_i12.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UnauthorizationView]
class UnauthorizationView extends _i12.PageRouteInfo<void> {
  const UnauthorizationView({List<_i12.PageRouteInfo>? children})
      : super(
          UnauthorizationView.name,
          initialChildren: children,
        );

  static const String name = 'UnauthorizationView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
