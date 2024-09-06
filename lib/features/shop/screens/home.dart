import 'dart:developer';

import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/shop/screens/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/widgets/home_catgories.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../common/widgets/products/cart/cart_menu_icon.dart';
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
        ],
      )),
    );
  }
}

