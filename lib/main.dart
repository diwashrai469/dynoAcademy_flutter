import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/core/services/local_storage.dart';
import 'package:dynoacademy/features/config/cubit/config_cubit_cubit.dart';
import 'package:dynoacademy/features/course_details/presentation/widgets/khalti_constant.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:oktoast/oktoast.dart';

void main() async {
  await LocalStorageService.init();
  setupLocator();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      position: ToastPosition.bottom,
      child: BlocProvider<ConfigCubitCubit>(
        create: (context) =>
            locator<ConfigCubitCubit>()..getConfigTimePeriodic(),
        child: ScreenUtilInit(
          designSize: const Size(AppDimens.appWidth, AppDimens.appHeight),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) => KhaltiScope(
              publicKey: public_key_khalti,
              navigatorKey: locator<AppRouters>().navigatorKey,
              builder: (context, _) {
                return MaterialApp.router(
                    theme: AppThemes.light,
                    debugShowCheckedModeBanner: false,
                    routerConfig: locator<AppRouters>().config(),
                    supportedLocales: const [
                      Locale('en', 'US'),
                      Locale('ne', 'NP'),
                    ],
                    localizationsDelegates: const [
                      KhaltiLocalizations.delegate,
                    ]);
              }),
        ),
      ),
    );
  }
}
