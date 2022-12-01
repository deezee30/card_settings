// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

import 'package:flutter/material.dart';

import 'package:card_settings/widgets/card_settings_widget.dart';

/// Lays out multiple fields in a row
class CardFieldLayout extends StatelessWidget implements CardSettingsWidget {
  const CardFieldLayout(
    this.children, {
    this.flexValues,
    this.visible = true,
    this.showMaterialonIOS = false,
    super.key,
  });

  /// the field widgets to place into the layout
  final List<CardSettingsWidget> children;

  /// the values that control the relative widths of the layed out widgets
  final List<int>? flexValues;

  /// Force the widget to use Material style on an iOS device
  @override
  final bool showMaterialonIOS;

  /// If false hides the widget on the card setting panel
  @override
  final bool visible;

  @override
  Widget build(BuildContext context) {
    if (!visible) return Container();

    int iterator = 0;

    return Row(
      children: children
          .map((c) => Flexible(
                flex: (flexValues == null) ? 1 : (flexValues?[iterator++] ?? 1),
                child: c,
              ))
          .toList(),
    );
  }
}
