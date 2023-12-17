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
import 'package:dynoacademy/core/services/jwt_token_decoder_service.dart';
import 'package:dynoacademy/core/services/local_storage.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final acessToken =
        locator<LocalStorageService>().read(LocalStorageKeys.accessToken);
    final jwtDecoder = locator<JwtTokenDecoderService>().customDecodeJwt();
    TextStyle titleTextstyle = Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: AppDimens.headlineFontSizeSmall1,
        color: primaryColor,
        fontWeight: AppDimens.lfontweight);
    TextStyle subtitleTextstyle =
        Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: AppDimens.headlineFontSizeXSmall,
              color: cursorColor,
            );
    double iconSize = 37.h;
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          children: [Text("drawer")],
        ),
      ),
      appBar: AppBar(
        elevation: 10.h,
        title: Image.asset(
          AppImage.logoName,
          width: AppImage.xxlogowidth,
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.deepPurple,
            child: acessToken?.isNotEmpty == true
                ? Text(
                    jwtDecoder['name'][0],
                    style: appTextStyle(context)?.copyWith(
                        color: Colors.white, fontWeight: AppDimens.lfontweight),
                  )
                : const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
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
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: AppDimens.headlineFontSizeSmall,
                            fontWeight: AppDimens.lfontweight,
                            color: Colors.white),
                      ),
                      lHeightSpan,
                      Text(
                        "Improve your skills and knowledge by setting aside a few minutes each day to take advantage of the comprehensive and convenient on-demand video course platform.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: AppDimens.lfontweight,
                                        color: Colors.white),
                              ),
                              sWidthSpan,
                              const Icon(Icons.arrow_forward)
                            ],
                          ),
                          onPressed: () {
                            locator<AppRouters>().push(const CourseView());
                          }),
                      mHeightSpan,
                      Image.asset(
                        AppImage.dashboardGirl,
                      )
                    ],
                  ),
                ),
              ),
            ),
            mHeightSpan,
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
