import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    var formattedText = '';

    if (text.length > 0) {
      formattedText += '(${text.substring(0, text.length.clamp(0, 2))}';
    }
    if (text.length > 2) {
      formattedText += ') ${text.substring(2, text.length.clamp(2, 5))}';
    }
    if (text.length > 5) {
      formattedText += ' ${text.substring(5, text.length.clamp(5, 7))}';
    }
    if (text.length > 7) {
      formattedText += ' ${text.substring(7, text.length.clamp(7, 9))}';
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
