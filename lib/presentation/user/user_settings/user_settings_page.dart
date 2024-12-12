import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/presentation/user/user_settings/cubit/user_settings_cubit.dart';
import 'package:iut_ecms/presentation/user/user_settings/cubit/user_settings_state.dart';
import 'package:iut_ecms/presentation/user/user_settings/widgets/input_field_view.dart';
import 'package:iut_ecms/presentation/user/user_settings/widgets/user_settings_drop_down_button.dart';

class UserSettingsPage
    extends BasePage<UserSettingsCubit, UserSettingsBuildable, UserSettingsListenable> {
  const UserSettingsPage({super.key});

  @override
  Widget builder(BuildContext context, UserSettingsBuildable state) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.profileDetails,
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
                            Strings.upload,
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
                      header: Strings.name,
                      hint: Strings.yourName,
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: Strings.dateOfBirth,
                      hint: Strings.dmy,
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: Strings.phoneNumber,
                      hint: Strings.yourPhoneNumber,
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
                      header: Strings.lastName,
                      hint: Strings.lastName,
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: Strings.university,
                      hint: Strings.university,
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: Strings.adress,
                      hint: Strings.adress,
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
                      header: Strings.eMail,
                      hint: Strings.yourEmail,
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    InputFieldView(
                      header: Strings.studentId,
                      hint: Strings.studentId,
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
            Strings.accountDetails,
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
                  header: Strings.eMail,
                  hint: 'your_email@example.com',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: InputFieldView(
                  header: Strings.currentPassword,
                  hint: '***************',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: InputFieldView(
                  header: Strings.newPassword,
                  hint: '***************',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 24),
              TextButton(
                onPressed: () {},
                child: Text(
                  Strings.changePassword,
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
            Strings.settings,
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
                Strings.changePassword,
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
                  text: Strings.logOut,
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
                  text: Strings.deleteAccount,
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
                  text: Strings.saveChanges,
                  backgroundColor: AppColors.blueOriginal,
                  icon: Assets.svgs.checkSquare.svg(height: 16, width: 16),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
