import 'package:flutter/material.dart';
import 'package:mobile/config/theme/colors.dart';
import 'package:mobile/config/theme/fonts.dart';

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.colorPrimary),
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return TextTheme(
    headlineLarge: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontHeadlineLarge,
    ),
    headlineMedium: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontHeadlineMedium,
    ),
    headlineSmall: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontHeadlineSmall,
    ),
    titleLarge: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontTitleLarge,
    ),
    titleMedium: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontTitleMedium,
    ),
    titleSmall: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontTitleSmall,
    ),
    bodyLarge: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontBodyLarge,
    ),
    bodyMedium: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontBodyMedium,
      color: AppColor.colorBody,
    ),
    bodySmall: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontBodySmall,
    ),
    labelLarge: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontLabelLarge,
    ),
    labelMedium: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontLabelMedium,
    ),
    labelSmall: AppFont.fontFamily.copyWith(
      fontSize: AppFont.fontLabelSmall,
    ),
  );
}
