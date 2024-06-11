import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/auth/page/login_page.dart';
import 'package:midfullife/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/device/device_utility.dart';
import 'package:midfullife/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: THelperFunctions.screenWidth() * 0.4,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: Obx(() {
        final controller = Get.find<OnBoardingController>();
        return controller.isLastPage.value
            ? ElevatedButton(
                onPressed: () => Get.to(() => const LoginPage()),
                style: ElevatedButton.styleFrom(
                  // shape: const CircleBorder(),
                  backgroundColor: TColors.primary700,
                  padding: const EdgeInsets.all(16),
                ),
                child: Text(
                  'Mulai',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: TColors.grey50,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              )
            : ElevatedButton(
                onPressed: () => controller.nextPage(),
                style: ElevatedButton.styleFrom(
                  // shape: const CircleBorder(),
                  backgroundColor: TColors.primary700,
                  padding: const EdgeInsets.all(16),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: TColors.grey50,
                ),
              );
      }),
    );
  }
}
