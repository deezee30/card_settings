// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

import 'package:flutter/material.dart';

import 'minimum_field_properties.dart';

/// Interface to ensure that all widgets implement this minimum
/// set of properties
abstract class ICommonFieldProperties extends IMinimumFieldSettings {
  final String? label = null;
  final double? labelWidth = null;
  final TextAlign? labelAlign = null;
  final TextAlign? contentAlign = null;
  final EdgeInsetsGeometry? fieldPadding = null;
  final Icon? icon = null;
  final Widget? requiredIndicator = null;

  final Function? onChanged = null;
  final Function? onSaved = null;
  final Function? validator = null;
  //final bool autovalidate = null;
  final AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction;
}
