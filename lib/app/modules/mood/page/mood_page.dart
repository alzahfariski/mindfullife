import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class MoodPage extends StatefulWidget {
  const MoodPage({super.key});

  @override
  State<MoodPage> createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  final controller = CarouselController();
  int activeIndex = 4;
  final urlMoods = [
    mood1,
    mood2,
    mood3,
    mood4,
    mood5,
    mood6,
  ];
  final moodIcons = [
    md1,
    md2,
    md3,
    md4,
    md5,
    md6,
  ];

  void onIconTap(int index) {
    setState(() {
      activeIndex = index;
    });
    controller.animateToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 60,
          ),
          child: Column(
            children: [
              Text(
                'Apa yang kamu\nRasakan hari ini?',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                carouselController: controller,
                itemCount: urlMoods.length,
                options: CarouselOptions(
                  initialPage: activeIndex,
                  viewportFraction: 0.4,
                  height: 160,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  final urlMood = urlMoods[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: TColors.primary800,
                    ),
                    child: Image.asset(
                      urlMood,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  moodIcons.length,
                  (index) {
                    return GestureDetector(
                      onTap: () => onIconTap(index),
                      child: Column(
                        children: [
                          Image.asset(
                            moodIcons[index],
                            width: 40,
                            height: 40,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: activeIndex == index
                                ? TColors.primary800
                                : TColors.primary500,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Apa yang sedang kamu rasakan ?',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            width: 1,
                            color: TColors.primary600,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            width: 1,
                            color: TColors.primary600,
                          ),
                        ),
                        hintText: 'Tambah catatan (Opsional)',
                        hintStyle:
                            Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: TColors.grey400,
                                ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: TColors.primary800,
                        ),
                        child: Text(
                          'Tambah',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: TColors.grey50,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: TColors.grey50,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            spreadRadius: 0,
                            offset: const Offset(1, 2),
                            color: Colors.black.withOpacity(0.12),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jurnal Mood',
                                style: Theme.of(context).textTheme.titleMedium,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset(md5, width: 20, height: 20),
                                  Container(
                                    width: 2,
                                    height: 20,
                                    color: TColors.secondary500,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(md5, width: 20, height: 20),
                                  Container(
                                    width: 2,
                                    height: 20,
                                    color: TColors.secondary500,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(md4, width: 20, height: 20),
                                  Container(
                                    width: 2,
                                    height: 20,
                                    color: TColors.secondary500,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(md6, width: 20, height: 20),
                                  Container(
                                    width: 2,
                                    height: 20,
                                    color: TColors.secondary500,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(md2, width: 20, height: 20),
                                  Container(
                                    width: 2,
                                    height: 20,
                                    color: TColors.secondary500,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(md5, width: 20, height: 20),
                                  Container(
                                    width: 2,
                                    height: 20,
                                    color: TColors.secondary500,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'sen',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'sel',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'rab',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'kam',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'jum',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'sab',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'min',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
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
