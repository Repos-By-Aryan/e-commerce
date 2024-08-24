import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class MyFormDivider extends StatelessWidget {
  const MyFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;
  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
              color: isDark ? MyAppColors.darkGrey : MyAppColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            )),
        Text(dividerText,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
              color: isDark ? MyAppColors.darkGrey : MyAppColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60,
            )),
      ],
    );
  }
}

