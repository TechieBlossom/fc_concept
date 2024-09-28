import 'package:flutter/material.dart';

abstract class _LightColors {
  // Keep these, remove above
  static const backgroundPrimary = Color(0xFFFFFFFF);
  static const backgroundSecondary = Color(0xFF707070);
  static const backgroundTertiary = Color(0xFFF4F4F4);
  static const backgroundTertiary70 = Color(0xB3F4F4F4);
  static const backgroundFour = Color(0x17C0A203);
  static const contentSecondary = Color(0xFF2B2B2B);
  static const contentTertiary = Color(0xFF797979);
  static const contentTertiary30 = Color(0x4D797979);
  static const contentPrimary = Color(0xFF000000);
  static const gold = Color(0xFFE8DC9A);
  static const gold2 = Color(0xFFC0A203);
  static const red = Color(0xFFEA6868);
}

class AppColors extends ThemeExtension<AppColors> {
  AppColors({
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
    required this.backgroundTertiary70,
    required this.contentTertiary30,
    required this.backgroundFour,
    required this.contentPrimary,
    required this.contentSecondary,
    required this.contentTertiary,
    required this.gold,
    required this.gold2,
    required this.red,
  });

  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color backgroundTertiary;
  final Color backgroundTertiary70;
  final Color contentTertiary30;
  final Color backgroundFour;
  final Color contentPrimary;
  final Color contentSecondary;
  final Color contentTertiary;
  final Color gold;
  final Color gold2;
  final Color red;

  factory AppColors.light() => AppColors(
        backgroundPrimary: _LightColors.backgroundPrimary,
        backgroundSecondary: _LightColors.backgroundSecondary,
        backgroundTertiary: _LightColors.backgroundTertiary,
        backgroundTertiary70: _LightColors.backgroundTertiary70,
        contentTertiary30: _LightColors.contentTertiary30,
        backgroundFour: _LightColors.backgroundFour,
        contentPrimary: _LightColors.contentPrimary,
        contentSecondary: _LightColors.contentSecondary,
        contentTertiary: _LightColors.contentTertiary,
        gold: _LightColors.gold,
        gold2: _LightColors.gold2,
        red: _LightColors.red,
      );

  @override
  ThemeExtension<AppColors> copyWith({
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? backgroundTertiary,
    Color? backgroundTertiary70,
    Color? contentTertiary30,
    Color? backgroundFour,
    Color? contentPrimary,
    Color? contentSecondary,
    Color? contentTertiary,
    Color? gold,
    Color? gold2,
    Color? red,
  }) {
    return AppColors(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      backgroundTertiary: backgroundTertiary ?? this.backgroundTertiary,
      backgroundTertiary70: backgroundTertiary70 ?? this.backgroundTertiary70,
      contentTertiary30: contentTertiary30 ?? this.contentTertiary30,
      backgroundFour: backgroundFour ?? this.backgroundFour,
      contentPrimary: contentPrimary ?? this.contentPrimary,
      contentSecondary: contentSecondary ?? this.contentSecondary,
      contentTertiary: contentTertiary ?? this.contentTertiary,
      gold: gold ?? this.gold,
      gold2: gold2 ?? this.gold2,
      red: red ?? this.red,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      backgroundPrimary:
          Color.lerp(backgroundPrimary, other.backgroundPrimary, t)!,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      backgroundTertiary:
          Color.lerp(backgroundTertiary, other.backgroundTertiary, t)!,
      backgroundTertiary70:
          Color.lerp(backgroundTertiary70, other.backgroundTertiary70, t)!,
      contentTertiary30:
          Color.lerp(contentTertiary30, other.contentTertiary30, t)!,
      backgroundFour: Color.lerp(backgroundFour, other.backgroundFour, t)!,
      contentPrimary: Color.lerp(contentPrimary, other.contentPrimary, t)!,
      contentSecondary:
          Color.lerp(contentSecondary, other.contentSecondary, t)!,
      contentTertiary: Color.lerp(contentTertiary, other.contentTertiary, t)!,
      gold: Color.lerp(gold, other.gold, t)!,
      gold2: Color.lerp(gold2, other.gold2, t)!,
      red: Color.lerp(red, other.red, t)!,
    );
  }
}

extension XAppColors on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
