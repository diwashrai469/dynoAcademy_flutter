import "package:dynoacademy/common/constant/app_dimens.dart";
import "package:dynoacademy/common/constant/app_image.dart";
import "package:dynoacademy/common/constant/ui_helpers.dart";
import "package:dynoacademy/common/utils/app_text_style.dart";
import "package:dynoacademy/common/widgets/k_bottomsheet.dart";
import "package:dynoacademy/common/widgets/k_container_for_bottom_sheet.dart";
import "package:dynoacademy/core/injection/injection.dart";
import "package:dynoacademy/features/payment_getways/esewa/esewa.dart";
import "package:dynoacademy/features/payment_getways/khalti/khalti.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

paymentOptionBottomsheet(
    {required BuildContext context,
    required String productName,
    required num productPrice}) {
  kBottonsheet(
    context: context,
    widget: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        kContainerForBottomSheet(),
        mHeightSpan,
        Text(
          "Choose Payment Method:",
          style: appTextStyle(context)?.copyWith(
              fontSize: AppDimens.headlineFontSizeSSmall,
              fontWeight: AppDimens.lfontweight),
        ),
        lHeightSpan,
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          color: Colors.greenAccent.shade100,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListTile(
            leading: Image.asset(
              AppImage.esewaImg,
              height: 25.h,
            ),
            title: const Text(
              "Esewa Wallet",
            ),
            onTap: () => locator<Esewa>()
                .pay(productName: productName, productPrice: productPrice),
          ),
        ),
        sHeightSpan,
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          color: const Color.fromARGB(255, 197, 174, 226),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListTile(
            leading: Image.asset(
              AppImage.khaltiImg,
              height: 28.h,
            ),
            title: const Text("Khalti Wallet"),
            onTap: () => locator<KhaltiPayment>().payWithKhaltiInApp(
                context: context,
                productName: productName,
                productPrice: productPrice),
          ),
        )
      ],
    ),
  );
}
