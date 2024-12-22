import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/formatters/phone_number_formatter.dart';
import 'package:iut_ecms/presentation/manager/settings/cubit/manager_settings_cubit.dart';
import 'package:iut_ecms/presentation/manager/settings/cubit/manager_settings_state.dart';
import 'package:iut_ecms/presentation/user/settings/widgets/input_field_view.dart';

class ManagerSettingsPage
    extends BasePage<ManagerSettingsCubit, ManagerSettingsBuildable, ManagerSettingsListenable> {
  const ManagerSettingsPage({super.key});

  @override
  Widget builder(BuildContext context, ManagerSettingsBuildable state) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile details',
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
                            'Upload',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 32),
              Expanded(
                child: InputFieldView(
                  header: 'Name',
                  hint: 'Your name',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: InputFieldView(
                  header: 'Date of birth',
                  hint: 'YYYY-MM-DD',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: InputFieldView(
                  maxLength: 14,
                  inputFormatter: [PhoneNumberFormatter()],
                  header: 'Phone number',
                  hint: '(--) --- -- --',
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 42),
          Text(
            'Account Details',
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
                  header: 'Email',
                  hint: 'your_email@example.com',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: InputFieldView(
                  header: 'Current password',
                  hint: '***************',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: InputFieldView(
                  header: 'New password',
                  hint: '***************',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 24),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Change password',
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
          const SizedBox(height: 32),
          const Spacer(),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CommonButton.elevated(
                  radius: 10,
                  text: 'Log Out',
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
                  text: 'Delete Account',
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
                  text: 'Save Changes',
                  backgroundColor: AppColors.blueOriginal,
                  icon: Assets.svgs.checkSquare.svg(height: 16, width: 16),
                  onPressed: () async {},
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
