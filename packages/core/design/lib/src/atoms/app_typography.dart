import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final textStyle = GoogleFonts.raleway();
final digitTextStyle = GoogleFonts.barlowSemiCondensed();

TextStyle _largeTitle({Color? color}) => textStyle.copyWith(
      fontSize: 32,
      height: 40 / 32,
      letterSpacing: 0,
      color: color,
    );

TextStyle _title3({Color? color}) => textStyle.copyWith(
      fontSize: 20,
      height: 20 / 20,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: color,
    );

TextStyle _headline({Color? color}) => textStyle.copyWith(
      fontSize: 17,
      height: 17 / 17,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: color,
    );

TextStyle _body1({Color? color}) => textStyle.copyWith(
      fontSize: 16,
      letterSpacing: 0,
      height: 16 / 16,
      fontWeight: FontWeight.w700,
      color: color,
    );

TextStyle _body2({Color? color}) => digitTextStyle.copyWith(
      fontSize: 16,
      height: 16 / 16,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      color: color,
    );

TextStyle _body3({Color? color}) => textStyle.copyWith(
      fontSize: 14,
      height: 14 / 14,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      color: color,
    );

TextStyle _body4({Color? color}) => textStyle.copyWith(
      fontSize: 13,
      height: 13 / 13,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      color: color,
    );

TextStyle _body5({Color? color}) => digitTextStyle.copyWith(
      fontSize: 13,
      height: 13 / 13,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      color: color,
    );

TextStyle _subHead({Color? color}) => textStyle.copyWith(
  fontSize: 13,
  height: 13 / 13,
  letterSpacing: 0.5,
  fontWeight: FontWeight.w600,
  color: color,
);

TextStyle _caption1({Color? color}) => textStyle.copyWith(
      fontSize: 12,
      height: 12 / 12,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      color: color,
    );

TextStyle _caption2({Color? color}) => digitTextStyle.copyWith(
      fontSize: 12,
      height: 12 / 12,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      color: color,
    );

class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography({
    required this.largeTitle,
    required this.title3,
    required this.headline,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
    required this.body5,
    required this.subHead,
    required this.caption1,
    required this.caption2,
  });

  final TextStyle largeTitle;
  final TextStyle title3;
  final TextStyle headline;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;
  final TextStyle body4;
  final TextStyle body5;
  final TextStyle subHead;
  final TextStyle caption1;
  final TextStyle caption2;

  factory AppTypography.base() => AppTypography(
        largeTitle: _largeTitle(),
        title3: _title3(),
        headline: _headline(),
        body1: _body1(),
        body2: _body2(),
        body3: _body3(),
        body4: _body4(),
        body5: _body5(),
        subHead: _subHead(),
        caption1: _caption1(),
        caption2: _caption2(),
      );

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? largeTitle,
    TextStyle? title3,
    TextStyle? headline,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
    TextStyle? body4,
    TextStyle? body5,
    TextStyle? subHead,
    TextStyle? caption1,
    TextStyle? caption2,
  }) {
    return AppTypography(
      largeTitle: largeTitle ?? this.largeTitle,
      title3: title3 ?? this.title3,
      headline: headline ?? this.headline,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
      body4: body4 ?? this.body4,
      body5: body5 ?? this.body5,
      subHead: body5 ?? this.subHead,
      caption1: caption1 ?? this.caption1,
      caption2: caption2 ?? this.caption2,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other is! AppTypography) {
      return this;
    }

    return AppTypography(
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t)!,
      title3: TextStyle.lerp(title3, other.title3, t)!,
      headline: TextStyle.lerp(headline, other.headline, t)!,
      body1: TextStyle.lerp(body1, other.body1, t)!,
      body2: TextStyle.lerp(body2, other.body2, t)!,
      body3: TextStyle.lerp(body3, other.body3, t)!,
      body4: TextStyle.lerp(body4, other.body4, t)!,
      body5: TextStyle.lerp(body5, other.body5, t)!,
      subHead: TextStyle.lerp(subHead, other.subHead, t)!,
      caption2: TextStyle.lerp(caption2, other.caption2, t)!,
      caption1: TextStyle.lerp(caption1, other.caption1, t)!,
    );
  }
}

extension AppTypographyX on BuildContext {
  AppTypography get typography => Theme.of(this).extension<AppTypography>()!;
}
