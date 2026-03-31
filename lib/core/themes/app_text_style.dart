import 'package:flutter/material.dart';

class AppTextStyle extends ThemeExtension<AppTextStyle> {
  AppTextStyle({
    required this.manrope12w400,
    required this.manrope12w400grey,
    required this.manrope12w400white,
    required this.manrope14w400,
    required this.manrope14w500primary,
    required this.manrope16w500,
    required this.manrope18w600,
    required this.manrope24w400,
    required this.poppins18w500primary,
    required this.poppins18w600,
    required this.poppins24w700,
  });

  static const _manropeFont = 'Manrope';
  final TextStyle manrope12w400;
  final TextStyle manrope12w400grey;
  final TextStyle manrope12w400white;
  final TextStyle manrope14w400;
  final TextStyle manrope16w500;
  final TextStyle manrope18w600;
  final TextStyle manrope24w400;
  final TextStyle manrope14w500primary;

  ///
  static const _poppins = 'Poppins';
  final TextStyle poppins18w500primary;
  final TextStyle poppins18w600;
  final TextStyle poppins24w700;

  static final AppTextStyle dark = AppTextStyle(
    manrope12w400: const TextStyle(
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    manrope12w400grey: const TextStyle(
      fontSize: 12,
      color: Color(0xFF94A3B8),
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    manrope12w400white: const TextStyle(
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    manrope14w400: const TextStyle(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    manrope14w500primary: const TextStyle(
      fontSize: 14,
      color: Color(0xFF818cf8),
      fontWeight: FontWeight.w500,
      fontFamily: _manropeFont,
    ),
    manrope16w500: const TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: _manropeFont,
    ),
    manrope18w600: const TextStyle(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontFamily: _manropeFont,
    ),
    manrope24w400: const TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    poppins18w500primary: const TextStyle(
      fontSize: 18,
      color: Color(0xFF818cf8),
      fontWeight: FontWeight.w500,
      fontFamily: _poppins,
    ),
    poppins18w600: const TextStyle(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontFamily: _poppins,
    ),
    poppins24w700: const TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontFamily: _poppins,
    ),
  );

  static final AppTextStyle light = AppTextStyle(
    manrope12w400: const TextStyle(
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    manrope12w400grey: const TextStyle(
      fontSize: 12,
      color: Color(0xFF9AA4B2),
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    manrope12w400white: const TextStyle(
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    manrope14w400: const TextStyle(
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    manrope14w500primary: const TextStyle(
      fontSize: 14,
      color: Color(0xFF535ce8),
      fontWeight: FontWeight.w500,
      fontFamily: _manropeFont,
    ),
    manrope16w500: const TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontFamily: _manropeFont,
    ),
    manrope18w600: const TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontFamily: _manropeFont,
    ),
    manrope24w400: const TextStyle(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontFamily: _manropeFont,
    ),
    poppins18w500primary: const TextStyle(
      fontSize: 18,
      color: Color(0xFF535ce8),
      fontWeight: FontWeight.w500,
      fontFamily: _poppins,
    ),
    poppins18w600: const TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontFamily: _poppins,
    ),
    poppins24w700: const TextStyle(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontFamily: _poppins,
    ),
  );

  @override
  ThemeExtension<AppTextStyle> copyWith({
    TextStyle? manrope12w400,
    TextStyle? manrope12w400grey,
    TextStyle? manrope12w400white,
    TextStyle? manrope14w400,
    TextStyle? manrope14w500primary,
    TextStyle? manrope16w500,
    TextStyle? manrope18w600,
    TextStyle? manrope24w400,
    TextStyle? poppins18w500primary,
    TextStyle? poppins18w600,
    TextStyle? poppins24w700,
  }) => AppTextStyle(
    manrope12w400: manrope12w400 ?? this.manrope12w400,
    manrope12w400grey: manrope12w400grey ?? this.manrope12w400grey,
    manrope12w400white: manrope12w400white ?? this.manrope12w400white,
    manrope14w400: manrope14w400 ?? this.manrope14w400,
    manrope14w500primary: manrope14w500primary ?? this.manrope14w500primary,
    manrope16w500: manrope16w500 ?? this.manrope16w500,
    manrope18w600: manrope18w600 ?? this.manrope18w600,
    manrope24w400: manrope24w400 ?? this.manrope24w400,
    poppins18w500primary: poppins18w500primary ?? this.poppins18w500primary,
    poppins18w600: poppins18w600 ?? this.poppins18w600,
    poppins24w700: poppins24w700 ?? this.poppins24w700,
  );

  @override
  ThemeExtension<AppTextStyle> lerp(
    covariant ThemeExtension<AppTextStyle>? other,
    double t,
  ) {
    if (other is! AppTextStyle) {
      return this;
    }
    return AppTextStyle(
      manrope12w400: TextStyle.lerp(manrope12w400, other.manrope12w400, t)!,
      manrope12w400grey: TextStyle.lerp(
        manrope12w400grey,
        other.manrope12w400grey,
        t,
      )!,
      manrope12w400white: TextStyle.lerp(
        manrope12w400white,
        other.manrope12w400white,
        t,
      )!,
      manrope14w400: TextStyle.lerp(manrope14w400, other.manrope14w400, t)!,
      manrope16w500: TextStyle.lerp(manrope16w500, other.manrope16w500, t)!,
      manrope18w600: TextStyle.lerp(manrope18w600, other.manrope18w600, t)!,
      manrope24w400: TextStyle.lerp(manrope24w400, other.manrope24w400, t)!,
      manrope14w500primary: TextStyle.lerp(
        manrope14w500primary,
        other.manrope14w500primary,
        t,
      )!,
      poppins18w500primary: TextStyle.lerp(
        poppins18w500primary,
        other.poppins18w500primary,
        t,
      )!,
      poppins18w600: TextStyle.lerp(poppins18w600, other.poppins18w600, t)!,
      poppins24w700: TextStyle.lerp(poppins24w700, other.poppins24w700, t)!,
    );
  }
}
