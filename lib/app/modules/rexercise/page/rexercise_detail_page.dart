import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/utils/common/header_container.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class RexerciseDetailPage extends StatelessWidget {
  const RexerciseDetailPage({super.key});

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
                          'Relaksasi',
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
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage(relaksasi),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Relaksasi',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Membantu mengurangi stres dan ketegangan dengan merilekskan otot-otot tubuh secara bertahap.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        MingCuteIcons.mgc_time_line,
                        color: TColors.primary800,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '10 - 15 Menit',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        MingCuteIcons.mgc_coin_2_line,
                        color: TColors.primary800,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+ 10 Poin',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: TColors.primary700,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tips',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: TColors.grey50,
                                  ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lakukan meditasi ini di tempat yang nyaman dan bebas gangguan.\nCobalah untuk melakukan latihan ini setiap hari atau saat Anda merasa sangat tegang atau cemas.angan terburu-buru. Nikmati setiap tahap proses relaksasi.',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: TColors.grey50,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 120,
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
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: TColors.primary800,
          ),
          child: Text(
            'Mulai Meditasi',
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
