import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
        right: MySizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () =>OnboardingController.instance.nextPage()       ,
          style:ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:dark? MyAppColors.primary:Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
