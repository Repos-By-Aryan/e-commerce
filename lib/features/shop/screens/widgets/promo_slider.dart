import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/circlular_container.dart';
import '../../../../common/widgets/images/my_rounded_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class MyPromoSlider extends StatelessWidget {
  const MyPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items:
              banners.map((image) => MyRoundedImage(imageUrl: image)).toList(),
        ),
        const SizedBox(
          height: MySizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  MyCircularContainer(
                    margin: const EdgeInsets.only(right: 10),
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? MyAppColors.primary
                        : MyAppColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
