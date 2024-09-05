import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/texts.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: MyAppColors.grey),
          ),
          Text(
            MyTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: MyAppColors.white),
          ),
        ],
      ),
      actions: [
        MyCartCounterIcon(onPressed: (){}, iconColor: MyAppColors.white,),
      ],
    );
  }
}
