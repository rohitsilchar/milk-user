
import 'package:flutter/material.dart';
import 'local_data/app_state.dart';

class UtilsHelper {
  UtilsHelper._();

  static const String wr_default_font_family = 'Helvetica';
  static const String the_sans_font_family = 'TheSans';
  static const List<String> rightHandLang = [ //TODO: add more Right to Left languages
    'ar', // Arabic
    'fa', // Farsi
    'he', // Hebrew
    'ps', // Pashto
    'ur', // Urdu
  ];

  static String getString(BuildContext? context, String key) {
    if (key != '' && appState.languageKeys.containsKey(key)) {
      return appState.languageKeys[key];
    } else if(key != '') {
      print("$key NOT AVAILABLE");
      return key;
    } else {
      return '';
    }
  }

  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }
}
