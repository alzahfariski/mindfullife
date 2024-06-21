import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/komunitas/page/komunitas_detail_page.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class KomunitasPage extends StatelessWidget {
  const KomunitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 24,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 26,
                ),
                Text(
                  'Komunitas',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                IconButton(
                  onPressed: () {
                    Get.snackbar(
                      'Maaf!',
                      'Sedang Proses Pengembangan',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: TColors.primary500,
                      margin: const EdgeInsets.all(20),
                    );
                  },
                  icon: const Icon(
                    MingCuteIcons.mgc_search_2_line,
                    size: 26,
                    color: TColors.primary800,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Komunitas Populer',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Icon(
                  MingCuteIcons.mgc_right_line,
                  color: TColors.primary800,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => Get.to(() => const KomunitasDetailPage()),
              child: Container(
                width: 280,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(kom1),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 24,
                      spreadRadius: -1,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            TColors.primary500,
                            TColors.primary500.withOpacity(0.8),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mindful Minds',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Row(
                            children: [
                              Text(
                                '+ 3',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                MingCuteIcons.mgc_group_3_line,
                                color: TColors.primary800,
                                size: 24,
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
            const SizedBox(
              height: 20,
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
                    'Komunitas Anda',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Icon(
                    MingCuteIcons.mgc_right_line,
                    color: TColors.primary800,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(kom1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sini Cerita',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Bagus : ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text('Bawa santay aja cuy',
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
          ],
        ),
      ),
    ));
  }
}
