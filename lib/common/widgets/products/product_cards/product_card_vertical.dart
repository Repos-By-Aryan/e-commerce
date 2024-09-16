import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/circlular_container.dart';
import 'package:e_commerce/common/widgets/icons/my_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/my_rounded_image.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../texts/my_brand_title_text_with_verified_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadows.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyAppColors.darkerGrey : MyAppColors.white,
        ),
        child: Column(children: [
          /// Thumbnail, Wishlist Button , Discount Tag
          MyRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(MySizes.sm),
            backgroundColor: dark ? MyAppColors.dark : MyAppColors.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                const MyRoundedImage(
                  imageUrl: MyImages.productImage1,
                  applyImageRadius: true,
                ),

                /// -- Sale Tag
                Positioned(
                  top: 12,
                  child: MyRoundedContainer(
                    radius: MySizes.sm,
                    backgroundColor: MyAppColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: MySizes.sm, vertical: MySizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: MyAppColors.black),
                    ),
                  ),
                ),

                /// -- Favourite Icon Button
                Positioned(
                    top: 0,
                    right: 0,
                    child: MyCircularIcon(
                      onPressed: () {},
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )),
              ],
            ),
          ),


          /// --Details
          Padding(
            padding: const EdgeInsets.only(left: MySizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyProductTitleText(
                  title: 'Green Nike Air Shoes',
                  smallSize: true,
                ),
                const SizedBox(
                  height: MySizes.spaceBtwItems / 2,
                ),
                MyBrandTitleWithVerifiedIcon(title: 'Nike',),

              ],
            ),
          ),

          const Spacer(),
          /// -- Price & Add Icon
          Padding(
            padding: const EdgeInsets.only(left:MySizes.sm),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// --Price
                MyProductPriceText(
                  price: '35.0',
                ),

                /// --Add to cart button
                Container(
                  decoration: const BoxDecoration(
                    color: MyAppColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MySizes.cardRadiusMd),
                      bottomRight:
                      Radius.circular(MySizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      width: MySizes.iconLg * 1.2,
                      height: MySizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(
                            Iconsax.add,
                            color: MyAppColors.white,
                          ))),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

