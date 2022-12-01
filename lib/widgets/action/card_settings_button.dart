// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

import 'package:flutter/material.dart';
import 'package:flutter_cupertino_settings/flutter_cupertino_settings.dart';

import 'package:card_settings/helpers/platform_functions.dart';
import 'package:card_settings/interfaces/minimum_field_properties.dart';

/// This is a button widget for inclusion in the form.
class CardSettingsButton extends StatelessWidget
    implements IMinimumFieldSettings {
  const CardSettingsButton({
    super.key,
    this.label = 'Label',
    required this.onPressed,
    this.visible = true,
    this.backgroundColor,
    this.textColor,
    this.enabled = true,
    this.bottomSpacing = 0.0,
    this.isDestructive = false,
    this.showMaterialonIOS,
  });

  /// The text to place in the button
  final String label;

  /// tells the Ui the button is destructive. Helps select color.
  final bool isDestructive;

  /// The background color for normal buttons
  final Color? backgroundColor;

  /// The text color for normal buttons
  final Color? textColor;

  /// allows adding extra padding at the bottom
  final double bottomSpacing;

  /// If false, grays out the field and makes it unresponsive
  final bool enabled;

  /// Force the widget to use Material style on an iOS device
  @override
  final bool? showMaterialonIOS;

  /// If false hides the widget on the card setting panel
  @override
  final bool visible;

  /// Fires when the button is pressed
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    TextStyle buttonStyle =
        Theme.of(context).textTheme.button!.copyWith(color: textColor);

    if (visible) {
      if (showCupertino(context, showMaterialonIOS)) {
        return _showCuppertinoButton();
      } else {
        return _showMaterialButton(context, buttonStyle);
      }
    } else {
      return Container();
    }
  }

  Widget _showMaterialButton(BuildContext context, TextStyle buttonStyle) {
    var style = Theme.of(context).textButtonTheme.style ?? const ButtonStyle();
    if (backgroundColor != null) {
      style = style.copyWith(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor!));
    }
    if (textColor != null) {
      style = style.copyWith(
          foregroundColor: MaterialStateProperty.all<Color>(textColor!));
    }
    if (!enabled) {
      style = style.copyWith(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey));
    }

    return Container(
      margin: EdgeInsets.only(
          top: 0.0, bottom: bottomSpacing, left: 6.0, right: 6.0),
      padding: const EdgeInsets.all(0.0),
      child: TextButton(
        style: style,
        onPressed: (enabled) ? onPressed : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              label,
            ),
          ],
        ), // to disable, we need to not provide an onPressed function
      ),
    );
  }

  Widget _showCuppertinoButton() {
    return Container(
      child: visible == false
          ? null
          : CSButton(
              isDestructive
                  ? CSButtonType.DESTRUCTIVE
                  : CSButtonType.DEFAULT_CENTER,
              label,
              onPressed,
            ),
    );
  }
}
