import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circlular_container.dart';
class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgeWidget(
      child: Container(
        padding: const EdgeInsets.only(bottom: 0),
        color: MyAppColors.primary,

        /// If size.isFinite is not true, then error occured (SizedBox removed here)
        child: Stack(
          children: [
            /// -- Background Custom Shapes
            Positioned(
                top: -150,
                right: -250,
                child: MyCircularContainer(
                  backgroundColor: MyAppColors.white.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: MyCircularContainer(
                  backgroundColor: MyAppColors.white.withOpacity(0.1),
                )),
            child,
          ],
        ),
      ),
    );
  }
}
