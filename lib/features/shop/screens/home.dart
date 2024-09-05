import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/shop/screens/widgets/home_appbar.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/products/cart/cart_menu_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          MyPrimaryHeaderContainer(
            child: Column(
              children: [
                /// Custom App Bar
                MyHomeAppBar(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}


