import 'package:flutter/material.dart';
import 'package:midfullife/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/device/device_utility.dart';
import 'package:midfullife/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() +
          THelperFunctions.screenHeight() * 0.26,
      left: THelperFunctions.screenWidth() * 0.4,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: const ExpandingDotsEffect(
          activeDotColor: TColors.primary700,
          dotColor: TColors.grey50,
          dotWidth: 8,
          dotHeight: 6,
        ),
      ),
    );
  }
}
