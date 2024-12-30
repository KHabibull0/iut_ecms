import 'package:flutter/material.dart';

class LocaleConvert {
  static Locale getProperLocale(String countryCode) {
    switch (countryCode) {
      case 'en_US':
        return Locale('en', 'US');
      case 'uz_UZ':
        return Locale('uz', 'UZ');

      case 'ru_RU':
        return Locale('ru', 'RU');
      default:
        return Locale('en', 'US');
    }
  }
}
