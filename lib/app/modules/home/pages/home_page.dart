import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/auth/controllers/dass_stress_controller.dart';
import 'package:midfullife/app/modules/cemas/page/cemas_page.dart';
import 'package:midfullife/app/modules/depresi/page/depresi_page.dart';
import 'package:midfullife/app/modules/misi/page/misi_page.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final DassStressController dassStressController =
        Get.put(DassStressController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Alzah fariski',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage(tDefaultpp),
                    backgroundColor: TColors.primary800,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kondisi Anda',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 166,
                        child: Text(
                          'Tes DASS skala Stress',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: TColors.grey50,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 0,
                            color: TColors.grey200,
                            offset: Offset(0, 0),
                          ),
                        ]),
                    child: CircularPercentIndicator(
                      animation: true,
                      backgroundColor: TColors.primary500,
                      animationDuration: 200,
                      center: Text(
                        dassStressController.stressStatus.value,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      backgroundWidth: 2,
                      curve: Curves.bounceInOut,
                      circularStrokeCap: CircularStrokeCap.round,
                      lineWidth: 4,
                      percent: dassStressController.precent.value,
                      progressColor: dassStressController.colorStattus.value,
                      radius: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => Get.to(() => const DepresiPage()),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        spreadRadius: 0,
                        color: Colors.black.withOpacity(0.08),
                        offset: const Offset(1, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: TColors.grey50,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Skala Depresi',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Yuk cek Kondisi Depresi Kamu',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: TColors.primary800,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            MingCuteIcons.mgc_right_line,
                            color: TColors.grey50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => Get.to(() => const CemasPage()),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        spreadRadius: 0,
                        color: Colors.black.withOpacity(0.08),
                        offset: const Offset(1, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: TColors.grey50,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Skala Kecemasan',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Yuk cek Kondisi Kecemasan Kamu',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: TColors.primary800,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            MingCuteIcons.mgc_right_line,
                            color: TColors.grey50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                tLumi,
                width: 100,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12,
                      spreadRadius: 0,
                      color: Colors.black.withOpacity(0.08),
                      offset: const Offset(1, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: TColors.grey50,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Saran dari Lumi',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Divider(
                        color: TColors.primary400,
                      ),
                      Text(
                        dassStressController.saran[0],
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      const Divider(
                        color: TColors.primary400,
                      ),
                      Text(
                        dassStressController.saran[1],
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => Get.to(() => const MisiPage()),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        spreadRadius: 0,
                        color: Colors.black.withOpacity(0.08),
                        offset: const Offset(1, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: TColors.primary500,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tingkatkan Kondisi',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            'Selesaikan Misi',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: TColors.primary800,
                                ),
                                child: const Icon(
                                  MingCuteIcons.mgc_play_line,
                                  color: TColors.grey50,
                                  size: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Tingkatkan Kondisi',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          )
                        ],
                      ),
                      Image.asset(
                        tHome1,
                        width: 80,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Leaderboard',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Icon(
                    MingCuteIcons.mgc_right_line,
                    color: TColors.primary800,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 225,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: TColors.primary500,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12,
                      spreadRadius: 0,
                      offset: const Offset(1, 2),
                      color: Colors.black.withOpacity(0.08),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(tDefaultpp),
                          radius: 30,
                          backgroundColor: TColors.primary800,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        SizedBox(
                          width: 42,
                          child: Text(
                            'Bagus Mirzana',
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 90,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                color: TColors.primary800,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              left: 0,
                              child: Column(
                                children: [
                                  Image.asset(
                                    leaderboard2,
                                    width: 40,
                                  ),
                                  Text(
                                    '90 Poin',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: TColors.grey50,
                                        ),
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(tDefaultpp),
                          radius: 30,
                          backgroundColor: TColors.primary800,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        SizedBox(
                          width: 42,
                          child: Text(
                            'Alzah Fariski',
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 110,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                color: TColors.primary800,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              left: 0,
                              child: Column(
                                children: [
                                  Image.asset(
                                    leaderboard1,
                                    width: 40,
                                  ),
                                  Text(
                                    '100 Poin',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: TColors.grey50,
                                        ),
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(tDefaultpp),
                          radius: 30,
                          backgroundColor: TColors.primary800,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        SizedBox(
                          width: 42,
                          child: Text(
                            'Dedek Tegar',
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 80,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                color: TColors.primary800,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              left: 0,
                              child: Column(
                                children: [
                                  Image.asset(
                                    leaderboard3,
                                    width: 40,
                                  ),
                                  Text(
                                    '80 Poin',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: TColors.grey50,
                                        ),
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
