import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class MySpacingStyles{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MySizes.appBarHeight,
    left: MySizes.defaultSpace,
    right: MySizes.defaultSpace,
    bottom: MySizes.defaultSpace,
  );
}