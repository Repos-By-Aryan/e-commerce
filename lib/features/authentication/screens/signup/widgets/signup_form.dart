import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MyHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          ///First and Last Name
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: MyTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              )),
              const SizedBox(
                width: MySizes.spaceBtwInputFields,
              ),
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: MyTexts.lastName,
                    prefixIcon: Icon(Iconsax.user)),
              )),
            ],
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),

          ///Username
          TextFormField(
            decoration: const InputDecoration(
                labelText: MyTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),

          ///Email
          TextFormField(
            decoration: const InputDecoration(
                labelText: MyTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),

          ///Phone Number
          TextFormField(
            decoration: const InputDecoration(
                labelText: MyTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),

          ///Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: MyTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: MySizes.spaceBtwSections,
          ),

          ///Terms&Conditions Checkbox
          const MyTermsAndConditionCheckBox(),
          const SizedBox(
            height: MySizes.spaceBtwSections,
          ),

          ///Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const VerifyEmailScreen());
              },
              child: const Text(MyTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
