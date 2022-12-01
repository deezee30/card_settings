// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

import 'package:flutter/material.dart';

/// abstract class to ensure that all widgets implement the base
/// set of properties expected by the settings panel wrapper
abstract class CardSettingsWidget extends Widget {
  const CardSettingsWidget({super.key});

  final bool? showMaterialonIOS = null;
  final bool? visible = null;
}
