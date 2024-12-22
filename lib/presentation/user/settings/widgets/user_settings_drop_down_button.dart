import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/utils/locale_convert.dart';
import 'package:iut_ecms/domain/models/language/language.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_cubit.dart';
import 'package:iut_ecms/presentation/user/settings/cubit/user_settings_cubit.dart';

class UserSettingsDropDownButton extends StatefulWidget {
  const UserSettingsDropDownButton({super.key});

  @override
  State<UserSettingsDropDownButton> createState() => _UserSettingsDropDownButtonState();
}

class _UserSettingsDropDownButtonState extends State<UserSettingsDropDownButton> {
  String? selectedValue = 'en_US';
  final Map<String, String> options = {
    'en_US': Strings.english,
    'uz_UZ': Strings.uzbek,
    'ru_RU': Strings.russian,
  };

  Future<void> _saveLanguage(String code, String name) async {
    final Language language = Language(code: code, name: name);
    await _sharedPrefs.setLanguage(language);
  }

  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();
  late final mainNavigationCubit = context.read<MainNavigationCubit>();

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  void _loadSelectedLanguage() {
    final savedLanguage = _sharedPrefs.getLanguage();
    setState(() {
      selectedValue = savedLanguage.code ?? 'en_US';
      log(selectedValue.toString());
    });
  }

  late final userSettingsCubit = context.read<UserSettingsCubit>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.language,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.headline,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.dottedBorder, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedValue,
              items: options.entries.map((entry) {
                return DropdownMenuItem(
                  value: entry.key,
                  child: Text(
                    entry.value,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade800,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) async {
                if (newValue == null) return;
                setState(() {
                  selectedValue = newValue;
                });
                Locale newLocale = LocaleConvert.getProperLocale(newValue);
                mainNavigationCubit.select(newLocale);
                await context.setLocale(newLocale);
                await _saveLanguage(newValue, options[newValue] ?? 'English');
              },
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.grey.shade600,
              ),
              isExpanded: true,
              borderRadius: BorderRadius.circular(10),
              dropdownColor: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
