import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/features/shop/screens/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          MyPrimaryHeaderContainer(
            child: Column(
              children: [
                /// Custom App Bar
                MyHomeAppBar(),
                SizedBox(
                  height: MySizes.spaceBtwSections,
                ),

                /// -- Search
                MySearchContainer(
                  text: 'Search in Store',
                ),
                SizedBox(
                  height: MySizes.spaceBtwSections,
                ),

                /// -- Categories
                Padding(
                  padding: EdgeInsets.only(left: MySizes.defaultSpace),
                  child: Column(
                    children: [
                      /// --Heading
                      MySectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: MyAppColors.white,
                      ),
                      SizedBox(
                        height: MySizes.spaceBtwItems,
                      ),

                      /// -- Categories
                      MyHomeCategories(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Carousel Slider
          Padding(
            padding: EdgeInsets.all(MySizes.md),
            child: Column(
              children: [
                /// -- Promotion Banner Slider
                MyPromoSlider(
                  banners: [
                    MyImages.promoBanner1,
                    MyImages.promoBanner2,
                    MyImages.promoBanner3,
                    MyImages.promoBanner4,
                    MyImages.promoBanner5,
                    MyImages.promoBanner6,
                    MyImages.promoBanner7,
                    MyImages.promoBanner8
                  ],
                ),
                SizedBox(
                  height: MySizes.spaceBtwSections,
                ),

                /// -- Vertical Product Card
                MyProductCardVertical(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
