import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class MyCircularImage extends StatelessWidget {
  const MyCircularImage({
    super.key,
    this.fit,
    required this.image,
    required this.isNetworkImage,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = MySizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? (MyHelperFunctions.isDarkMode(context)
            ? MyAppColors.black
            : MyAppColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit :fit,
        image: isNetworkImage? NetworkImage(image):AssetImage(image) as ImageProvider,
        color: overlayColor
      ),
    );
  }
}
