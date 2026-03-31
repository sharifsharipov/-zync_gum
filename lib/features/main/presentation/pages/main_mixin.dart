import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/features/main/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';

mixin MainMixin on State<MainPage> {
  void changeTap(int index, BuildContext context) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  ColorFilter get selectedItemColorFilter =>
      ColorFilter.mode(const Color.fromARGB(246, 241, 193, 20), BlendMode.srcIn);

  ColorFilter get unselectedItemColorFilter => ColorFilter.mode(
    context.theme.bottomNavigationBarTheme.unselectedItemColor!,
    BlendMode.srcIn,
  );
}
