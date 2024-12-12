import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final oldText = oldValue.text;
    final newText = newValue.text;

    // Allow deletion without interference
    if (newText.length < oldText.length) {
      return newValue;
    }

    // Remove non-numeric characters
    final filteredText = newText.replaceAll(RegExp(r'[^0-9]'), '');

    final buffer = StringBuffer();
    for (int i = 0; i < filteredText.length; i++) {
      if (i == 2 || i == 4) {
        buffer.write('/');
      }
      buffer.write(filteredText[i]);
    }

    final formattedText = buffer.toString();

    // Ensure the cursor remains at the correct position
    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
