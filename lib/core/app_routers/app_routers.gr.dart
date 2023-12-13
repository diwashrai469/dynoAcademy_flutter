// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:dynoacademy/features/courses/presentation/view/courses_view.dart'
    as _i1;
import 'package:dynoacademy/features/dashboard/presentation/view/dashboard_view.dart'
    as _i2;

abstract class $AppRouters extends _i3.RootStackRouter {
  $AppRouters({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    CourseView.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CourseView(),
      );
    },
    DashboardView.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardView(),
      );
    },
  };
}

/// generated route for
/// [_i1.CourseView]
class CourseView extends _i3.PageRouteInfo<void> {
  const CourseView({List<_i3.PageRouteInfo>? children})
      : super(
          CourseView.name,
          initialChildren: children,
        );

  static const String name = 'CourseView';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardView]
class DashboardView extends _i3.PageRouteInfo<void> {
  const DashboardView({List<_i3.PageRouteInfo>? children})
      : super(
          DashboardView.name,
          initialChildren: children,
        );

  static const String name = 'DashboardView';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
