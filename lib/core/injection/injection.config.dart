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
import 'package:dynoacademy/features/course_cart/data/repository/course_cart_repository_impl.dart'
    as _i13;
import 'package:dynoacademy/features/course_cart/data/services/course_cart_services.dart'
    as _i9;
import 'package:dynoacademy/features/course_cart/domain/repository/course_cart_repository.dart'
    as _i12;
import 'package:dynoacademy/features/course_cart/domain/usecase/course_cart_usecase.dart'
    as _i22;
import 'package:dynoacademy/features/course_cart/presentation/cubit/course_cart_cubit.dart'
    as _i25;
import 'package:dynoacademy/features/course_details/data/repository/course_details_repository_impl.dart'
    as _i15;
import 'package:dynoacademy/features/course_details/data/services/courses_details_services.dart'
    as _i10;
import 'package:dynoacademy/features/course_details/domain/repository/courses_details_repository.dart'
    as _i14;
import 'package:dynoacademy/features/course_details/domain/usecases/get_single_courses_usecase.dart'
    as _i24;
import 'package:dynoacademy/features/course_details/presentation/bloc/course_details_bloc.dart'
    as _i26;
import 'package:dynoacademy/features/courses/data/repository/course_repository_impl.dart'
    as _i17;
import 'package:dynoacademy/features/courses/data/services/courses_services.dart'
    as _i11;
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart'
    as _i16;
import 'package:dynoacademy/features/courses/domain/usecases/get_courses_usercase.dart'
    as _i23;
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart'
    as _i27;
import 'package:dynoacademy/features/log_in/data/repository/login_repository_impl.dart'
    as _i19;
import 'package:dynoacademy/features/log_in/data/services/login_services.dart'
    as _i8;
import 'package:dynoacademy/features/log_in/doman/repository/login_repository.dart'
    as _i18;
import 'package:dynoacademy/features/log_in/doman/usecase/login_user_usecase.dart'
    as _i20;
import 'package:dynoacademy/features/log_in/presentation/cubit/login_cubit_cubit.dart'
    as _i21;
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
    gh.factory<_i9.CourseCartServices>(
        () => _i9.CourseCartServices(gh<_i6.DioService>()));
    gh.factory<_i10.CourseDetailsServices>(
        () => _i10.CourseDetailsServices(gh<_i6.DioService>()));
    gh.factory<_i11.CoursesServices>(
        () => _i11.CoursesServices(gh<_i6.DioService>()));
    gh.factory<_i12.ICourseCartRepository>(
        () => _i13.CourseCartRepositoryImpl(gh<_i9.CourseCartServices>()));
    gh.factory<_i14.ICourseDetailsRepository>(() =>
        _i15.CourseDetailsRepositoryImpl(gh<_i10.CourseDetailsServices>()));
    gh.factory<_i16.ICoursesRepository>(
        () => _i17.CourseRepositoryImpl(gh<_i11.CoursesServices>()));
    gh.factory<_i18.ILoginRepository>(
        () => _i19.LoginRepositoryImpl(gh<_i8.LoginServices>()));
    gh.factory<_i20.LoginUserUsecase>(
        () => _i20.LoginUserUsecase(gh<_i18.ILoginRepository>()));
    gh.factory<_i21.LogincubitCubit>(() => _i21.LogincubitCubit(
          gh<_i5.ToastService>(),
          gh<_i20.LoginUserUsecase>(),
          gh<_i3.AppRouters>(),
          gh<_i4.LocalStorageService>(),
        ));
    gh.factory<_i22.CourseCartUsecase>(
        () => _i22.CourseCartUsecase(gh<_i12.ICourseCartRepository>()));
    gh.factory<_i23.GetCoursesUsecase>(
        () => _i23.GetCoursesUsecase(gh<_i16.ICoursesRepository>()));
    gh.factory<_i24.GetSingleCoursesUsecase>(() =>
        _i24.GetSingleCoursesUsecase(gh<_i14.ICourseDetailsRepository>()));
    gh.factory<_i25.CourseCartCubit>(() => _i25.CourseCartCubit(
          gh<_i22.CourseCartUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i26.CourseDetailsBloc>(() => _i26.CourseDetailsBloc(
          gh<_i24.GetSingleCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i27.CoursesCubitCubit>(() => _i27.CoursesCubitCubit(
          gh<_i23.GetCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    return this;
  }
}
