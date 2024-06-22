import 'package:core_design/src/atoms/colors.dart';
import 'package:core_design/src/atoms/text.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  textTheme: textTheme,
  scaffoldBackgroundColor: surface,
  drawerTheme: DrawerThemeData(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
  ),
  dividerTheme: DividerThemeData(
    color: surfaceContainerHighest,
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    surface: surface,
    surfaceContainerHighest: surfaceContainerHighest,
    primary: primary,
    onPrimary: onPrimary,
    primaryContainer: primaryContainer,
    onPrimaryContainer: onPrimaryContainer,
    secondary: secondary,
    secondaryContainer: secondaryContainer,
    onSecondaryContainer: onSecondaryContainer,
    tertiary: tertiary,
    onTertiary: onTertiary,
    tertiaryContainer: tertiaryContainer,
    onTertiaryContainer: onTertiaryContainer,
    outline: outline,
    outlineVariant: outlineVariant,
    errorContainer: errorContainer,
    onErrorContainer: onErrorContainer,

    //Required fields, that's why have to declare. They are not used in app.
    //Their role is not defined in design system yet.
    onSecondary: onSecondaryContainer,
    error: errorContainer,
    onError: onErrorContainer,
    onSurface: primary,
  ),
);

extension XBuildContext on BuildContext {
  TextStyle headlineSmall() => Theme.of(this).textTheme.headlineSmall!;

  TextStyle titleMedium() => Theme.of(this).textTheme.titleMedium!;

  TextStyle titleSmall() => Theme.of(this).textTheme.titleSmall!;

  TextStyle labelMedium() => Theme.of(this).textTheme.labelMedium!;

  TextStyle bodyMedium() => Theme.of(this).textTheme.bodyMedium!;

  TextStyle bodySmall() => Theme.of(this).textTheme.bodySmall!;

  TextStyle labelSmall() => Theme.of(this).textTheme.labelSmall!;

  TextStyle headlineSmallDigit() => digitTextStyle.copyWith(
    fontSize: 32,
    height: 40/32,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w600,
  );

  TextStyle titleMediumDigit() => digitTextStyle.copyWith(
    fontSize: 20,
    height: 20/20,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w600,
  );

  TextStyle labelMediumDigit() => digitTextStyle.copyWith(
    fontSize: 14,
    height: 20/14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w600,
  );

  TextStyle labelSmallDigit() => digitTextStyle.copyWith(
    fontSize: 12,
    height: 20/12,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w600,
  );

  TextStyle bodySmallDigit() => digitTextStyle.copyWith(
    fontSize: 12,
    height: 20/12,
    letterSpacing: 0.1,
  );
}
