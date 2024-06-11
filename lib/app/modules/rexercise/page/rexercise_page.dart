import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/rexercise/page/rexercise_detail_page.dart';
import 'package:midfullife/app/modules/rexercise/widgets/meditasi_widget.dart';
import 'package:midfullife/utils/common/header_container.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class RexercisePage extends StatelessWidget {
  const RexercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(
                            MingCuteIcons.mgc_arrow_left_line,
                            color: TColors.primary800,
                          ),
                        ),
                        Text(
                          'Rexercise',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                    Image.asset(
                      tLumi,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Meditasi',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => const RexerciseDetailPage()),
                    child: const MeditasiWidget(
                      img: meditasi2,
                      title: 'Relaksasi',
                      subtitle:
                          'Membantu mengurangi stres dan ketegangan dengan merilekskan otot-otot tubuh secara bertahap.',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MeditasiWidget(
                    img: meditasi1,
                    title: 'Kesadaran Penuh',
                    subtitle:
                        'Membantu menjadi lebih sadar akan momen saat ini, mengurangi stres, dan meningkatkan kesejahteraan mental.',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MeditasiWidget(
                    img: meditasi3,
                    title: 'Transendental',
                    subtitle:
                        'Membantu mencapai keadaan relaksasi yang mendalam dan meningkatkan kesadaran dengan menggunakan pengulangan mantra.',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MeditasiWidget(
                    img: meditasi4,
                    title: 'Loving-Kindness',
                    subtitle:
                        'Mengembangkan perasaan kasih sayang dan kebaikan terhadap diri sendiri dan orang lain, yang dapat meningkatkan kesejahteraan',
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
