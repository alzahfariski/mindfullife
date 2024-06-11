import 'package:flutter/material.dart';
import 'package:midfullife/utils/constants/colors.dart';

/// Custom Class for Light & Dark Text Themes
class TTextTheme {
  TTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(
        fontSize: 34.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    displayMedium: const TextStyle().copyWith(
        fontSize: 28.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    headlineLarge: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 20.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    titleMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    labelLarge: const TextStyle().copyWith(
        fontSize: 13.0, fontWeight: FontWeight.w400, color: TColors.primary800),
    labelMedium: const TextStyle().copyWith(
        fontSize: 10.0, fontWeight: FontWeight.w400, color: TColors.primary800),
  );
}
