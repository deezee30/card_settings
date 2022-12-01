// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:card_settings/card_settings.dart';
import 'package:card_settings/helpers/platform_functions.dart';

/// This is a read only section of text
class CardSettingsInstructions extends StatelessWidget
    implements CardSettingsWidget {
  const CardSettingsInstructions({
    super.key,
    this.text = 'Instructions here...',
    this.backgroundColor,
    this.textColor,
    this.showMaterialonIOS,
    this.visible = true,
    this.fieldPadding,
  });

  /// The text for the instructions
  final String text;

  /// the color for the background
  final Color? backgroundColor;

  /// The color of the text
  final Color? textColor;

  /// Force the widget to use Material style on an iOS device
  @override
  final bool? showMaterialonIOS;

  /// If false hides the widget on the card setting panel
  @override
  final bool visible;

  /// padding to place around then entire field
  final EdgeInsetsGeometry? fieldPadding;

  @override
  Widget build(BuildContext context) {
    if (!visible) return Container();

    TextStyle textStyle = Theme.of(context)
        .primaryTextTheme
        .caption!
        .copyWith(color: textColor ?? Theme.of(context).colorScheme.secondary);
    if (showCupertino(context, showMaterialonIOS)) {
      return Container(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
        child: Text(
          text,
          style: const TextStyle(color: CupertinoColors.inactiveGray),
        ),
        // color: CupertinoColors.lightBackgroundGray,
      );
    } else {
      return _materialInstruction(context, textStyle);
    }
  }

  Widget _materialInstruction(BuildContext context, TextStyle textStyle) {
    EdgeInsetsGeometry fieldPadding_ = (fieldPadding ??
        CardSettings.of(context)?.fieldPadding ??
        const EdgeInsets.all(14.0));

    return Container(
      margin: const EdgeInsets.all(0.0),
      decoration:
          BoxDecoration(color: backgroundColor ?? Theme.of(context).cardColor),
      padding: fieldPadding_,
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
