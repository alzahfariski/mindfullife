import 'package:flutter/material.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Urbanist',
    brightness: Brightness.light,
    primaryColor: TColors.primary500,
    textTheme: TTextTheme.lightTextTheme,
    scaffoldBackgroundColor: TColors.grey50,
  );
}
