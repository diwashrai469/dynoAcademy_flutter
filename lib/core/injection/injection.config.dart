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
import 'package:dynoacademy/features/courses/data/repository/course_repository_impl.dart'
    as _i9;
import 'package:dynoacademy/features/courses/data/services/courses_services.dart'
    as _i7;
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart'
    as _i8;
import 'package:dynoacademy/features/courses/domain/usecases/get_courses.dart'
    as _i10;
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart'
    as _i11;
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
    gh.factory<_i7.CoursesServices>(
        () => _i7.CoursesServices(gh<_i4.DioService>()));
    gh.factory<_i8.ICoursesRepository>(
        () => _i9.CourseRepositoryImpl(gh<_i7.CoursesServices>()));
    gh.factory<_i10.GetCourses>(
        () => _i10.GetCourses(gh<_i8.ICoursesRepository>()));
    gh.factory<_i11.CoursesCubitCubit>(() => _i11.CoursesCubitCubit(
          gh<_i10.GetCourses>(),
          gh<_i3.AppRouters>(),
          gh<_i6.ToastService>(),
        ));
    return this;
  }
}
