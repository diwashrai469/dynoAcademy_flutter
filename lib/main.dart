import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/features/courses/presentation/cubit/courses_cubit_cubit.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CoursesCubitCubit>(
          create: (BuildContext context) =>
              locator<CoursesCubitCubit>()..getCourse(),
        ),
      ],
      child: OKToast(
        position: ToastPosition.bottom,
        child: ScreenUtilInit(
          designSize: const Size(AppDimens.appWidth, AppDimens.appHeight),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) => MaterialApp.router(
            theme: AppThemes.light,
            debugShowCheckedModeBanner: false,
            routerConfig: locator<AppRouters>().config(),
          ),
        ),
      ),
    ),
  );
}
