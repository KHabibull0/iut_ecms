import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/local_keys.g.dart';
import 'package:iut_ecms/core/utils/locale_convert.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/domain/models/language/language.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/presentation/app/cubit/app_cubit.dart';
import 'package:iut_ecms/presentation/user/user_settings/cubit/user_settings_cubit.dart';
import 'package:iut_ecms/presentation/user/user_settings/cubit/user_settings_state.dart';
import 'package:iut_ecms/presentation/user/user_settings/widgets/input_field_view.dart';
import 'package:iut_ecms/presentation/user/user_settings/widgets/user_settings_drop_down_button.dart';

class UserSettingsPage
    extends BasePage<UserSettingsCubit, UserSettingsBuildable, UserSettingsListenable> {
  UserSettingsPage({super.key});

  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();

  @override
  Widget builder(BuildContext context, UserSettingsBuildable state) {
    late final appCubit = context.read<AppCubit>();
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.profileDetails.tr(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 128,
                  width: 128,
                  child: DottedBorder(
                    color: AppColors.dottedBorder,
                    strokeWidth: 1,
                    dashPattern: [10, 8],
                    borderType: BorderType.RRect,
                    radius: Radius.circular(100),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          const SizedBox(height: 8),
                          Text(
                            LocaleKeys.upload.tr(),
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InputFieldView(
                      header: LocaleKeys.name.tr(),
                      hint: LocaleKeys.yourName.tr(),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: LocaleKeys.dateOfBirth.tr(),
                      hint: LocaleKeys.dmy.tr(),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: LocaleKeys.phoneNumber.tr(),
                      hint: LocaleKeys.yourPhoneNumber.tr(),
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InputFieldView(
                      header: LocaleKeys.lastName.tr(),
                      hint: LocaleKeys.lastName.tr(),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: LocaleKeys.university.tr(),
                      hint: LocaleKeys.university.tr(),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: LocaleKeys.adress.tr(),
                      hint: LocaleKeys.adress.tr(),
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InputFieldView(
                      header: LocaleKeys.eMail.tr(),
                      hint: LocaleKeys.yourEmail.tr(),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: LocaleKeys.studentId.tr(),
                      hint: LocaleKeys.studentId.tr(),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 87.5),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            LocaleKeys.accountDetails.tr(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.headline,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: InputFieldView(
                  header: LocaleKeys.eMail.tr(),
                  hint: 'your_email@example.com',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: InputFieldView(
                  header: LocaleKeys.currentPassword.tr(),
                  hint: '***************',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: InputFieldView(
                  header: LocaleKeys.newPassword.tr(),
                  hint: '***************',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 24),
              TextButton(
                onPressed: () {},
                child: Text(
                  LocaleKeys.changePassword.tr(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textBlueOriginal,
                  ),
                ),
              ),
              const SizedBox(width: 24),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            LocaleKeys.settings.tr(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.headline,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(child: UserSettingsDropDownButton()),
              Expanded(child: SizedBox(height: 1)),
              Expanded(child: SizedBox(height: 1)),
              const SizedBox(width: 112),
              Text(
                LocaleKeys.changePassword.tr(),
                style: TextStyle(fontSize: 14, color: AppColors.transparent),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CommonButton.elevated(
                  radius: 10,
                  text: LocaleKeys.logOut.tr(),
                  backgroundColor: AppColors.blueOriginal,
                  icon: Assets.svgs.logOutSettings.svg(height: 16, width: 16),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 2,
                child: CommonButton.elevated(
                  radius: 10,
                  text: LocaleKeys.deleteAccount.tr(),
                  backgroundColor: AppColors.red,
                  icon: Assets.svgs.trashBin.svg(height: 16, width: 16),
                  onPressed: () {},
                ),
              ),
              const Spacer(),
              const SizedBox(width: 130),
              Expanded(
                flex: 2,
                child: CommonButton.elevated(
                  radius: 10,
                  text: LocaleKeys.saveChanges.tr(),
                  backgroundColor: AppColors.blueOriginal,
                  icon: Assets.svgs.checkSquare.svg(height: 16, width: 16),
                  onPressed: () async {
                    Locale newLocale =
                        LocaleConvert.getProperLocale(state.language?.code ?? 'en_US');
                    appCubit.select(newLocale);
                    await context.setLocale(newLocale);
                    await _saveLanguage(
                        state.language?.code ?? 'en_US', state.language?.name ?? 'English');
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Future<void> _saveLanguage(String code, String name) async {
    final Language language = Language(code: code, name: name);
    await _sharedPrefs.setLanguage(language);
  }
}
