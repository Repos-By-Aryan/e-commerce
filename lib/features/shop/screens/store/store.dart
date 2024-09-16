import 'dart:developer';

import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/my_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/my_circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          MyCartCounterIcon(
            onPressed: () {},
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: MyHelperFunctions.isDarkMode(context)
                  ? MyAppColors.black
                  : MyAppColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(MySizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    /// --Search Bar
                    SizedBox(
                      height: MySizes.spaceBtwItems,
                    ),
                    MySearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(
                      height: MySizes.spaceBtwSections,
                    ),

                    /// --Featured Brands
                    MySectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: MySizes.spaceBtwItems / 1.5,
                    ),

                    MyGridLayout(
                      mainAxisExtent: 80,
                      itemCount: 4,
                      itemBuilder: (_,index){
                        return GestureDetector(
                          onTap: (){},
                          child: MyRoundedContainer(
                            padding: const EdgeInsets.all(MySizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  child: MyCircularImage(
                                    isNetworkImage: false,
                                    image: MyImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: MyHelperFunctions.isDarkMode(context)
                                        ? MyAppColors.white
                                        : MyAppColors.black,
                                  ),
                                ),
                                const SizedBox(width: MySizes.spaceBtwItems/2,),

                                /// -- Text
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const MyBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.large,),
                                      Text("256 products with ahkse",style: Theme.of(context).textTheme.labelMedium,overflow: TextOverflow.ellipsis,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
