import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';

class SplashScreenPage extends StatelessWidget {
  SplashScreenPage({super.key});

  final onboardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    onboardingController.startAnimation();
    return Scaffold(
      backgroundColor: TColors.primary500,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: double.infinity,
            child: SizedBox(
              height: 120,
              child: Image.asset(
                tLogoPrimary,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            'MindfulLife',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: TColors.primary800,
                ),
          ),
        ],
      ),
    );
  }
}
