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
import 'package:dynoacademy/features/config/cubit/config_cubit_cubit.dart'
    as _i30;
import 'package:dynoacademy/features/config/data/repository_impl/config_repository_impl.dart'
    as _i14;
import 'package:dynoacademy/features/config/data/services/config_services.dart'
    as _i9;
import 'package:dynoacademy/features/config/domain/repository/config_repository.dart'
    as _i13;
import 'package:dynoacademy/features/config/domain/usecase/config_usecase.dart'
    as _i25;
import 'package:dynoacademy/features/course_cart/data/repository/course_cart_repository_impl.dart'
    as _i16;
import 'package:dynoacademy/features/course_cart/data/services/course_cart_services.dart'
    as _i10;
import 'package:dynoacademy/features/course_cart/domain/repository/course_cart_repository.dart'
    as _i15;
import 'package:dynoacademy/features/course_cart/domain/usecase/course_cart_usecase.dart'
    as _i26;
import 'package:dynoacademy/features/course_cart/presentation/cubit/course_cart_cubit.dart'
    as _i31;
import 'package:dynoacademy/features/course_details/data/repository/course_details_repository_impl.dart'
    as _i18;
import 'package:dynoacademy/features/course_details/data/services/courses_details_services.dart'
    as _i11;
import 'package:dynoacademy/features/course_details/domain/repository/courses_details_repository.dart'
    as _i17;
import 'package:dynoacademy/features/course_details/domain/usecases/get_single_courses_usecase.dart'
    as _i29;
import 'package:dynoacademy/features/course_details/presentation/bloc/course_details_bloc.dart'
    as _i32;
import 'package:dynoacademy/features/courses/data/repository/course_repository_impl.dart'
    as _i20;
import 'package:dynoacademy/features/courses/data/services/courses_services.dart'
    as _i12;
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart'
    as _i19;
import 'package:dynoacademy/features/courses/domain/usecases/get_courses_usercase.dart'
    as _i28;
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart'
    as _i33;
import 'package:dynoacademy/features/dashboard/cubit/dashboard_cubit_cubit.dart'
    as _i27;
import 'package:dynoacademy/features/log_in/data/repository/login_repository_impl.dart'
    as _i22;
import 'package:dynoacademy/features/log_in/data/services/login_services.dart'
    as _i8;
import 'package:dynoacademy/features/log_in/doman/repository/login_repository.dart'
    as _i21;
import 'package:dynoacademy/features/log_in/doman/usecase/login_user_usecase.dart'
    as _i23;
import 'package:dynoacademy/features/log_in/presentation/cubit/login_cubit_cubit.dart'
    as _i24;
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
    gh.factory<_i8.LoginServices>(() => _i8.LoginServices(
          gh<_i6.DioService>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i9.ConfigServices>(
        () => _i9.ConfigServices(gh<_i6.DioService>()));
    gh.factory<_i10.CourseCartServices>(
        () => _i10.CourseCartServices(gh<_i6.DioService>()));
    gh.factory<_i11.CourseDetailsServices>(
        () => _i11.CourseDetailsServices(gh<_i6.DioService>()));
    gh.factory<_i12.CoursesServices>(
        () => _i12.CoursesServices(gh<_i6.DioService>()));
    gh.factory<_i13.IConfigRepository>(
        () => _i14.ConfigRepositoryImpl(gh<_i9.ConfigServices>()));
    gh.factory<_i15.ICourseCartRepository>(
        () => _i16.CourseCartRepositoryImpl(gh<_i10.CourseCartServices>()));
    gh.factory<_i17.ICourseDetailsRepository>(() =>
        _i18.CourseDetailsRepositoryImpl(gh<_i11.CourseDetailsServices>()));
    gh.factory<_i19.ICoursesRepository>(
        () => _i20.CourseRepositoryImpl(gh<_i12.CoursesServices>()));
    gh.factory<_i21.ILoginRepository>(
        () => _i22.LoginRepositoryImpl(gh<_i8.LoginServices>()));
    gh.factory<_i23.LoginUserUsecase>(
        () => _i23.LoginUserUsecase(gh<_i21.ILoginRepository>()));
    gh.factory<_i24.LogincubitCubit>(() => _i24.LogincubitCubit(
          gh<_i5.ToastService>(),
          gh<_i23.LoginUserUsecase>(),
          gh<_i3.AppRouters>(),
          gh<_i4.LocalStorageService>(),
        ));
    gh.factory<_i25.ConfigUsecase>(
        () => _i25.ConfigUsecase(gh<_i13.IConfigRepository>()));
    gh.factory<_i26.CourseCartUsecase>(
        () => _i26.CourseCartUsecase(gh<_i15.ICourseCartRepository>()));
    gh.factory<_i27.DashboardCubitCubit>(() => _i27.DashboardCubitCubit(
          gh<_i25.ConfigUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i28.GetCoursesUsecase>(
        () => _i28.GetCoursesUsecase(gh<_i19.ICoursesRepository>()));
    gh.factory<_i29.GetSingleCoursesUsecase>(() =>
        _i29.GetSingleCoursesUsecase(gh<_i17.ICourseDetailsRepository>()));
    gh.factory<_i30.ConfigCubitCubit>(() => _i30.ConfigCubitCubit(
          gh<_i25.ConfigUsecase>(),
          gh<_i5.ToastService>(),
          gh<_i4.LocalStorageService>(),
        ));
    gh.factory<_i31.CourseCartCubit>(() => _i31.CourseCartCubit(
          gh<_i26.CourseCartUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i32.CourseDetailsBloc>(() => _i32.CourseDetailsBloc(
          gh<_i29.GetSingleCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i33.CoursesCubitCubit>(() => _i33.CoursesCubitCubit(
          gh<_i28.GetCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    return this;
  }
}
