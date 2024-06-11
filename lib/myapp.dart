import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/onboarding/pages/splash_screen_page.dart';
import 'package:midfullife/utils/constants/text_string.dart';
import 'package:midfullife/utils/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
