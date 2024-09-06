import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class MyVerticalImageText extends StatelessWidget {
  const MyVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = MyAppColors.white,
    this.backgroundColor ,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MySizes.spaceBtwItems),
        child: Column(
          children: [
            /// -- Circular Images
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(MySizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark? MyAppColors.black : MyAppColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? MyAppColors.light : MyAppColors.dark,
                ),
              ),
            ),

            /// Texts
            const SizedBox(
              height: MySizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
