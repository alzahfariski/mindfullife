import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/main/page/main_page.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class MisiResultPage extends StatelessWidget {
  const MisiResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primary500,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              tLumi,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: TColors.grey50,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Selamat!',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: TColors.primary800,
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Mendapatkan +10 Poin',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: TColors.primary800,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: TColors.secondary500,
                    thickness: 0.5,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => const MainPage()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Halaman Utama',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.w800,
                                color: TColors.primary800,
                              ),
                        ),
                        const Icon(
                          MingCuteIcons.mgc_right_line,
                          size: 24,
                          color: TColors.primary800,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
