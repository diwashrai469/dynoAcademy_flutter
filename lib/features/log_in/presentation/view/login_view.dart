import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/constant/app_dimens.dart';
import 'package:dynoacademy/common/constant/app_image.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/widgets/k_button.dart';
import 'package:dynoacademy/common/widgets/k_textformfield.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Padding(
            padding: AppDimens.mainPagePadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImage.logoName,
                  color: primaryColor,
                ),
                elHeightSpan,
                KTextFormField(
                  label: "Email",
                  required: true,
                  hint: "Enter your email.",
                  validator: (value) {
                    if (value?.isEmpty == true ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value ?? '')) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
                sHeightSpan,
                KTextFormField(
                  label: "Password",
                  hint: "Enter your password.",
                  required: true,
                  obscureText: true,
                  validator: (value) {
                    if (value?.isEmpty == true) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ),
                mHeightSpan,
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forget password?",
                    style: appTextStyle(context)?.copyWith(
                        color: primaryColor, fontWeight: AppDimens.lfontweight),
                  ),
                ),
                lHeightSpan,
                KButton(child: const Text("Sign in"), onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
