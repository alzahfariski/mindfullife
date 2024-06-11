import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/auth/page/daftar_page.dart';
import 'package:midfullife/utils/common/header_container.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:midfullife/utils/validators/validator.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Image.asset(
                      tLumi,
                      width: 194,
                      height: 194,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'MindfulLife',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  tLogoPrimary,
                  width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold,
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
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lupa password ?',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: TColors.primary800,
              ),
              child: Text(
                'Masukk',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: TColors.grey50,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Get.to(() => const DaftarPage());
            },
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Belum punya akun? ',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: TColors.grey500,
                        ),
                  ),
                  TextSpan(
                    text: 'Daftar',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: TColors.primary800,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
