import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/misi/widgets/misi_widget.dart';
import 'package:midfullife/utils/common/header_container.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class MisiPage extends StatelessWidget {
  const MisiPage({super.key});

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
                          'Misi',
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
                    'Membaca',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MisiWidget(
                    title: 'Meraih Kebahagiaan Sejati dalam Hidup',
                    subtitle: '+ 10 Poin',
                    img: membaca,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Menonton',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MisiWidget(
                    title: 'Bagaimana Dia Mengubah Hidupnya 180 Derajat',
                    subtitle: '+ 10 Poin',
                    img: menonton,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Beraktifitas',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MisiWidget(
                    title: 'Melaksanakan Hobi',
                    subtitle: '+ 10 Poin',
                    img: beraktifitas,
                  ),
                  const SizedBox(
                    height: 10,
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
