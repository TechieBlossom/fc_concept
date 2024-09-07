import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final textStyle = GoogleFonts.raleway();
final digitTextStyle = GoogleFonts.barlowCondensed();

TextStyle _headlineSmall({Color? color}) => textStyle.copyWith(
      fontSize: 32,
      height: 40 / 32,
      letterSpacing: 0.25,
      color: color,
    );

TextStyle _titleLarge({Color? color}) => textStyle.copyWith(
      fontSize: 20,
      height: 20 / 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
      color: color,
    );

TextStyle _titleMedium({Color? color}) => textStyle.copyWith(
      fontSize: 18,
      height: 18 / 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
      color: color,
    );

TextStyle _titleSmall({Color? color}) => textStyle.copyWith(
      fontSize: 16,
      height: 20 / 16,
      letterSpacing: 0.25,
      color: color,
    );

TextStyle _labelMedium({Color? color}) => textStyle.copyWith(
      fontSize: 14,
      letterSpacing: 0.1,
      height: 20 / 14,
      fontWeight: FontWeight.w600,
      color: color,
    );

TextStyle _bodyMedium({Color? color}) => textStyle.copyWith(
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: 0.1,
      color: color,
    );

TextStyle _bodySmall({Color? color}) => textStyle.copyWith(
      fontSize: 12,
      height: 20 / 12,
      letterSpacing: 0.1,
      color: color,
    );

TextStyle _labelSmall({Color? color}) => textStyle.copyWith(
      fontSize: 12,
      height: 12 / 12,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
      color: color,
    );

TextStyle _headlineSmallDigit({Color? color}) => digitTextStyle.copyWith(
      fontSize: 32,
      height: 40 / 32,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w600,
      color: color,
    );

TextStyle _titleMediumDigit({Color? color}) => digitTextStyle.copyWith(
      fontSize: 18,
      height: 18 / 18,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w600,
      color: color,
    );

TextStyle _labelMediumDigit({Color? color}) => digitTextStyle.copyWith(
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w600,
      color: color,
    );

TextStyle _labelSmallDigit({Color? color}) => digitTextStyle.copyWith(
      fontSize: 12,
      height: 12 / 12,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w400,
      color: color,
    );

TextStyle _bodySmallDigit({Color? color}) => digitTextStyle.copyWith(
      fontSize: 12,
      height: 20 / 12,
      letterSpacing: 0.1,
      color: color,
    );

class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography({
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.labelMedium,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelSmall,
    required this.headlineSmallDigit,
    required this.titleMediumDigit,
    required this.labelMediumDigit,
    required this.labelSmallDigit,
    required this.bodySmallDigit,
  });

  final TextStyle headlineSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle labelMedium;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle labelSmall;
  final TextStyle headlineSmallDigit;
  final TextStyle titleMediumDigit;
  final TextStyle labelMediumDigit;
  final TextStyle labelSmallDigit;
  final TextStyle bodySmallDigit;

  factory AppTypography.base() => AppTypography(
        headlineSmall: _headlineSmall(),
        titleLarge: _titleLarge(),
        titleMedium: _titleMedium(),
        titleSmall: _titleSmall(),
        labelMedium: _labelMedium(),
        bodyMedium: _bodyMedium(),
        bodySmall: _bodySmall(),
        labelSmall: _labelSmall(),
        headlineSmallDigit: _headlineSmallDigit(),
        titleMediumDigit: _titleMediumDigit(),
        labelMediumDigit: _labelMediumDigit(),
        labelSmallDigit: _labelSmallDigit(),
        bodySmallDigit: _bodySmallDigit(),
      );

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? labelMedium,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelSmall,
    TextStyle? headlineSmallDigit,
    TextStyle? titleMediumDigit,
    TextStyle? labelMediumDigit,
    TextStyle? labelSmallDigit,
    TextStyle? bodySmallDigit,
  }) {
    return AppTypography(
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      labelMedium: labelMedium ?? this.labelMedium,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelSmall: labelSmall ?? this.labelSmall,
      headlineSmallDigit: headlineSmallDigit ?? this.headlineSmallDigit,
      titleMediumDigit: titleMediumDigit ?? this.titleMediumDigit,
      labelMediumDigit: labelMediumDigit ?? this.labelMediumDigit,
      labelSmallDigit: labelSmallDigit ?? this.labelSmallDigit,
      bodySmallDigit: bodySmallDigit ?? this.bodySmallDigit,
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
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
      headlineSmallDigit:
          TextStyle.lerp(headlineSmallDigit, other.headlineSmallDigit, t)!,
      titleMediumDigit:
          TextStyle.lerp(titleMediumDigit, other.titleMediumDigit, t)!,
      labelMediumDigit:
          TextStyle.lerp(labelMediumDigit, other.labelMediumDigit, t)!,
      labelSmallDigit:
          TextStyle.lerp(labelSmallDigit, other.labelSmallDigit, t)!,
      bodySmallDigit: TextStyle.lerp(bodySmallDigit, other.bodySmallDigit, t)!,
    );
  }
}

extension AppTypographyX on BuildContext {
  AppTypography get typography => Theme.of(this).extension<AppTypography>()!;
}
