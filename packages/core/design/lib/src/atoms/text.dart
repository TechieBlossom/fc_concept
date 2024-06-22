import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final textStyle = GoogleFonts.raleway();
final digitTextStyle = GoogleFonts.barlowCondensed();

final textTheme = TextTheme(
  headlineSmall: textStyle.copyWith(
    fontSize: 32,
    height: 40 / 32,
    letterSpacing: 0.25,
  ),
  titleMedium: textStyle.copyWith(
    fontSize: 20,
    height: 1,
    letterSpacing: 0.25,
  ),
  titleSmall: textStyle.copyWith(
    fontSize: 16,
    height: 20 / 16,
    letterSpacing: 0.25,
  ),
  labelMedium: textStyle.copyWith(
    fontSize: 14,
    letterSpacing: 0.1,
    height: 20 / 14,
    fontWeight: FontWeight.w600,
  ),
  bodyMedium: textStyle.copyWith(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
  ),
  bodySmall: textStyle.copyWith(
    fontSize: 12,
    height: 20 / 12,
    letterSpacing: 0.1,
  ),
  labelSmall: textStyle.copyWith(
    fontSize: 12,
    height: 20 / 12,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w600,
  ),
);
