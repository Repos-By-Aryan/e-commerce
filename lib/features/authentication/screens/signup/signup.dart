import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(
                MyTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),

              ///Form
              const MySignupForm(),
              const SizedBox(height: MySizes.spaceBtwSections,),

              ///Divider
              const MyFormDivider(dividerText: MyTexts.orSignUpWith),
              const SizedBox(height: MySizes.spaceBtwSections,),


              ///Social Buttons
              const MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


