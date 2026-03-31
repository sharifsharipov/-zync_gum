import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/core/models/app_options.dart';
import 'package:zync_gum/features/profile/presentation/pages/theme_page/theme_page.dart';
import 'package:flutter/material.dart';

mixin ThemeMixin on State<ThemePage> {
  ThemeMode get selectedTheme => context.options.themeMode;

  void selectTheme(ThemeMode mode) {
    AppOptions.updateThemeMode(context, mode);
  }
}
