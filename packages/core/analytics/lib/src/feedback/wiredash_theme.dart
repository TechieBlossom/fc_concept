import 'package:core_design/design.dart';
import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';

abstract class WiredashTheme {
  WiredashTheme._();

  static WiredashThemeData wiredashThemeData(BuildContext context) {
    return WiredashThemeData(
      brightness: Theme.of(context).brightness,
      appHandleBackgroundColor: context.colors.backgroundPrimary,
      appBackgroundColor: context.colors.backgroundPrimary,
      primaryBackgroundColor: context.colors.backgroundPrimary,
      primaryColor: context.colors.contentPrimary,
      primaryTextOnBackgroundColor:
          Theme.of(context).brightness == Brightness.light
              ? context.colors.contentPrimary
              : context.colors.contentPrimary,
      secondaryBackgroundColor: context.colors.primary,
      secondaryColor: context.colors.backgroundSecondary,
      secondaryTextOnBackgroundColor: context.colors.contentPrimary,
      primaryContainerColor: context.colors.backgroundPrimary,
      textOnPrimaryContainerColor: context.colors.contentPrimary,
      secondaryContainerColor: context.colors.backgroundPrimary,
      textOnSecondaryContainerColor: context.colors.contentPrimary,
      errorColor: context.colors.red,
      textTheme: WiredashTextTheme(
        appbarTitle: context.typography.body3,
        button: context.typography.body3,
        input: context.typography.body3,
        headlineSmall: context.typography.title3.copyWith(
          fontSize: 24,
        ),
        caption: context.typography.caption1,
        bodySmall: context.typography.body3.copyWith(height: 1.1),
        inputError: context.typography.caption1,
      ),
    );
  }
}
