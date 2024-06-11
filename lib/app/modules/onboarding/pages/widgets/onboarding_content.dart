import 'package:flutter/material.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/sizes.dart';
import 'package:midfullife/utils/helpers/helper_functions.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.title,
    required this.body,
    required this.image,
  });

  final String title, body, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: TSizes.defaultSpace,
              ),
              width: THelperFunctions.screenWidth() * 0.7,
              child: Text(
                title,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: TColors.primary900,
                    ),
              ),
            ),
          ],
        ),
        Image(
          width: THelperFunctions.screenWidth(),
          height: THelperFunctions.screenWidth(),
          image: AssetImage(image),
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: TColors.primary500,
          ),
          width: THelperFunctions.screenWidth(),
          height: THelperFunctions.screenHeight() * 0.36,
          child: Container(
            width: THelperFunctions.screenWidth(),
            padding: const EdgeInsets.only(top: 60),
            child: Text(
              body,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: TColors.primary900,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
