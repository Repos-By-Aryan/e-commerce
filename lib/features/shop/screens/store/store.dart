import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          MyCartCounterIcon(onPressed: (){},),
        ],
      ),
    );
  }
}
