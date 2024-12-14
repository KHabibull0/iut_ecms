import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/core/gen/local_keys.g.dart';
import 'package:iut_ecms/domain/models/language/language.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/presentation/user/user_settings/cubit/user_settings_cubit.dart';

class UserSettingsDropDownButton extends StatefulWidget {
  const UserSettingsDropDownButton({super.key});

  @override
  State<UserSettingsDropDownButton> createState() => _UserSettingsDropDownButtonState();
}

class _UserSettingsDropDownButtonState extends State<UserSettingsDropDownButton> {
  String? selectedValue = 'en_US';
  final Map<String, String> options = {
    'en_US': LocaleKeys.english,
    'uz_UZ': LocaleKeys.uzbek,
    'ru_RU': LocaleKeys.russian,
  };

  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();

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
          LocaleKeys.language.tr(),
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
                    entry.value.tr(),
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
                userSettingsCubit
                    .changeLanguage(Language(code: newValue, name: options[newValue] ?? 'English'));
                setState(() {
                  selectedValue = newValue;
                });
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
