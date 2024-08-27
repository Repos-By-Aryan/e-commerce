import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MyTermsAndConditionCheckBox extends StatelessWidget {
  const MyTermsAndConditionCheckBox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child:
            Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: MySizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${MyTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MyTexts.privacyPolicy,
              style:
              Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark
                    ? MyAppColors.white
                    : MyAppColors.primary,
                decorationColor: dark
                    ? MyAppColors.white
                    : MyAppColors.primary,
                decoration: TextDecoration.underline,
              )),
          TextSpan(
              text: ' ${MyTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MyTexts.terms0fUse,
              style:
              Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark
                    ? MyAppColors.white
                    : MyAppColors.primary,
                decorationColor: dark
                    ? MyAppColors.white
                    : MyAppColors.primary,
                decoration: TextDecoration.underline,
              )),
        ])),
      ],
    );
  }
}
