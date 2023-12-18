import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// App Dimensions class to reuse values that are used throughout the layout
/// Using a single source of dimensions will create robust ui development,
/// and also make design changes easier.
///

class AppDimens {
  //screenutils
  static const appHeight = 712.0;
  static const appWidth = 360.0;

//page padding
  static final mainPagePadding = const EdgeInsets.only(
    right: 18,
    left: 18,
    top: 7,
  ).h;

//circle avatar radius
  static const sssCircleAvatarRadius = 12.0;
  static const ssCircleAvatarRadius = 15.0;
  static const sCircleAvatarRadius = 17.0;
  static const mCircleAvatarRadius = 20.0;
  static const lCircleAvatarRadius = 25.0;
  static const elCircleAvatarRadius = 30.0;
  static const boarderAvatarCircleRaduis = 26.0;

  static const pagePadding = EdgeInsets.all(20);
  static const pagePaddingX = EdgeInsets.symmetric(horizontal: 20);
  static const pagePaddingY = EdgeInsets.symmetric(vertical: 20);
  static const pagePaddingLarge = EdgeInsets.all(32);

  static const globalCircularRadius = Radius.circular(12.0);

  static const cardRadius = 0.0;
  static const cardBorderRadius = BorderRadius.all(Radius.circular(cardRadius));
  static const double cardPaddingSize = 20;
  static const cardPadding = EdgeInsets.all(cardPaddingSize);
  static const inputBorderRadius = BorderRadius.all(Radius.circular(0));
  static const inputPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static const chipPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 4);
  static final buttonFontSizeXSmall = 14.0.h;
  static final buttonFontSizeSmall = 15.0.h;
  static final buttonFontSizeMedium = 16.0.h;
  static final buttonFontSizeLarge = 17.0.h;

  static final iconButtonSizeSmall = 24.0.h;
  static final iconButtonSizeLarge = 32.0.h;

//boarder radius
  static final sboarderRadisCircular = 8.0.r;

  static final buttonPaddingXSmall =
      const EdgeInsets.symmetric(horizontal: 16, vertical: 8).h;
  static final buttonPaddingSmall =
      const EdgeInsets.symmetric(horizontal: 20, vertical: 12).h;
  static final buttonPaddingMedium =
      const EdgeInsets.symmetric(horizontal: 22, vertical: 16).h;
  static final buttonPaddingLarge =
      const EdgeInsets.symmetric(horizontal: 32, vertical: 24).h;

  static final double titleFontSize = 16.sp;

  //text fontweight
  static const FontWeight sfontweight = FontWeight.w300;
  static const FontWeight mfontweight = FontWeight.w500;
  static const FontWeight lfontweight = FontWeight.w700;

//text fontsize
  static final double headlineFontSizeXXXSmall = 10.sp;
  static final double headlineFontSizeXXSmall = 12.sp;
  static final double headlineFontSizeXSmall = 14.sp;
  static final double headlineFontSizeSSmall = 16.sp;
  static final double headlineFontSizeSmall1 = 18.sp;
  static final double headlineFontSizeSmall = 20.sp;
  static final double headlineFontSizeOther = 22.sp;
  static final double headlineFontSizeMedium = 28.sp;
  static final double headlineFontSizeLarge = 32.sp;

  static const double multiSelectPadding = 8;
}
