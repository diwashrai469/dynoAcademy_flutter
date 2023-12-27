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
    as _i35;
import 'package:dynoacademy/features/config/data/repository_impl/config_repository_impl.dart'
    as _i15;
import 'package:dynoacademy/features/config/data/services/config_services.dart'
    as _i10;
import 'package:dynoacademy/features/config/domain/repository/config_repository.dart'
    as _i14;
import 'package:dynoacademy/features/config/domain/usecase/config_usecase.dart'
    as _i29;
import 'package:dynoacademy/features/course_cart/data/repository/course_cart_repository_impl.dart'
    as _i17;
import 'package:dynoacademy/features/course_cart/data/services/course_cart_services.dart'
    as _i11;
import 'package:dynoacademy/features/course_cart/domain/repository/course_cart_repository.dart'
    as _i16;
import 'package:dynoacademy/features/course_cart/domain/usecase/course_cart_usecase.dart'
    as _i30;
import 'package:dynoacademy/features/course_cart/presentation/cubit/course_cart_cubit.dart'
    as _i36;
import 'package:dynoacademy/features/course_details/data/repository/course_details_repository_impl.dart'
    as _i19;
import 'package:dynoacademy/features/course_details/data/services/courses_details_services.dart'
    as _i12;
import 'package:dynoacademy/features/course_details/domain/repository/courses_details_repository.dart'
    as _i18;
import 'package:dynoacademy/features/course_details/domain/usecases/get_single_courses_usecase.dart'
    as _i33;
import 'package:dynoacademy/features/course_details/presentation/bloc/course_details_bloc.dart'
    as _i37;
import 'package:dynoacademy/features/courses/data/repository/course_repository_impl.dart'
    as _i21;
import 'package:dynoacademy/features/courses/data/services/courses_services.dart'
    as _i13;
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart'
    as _i20;
import 'package:dynoacademy/features/courses/domain/usecases/get_courses_usercase.dart'
    as _i32;
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart'
    as _i38;
import 'package:dynoacademy/features/dashboard/cubit/dashboard_cubit_cubit.dart'
    as _i31;
import 'package:dynoacademy/features/log_in/data/repository/login_repository_impl.dart'
    as _i23;
import 'package:dynoacademy/features/log_in/data/services/login_services.dart'
    as _i8;
import 'package:dynoacademy/features/log_in/doman/repository/login_repository.dart'
    as _i22;
import 'package:dynoacademy/features/log_in/doman/usecase/login_user_usecase.dart'
    as _i26;
import 'package:dynoacademy/features/log_in/presentation/cubit/login_cubit_cubit.dart'
    as _i27;
import 'package:dynoacademy/features/my_course/data/repository_impl/my_course_impl.dart'
    as _i25;
import 'package:dynoacademy/features/my_course/data/services/my_course_services.dart'
    as _i9;
import 'package:dynoacademy/features/my_course/domain/repository/my_course_repository.dart'
    as _i24;
import 'package:dynoacademy/features/my_course/domain/usecase/my_course_usecase.dart'
    as _i28;
import 'package:dynoacademy/features/my_course/presentation/cubit/my_course_cubit.dart'
    as _i34;
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
    gh.factory<_i9.MyCourseServices>(
        () => _i9.MyCourseServices(gh<_i6.DioService>()));
    gh.factory<_i10.ConfigServices>(
        () => _i10.ConfigServices(gh<_i6.DioService>()));
    gh.factory<_i11.CourseCartServices>(
        () => _i11.CourseCartServices(gh<_i6.DioService>()));
    gh.factory<_i12.CourseDetailsServices>(
        () => _i12.CourseDetailsServices(gh<_i6.DioService>()));
    gh.factory<_i13.CoursesServices>(
        () => _i13.CoursesServices(gh<_i6.DioService>()));
    gh.factory<_i14.IConfigRepository>(
        () => _i15.ConfigRepositoryImpl(gh<_i10.ConfigServices>()));
    gh.factory<_i16.ICourseCartRepository>(
        () => _i17.CourseCartRepositoryImpl(gh<_i11.CourseCartServices>()));
    gh.factory<_i18.ICourseDetailsRepository>(() =>
        _i19.CourseDetailsRepositoryImpl(gh<_i12.CourseDetailsServices>()));
    gh.factory<_i20.ICoursesRepository>(
        () => _i21.CourseRepositoryImpl(gh<_i13.CoursesServices>()));
    gh.factory<_i22.ILoginRepository>(
        () => _i23.LoginRepositoryImpl(gh<_i8.LoginServices>()));
    gh.factory<_i24.IMyCourseRepository>(
        () => _i25.MyCoursesRepositoryImpl(gh<_i9.MyCourseServices>()));
    gh.factory<_i26.LoginUserUsecase>(
        () => _i26.LoginUserUsecase(gh<_i22.ILoginRepository>()));
    gh.factory<_i27.LogincubitCubit>(() => _i27.LogincubitCubit(
          gh<_i5.ToastService>(),
          gh<_i26.LoginUserUsecase>(),
          gh<_i3.AppRouters>(),
          gh<_i4.LocalStorageService>(),
        ));
    gh.factory<_i28.MyCourseUsecase>(
        () => _i28.MyCourseUsecase(gh<_i24.IMyCourseRepository>()));
    gh.factory<_i29.ConfigUsecase>(
        () => _i29.ConfigUsecase(gh<_i14.IConfigRepository>()));
    gh.factory<_i30.CourseCartUsecase>(
        () => _i30.CourseCartUsecase(gh<_i16.ICourseCartRepository>()));
    gh.factory<_i31.DashboardCubitCubit>(() => _i31.DashboardCubitCubit(
          gh<_i29.ConfigUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i32.GetCoursesUsecase>(
        () => _i32.GetCoursesUsecase(gh<_i20.ICoursesRepository>()));
    gh.factory<_i33.GetSingleCoursesUsecase>(() =>
        _i33.GetSingleCoursesUsecase(gh<_i18.ICourseDetailsRepository>()));
    gh.factory<_i34.MyCourseCubit>(() => _i34.MyCourseCubit(
          gh<_i28.MyCourseUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i35.ConfigCubitCubit>(() => _i35.ConfigCubitCubit(
          gh<_i29.ConfigUsecase>(),
          gh<_i5.ToastService>(),
          gh<_i4.LocalStorageService>(),
        ));
    gh.factory<_i36.CourseCartCubit>(() => _i36.CourseCartCubit(
          gh<_i30.CourseCartUsecase>(),
          gh<_i5.ToastService>(),
          gh<_i31.DashboardCubitCubit>(),
        ));
    gh.factory<_i37.CourseDetailsBloc>(() => _i37.CourseDetailsBloc(
          gh<_i33.GetSingleCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i38.CoursesCubitCubit>(() => _i38.CoursesCubitCubit(
          gh<_i32.GetCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    return this;
  }
}
