import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/auth/controllers/dass_stress_controller.dart';
import 'package:midfullife/app/modules/cemas/controllers/dass_cemas_controller.dart';
import 'package:midfullife/app/modules/cemas/page/cemas_page.dart';
import 'package:midfullife/app/modules/chat/pages/splash_chat_page.dart';
import 'package:midfullife/app/modules/depresi/controllers/dass_depresi_controller.dart';
import 'package:midfullife/app/modules/depresi/page/depresi_page.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final DassStressController dassStressController =
        Get.put(DassStressController());
    final DassCemasController dassCemasController =
        Get.put(DassCemasController());
    final DassDepresiController dassDepresiController =
        Get.put(DassDepresiController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 60,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(tDefaultpp),
                    backgroundColor: TColors.primary800,
                    radius: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: 'Keluar',
                        titleStyle:
                            Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: TColors.error800,
                                  fontWeight: FontWeight.w600,
                                ),
                        content: Text(
                          'Yakin mau keluar ?',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        confirm: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: TColors.error800,
                          ),
                          onPressed: () {
                            Get.offAll(() => SplashChatPage());
                          },
                          child: Text(
                            'Keluar',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: TColors.grey50,
                                    ),
                          ),
                        ),
                      );
                    },
                    icon: const Icon(
                      MingCuteIcons.mgc_exit_door_line,
                      color: TColors.error800,
                      size: 32,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alzah fariski',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'alzahfariski@gmail.com',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  Image.asset(
                    tLumi,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: TColors.primary500,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
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
              ),
              const SizedBox(
                height: 10,
              ),
              dassDepresiController.hal.value > 1
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: TColors.primary500,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
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
                                  'Tes DASS skala Depresi',
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
                                dassDepresiController.depresiStatus.value,
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
                              percent: dassDepresiController.precent.value,
                              progressColor:
                                  dassDepresiController.colorStattus.value,
                              radius: 40,
                            ),
                          ),
                        ],
                      ),
                    )
                  : GestureDetector(
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
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
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
              dassCemasController.hal > 1
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: TColors.primary500,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
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
                                  'Tes DASS skala Kecemasan',
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
                                dassCemasController.cemasStatus.value,
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
                              percent: dassCemasController.precent.value,
                              progressColor:
                                  dassCemasController.colorStattus.value,
                              radius: 40,
                            ),
                          ),
                        ],
                      ),
                    )
                  : GestureDetector(
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
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
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
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.snackbar(
                    'Maaf!',
                    'Sedang proses pengembangan',
                    snackPosition: SnackPosition.BOTTOM,
                    margin: const EdgeInsets.all(20),
                    backgroundColor: TColors.primary500,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mendali',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                    const Icon(
                      MingCuteIcons.mgc_right_line,
                      color: TColors.primary800,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: TColors.primary500,
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          medal1,
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(
                          width: 63,
                          child: Text(
                            'Begabung Komunitas',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          lock,
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(
                          width: 63,
                          child: Text(
                            'Selesaikan 3 Misi',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          lock,
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(
                          width: 63,
                          child: Text(
                            'Capai 200 Poin',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pengaturan',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.snackbar(
                    'Maaf!',
                    'Sedang proses pengembangan',
                    snackPosition: SnackPosition.BOTTOM,
                    margin: const EdgeInsets.all(20),
                    backgroundColor: TColors.primary500,
                  );
                },
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
                              'Profil',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const Icon(
                          MingCuteIcons.mgc_right_line,
                          color: TColors.primary800,
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
                onTap: () {
                  Get.snackbar(
                    'Maaf!',
                    'Sedang proses pengembangan',
                    snackPosition: SnackPosition.BOTTOM,
                    margin: const EdgeInsets.all(20),
                    backgroundColor: TColors.primary500,
                  );
                },
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
                              'Ubah Password',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const Icon(
                          MingCuteIcons.mgc_right_line,
                          color: TColors.primary800,
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
                onTap: () {
                  Get.snackbar(
                    'Maaf!',
                    'Sedang proses pengembangan',
                    snackPosition: SnackPosition.BOTTOM,
                    margin: const EdgeInsets.all(20),
                    backgroundColor: TColors.primary500,
                  );
                },
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
                              'Tentang Aplikasi',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const Icon(
                          MingCuteIcons.mgc_right_line,
                          color: TColors.primary800,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
