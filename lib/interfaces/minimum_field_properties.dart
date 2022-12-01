// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

import 'package:card_settings/card_settings.dart';

/// abstract class to ensure that all widgets implement the base
/// set of properties expected buy the settings panel wrapper
abstract class IMinimumFieldSettings implements CardSettingsWidget {
  @override
  final bool? showMaterialonIOS = null;
  @override
  final bool? visible = null;
}
