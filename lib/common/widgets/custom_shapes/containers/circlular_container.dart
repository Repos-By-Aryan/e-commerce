import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class MyCircularContainer extends StatelessWidget {
  const MyCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding=0,
    this.radius=400,
    this.child,
    this.backgroundColor = MyAppColors.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double padding;
  final double radius;
  final Widget? child;
  final EdgeInsets? margin;
  final Color backgroundColor ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}