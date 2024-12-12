import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/presentation/app/cubit/app_cubit.dart';

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
                if (newValue == null || newValue == selectedValue) return;

                final mainCubit = context.read<AppCubit>();
                mainCubit.select(newValue ?? 'en_US');
                await getProperLanguage(newValue ?? 'en_US', context);
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

  Future<void> getProperLanguage(String language, BuildContext context) async {
    switch (language) {
      case 'en_US':
        await context.setLocale(const Locale('en', 'US'));
        break;
      case 'uz_UZ':
        await context.setLocale(const Locale('uz', 'UZ'));
        break;
      case 'ru_RU':
        await context.setLocale(const Locale('ru', 'RU'));
        break;
      default:
        await context.setLocale(const Locale('en', 'US'));
        break;
    }
    log('Locale changed to: ${context.locale}');
  }
}
