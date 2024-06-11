import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:midfullife/app/modules/onboarding/pages/widgets/onboarding_content.dart';
import 'package:midfullife/app/modules/onboarding/pages/widgets/onboarding_dot_navigation.dart';
import 'package:midfullife/app/modules/onboarding/pages/widgets/onboarding_next_button.dart';
import 'package:midfullife/app/modules/onboarding/pages/widgets/onboarding_skip.dart';
import 'package:midfullife/utils/constants/image_string.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingContent(
                title: 'Temukan\nKekuatan dirimu',
                body:
                    'Santai dan berkembang bersama.\nbuka potensi dan meditasi,\nexplore semua di Mindfullife',
                image: tOnBoardingImage1,
              ),
              OnboardingContent(
                title: 'Upgrade\nmoodmu',
                body:
                    'Stress, kecemasan, badmood?\nTanya aja sama Lumi si asisten\nmental sehatmu!',
                image: tOnBoardingImage2,
              ),
              OnboardingContent(
                title: 'Pahami\nEmosimu!',
                body:
                    'Pelajari cara mengelola stres,\nkecemasan, dan depresi\nbiar hidup makin Chill.',
                image: tOnBoardingImage3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
