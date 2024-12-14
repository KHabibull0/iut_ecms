import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iut_ecms/core/widgets/common_text_filed.dart';

class AuthInputView extends StatelessWidget {
  const AuthInputView({
    super.key,
    this.onChanged,
    required this.header,
    required this.hint,
    required this.icon,
    this.maxLength,
    this.inputFormatter,
    this.readOnly,
    this.onTap,
  });

  final Function(String)? onChanged;
  final String header;
  final String hint;
  final Widget icon;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatter;
  final bool? readOnly;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        SizedBox(
          height: 56,
          child: CommonTextField(
            inputFormatter: inputFormatter,
            maxLength: maxLength,
            counterText: '',
            readOnly: readOnly,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 12, top: 14, bottom: 14, right: 8),
              child: icon,
            ),
            hint: hint,
            onChanged: onChanged,
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}
