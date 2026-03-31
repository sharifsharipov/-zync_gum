import 'package:flutter/material.dart';
import 'package:zync_gum/core/themes/app_color.dart';
import 'package:zync_gum/core/utils/utils.dart';

import 'app_text_style.dart';

sealed class Themes {
  static final ThemeData lightTheme = ThemeData(
    extensions: [AppTextStyle.light],
    fontFamily: 'Manrope',
    brightness: Brightness.light,
    colorScheme: AppColor.lightScheme,

    /// AppBar Theme
    appBarTheme: AppBarTheme(
      toolbarHeight: 40,
      elevation: 0,
      centerTitle: true,
      scrolledUnderElevation: 2,
      shadowColor: const Color.fromRGBO(24, 24, 27, 0.1),
      titleSpacing: 8,
      backgroundColor: AppColor.lightScheme.surface,
      foregroundColor: AppColor.lightScheme.onSurface,
      surfaceTintColor: AppColor.lightScheme.surface,
      titleTextStyle: AppTextStyle.light.poppins18w600,
    ),
    dividerTheme: const DividerThemeData(
      color: Color(0xFF_EE_F2_F6),
      thickness: 1,
    ),
    primaryColor: AppColor.lightScheme.primary,
    // dialogTheme: const DialogThemeData(backgroundColor: ColorName.white),
    inputDecorationTheme: InputDecorationTheme(
      focusColor: AppColor.lightScheme.primary,
      hoverColor: const Color(0xFFdee1e6),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFdee1e6)),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFdee1e6)),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: AppUtils.kBorderRadius8,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.lightScheme.primary, width: 1.5),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.lightScheme.error),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.lightScheme.error),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      errorStyle: TextStyle(
        fontFamily: 'Manrope',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColor.lightScheme.error,
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    focusColor: AppColor.lightScheme.primary,
    scaffoldBackgroundColor: Colors.white,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      showDragHandle: true,
      dragHandleColor: Colors.black.withValues(alpha: 0.5),
      dragHandleSize: const Size(48, 4),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),

    ///
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColor.lightScheme.primary,
      circularTrackColor: AppColor.lightScheme.primary.withValues(alpha: 0.2),
    ),
  
    ///
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      enableFeedback: true,
      elevation: 4,
      showSelectedLabels: true,
      showUnselectedLabels: true,

      ///
      selectedItemColor: AppColor.lightScheme.primary,
      unselectedItemColor: const Color(0xFF565d6d),
      selectedLabelStyle: TextStyle(
        fontFamily: 'Manrope',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AppColor.lightScheme.primary,
      ),

      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Manrope',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFF565d6d),
      ),
    ),

    ///
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) return Colors.grey;
          return AppColor.lightScheme.primary;
        }),
        textStyle: WidgetStateProperty.resolveWith(
          (states) => const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) => Colors.white,
        ),
        minimumSize: const WidgetStatePropertyAll(Size(48, 48)),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        textStyle: WidgetStateProperty.resolveWith(
          (states) => TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColor.lightScheme.primary,
          ),
        ),
        minimumSize: const WidgetStatePropertyAll(Size(36, 36)),
      ),
    ),
    ///
    chipTheme: ChipThemeData(
      selectedColor: AppColor.lightScheme.primary,
      backgroundColor: AppColor.lightScheme.onPrimary,
      checkmarkColor: AppColor.lightScheme.onPrimary,
      shape: const RoundedSuperellipseBorder(
        borderRadius: AppUtils.kBorderRadius16,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    extensions: [AppTextStyle.dark],
    fontFamily: 'Manrope',
    brightness: Brightness.dark,
    colorScheme: AppColor.darkScheme,

    /// AppBar Theme
    appBarTheme: AppBarTheme(
      elevation: 0,
      toolbarHeight: 40,
      centerTitle: true,
      scrolledUnderElevation: 2,
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.3),
      titleSpacing: 8,
      backgroundColor: AppColor.darkScheme.surface,
      foregroundColor: AppColor.darkScheme.onSurface,
      surfaceTintColor: AppColor.darkScheme.surface,
      titleTextStyle: AppTextStyle.dark.poppins18w600,
    ),
    dividerTheme: const DividerThemeData(
      color: Color(0xFF2C2C2E),
      thickness: 1,
    ),
    primaryColor: AppColor.darkScheme.primary,
    inputDecorationTheme: InputDecorationTheme(
      focusColor: AppColor.darkScheme.primary,
      hoverColor: AppColor.darkScheme.surfaceContainerHighest,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.darkScheme.outline),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.darkScheme.outline),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: AppUtils.kBorderRadius8,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.darkScheme.primary, width: 1.5),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.darkScheme.error),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.darkScheme.error),
        borderRadius: AppUtils.kBorderRadius8,
      ),
      errorStyle: TextStyle(
        fontFamily: 'Manrope',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColor.darkScheme.error,
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    focusColor: AppColor.darkScheme.primary,
    scaffoldBackgroundColor: Colors.black,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColor.darkScheme.surfaceContainerHighest,
      showDragHandle: true,
      dragHandleColor: Colors.white.withValues(alpha: 0.4),
      dragHandleSize: const Size(48, 4),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),

    ///
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColor.darkScheme.primary,
      circularTrackColor: AppColor.darkScheme.primary.withValues(alpha: 0.2),
    ),

    ///
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      enableFeedback: true,
      elevation: 8,
      backgroundColor: const Color(0xFF111111),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: AppColor.darkScheme.primary,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Manrope',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AppColor.darkScheme.primary,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Manrope',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),

    ///
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return const Color(0xFF334155);
          }
          return AppColor.darkScheme.primary;
        }),
        textStyle: WidgetStateProperty.resolveWith(
          (states) => const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) => Colors.white,
        ),
        minimumSize: const WidgetStatePropertyAll(Size(48, 48)),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        textStyle: WidgetStateProperty.resolveWith(
          (states) => TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColor.darkScheme.primary,
          ),
        ),
        minimumSize: const WidgetStatePropertyAll(Size(36, 36)),
      ),
    ),

    ///
    chipTheme: ChipThemeData(
      selectedColor: AppColor.darkScheme.primary,
      backgroundColor: AppColor.darkScheme.surfaceContainerHighest,
      checkmarkColor: Colors.white,
      shape: const RoundedSuperellipseBorder(
        borderRadius: AppUtils.kBorderRadius16,
      ),
    ),
  );

  // static PinTheme defaultCodeTheme(BuildContext context) => PinTheme(
  //   height: 4,
  //   margin: Dimensions.paddingTop36,
  //   width: Responsive.isMobile(context) ? 48.w : 46,
  //   textStyle: AppStyle.ttNormsProW500x24White,
  //   decoration: const BoxDecoration(
  //     color: Colors.white10,
  //     borderRadius: Dimensions.radiusTop10,
  //   ),
  // );

  // static PinTheme focusedCodeTheme(BuildContext context) => PinTheme(
  //   height: 4,
  //   margin: Dimensions.paddingTop36,
  //   width: Responsive.isMobile(context) ? 48.w : 46,
  //   textStyle: AppStyle.ttNormsProW500x24White,
  //   decoration: const BoxDecoration(
  //     color: ColorName.white,
  //     borderRadius: Dimensions.radiusTop10,
  //   ),
  // );
  //
  // static PinTheme submittedCodeTheme(BuildContext context) => PinTheme(
  //   height: 50,
  //   width: Responsive.isMobile(context) ? 48.w : 46,
  //   textStyle: AppStyle.ttNormsProW500x24White,
  //   decoration: BoxDecoration(
  //     color: Colors.white10,
  //     borderRadius: Dimensions.radiusAll8,
  //   ),
  // );
  //
  // static PinTheme errorCodeTheme(BuildContext context) => PinTheme(
  //   height: 46,
  //   width: Responsive.isMobile(context) ? 48.w : 46,
  //   textStyle: AppStyle.ttNormsProW500x24Red,
  //   decoration: BoxDecoration(
  //     color: Colors.red.withOpacity(.2),
  //     borderRadius: Dimensions.radiusAll10,
  //   ),
  // );
}
