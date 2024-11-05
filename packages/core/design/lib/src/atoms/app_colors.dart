import 'package:flutter/material.dart';

abstract class _LightColors {
  // static const primary = Color(0xFF14746f);
  // static const primary = Color(0xff14213d);
  // static const onPrimary = Color(0xFFFFFFFF);

  static const primary = Color(0xff1c4b65);
  static const onPrimary = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  static const backgroundPrimary = Color(0xFFFFFFFF);
  static const backgroundSecondary = Color(0xFFF9F9FA);
  static const backgroundTertiary = Color(0xFFF2F2F2);
  static const contentPrimary = Color(0xFF2B2B2B);
  static const contentSecondary = Color(0xFF777777);
  static const contentTertiary = Color(0x4D777777);
  static const gold = Color(0xFFE8DC9A);
  static const gold2 = Color(0xFFC0A203);
  static const red = Color(0xFFEA6868);

  static const chemistryInactiveColor = Color(0x2244546D);
  static const chemistryActiveColor = Color(0xFF336A85);
}

abstract class _DarkColors {
  // static const primary = Color(0xFF14746f);
  // static const primary = Color(0xff6fffe9);
  // static const primary = Color(0xff52edd6);
  // static const onPrimary = Color(0xFF000000);

  // static const primary = Color(0xff2d5951);
  // static const onPrimary = Color(0xFFFFFFFF);

  static const primary = Color(0xff1c4b65);
  static const onPrimary = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  // static const backgroundPrimary = Color(0xff14213d);
  // static const backgroundSecondary = Color(0xff1e2843);
  // static const backgroundTertiary = Color(0xff272d42);
  // static const contentPrimary = Color(0xFFEBEBEB);
  // static const contentSecondary = Color(0xFFAAAAAA);
  // static const contentTertiary = Color(0xB3AAAAAA);

  // static const backgroundPrimary = Color(0xff0a363c);
  // static const backgroundSecondary = Color(0xff0e4850);
  // static const backgroundTertiary = Color(0xff1b5159);
  // static const contentPrimary = Color(0xFFEBEBEB);
  // static const contentSecondary = Color(0xFFCCCCCC);
  // static const contentTertiary = Color(0xB3AAAAAA);

  static const backgroundPrimary = Color(0xff051b1e);
  static const backgroundSecondary = Color(0xCC062427);
  static const backgroundTertiary = Color(0xaa093537);
  static const contentPrimary = Color(0xFFFFFFFF);
  static const contentSecondary = Color(0xFF9B9B9B);
  static const contentTertiary = Color(0xFFF1EFEF);

  static const gold = Color(0xFFE8DC9A);
  static const gold2 = Color(0xFFC0A203);
  static const red = Color(0xFFEA6868);

  static const chemistryInactiveColor = Color(0x2244546D);
  static const chemistryActiveColor = Color(0xFF336A85);
}

class AppColors extends ThemeExtension<AppColors> {
  AppColors({
    required this.backgroundPrimary,
    required this.primary,
    required this.onPrimary,
    required this.black,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
    required this.contentTertiary,
    required this.contentPrimary,
    required this.contentSecondary,
    required this.gold,
    required this.gold2,
    required this.red,
    required this.chemistryInactiveColor,
    required this.chemistryActiveColor,
  });

  final Color backgroundPrimary;
  final Color primary;
  final Color onPrimary;
  final Color black;
  final Color backgroundSecondary;
  final Color backgroundTertiary;
  final Color contentTertiary;
  final Color contentPrimary;
  final Color contentSecondary;
  final Color gold;
  final Color gold2;
  final Color red;
  final Color chemistryInactiveColor;
  final Color chemistryActiveColor;

  factory AppColors.light() => AppColors(
        backgroundPrimary: _LightColors.backgroundPrimary,
        primary: _LightColors.primary,
        onPrimary: _LightColors.onPrimary,
        black: _LightColors.black,
        backgroundSecondary: _LightColors.backgroundSecondary,
        backgroundTertiary: _LightColors.backgroundTertiary,
        contentTertiary: _LightColors.contentTertiary,
        contentPrimary: _LightColors.contentPrimary,
        contentSecondary: _LightColors.contentSecondary,
        gold: _LightColors.gold,
        gold2: _LightColors.gold2,
        red: _LightColors.red,
        chemistryInactiveColor: _LightColors.chemistryInactiveColor,
        chemistryActiveColor: _LightColors.chemistryActiveColor,
      );

  factory AppColors.dark() => AppColors(
        backgroundPrimary: _DarkColors.backgroundPrimary,
        primary: _DarkColors.primary,
        onPrimary: _DarkColors.onPrimary,
        black: _DarkColors.black,
        backgroundSecondary: _DarkColors.backgroundSecondary,
        backgroundTertiary: _DarkColors.backgroundTertiary,
        contentTertiary: _DarkColors.contentTertiary,
        contentPrimary: _DarkColors.contentPrimary,
        contentSecondary: _DarkColors.contentSecondary,
        gold: _DarkColors.gold,
        gold2: _DarkColors.gold2,
        red: _DarkColors.red,
        chemistryInactiveColor: _DarkColors.chemistryInactiveColor,
        chemistryActiveColor: _DarkColors.chemistryActiveColor,
      );

  @override
  ThemeExtension<AppColors> copyWith({
    Color? backgroundPrimary,
    Color? primary,
    Color? onPrimary,
    Color? black,
    Color? backgroundSecondary,
    Color? backgroundTertiary,
    Color? contentTertiary,
    Color? contentPrimary,
    Color? contentSecondary,
    Color? gold,
    Color? gold2,
    Color? red,
    Color? chemistryInactiveColor,
    Color? chemistryActiveColor,
  }) {
    return AppColors(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      black: black ?? this.black,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      backgroundTertiary: backgroundTertiary ?? this.backgroundTertiary,
      contentTertiary: contentTertiary ?? this.contentTertiary,
      contentPrimary: contentPrimary ?? this.contentPrimary,
      contentSecondary: contentSecondary ?? this.contentSecondary,
      gold: gold ?? this.gold,
      gold2: gold2 ?? this.gold2,
      red: red ?? this.red,
      chemistryInactiveColor:
          chemistryInactiveColor ?? this.chemistryInactiveColor,
      chemistryActiveColor: chemistryActiveColor ?? this.chemistryActiveColor,
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
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      black: Color.lerp(black, other.black, t)!,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      backgroundTertiary:
          Color.lerp(backgroundTertiary, other.backgroundTertiary, t)!,
      contentTertiary: Color.lerp(contentTertiary, other.contentTertiary, t)!,
      contentPrimary: Color.lerp(contentPrimary, other.contentPrimary, t)!,
      contentSecondary:
          Color.lerp(contentSecondary, other.contentSecondary, t)!,
      gold: Color.lerp(gold, other.gold, t)!,
      gold2: Color.lerp(gold2, other.gold2, t)!,
      red: Color.lerp(red, other.red, t)!,
      chemistryInactiveColor:
          Color.lerp(chemistryInactiveColor, other.chemistryInactiveColor, t)!,
      chemistryActiveColor:
          Color.lerp(chemistryActiveColor, other.chemistryActiveColor, t)!,
    );
  }
}

extension XAppColors on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
