// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

import 'package:flutter/material.dart';

class PickerModel {
  const PickerModel(this.name, {this.code, this.icon});
  final String name;
  final Object? code;
  final Icon? icon;

  @override
  String toString() => name;
}
