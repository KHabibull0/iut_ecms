import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:iut_ecms/domain/models/language/language.dart';
import 'package:iut_ecms/domain/models/tokens/tokens.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPrefs {
  final SharedPreferences _sharedPreferences;

  SharedPrefs({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  Language getLanguage() {
    var userInfoString = _sharedPreferences.getString('language');
    if (userInfoString == null || userInfoString.isEmpty) {
      return Language(code: 'en_US', name: 'English');
    }
    var jsonMap = jsonDecode(userInfoString);
    return Language.fromJson(jsonMap);
  }

  Future<bool> setLanguage(Language language) async {
    var result = await _sharedPreferences.setString('language', jsonEncode(language.toJson()));
    return result;
  }

  Future<bool> setMainPageIndex(int index) async {
    var result = await _sharedPreferences.setInt('MainPageIndex', index);
    return result;
  }

  int getMainPageIndex() {
    return _sharedPreferences.getInt('MainPageIndex') ?? 0;
  }

  Future<bool> setTokens(Tokens tokens) async {
    var result = await _sharedPreferences.setString('tokens', jsonEncode(tokens.toJson()));
    return result;
  }

  Tokens getTokens() {
    var tokensString = _sharedPreferences.getString('tokens');
    if (tokensString == null) {
      return Tokens(refreshToken: '', accessToken: '');
    }
    var jsonMap = jsonDecode(tokensString);
    return Tokens.fromJson(jsonMap);
  }
}
