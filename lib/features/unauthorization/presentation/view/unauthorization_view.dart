import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/widgets/k_button.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UnauthorizationView extends StatelessWidget {
  const UnauthorizationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Icon(
                        CupertinoIcons.alarm,
                        color: Colors.lightBlue,
                        size: 60,
                      ),
                    ),
                    sHeightSpan,
                    Center(
                      child: Text(
                        "Your session has expired!",
                        style: appTextStyle(context)!.copyWith(
                            color: darkErrorColor,
                            fontSize: AppDimens.headlineFontSizeSmall1),
                      ),
                    ),
                    mHeightSpan,
                    Text(
                      "Possible reasons:",
                      style: appTextStyle(context)!.copyWith(
                          fontWeight: AppDimens.lfontweight,
                          fontSize: AppDimens.headlineFontSizeSmall1),
                    ),
                    sHeightSpan,
                    Text(
                      "- Logged in from Another Device. Only one device is allowed concurrent access and sharing of accounts is not permitted. Please review our Terms of Service",
                      style: appTextStyle(context)!.copyWith(
                          color: Colors.black,
                          fontWeight: AppDimens.mfontweight),
                    ),
                    sHeightSpan,
                    Text(
                      "- Or, Account password was changed",
                      style: appTextStyle(context)!.copyWith(
                          color: Colors.black,
                          fontWeight: AppDimens.mfontweight),
                    ),
                    sHeightSpan,
                    Text(
                      "- Or, There was an security update on dynoAcademy",
                      style: appTextStyle(context)!.copyWith(
                          color: Colors.black,
                          fontWeight: AppDimens.mfontweight),
                    ),
                    elHeightSpan,
                    KButton(
                      child: Row(
                        children: [
                          const Icon(Icons.login),
                          sWidthSpan,
                          const Text("Re-Login")
                        ],
                      ),
                      onPressed: () {
                        locator<AppRouters>().pushAndPopUntil(
                          const LoginView(),
                          predicate: (route) => false,
                        );
                      },
                    ),
                    lHeightSpan,
                    Text(
                      "If you have previously shared your password and are experiencing frequent session expirations, please Reset your password",
                      textAlign: TextAlign.center,
                      style: appTextStyle(context)!.copyWith(
                          color: Colors.black,
                          fontWeight: AppDimens.lfontweight),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
