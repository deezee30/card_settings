// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:card_settings/card_settings.dart';
import 'package:card_settings/interfaces/common_field_properties.dart';
import 'package:card_settings/interfaces/text_field_properties.dart';

/// This is a password field. It obscures the entered text.
class CardSettingsPassword extends CardSettingsText
    implements ICommonFieldProperties, ITextFieldProperties {
  CardSettingsPassword({
    Key? key,
    String label = 'Password',
    String hintText = '',
    double? labelWidth,
    TextAlign? labelAlign,
    TextAlign? contentAlign,
    bool contentOnNewLine = false,
    String? initialValue,
    Icon? icon,
    Widget? requiredIndicator,
    int maxLength = 20,
    bool visible = true,
    bool enabled = true,
    bool autofocus = false,
    bool obscureText = true,
    bool autocorrect = false,
    AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction,
    FormFieldValidator<String>? validator,
    FormFieldSetter<String>? onSaved,
    ValueChanged<String>? onChanged,
    TextEditingController? controller,
    FocusNode? focusNode,
    TextInputAction? inputAction,
    FocusNode? inputActionNode,
    TextInputType keyboardType = TextInputType.text,
    TextStyle? style,
    MaxLengthEnforcement? maxLengthEnforcement = MaxLengthEnforcement.enforced,
    ValueChanged<String>? onFieldSubmitted,
    List<TextInputFormatter>? inputFormatters,
    bool? showMaterialonIOS,
    EdgeInsetsGeometry? fieldPadding,
  }) : super(
          key: key,
          label: label,
          labelWidth: labelWidth,
          labelAlign: labelAlign,
          hintText: hintText,
          showMaterialonIOS: showMaterialonIOS,
          fieldPadding: fieldPadding,
          contentAlign: contentAlign,
          contentOnNewLine: contentOnNewLine,
          initialValue: initialValue,
          maxLength: maxLength,
          icon: icon,
          requiredIndicator: requiredIndicator,
          visible: visible,
          enabled: enabled,
          autofocus: autofocus,
          obscureText: obscureText,
          autocorrect: autocorrect,
          autovalidateMode: autovalidateMode,
          validator: validator,
          onSaved: onSaved,
          onChanged: onChanged,
          controller: controller,
          focusNode: focusNode,
          inputAction: inputAction,
          inputActionNode: inputActionNode,
          keyboardType: keyboardType,
          style: style,
          maxLengthEnforcement: maxLengthEnforcement,
          onFieldSubmitted: onFieldSubmitted,
          inputFormatters: inputFormatters,
        );
}
