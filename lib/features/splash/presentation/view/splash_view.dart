import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/core/services/local_storage.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/constant/app_image.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  final navigationService = locator<AppRouters>();
  final localStorage = locator<LocalStorageService>();
  late Animation<double> logoAnimation;
  late AnimationController logoController;
  @override
  void initState() {
    logoController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    logoAnimation = Tween(begin: 0.5, end: 0.5).animate(
      CurvedAnimation(
        parent: logoController,
        curve: Curves.elasticOut,
      ),
    );
    logoController.forward().then((value) => {goForward()});

    super.initState();
  }

  void goForward() {
    final String? acessToken = localStorage.read(LocalStorageKeys.accessToken);
    if (acessToken == null) {
      navigationService.pushAndPopUntil(
        const LoginView(),
        predicate: (route) => false,
      );
    } else {
      navigationService.pushAndPopUntil(
        const DashboardView(),
        predicate: (route) => false,
      );
    }
  }

  @override
  void dispose() {
    logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: AppImage.logoName,
          child: AnimatedBuilder(
            animation: logoAnimation,
            builder: (context, child) {
              return Image.asset(
                AppImage.logoName,
                color: primaryColor,
                width: (MediaQuery.of(context).size.width / 1.2).w,
              );
            },
          ),
        ),
      ),
    );
  }
}
