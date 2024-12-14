import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/utils/locale_convert.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';

@injectable
class LanguageService {
  final StreamController<Locale> _languageController = StreamController<Locale>.broadcast();

  LanguageService(SharedPrefs sharedPrefs) {
    final savedLanguage = sharedPrefs.getLanguage();
    _languageController.add(LocaleConvert.getProperLocale(savedLanguage.code ?? 'en_US'));
  }

  Stream<Locale> get languageStream => _languageController.stream;

  void changeLanguage(Locale locale) {
    _languageController.add(locale);
  }

  void dispose() {
    _languageController.close();
  }
}
