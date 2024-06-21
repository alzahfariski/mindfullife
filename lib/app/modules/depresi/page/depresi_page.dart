import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/depresi/page/depresi_tes.dart';
import 'package:midfullife/utils/common/header_container.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class DepresiPage extends StatelessWidget {
  const DepresiPage({super.key});

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
                          'Tes DASS skala Depresi',
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
                    'Memahami Keadaan Emosi Kamu',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cocok untuk',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: TColors.primary300,
                    ),
                    child: Text(
                      'Dewasa dan Remaja',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Referensi',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: TColors.primary300,
                    ),
                    child: Text(
                      'Lovibond SH, & Lovibond PF. (1995). Manual for the Depression Anxiety Stress Scales (2nd. ed). Sydney, Australia: Psychology Foundation.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Note',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: TColors.primary300,
                    ),
                    child: Text(
                      'Tes ini hanya sebuah gambaran dan tidak membuat diagnosis sendirinya. Tetap dianjurkan untuk berbagi hasil tes dengan Psikolog',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const DepresiTes());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: TColors.primary800,
          ),
          child: Text(
            'Mulai',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: TColors.grey50,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
