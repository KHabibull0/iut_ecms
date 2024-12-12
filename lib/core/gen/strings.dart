import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_generator/easy_localization_generator.dart';
import 'package:flutter/material.dart';

part 'strings.g.dart';

// https://docs.google.com/spreadsheets/d/1Jr8hUMrOB6JlmODU0H6lbQtLo9j5j1KuQQtueJO2Z3M/edit?usp=sharing

@SheetLocalization(
  docId: '1Jr8hUMrOB6JlmODU0H6lbQtLo9j5j1KuQQtueJO2Z3M',
  version: 8,
  outDir: 'assets/translations',
  outName: 'translations.csv',
  preservedKeywords: ['few', 'many', 'one', 'other', 'two', 'zero', 'male', 'female'],
)
class _Strings {}
