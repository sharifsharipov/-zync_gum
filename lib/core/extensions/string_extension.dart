import 'package:flutter/material.dart';

extension StringExten on String {
  Size textSize(TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: this, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.size;
  }

  String capitalizeFirst() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String take(int n) {
    if (length <= n) return this;
    return substring(0, n);
  }
}

extension StringExtension on String? {
  bool get isEmptyOrNull {
    if (this == null) return true;
    if (this!.isEmpty) return true;
    return false;
  }
}

enum CardType { uzcard, humo, unknown }

extension HideEmail on String {
  String get hiddenEmail {
    final emailFirstCharacter = split('@').firstOrNull ?? '';
    final emailLastCharacter = split('@').lastOrNull ?? '';
    if (emailFirstCharacter.length >= 2) {
      return '${emailFirstCharacter.substring(0, 2)}**@$emailLastCharacter';
    } else if (emailFirstCharacter.isNotEmpty &&
        emailLastCharacter.isNotEmpty) {
      return '$emailFirstCharacter@$emailLastCharacter';
    }
    return this;
  }

  CardType get getCardType {
    final firstLetter = substring(0, 4);
    if (firstLetter == '8600' || firstLetter == '5614') {
      return CardType.uzcard;
    } else if (firstLetter == '9860') {
      return CardType.humo;
    } else {
      return CardType.unknown;
    }
  }
}

extension HelperExtensionString on String {
  String removeCurlyBraces() => replaceAll('{', '').replaceAll('}', '');

  String removeSpaces() => replaceAll(' ', '');
}

extension StringOrEmptyExtension on String? {
  String ifNullOrEmpty([String defaultValue = '']) {
    if ((this ?? '').isEmpty) return defaultValue;
    return this!;
  }
}

extension StringIfEmptyExtension on String {
  String ifEmpty(String val) {
    if (isEmpty) return val;
    return this;
  }
}
