import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/core/services/local_storage.dart';
import 'package:dynoacademy/features/config/cubit/config_cubit_cubit.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

void main() async {
  await LocalStorageService.init();
  setupLocator();
  locator<ConfigCubitCubit>().getConfigTimePeriodic();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
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
    );
  }
}
