import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/auth/page/new_user_page.dart';
import 'package:midfullife/utils/common/header_container.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:midfullife/utils/validators/validator.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class DaftarPage extends StatelessWidget {
  const DaftarPage({super.key});

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
                          'Daftar Akun',
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
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.snackbar(
                      'Proses pengembangan!',
                      'Langsung klik Daftar',
                      backgroundColor: TColors.primary500,
                      snackPosition: SnackPosition.BOTTOM,
                      margin: const EdgeInsets.all(20),
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage(tDefaultpp), fit: BoxFit.cover),
                      border: Border.all(
                        color: TColors.primary800,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                      color: TColors.primary800,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      MingCuteIcons.mgc_pencil_line,
                      size: 18,
                      color: TColors.grey50,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    validator: (value) => TValidator.validateUsername(value),
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
                      label: Text(
                        'Nama lengkap',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: TColors.grey400,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) => TValidator.validateEmail(value),
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
                      label: Text(
                        'Email',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: TColors.grey400,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) => TValidator.validatePassword(value),
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
                      label: Text(
                        'Password',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: TColors.grey400,
                            ),
                      ),
                    ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const NewUserPage());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: TColors.primary800,
          ),
          child: Text(
            'Daftar',
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
