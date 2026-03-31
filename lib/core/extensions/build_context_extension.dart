import 'package:zync_gum/core/models/app_options.dart';
import 'package:zync_gum/core/themes/app_text_style.dart';
import 'package:zync_gum/core/utils/utils.dart';
import 'package:zync_gum/generated/l10n.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  S get locale => S.of(this);

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  AppTextStyle get textStyle => Theme.of(this).extension<AppTextStyle>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  bool get isPlatformDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }

  Size get pageSize => MediaQuery.of(this).size;

  AppOptions get options => AppOptions.of(this);

  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  /// messages
  void showFailure(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: textStyle.manrope14w400.copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.red,
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }

  void showInfo(String message) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          const Icon(Icons.info_outline_rounded, color: Colors.white, size: 20),
          AppUtils.kGap12,
          Expanded(
            child: Text(
              message,
              style: textStyle.manrope14w400.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: colorScheme.primary,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }

  void showSuccess(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: textStyle.manrope14w400.copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.green,
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }

  void popUntilAndReturn(String routeName, [Object? result]) {
    Navigator.of(this).popUntil((route) => route.settings.name == routeName);
    Navigator.of(this).pop(result);
  }
}
