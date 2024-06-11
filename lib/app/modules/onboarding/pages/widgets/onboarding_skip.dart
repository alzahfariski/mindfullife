import 'package:flutter/material.dart';
import 'package:midfullife/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/sizes.dart';
import 'package:midfullife/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: TColors.primary600,
              ),
        ),
      ),
    );
  }
}
