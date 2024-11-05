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
        brightness == Brightness.light ? AppColors.light() : AppColors.dark();
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
        seedColor: appColors.primary,
        primary: appColors.primary,
        brightness: brightness,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: appColors.backgroundPrimary,
        foregroundColor: appColors.contentPrimary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appColors.backgroundPrimary,
        selectedItemColor: appColors.contentPrimary,
        unselectedItemColor: appColors.contentSecondary,
      ),
      scaffoldBackgroundColor: appColors.backgroundPrimary,
      drawerTheme: DrawerThemeData(
        backgroundColor: appColors.backgroundPrimary,
        surfaceTintColor: appColors.backgroundPrimary,
      ),
      dividerTheme: DividerThemeData(
        color: appColors.backgroundTertiary,
      ),
    );
  }
}
