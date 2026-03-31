import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/features/main/presentation/pages/main_mixin.dart';
import 'package:zync_gum/l10n/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with MainMixin {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: widget.navigationShell.currentIndex == 0,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (didPop) return;
        widget.navigationShell.goBranch(0);
      },

      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: widget.navigationShell,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.navigationShell.currentIndex,
          selectedItemColor: const Color.fromARGB(246, 241, 193, 20),
          unselectedItemColor:
              context.theme.bottomNavigationBarTheme.unselectedItemColor,
          onTap: (int index) => changeTap(index, context),
          items: [
            BottomNavigationBarItem(
              activeIcon: Assets.icons.home.svg(
                colorFilter: selectedItemColorFilter,
              ),
              icon: Assets.icons.home.svg(
                colorFilter: unselectedItemColorFilter,
              ),
              label: context.locale.home,
            ),
            BottomNavigationBarItem(
              activeIcon: Assets.icons.person.svg(
                colorFilter: selectedItemColorFilter,
              ),
              icon: Assets.icons.person.svg(
                colorFilter: unselectedItemColorFilter,
              ),
              label: context.locale.profile,
            ),
          ],
        ),
      ),
    );
  }
}
