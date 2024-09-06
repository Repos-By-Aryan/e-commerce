import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class MySearchContainer extends StatelessWidget {
  const MySearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder = true, this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap:onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
        child: Container(
          width: MyDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(MySizes.md),
          decoration:BoxDecoration(
            color: showBackground ? dark ? MyAppColors.dark: MyAppColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(MySizes.cardRadiusLg),
            border: Border.all(color: MyAppColors.grey),
          ),
          child: Row(
            children: [
              Icon(icon,color: MyAppColors.darkerGrey,),
              const SizedBox(width: MySizes.spaceBtwItems,),
              Text(text,style: Theme.of(context).textTheme.bodySmall,),
            ],
          ),
        ),
      ),
    );
  }
}
