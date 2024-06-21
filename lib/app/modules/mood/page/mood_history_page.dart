import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/mood/widgets/moon_widget.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class MoodHistoryPage extends StatelessWidget {
  const MoodHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jurnal Mood',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.snackbar(
                    'Maaf!',
                    'Sedang Proses Pengembangan',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: TColors.primary500,
                    margin: const EdgeInsets.all(20),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      '2024',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const Icon(MingCuteIcons.mgc_down_line),
                  ],
                ),
              ),
              Text(
                'Bulan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const MoonWidgets(
                      title: 'Jan',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Feb',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Mar',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Apr',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Mei',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                        color: TColors.primary800,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Jun',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: TColors.grey50,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Jul',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Agu',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Sep',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Okt',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Nov',
                      color: TColors.grey200,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const MoonWidgets(
                      title: 'Des',
                      color: TColors.grey200,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Riwayat',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.snackbar(
                    'Maaf!',
                    'Sedang Proses Pengembangan',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: TColors.primary500,
                    margin: const EdgeInsets.all(20),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Senin,\n24-06-2024',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: TColors.primary800,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              md5,
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Perasaan,\nSenang',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: TColors.grey50,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
