// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:dynoacademy/features/course_details/presentation/view/course_details_view.dart'
    as _i1;
import 'package:dynoacademy/features/course_details/presentation/widgets/preview_courses_videos.dart'
    as _i5;
import 'package:dynoacademy/features/courses/presentation/view/courses_view.dart'
    as _i2;
import 'package:dynoacademy/features/dashboard/presentation/view/dashboard_view.dart'
    as _i3;
import 'package:dynoacademy/features/log_in/presentation/view/login_view.dart'
    as _i4;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouters extends _i6.RootStackRouter {
  $AppRouters({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CourseDetails.name: (routeData) {
      final args = routeData.argsAs<CourseDetailsArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CourseDetails(
          key: args.key,
          slug: args.slug,
        ),
      );
    },
    CourseView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CourseView(),
      );
    },
    DashboardView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardView(),
      );
    },
    LoginView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginView(),
      );
    },
    PreviewCourseVideos.name: (routeData) {
      final args = routeData.argsAs<PreviewCourseVideosArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PreviewCourseVideos(
          key: args.key,
          courseId: args.courseId,
          courseTitle: args.courseTitle,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CourseDetails]
class CourseDetails extends _i6.PageRouteInfo<CourseDetailsArgs> {
  CourseDetails({
    _i7.Key? key,
    required String slug,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          CourseDetails.name,
          args: CourseDetailsArgs(
            key: key,
            slug: slug,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseDetails';

  static const _i6.PageInfo<CourseDetailsArgs> page =
      _i6.PageInfo<CourseDetailsArgs>(name);
}

class CourseDetailsArgs {
  const CourseDetailsArgs({
    this.key,
    required this.slug,
  });

  final _i7.Key? key;

  final String slug;

  @override
  String toString() {
    return 'CourseDetailsArgs{key: $key, slug: $slug}';
  }
}

/// generated route for
/// [_i2.CourseView]
class CourseView extends _i6.PageRouteInfo<void> {
  const CourseView({List<_i6.PageRouteInfo>? children})
      : super(
          CourseView.name,
          initialChildren: children,
        );

  static const String name = 'CourseView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardView]
class DashboardView extends _i6.PageRouteInfo<void> {
  const DashboardView({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardView.name,
          initialChildren: children,
        );

  static const String name = 'DashboardView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginView]
class LoginView extends _i6.PageRouteInfo<void> {
  const LoginView({List<_i6.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PreviewCourseVideos]
class PreviewCourseVideos extends _i6.PageRouteInfo<PreviewCourseVideosArgs> {
  PreviewCourseVideos({
    _i7.Key? key,
    required String courseId,
    required String courseTitle,
    List<_i6.PageRouteInfo>? children,
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

  static const _i6.PageInfo<PreviewCourseVideosArgs> page =
      _i6.PageInfo<PreviewCourseVideosArgs>(name);
}

class PreviewCourseVideosArgs {
  const PreviewCourseVideosArgs({
    this.key,
    required this.courseId,
    required this.courseTitle,
  });

  final _i7.Key? key;

  final String courseId;

  final String courseTitle;

  @override
  String toString() {
    return 'PreviewCourseVideosArgs{key: $key, courseId: $courseId, courseTitle: $courseTitle}';
  }
}
