
import 'package:e_commerce/utils/device/device_utility.dart';

import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MyTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MyAppColors.black : MyAppColors.white,
      child: TabBar(
        isScrollable: true,
        labelColor: dark ? MyAppColors.white : MyAppColors.black,
        unselectedLabelColor: MyAppColors.darkGrey,
        indicatorColor: MyAppColors.primary,
        tabs: tabs
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppBarHeight()) ;
}
