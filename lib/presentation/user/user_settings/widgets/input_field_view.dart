import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/widgets/common_text_filed.dart';

class InputFieldView extends StatelessWidget {
  const InputFieldView({
    super.key,
    required this.header,
    required this.hint,
    this.onChanged,
    this.controller,
  });

  final String header;
  final String hint;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.headline,
          ),
        ),
        const SizedBox(height: 4),
        CommonTextField(
          borderColor: AppColors.dottedBorder,
          borderRadius: 10,
          hint: hint,
          controller: controller,
          onChanged: onChanged,
        ),
      ],
    );
    ;
  }
}
