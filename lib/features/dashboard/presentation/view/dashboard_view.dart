import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/app_image.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/widgets/k_button.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/core/services/local_storage.dart';
import 'package:dynoacademy/features/dashboard/presentation/widget/option_dropdown.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/animation_image.dart';

@RoutePage()
class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final acessToken =
        locator<LocalStorageService>().read(LocalStorageKeys.accessToken);

    TextStyle titleTextstyle = appTextStyle(context)!.copyWith(
        fontSize: AppDimens.headlineFontSizeSSmall,
        color: primaryColor,
        fontWeight: AppDimens.lfontweight);
    TextStyle subtitleTextstyle = appTextStyle(context)!.copyWith(
      fontSize: AppDimens.headlineFontSizeXSmall,
      color: cursorColor,
    );
    double iconSize = 35.h;
    return Scaffold(
      appBar: AppBar(
        elevation: 10.h,
        title: Image.asset(
          AppImage.logoName,
          width: AppImage.xxlogowidth,
        ),
        actions: [
          optionDropdown(
            context,
            acessToken ?? '',
          ),
          mWidthSpan,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: primaryColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Center(
                  child: Column(
                    children: [
                      lHeightSpan,
                      Text(
                        "Nepali tech courses with expert instruction.",
                        textAlign: TextAlign.center,
                        style: appTextStyle(context)?.copyWith(
                            fontSize: AppDimens.headlineFontSizeSmall,
                            fontWeight: AppDimens.lfontweight,
                            color: Colors.white),
                      ),
                      lHeightSpan,
                      Text(
                        "Improve your skills and knowledge by setting aside a few minutes each day to take advantage of the comprehensive and convenient on-demand video course platform.",
                        textAlign: TextAlign.center,
                        style: appTextStyle(context)?.copyWith(
                            fontSize: AppDimens.headlineFontSizeXSmall,
                            color: Colors.white),
                      ),
                      elHeightSpan,
                      KButton(
                        backgroundColor: darkSucessColor,
                        child: Row(
                          children: [
                            Text(
                              "Browse Course",
                              style: appTextStyle(context)?.copyWith(
                                  fontWeight: AppDimens.lfontweight,
                                  color: Colors.white),
                            ),
                            sWidthSpan,
                            const Icon(Icons.arrow_forward)
                          ],
                        ),
                        onPressed: () =>
                            locator<AppRouters>().push(const CourseView()),
                      ),
                      mHeightSpan,
                      const AnimationImage()
                    ],
                  ),
                ),
              ),
            ),
            sHeightSpan,
            ListTile(
              leading: Icon(
                Icons.restart_alt_rounded,
                color: primaryColor,
                size: iconSize,
              ),
              title: Text("Steady Learning", style: titleTextstyle),
              subtitle: Text("Learn few minutes a day & Progress",
                  style: subtitleTextstyle),
            ),
            ListTile(
              leading: Icon(
                Icons.file_copy_rounded,
                color: primaryColor,
                size: iconSize,
              ),
              title: Text(
                "Earn Certificate",
                style: titleTextstyle,
              ),
              subtitle: Text("Showcase your talent with certificate",
                  style: subtitleTextstyle),
            ),
            ListTile(
              leading: Icon(
                Icons.lock_clock_sharp,
                color: primaryColor,
                size: iconSize,
              ),
              title: Text(
                "Lifetime access",
                style: titleTextstyle,
              ),
              subtitle: Text("Learn few minutes a day & Progress",
                  style: subtitleTextstyle),
            )
          ],
        ),
      ),
    );
  }
}
