import 'package:flutter/services.dart';

class UzbPhoneInputFormatter extends TextInputFormatter {
  static String _onlyDigits(String input) =>
      input.replaceAll(RegExp(r'\D'), '');

  static String extractNationalNumber(String input) {
    final digits = _onlyDigits(input);
    if (digits.startsWith('998')) {
      return digits.substring(3);
    }
    if (digits.startsWith('0')) {
      return digits.substring(1);
    }
    if (digits.length <= 9) return digits;
    return digits.length >= 9 ? digits.substring(digits.length - 9) : digits;
  }

  static String _formatNational(String national) {
    if (national.isEmpty) return '';

    final buffer = StringBuffer();

    final op = national.length >= 2 ? national.substring(0, 2) : national;
    if (national.length <= 2) {
      buffer.write('+998 $op');
      return buffer.toString();
    }

    buffer.write('+998 ($op)');

    var index = 2;

    if (national.length > index) {
      final end = (national.length >= index + 3) ? index + 3 : national.length;
      buffer.write(' ${national.substring(index, end)}');
      index = end;
    }

    if (national.length > index) {
      final end = (national.length >= index + 2) ? index + 2 : national.length;
      buffer.write('-${national.substring(index, end)}');
      index = end;
    }

    if (national.length > index) {
      final end = (national.length >= index + 2) ? index + 2 : national.length;
      buffer.write('-${national.substring(index, end)}');
      index = end;
    }

    return buffer.toString();
  }

  static String formatAsUzb(String input) {
    final digits = _onlyDigits(input);

    if (digits.isEmpty) return '';

    if (digits.startsWith('998')) {
      final national = digits.substring(3);
      return _formatNational(national);
    }

    if (digits.startsWith('0')) {
      final national = digits.substring(1);
      return _formatNational(national);
    }

    if (digits.length <= 9) {
      return _formatNational(digits);
    }

    final national = digits.substring(digits.length - 9);
    return _formatNational(national);
  }

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final formatted = formatAsUzb(newValue.text);
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
