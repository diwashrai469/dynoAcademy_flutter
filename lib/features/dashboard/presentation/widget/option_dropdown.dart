import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/widgets/k_popupmenuitems.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/app_routers/app_routers.gr.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/core/services/jwt_token_decoder_service.dart';
import 'package:dynoacademy/core/services/local_storage.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget optionDropdown(
  String cartCount,
  BuildContext context,
  String acessToken,
) {
  final jwtDecoder = locator<JwtTokenDecoderService>().customDecodeJwt();
  return kPopupMenuItems(
    onSelected: (String option) {
      if (option == 'Log out') {
        locator<LocalStorageService>().clear(LocalStorageKeys.accessToken);
        locator<AppRouters>().pushAndPopUntil(
          const LoginView(),
          predicate: (route) => false,
        );
      }
      if (option == "My Cart") {
        locator<AppRouters>().push(const CourseCartView());
      }
    },
    itemBuilder: (BuildContext context) {
      return [
        if (acessToken.isNotEmpty)
          PopupMenuItem<String>(
            height: 10.h,
            padding: const EdgeInsets.symmetric(horizontal: 8).w,
            value: 'My Profile',
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Text(
                      jwtDecoder['name'][0],
                      style: appTextStyle(context)?.copyWith(
                          color: Colors.white,
                          fontWeight: AppDimens.lfontweight),
                    ),
                  ),
                  title: Text(
                    jwtDecoder['name'],
                    style: appTextStyle(context)?.copyWith(
                        fontWeight: AppDimens.lfontweight,
                        fontSize: AppDimens.headlineFontSizeSSmall),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        if (acessToken.isNotEmpty)
          PopupMenuItem<String>(
            height: 10.h,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5).w,
            value: 'My Cart',
            child: Row(
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  color: darkGrey,
                ),
                sWidthSpan,
                Text(
                  "My Cart",
                  style: appTextStyle(context)?.copyWith(
                    fontSize: AppDimens.headlineFontSizeXSmall,
                  ),
                ),
                xsWidthSpan,
                CircleAvatar(
                  backgroundColor: errorColor,
                  radius: 12,
                  child: Text(
                    cartCount,
                    style: appTextStyle(context)?.copyWith(
                        color: Colors.white,
                        fontSize: AppDimens.headlineFontSizeXXXSmall),
                  ),
                ),
              ],
            ),
          ),
        if (acessToken.isNotEmpty)
          PopupMenuItem<String>(
              height: 10.h,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5).w,
              value: 'My Courses',
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.book,
                    color: darkGrey,
                  ),
                  sWidthSpan,
                  Text(
                    "My Courses",
                    style: appTextStyle(context)?.copyWith(
                      fontSize: AppDimens.headlineFontSizeXSmall,
                    ),
                  )
                ],
              )),
        PopupMenuItem<String>(
          height: 10.h,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5).w,
          value: 'Log out',
          child: acessToken.isNotEmpty
              ? Row(
                  children: [
                    const Icon(
                      Icons.logout,
                      color: darkErrorColor,
                    ),
                    sWidthSpan,
                    Text(
                      "Log out",
                      style: appTextStyle(context)?.copyWith(
                          fontSize: AppDimens.headlineFontSizeXSmall,
                          color: darkErrorColor),
                    )
                  ],
                )
              : Row(
                  children: [
                    const Icon(
                      Icons.login,
                      color: successColor,
                    ),
                    sWidthSpan,
                    Text(
                      "Log In",
                      style: appTextStyle(context)?.copyWith(
                          fontSize: AppDimens.headlineFontSizeXSmall,
                          fontWeight: AppDimens.lfontweight),
                    )
                  ],
                ),
        ),
      ];
    },
    child: CircleAvatar(
      backgroundColor: Colors.deepPurple,
      child: acessToken.isNotEmpty == true
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
  );
}
