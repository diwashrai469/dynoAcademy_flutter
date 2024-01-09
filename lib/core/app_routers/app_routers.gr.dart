// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:dynoacademy/features/course_cart/presentation/view/course_cart_view.dart'
    as _i1;
import 'package:dynoacademy/features/course_details/presentation/view/course_details_view.dart'
    as _i2;
import 'package:dynoacademy/features/course_details/presentation/widgets/preview_courses_videos.dart'
    as _i8;
import 'package:dynoacademy/features/courses/presentation/view/courses_view.dart'
    as _i3;
import 'package:dynoacademy/features/dashboard/presentation/view/dashboard_view.dart'
    as _i4;
import 'package:dynoacademy/features/log_in/presentation/view/login_view.dart'
    as _i5;
import 'package:dynoacademy/features/my_course/presentation/view/my_course_view.dart'
    as _i6;
import 'package:dynoacademy/features/notification/presentation/view/notification_view.dart'
    as _i7;
import 'package:dynoacademy/features/splash/presentation/view/splash_view.dart'
    as _i9;
import 'package:dynoacademy/features/unauthorization/presentation/view/unauthorization_view.dart'
    as _i10;
import 'package:flutter/material.dart' as _i12;

abstract class $AppRouters extends _i11.RootStackRouter {
  $AppRouters({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    CourseCartView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CourseCartView(),
      );
    },
    CourseDetails.name: (routeData) {
      final args = routeData.argsAs<CourseDetailsArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CourseDetails(
          key: args.key,
          slug: args.slug,
          courseid: args.courseid,
        ),
      );
    },
    CourseView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CourseView(),
      );
    },
    DashboardView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardView(),
      );
    },
    LoginView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginView(),
      );
    },
    MyCourseView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MyCourseView(),
      );
    },
    NotificationView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationView(),
      );
    },
    PreviewCourseVideos.name: (routeData) {
      final args = routeData.argsAs<PreviewCourseVideosArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.PreviewCourseVideos(
          key: args.key,
          courseId: args.courseId,
          courseTitle: args.courseTitle,
        ),
      );
    },
    SplashView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashView(),
      );
    },
    UnauthorizationView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.UnauthorizationView(),
      );
    },
  };
}

/// generated route for
/// [_i1.CourseCartView]
class CourseCartView extends _i11.PageRouteInfo<void> {
  const CourseCartView({List<_i11.PageRouteInfo>? children})
      : super(
          CourseCartView.name,
          initialChildren: children,
        );

  static const String name = 'CourseCartView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CourseDetails]
class CourseDetails extends _i11.PageRouteInfo<CourseDetailsArgs> {
  CourseDetails({
    _i12.Key? key,
    required String slug,
    required String courseid,
    List<_i11.PageRouteInfo>? children,
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

  static const _i11.PageInfo<CourseDetailsArgs> page =
      _i11.PageInfo<CourseDetailsArgs>(name);
}

class CourseDetailsArgs {
  const CourseDetailsArgs({
    this.key,
    required this.slug,
    required this.courseid,
  });

  final _i12.Key? key;

  final String slug;

  final String courseid;

  @override
  String toString() {
    return 'CourseDetailsArgs{key: $key, slug: $slug, courseid: $courseid}';
  }
}

/// generated route for
/// [_i3.CourseView]
class CourseView extends _i11.PageRouteInfo<void> {
  const CourseView({List<_i11.PageRouteInfo>? children})
      : super(
          CourseView.name,
          initialChildren: children,
        );

  static const String name = 'CourseView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DashboardView]
class DashboardView extends _i11.PageRouteInfo<void> {
  const DashboardView({List<_i11.PageRouteInfo>? children})
      : super(
          DashboardView.name,
          initialChildren: children,
        );

  static const String name = 'DashboardView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginView]
class LoginView extends _i11.PageRouteInfo<void> {
  const LoginView({List<_i11.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MyCourseView]
class MyCourseView extends _i11.PageRouteInfo<void> {
  const MyCourseView({List<_i11.PageRouteInfo>? children})
      : super(
          MyCourseView.name,
          initialChildren: children,
        );

  static const String name = 'MyCourseView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NotificationView]
class NotificationView extends _i11.PageRouteInfo<void> {
  const NotificationView({List<_i11.PageRouteInfo>? children})
      : super(
          NotificationView.name,
          initialChildren: children,
        );

  static const String name = 'NotificationView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PreviewCourseVideos]
class PreviewCourseVideos extends _i11.PageRouteInfo<PreviewCourseVideosArgs> {
  PreviewCourseVideos({
    _i12.Key? key,
    required String courseId,
    required String courseTitle,
    List<_i11.PageRouteInfo>? children,
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

  static const _i11.PageInfo<PreviewCourseVideosArgs> page =
      _i11.PageInfo<PreviewCourseVideosArgs>(name);
}

class PreviewCourseVideosArgs {
  const PreviewCourseVideosArgs({
    this.key,
    required this.courseId,
    required this.courseTitle,
  });

  final _i12.Key? key;

  final String courseId;

  final String courseTitle;

  @override
  String toString() {
    return 'PreviewCourseVideosArgs{key: $key, courseId: $courseId, courseTitle: $courseTitle}';
  }
}

/// generated route for
/// [_i9.SplashView]
class SplashView extends _i11.PageRouteInfo<void> {
  const SplashView({List<_i11.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UnauthorizationView]
class UnauthorizationView extends _i11.PageRouteInfo<void> {
  const UnauthorizationView({List<_i11.PageRouteInfo>? children})
      : super(
          UnauthorizationView.name,
          initialChildren: children,
        );

  static const String name = 'UnauthorizationView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
