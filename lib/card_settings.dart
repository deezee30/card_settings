// Originally taken from codegrue, modified by AnimaSelf
// Source: https://github.com/codegrue/card_settings
// Original version: 3.3.0: 0de143e9e9286e65cb3a4de61eb0af971a76f671

/// Package for building card based settings forms
library card_settings;

export 'helpers/converter_functions.dart';
export 'widgets/action/card_settings_button.dart';
export 'widgets/card_field_layout.dart';
export 'widgets/card_settings_widget.dart';
export 'widgets/card_settings_field.dart';
export 'widgets/card_settings_panel.dart';
export 'widgets/detail/card_settings_header.dart';
export 'widgets/detail/card_settings_instructions.dart';
export 'widgets/numeric/card_settings_currency.dart';
export 'widgets/numeric/card_settings_double.dart';
export 'widgets/numeric/card_settings_int.dart';
export 'widgets/numeric/card_settings_switch.dart';
export 'widgets/picker/card_settings_color_picker.dart';
export 'widgets/picker/card_settings_date_picker.dart';
export 'widgets/picker/card_settings_file_picker.dart';
export 'widgets/picker/card_settings_list_picker.dart';
export 'widgets/picker/card_settings_radio_picker.dart';
export 'widgets/picker/card_settings_selection_picker.dart';
export 'widgets/picker/card_settings_checkbox_picker.dart';
export 'widgets/picker/card_settings_number_picker.dart';
export 'widgets/picker/card_settings_time_picker.dart';
export 'widgets/picker/card_settings_datetime_picker.dart';
export 'widgets/text/card_settings_email.dart';
export 'widgets/text/card_settings_paragraph.dart';
export 'widgets/text/card_settings_password.dart';
export 'widgets/text/card_settings_phone.dart';
export 'widgets/text/card_settings_text.dart';
export 'widgets/numeric/card_settings_slider.dart';
export 'widgets/card_settings_widget.dart';

//export 'package:flutter_material_pickers/flutter_material_pickers.dart'show PickerModel;
export 'models/picker_model.dart';

/// this is the default height for the cupertino scroll wheel
const double kCupertinoPickerSheetHeight = 216.0;

/// this is the default height for a single item in cupertino picker
const double kCupertinoPickerItemHeight = 32.0;
