import 'package:coconut_disease_detection/core/styles/spacing_styles.dart';
import 'package:coconut_disease_detection/core/widgets/login_signup/form_divider.dart';
import 'package:coconut_disease_detection/core/widgets/login_signup/social_media_buttons.dart';
import 'package:coconut_disease_detection/core/utils/constants/sizes.dart';
import 'package:coconut_disease_detection/core/utils/constants/text_strings.dart';
import 'package:coconut_disease_detection/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:coconut_disease_detection/features/authentication/views/login/widgets/login_header.dart';
import 'package:coconut_disease_detection/features/authentication/views/login/widgets/login_form.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo, title & subtitle
              CLoginHeader(dark: dark),

              ///form
              const CLoginForm(),

              ///Divider
              Cform_divider(dividerText: CTexts.orsigninWith.capitalize!),

              const SizedBox(height: CSizes.spaceBtwItems),

              ///Footer
              const Csocialmedia()
            ],
          ),
        ),
      ),
    );
  }
}
