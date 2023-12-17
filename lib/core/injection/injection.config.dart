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
import 'package:dynoacademy/core/services/toast_services.dart' as _i7;
import 'package:dynoacademy/features/course_details/data/repository/course_details_repository_impl.dart'
    as _i11;
import 'package:dynoacademy/features/course_details/data/services/courses_details_services.dart'
    as _i8;
import 'package:dynoacademy/features/course_details/domain/repository/courses_details_repository.dart'
    as _i10;
import 'package:dynoacademy/features/course_details/domain/usecases/get_single_courses.dart'
    as _i18;
import 'package:dynoacademy/features/course_details/presentation/bloc/course_details_bloc.dart'
    as _i19;
import 'package:dynoacademy/features/courses/data/repository/course_repository_impl.dart'
    as _i13;
import 'package:dynoacademy/features/courses/data/services/courses_services.dart'
    as _i9;
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart'
    as _i12;
import 'package:dynoacademy/features/courses/domain/usecases/get_courses.dart'
    as _i17;
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart'
    as _i20;
import 'package:dynoacademy/features/log_in/data/repository/login_repository_impl.dart'
    as _i15;
import 'package:dynoacademy/features/log_in/data/services/login_services.dart'
    as _i6;
import 'package:dynoacademy/features/log_in/doman/repository/login_repository.dart'
    as _i14;
import 'package:dynoacademy/features/log_in/doman/usecase/login_usecace.dart'
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
    gh.factory<_i6.LoginServices>(() => _i6.LoginServices());
    gh.lazySingleton<_i7.ToastService>(() => _i7.ToastService());
    gh.factory<_i8.CourseDetailsServices>(
        () => _i8.CourseDetailsServices(gh<_i4.DioService>()));
    gh.factory<_i9.CoursesServices>(
        () => _i9.CoursesServices(gh<_i4.DioService>()));
    gh.factory<_i10.ICourseDetailsRepository>(() =>
        _i11.CourseDetailsRepositoryImpl(gh<_i8.CourseDetailsServices>()));
    gh.factory<_i12.ICoursesRepository>(
        () => _i13.CourseRepositoryImpl(gh<_i9.CoursesServices>()));
    gh.factory<_i14.ILoginRepository>(
        () => _i15.LoginRepositoryImpl(gh<_i6.LoginServices>()));
    gh.factory<_i16.LoginUser>(
        () => _i16.LoginUser(gh<_i14.ILoginRepository>()));
    gh.factory<_i17.GetCourses>(
        () => _i17.GetCourses(gh<_i12.ICoursesRepository>()));
    gh.factory<_i18.GetSingleCourses>(
        () => _i18.GetSingleCourses(gh<_i10.ICourseDetailsRepository>()));
    gh.factory<_i19.CourseDetailsBloc>(() => _i19.CourseDetailsBloc(
          gh<_i18.GetSingleCourses>(),
          gh<_i7.ToastService>(),
        ));
    gh.factory<_i20.CoursesCubitCubit>(() => _i20.CoursesCubitCubit(
          gh<_i17.GetCourses>(),
          gh<_i7.ToastService>(),
        ));
    return this;
  }
}
