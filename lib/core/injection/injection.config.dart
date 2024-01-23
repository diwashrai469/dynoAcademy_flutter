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
    as _i8;
import 'package:dynoacademy/core/services/local_storage.dart' as _i4;
import 'package:dynoacademy/core/services/toast_services.dart' as _i5;
import 'package:dynoacademy/features/config/cubit/config_cubit_cubit.dart'
    as _i42;
import 'package:dynoacademy/features/config/data/repository_impl/config_repository_impl.dart'
    as _i18;
import 'package:dynoacademy/features/config/data/services/config_services.dart'
    as _i13;
import 'package:dynoacademy/features/config/domain/repository/config_repository.dart'
    as _i17;
import 'package:dynoacademy/features/config/domain/usecase/config_usecase.dart'
    as _i35;
import 'package:dynoacademy/features/course_cart/data/repository/course_cart_repository_impl.dart'
    as _i20;
import 'package:dynoacademy/features/course_cart/data/services/course_cart_services.dart'
    as _i14;
import 'package:dynoacademy/features/course_cart/domain/repository/course_cart_repository.dart'
    as _i19;
import 'package:dynoacademy/features/course_cart/domain/usecase/course_cart_usecase.dart'
    as _i36;
import 'package:dynoacademy/features/course_cart/presentation/cubit/course_cart_cubit.dart'
    as _i43;
import 'package:dynoacademy/features/course_details/data/repository/course_details_repository_impl.dart'
    as _i22;
import 'package:dynoacademy/features/course_details/data/services/courses_details_services.dart'
    as _i15;
import 'package:dynoacademy/features/course_details/domain/repository/courses_details_repository.dart'
    as _i21;
import 'package:dynoacademy/features/course_details/domain/usecases/get_single_courses_usecase.dart'
    as _i39;
import 'package:dynoacademy/features/course_details/presentation/bloc/course_details_bloc.dart'
    as _i44;
import 'package:dynoacademy/features/courses/data/repository/course_repository_impl.dart'
    as _i24;
import 'package:dynoacademy/features/courses/data/services/courses_services.dart'
    as _i16;
import 'package:dynoacademy/features/courses/domain/repository/courses_repository.dart'
    as _i23;
import 'package:dynoacademy/features/courses/domain/usecases/get_courses_usercase.dart'
    as _i38;
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart'
    as _i45;
import 'package:dynoacademy/features/dashboard/cubit/dashboard_cubit_cubit.dart'
    as _i37;
import 'package:dynoacademy/features/log_in/data/repository/login_repository_impl.dart'
    as _i26;
import 'package:dynoacademy/features/log_in/data/services/login_services.dart'
    as _i10;
import 'package:dynoacademy/features/log_in/doman/repository/login_repository.dart'
    as _i25;
import 'package:dynoacademy/features/log_in/doman/usecase/login_user_usecase.dart'
    as _i31;
import 'package:dynoacademy/features/log_in/presentation/cubit/login_cubit_cubit.dart'
    as _i32;
import 'package:dynoacademy/features/my_course/data/repository_impl/my_course_impl.dart'
    as _i28;
import 'package:dynoacademy/features/my_course/data/services/my_course_services.dart'
    as _i11;
import 'package:dynoacademy/features/my_course/domain/repository/my_course_repository.dart'
    as _i27;
import 'package:dynoacademy/features/my_course/domain/usecase/my_course_usecase.dart'
    as _i33;
import 'package:dynoacademy/features/my_course/presentation/cubit/my_course_cubit.dart'
    as _i40;
import 'package:dynoacademy/features/notification/data/repository_impl/notification_repository_impl.dart'
    as _i30;
import 'package:dynoacademy/features/notification/data/service/notification_service.dart'
    as _i12;
import 'package:dynoacademy/features/notification/domain/repository/notificaiton_repository.dart'
    as _i29;
import 'package:dynoacademy/features/notification/domain/usecase/notification_usecase.dart'
    as _i34;
import 'package:dynoacademy/features/notification/presentation/bloc/notification_bloc.dart'
    as _i41;
import 'package:dynoacademy/features/payment_getways/esewa/esewa.dart' as _i7;
import 'package:dynoacademy/features/payment_getways/khalti/khalti.dart' as _i9;
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
    gh.factory<_i7.Esewa>(() => _i7.Esewa(gh<_i5.ToastService>()));
    gh.lazySingleton<_i8.JwtTokenDecoderService>(
        () => _i8.JwtTokenDecoderService(gh<_i4.LocalStorageService>()));
    gh.factory<_i9.KhaltiPayment>(
        () => _i9.KhaltiPayment(gh<_i5.ToastService>()));
    gh.factory<_i10.LoginServices>(() => _i10.LoginServices(
          gh<_i6.DioService>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i11.MyCourseServices>(
        () => _i11.MyCourseServices(gh<_i6.DioService>()));
    gh.factory<_i12.NotificaitonService>(
        () => _i12.NotificaitonService(gh<_i6.DioService>()));
    gh.factory<_i13.ConfigServices>(
        () => _i13.ConfigServices(gh<_i6.DioService>()));
    gh.factory<_i14.CourseCartServices>(
        () => _i14.CourseCartServices(gh<_i6.DioService>()));
    gh.factory<_i15.CourseDetailsServices>(
        () => _i15.CourseDetailsServices(gh<_i6.DioService>()));
    gh.factory<_i16.CoursesServices>(
        () => _i16.CoursesServices(gh<_i6.DioService>()));
    gh.factory<_i17.IConfigRepository>(
        () => _i18.ConfigRepositoryImpl(gh<_i13.ConfigServices>()));
    gh.factory<_i19.ICourseCartRepository>(
        () => _i20.CourseCartRepositoryImpl(gh<_i14.CourseCartServices>()));
    gh.factory<_i21.ICourseDetailsRepository>(() =>
        _i22.CourseDetailsRepositoryImpl(gh<_i15.CourseDetailsServices>()));
    gh.factory<_i23.ICoursesRepository>(
        () => _i24.CourseRepositoryImpl(gh<_i16.CoursesServices>()));
    gh.factory<_i25.ILoginRepository>(
        () => _i26.LoginRepositoryImpl(gh<_i10.LoginServices>()));
    gh.factory<_i27.IMyCourseRepository>(
        () => _i28.MyCoursesRepositoryImpl(gh<_i11.MyCourseServices>()));
    gh.factory<_i29.INotificationRepository>(
        () => _i30.NotificationRepository(gh<_i12.NotificaitonService>()));
    gh.factory<_i31.LoginUserUsecase>(
        () => _i31.LoginUserUsecase(gh<_i25.ILoginRepository>()));
    gh.factory<_i32.LogincubitCubit>(() => _i32.LogincubitCubit(
          gh<_i5.ToastService>(),
          gh<_i31.LoginUserUsecase>(),
          gh<_i3.AppRouters>(),
          gh<_i4.LocalStorageService>(),
        ));
    gh.factory<_i33.MyCourseUsecase>(
        () => _i33.MyCourseUsecase(gh<_i27.IMyCourseRepository>()));
    gh.factory<_i34.NotificationUsecase>(
        () => _i34.NotificationUsecase(gh<_i29.INotificationRepository>()));
    gh.factory<_i35.ConfigUsecase>(
        () => _i35.ConfigUsecase(gh<_i17.IConfigRepository>()));
    gh.factory<_i36.CourseCartUsecase>(
        () => _i36.CourseCartUsecase(gh<_i19.ICourseCartRepository>()));
    gh.factory<_i37.DashboardCubitCubit>(() => _i37.DashboardCubitCubit(
          gh<_i35.ConfigUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i38.GetCoursesUsecase>(
        () => _i38.GetCoursesUsecase(gh<_i23.ICoursesRepository>()));
    gh.factory<_i39.GetSingleCoursesUsecase>(() =>
        _i39.GetSingleCoursesUsecase(gh<_i21.ICourseDetailsRepository>()));
    gh.factory<_i40.MyCourseCubit>(() => _i40.MyCourseCubit(
          gh<_i33.MyCourseUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i41.NotificationBloc>(() => _i41.NotificationBloc(
          gh<_i34.NotificationUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i42.ConfigCubitCubit>(() => _i42.ConfigCubitCubit(
          gh<_i35.ConfigUsecase>(),
          gh<_i5.ToastService>(),
          gh<_i4.LocalStorageService>(),
        ));
    gh.factory<_i43.CourseCartCubit>(() => _i43.CourseCartCubit(
          gh<_i36.CourseCartUsecase>(),
          gh<_i5.ToastService>(),
          gh<_i37.DashboardCubitCubit>(),
        ));
    gh.factory<_i44.CourseDetailsBloc>(() => _i44.CourseDetailsBloc(
          gh<_i39.GetSingleCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    gh.factory<_i45.CoursesCubitCubit>(() => _i45.CoursesCubitCubit(
          gh<_i38.GetCoursesUsecase>(),
          gh<_i5.ToastService>(),
        ));
    return this;
  }
}
