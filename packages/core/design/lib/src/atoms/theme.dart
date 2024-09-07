import 'dart:io';

import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/atoms/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  AppTheme._();

  static ThemeData themeData(
    BuildContext context,
    Brightness brightness,
  ) {
    final isIos = Platform.isIOS;
    final appColors =
        brightness == Brightness.light ? AppColors.light() : AppColors.light();
    final appTypography = AppTypography.base();

    final baseTheme = ThemeData(
      brightness: brightness,
      platform: isIos ? TargetPlatform.iOS : TargetPlatform.android,
      extensions: [
        appColors,
        appTypography,
      ],
      fontFamily: textStyle.fontFamily,
      package: 'design_system',
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.ralewayTextTheme(),
      splashFactory: NoSplash.splashFactory,
      colorScheme: ColorScheme.fromSeed(
        seedColor: appColors.contentPrimary,
        primary: appColors.contentPrimary,
        brightness: brightness,
      ),
      scaffoldBackgroundColor: appColors.backgroundPrimary,
      drawerTheme: DrawerThemeData(
        backgroundColor: appColors.backgroundPrimary,
        surfaceTintColor: appColors.backgroundPrimary,
      ),
      dividerTheme: DividerThemeData(
        color: appColors.backgroundTertiary70,
      ),
    );
  }
}
