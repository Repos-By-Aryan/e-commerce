import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, Title, and Sub-title
              const MyLoginHeader(),

              ///Form
              const MyLoginForm(),

              ///Divider
              MyFormDivider(dividerText: MyTexts.orSignInWith.capitalize!,),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Footer
              const MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}





