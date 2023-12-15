// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dynoacademy/core/app_routers/app_routers.dart' as _i3;
import 'package:dynoacademy/core/services/intercepters.dart' as _i4;
import 'package:dynoacademy/core/services/local_storage.dart' as _i5;
import 'package:dynoacademy/core/services/toast_services.dart' as _i6;
import 'package:dynoacademy/features/course_details/data/repository/course_repository_impl.dart'
    as _i10;
import 'package:dynoacademy/features/course_details/data/services/courses_services.dart'
    as _i7;
import 'package:dynoacademy/features/course_details/domain/repository/courses_repository.dart'
    as _i9;
import 'package:dynoacademy/features/course_details/domain/usecases/get_courses.dart'
    as _i14;
import 'package:dynoacademy/features/course_details/presentation/bloc/course_details_bloc.dart'
    as _i15;
import 'package:dynoacademy/features/courses/data/repository/course_repository_impl.dart'
    as _i12;
import 'package:dynoacademy/features/courses/data/services/courses_services.dart'
    as _i8;
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart'
    as _i11;
import 'package:dynoacademy/features/courses/domain/usecases/get_courses.dart'
    as _i13;
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart'
    as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppRouters>(_i3.AppRouters());
    gh.factory<_i4.DioService>(() => _i4.DioService());
    gh.factory<_i5.LocalStorageService>(() => _i5.LocalStorageService());
    gh.lazySingleton<_i6.ToastService>(() => _i6.ToastService());
    gh.factory<_i7.CourseDetailsServices>(
        () => _i7.CourseDetailsServices(gh<_i4.DioService>()));
    gh.factory<_i8.CoursesServices>(
        () => _i8.CoursesServices(gh<_i4.DioService>()));
    gh.factory<_i9.ICourseDetailsRepository>(() =>
        _i10.CourseDetailsRepositoryImpl(gh<_i7.CourseDetailsServices>()));
    gh.factory<_i11.ICoursesRepository>(
        () => _i12.CourseRepositoryImpl(gh<_i8.CoursesServices>()));
    gh.factory<_i13.GetCourses>(
        () => _i13.GetCourses(gh<_i11.ICoursesRepository>()));
    gh.factory<_i14.GetSingleCourses>(
        () => _i14.GetSingleCourses(gh<_i9.ICourseDetailsRepository>()));
    gh.factory<_i15.CourseDetailsBloc>(() => _i15.CourseDetailsBloc(
          gh<_i14.GetSingleCourses>(),
          gh<_i6.ToastService>(),
        ));
    gh.factory<_i16.CoursesCubitCubit>(() => _i16.CoursesCubitCubit(
          gh<_i13.GetCourses>(),
          gh<_i3.AppRouters>(),
          gh<_i6.ToastService>(),
        ));
    return this;
  }
}
