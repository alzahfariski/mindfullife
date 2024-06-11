import 'package:flutter/material.dart';
import 'package:midfullife/utils/common/circular_container.dart';
import 'package:midfullife/utils/common/curved_edges_widget.dart';
import 'package:midfullife/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary500,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                backgroundColor: TColors.grey50.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                backgroundColor: TColors.grey50.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}