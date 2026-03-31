// uzb_phone_input_formatter.dart
// Formats Uzbekistan phone numbers into: +998 (XX) XXX-XX-XX
// Handles inputs that start with +998, 998, 0 or local digits.

import 'package:flutter/services.dart';

class UzbPhoneInputFormatter extends TextInputFormatter {
  /// Keeps only digits from the input.
  static String _onlyDigits(String input) =>
      input.replaceAll(RegExp(r'\D'), '');

  /// Public helper: get raw national number digits (9 digits) from any input.
  /// Returns empty string if no digits.
  static String extractNationalNumber(String input) {
    final digits = _onlyDigits(input);
    if (digits.startsWith('998')) {
      return digits.substring(3);
    }
    if (digits.startsWith('0')) {
      return digits.substring(1);
    }
    // If user typed full national number (9 digits) or starts with operator
    if (digits.length <= 9) return digits;
    // If there are more than 9 digits but not starting with 998, try to take last 9
    return digits.length >= 9 ? digits.substring(digits.length - 9) : digits;
  }

  /// Formats a national (up to 9 digits) into (XX) XXX-XX-XX progressively.
  static String _formatNational(String national) {
    if (national.isEmpty) return '';

    final buffer = StringBuffer();

    // operator code (up to 2)
    final op = national.length >= 2 ? national.substring(0, 2) : national;
    if (national.length <= 2) {
      buffer.write('+998 $op'); // show partial operator (still helpful)
      return buffer.toString();
    }

    buffer.write('+998 ($op)');

    var index = 2;

    // next 3 digits
    if (national.length > index) {
      final end = (national.length >= index + 3) ? index + 3 : national.length;
      buffer.write(' ${national.substring(index, end)}');
      index = end;
    }

    // next 2 digits
    if (national.length > index) {
      final end = (national.length >= index + 2) ? index + 2 : national.length;
      buffer.write('-${national.substring(index, end)}');
      index = end;
    }

    // last 2 digits
    if (national.length > index) {
      final end = (national.length >= index + 2) ? index + 2 : national.length;
      buffer.write('-${national.substring(index, end)}');
      index = end;
    }

    return buffer.toString();
  }

  /// Formats any input into +998 (XX) XXX-XX-XX style.
  static String formatAsUzb(String input) {
    final digits = _onlyDigits(input);

    if (digits.isEmpty) return '';

    // If input already contains country code
    if (digits.startsWith('998')) {
      final national = digits.substring(3);
      return _formatNational(national);
    }

    // If user typed leading zero: 0XX...
    if (digits.startsWith('0')) {
      final national = digits.substring(1);
      return _formatNational(national);
    }

    // If user typed exactly 9 digits (national) or shorter
    if (digits.length <= 9) {
      return _formatNational(digits);
    }

    // If longer than 9 and doesn't start with 998, try to format last 9 digits
    final national = digits.substring(digits.length - 9);
    return _formatNational(national);
  }

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Keep cursor sane: compute formatted text and set selection to the end.
    final formatted = formatAsUzb(newValue.text);
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

// ---------------------------
// Example usage (in your Flutter widget):
//
// TextField(
//   keyboardType: TextInputType.phone,
//   inputFormatters: [UzbPhoneInputFormatter()],
//   decoration: InputDecoration(
//     hintText: '+998 (99) 123-45-67',
//     labelText: 'Phone',
//   ),
// ),
//
// Helpers:
//   UzbPhoneInputFormatter.extractNationalNumber(controller.text)
//     -> returns the 9-digit national number like '991234567'
//   UzbPhoneInputFormatter.formatAsUzb('998991234567')
//     -> returns formatted string
//
// Notes:
// - This formatter is forgiving: it accepts inputs starting with +998, 998, 0 or plain digits.
// - It progressively formats as the user types.
// - You can tweak the displayed prefix (currently `(+998)`) to match your taste.
// ---------------------------
