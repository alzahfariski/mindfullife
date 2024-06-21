import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/cemas/controllers/dass_cemas_controller.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CemasTes extends StatelessWidget {
  const CemasTes({super.key});

  @override
  Widget build(BuildContext context) {
    final DassCemasController dassCemasController =
        Get.put(DassCemasController());
    return Scaffold(
      backgroundColor: TColors.primary500,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    'Memahami Keadaan Emosi Kamu',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: TColors.primary800,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        dassCemasController
                            .dassDataCemas[dassCemasController.hal.value]
                            .question,
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: TColors.grey50,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => dassCemasController.nextTidak(),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: TColors.primary800,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        'Tidak pernah',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => dassCemasController.nextKadang(),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: TColors.primary800,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        'Kadang-kadang',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => dassCemasController.nextSering(),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: TColors.primary800,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        'Lumayan sering',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => dassCemasController.nextSesuai(),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: TColors.primary800,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        'Sering sekali',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => LinearPercentIndicator(
                      lineHeight: 10.0,
                      percent: dassCemasController
                          .dassDataCemas[dassCemasController.hal.value]
                          .progress,
                      barRadius: const Radius.circular(4),
                      progressColor: TColors.primary800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => Text(
                      "${dassCemasController.hal.value + 1} / ${dassCemasController.dassDataCemas.length}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  tLumiFull,
                  width: 120,
                  height: 120,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  decoration: BoxDecoration(
                    color: TColors.grey50,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    width: 180,
                    child: Text(
                      'Jawab sesuai kondisi yang kamu alami ya',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
