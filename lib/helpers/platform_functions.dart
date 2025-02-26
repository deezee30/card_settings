// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:card_settings/widgets/card_settings_panel.dart';

/// this centralizes code to determine if we want to display the cupertino
/// version or the material version, since this can be determined by
/// several settings throughout the package
bool showCupertino(
  BuildContext? context,
  bool? showMaterialonIOS, {
  bool mockIOS = false,
}) {
  bool defaultValue = false;

  // don't show on web
  if (kIsWeb) return defaultValue;

  // if we are on iOS then determine if we want material
  if (mockIOS || Platform.isIOS) {
    // if showMaterialonIOS not specified calculate it
    if (showMaterialonIOS == null) {
      showMaterialonIOS = defaultValue;

      if (context != null) {
        showMaterialonIOS =
            CardSettings.of(context)?.showMaterialonIOS ?? defaultValue;
      }
    }

    return !showMaterialonIOS;
  }

  // material by default
  return defaultValue;
}

/// This centralizes the style calculations for field labels, used by almost all widgets in this package
TextStyle? labelStyle(BuildContext context, bool enabled) {
  var theme = Theme.of(context);
  var style = theme.textTheme.subtitle1;
  if (!enabled) style = style?.copyWith(color: theme.disabledColor);
  return style;
}

/// This centralizes the style calculations for content, used by almost all widgets in this package
TextStyle? contentStyle(BuildContext context, dynamic value, bool enabled) {
  var theme = Theme.of(context);
  var style = theme.textTheme.subtitle1?.copyWith(
      color:
          (value == null) ? theme.hintColor : theme.textTheme.subtitle1?.color);
  if (!enabled) style = style?.copyWith(color: theme.disabledColor);
  return style;
}
