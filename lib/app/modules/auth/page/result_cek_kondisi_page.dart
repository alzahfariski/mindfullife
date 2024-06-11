import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/auth/controllers/dass_stress_controller.dart';
import 'package:midfullife/app/modules/main/page/main_page.dart';
import 'package:midfullife/utils/common/header_container.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ResultCekKondisiPage extends StatelessWidget {
  const ResultCekKondisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DassStressController dassStressController =
        Get.put(DassStressController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Padding(
                padding: const EdgeInsets.only(top: 60, right: 24, left: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kondisi Kamu',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: TColors.grey50,
                      ),
                      child: CircularPercentIndicator(
                        animation: true,
                        backgroundColor: TColors.primary500,
                        animationDuration: 600,
                        center: Text(
                          dassStressController.stressStatus.value,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        backgroundWidth: 4,
                        curve: Curves.bounceInOut,
                        circularStrokeCap: CircularStrokeCap.round,
                        lineWidth: 8,
                        percent: dassStressController.precent.value,
                        progressColor: dassStressController.colorStattus.value,
                        radius: 60,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: TColors.grey50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stress',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          LinearPercentIndicator(
                            lineHeight: 10.0,
                            percent: dassStressController.precent.value,
                            trailing: Text(
                              '${dassStressController.precent.value * 100} %',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            barRadius: const Radius.circular(4),
                            progressColor: TColors.primary700,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          tLumi,
                          width: 140,
                          height: 140,
                        ),
                        SizedBox(
                          width: 140,
                          child: Text(
                            dassStressController.saran[0],
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    dassStressController.saran[1],
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: TColors.secondary500,
                    thickness: 0.5,
                  ),
                  Text(
                    'Tes ini hanya sebuah gambaran dan tidak membuat diagnosis sendirinya. Tetap dianjurkan untuk berbagi hasil tes dengan Psikolog',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: TColors.primary800,
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
            Get.to(() => const MainPage());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: TColors.primary800,
          ),
          child: Text(
            'Mulai Aplikasi',
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
