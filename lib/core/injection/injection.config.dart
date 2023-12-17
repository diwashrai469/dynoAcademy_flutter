// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dynoacademy/core/app_routers/app_routers.dart' as _i3;
import 'package:dynoacademy/core/services/intercepters.dart' as _i6;
import 'package:dynoacademy/core/services/jwt_token_decoder_service.dart'
    as _i7;
import 'package:dynoacademy/core/services/local_storage.dart' as _i4;
import 'package:dynoacademy/core/services/toast_services.dart' as _i5;
import 'package:dynoacademy/features/course_details/data/repository/course_details_repository_impl.dart'
    as _i12;
import 'package:dynoacademy/features/course_details/data/services/courses_details_services.dart'
    as _i9;
import 'package:dynoacademy/features/course_details/domain/repository/courses_details_repository.dart'
    as _i11;
import 'package:dynoacademy/features/course_details/domain/usecases/get_single_courses_usecase.dart'
    as _i20;
import 'package:dynoacademy/features/course_details/presentation/bloc/course_details_bloc.dart'
    as _i21;
import 'package:dynoacademy/features/courses/data/repository/course_repository_impl.dart'
    as _i14;
import 'package:dynoacademy/features/courses/data/services/courses_services.dart'
    as _i10;
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart'
    as _i13;
import 'package:dynoacademy/features/courses/domain/usecases/get_courses_usercase.dart'
    as _i19;
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart'
    as _i22;
import 'package:dynoacademy/features/log_in/data/repository/login_repository_impl.dart'
    as _i16;
import 'package:dynoacademy/features/log_in/data/services/login_services.dart'
    as _i8;
import 'package:dynoacademy/features/log_in/doman/repository/login_repository.dart'
    as _i15;
import 'package:dynoacademy/features/log_in/doman/usecase/login_user_usecase.dart'
    as _i17;
import 'package:dynoacademy/features/log_in/presentation/cubit/login_cubit_cubit.dart'
    as _i18;
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
    gh.factory<_i4.LocalStorageService>(() => _i4.LocalStorageService());
    gh.lazySingleton<_i5.ToastService>(() => _i5.ToastService());
    gh.factory<_i6.DioService>(() => _i6.DioService(
          gh<_i3.AppRouters>(),
          gh<_i4.LocalStorageService>(),
        ));
    gh.lazySingleton<_i7.JwtTokenDecoderService>(
        () => _i7.JwtTokenDecoderService(gh<_i4.LocalStorageService>()));
    gh.factory<_i8.LoginServices>(
        () => _i8.LoginServices(gh<_i6.DioService>()));
    gh.factory<_i9.CourseDetailsServices>(
        () => _i9.CourseDetailsServices(gh<_i6.DioService>()));
    gh.factory<_i10.CoursesServices>(
        () => _i10.CoursesServices(gh<_i6.DioService>()));
    gh.factory<_i11.ICourseDetailsRepository>(() =>
        _i12.CourseDetailsRepositoryImpl(gh<_i9.CourseDetailsServices>()));
    gh.factory<_i13.ICoursesRepository>(
        () => _i14.CourseRepositoryImpl(gh<_i10.CoursesServices>()));
    gh.factory<_i15.ILoginRepository>(
        () => _i16.LoginRepositoryImpl(gh<_i8.LoginServices>()));
    gh.factory<_i17.LoginUserUsecase>(
        () => _i17.LoginUserUsecase(gh<_i15.ILoginRepository>()));
    gh.factory<_i18.LogincubitCubit>(() => _i18.LogincubitCubit(
          gh<_i5.ToastService>(),
          gh<_i17.LoginUserUsecase>(),
          gh<_i3.AppRouters>(),
          gh<_i4.LocalStorageService>(),
        ));
    gh.factory<_i19.GetCoursesUsecase>(
        () => _i19.GetCoursesUsecase(gh<_i13.ICoursesRepository>()));
    gh.factory<_i20.GetSingleCoursesUsecase>(() =>
        _i20.GetSingleCoursesUsecase(gh<_i11.ICourseDetailsRepository>()));
    gh.factory<_i21.CourseDetailsBloc>(() => _i21.CourseDetailsBloc(
          gh<_i20.GetSingleCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i22.CoursesCubitCubit>(() => _i22.CoursesCubitCubit(
          gh<_i19.GetCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    return this;
  }
}
