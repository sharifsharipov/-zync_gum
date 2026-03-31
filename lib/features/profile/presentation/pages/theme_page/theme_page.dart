import 'package:zync_gum/core/common/custom_app_bar.dart';
import 'package:zync_gum/core/common/custom_ink_widget.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/core/utils/utils.dart';
import 'package:zync_gum/features/profile/presentation/pages/theme_page/theme_mixin.dart';
import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> with ThemeMixin {
  @override
  Widget build(BuildContext context) {
    final selected = selectedTheme;
    final themes = [
      (mode: ThemeMode.light, name: context.locale.light, icon: Icons.light_mode_outlined),
      (mode: ThemeMode.dark, name: context.locale.dark, icon: Icons.dark_mode),
      (mode: ThemeMode.system, name: context.locale.system, icon: Icons.phone_android),
    ];

    return Scaffold(
      appBar: CustomAppBar(title: context.locale.theme),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: AppUtils.kBorderRadius16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < themes.length; i++) ...[
                if (i != 0) const Divider(height: 0, indent: 16, endIndent: 16),
                CustomInkWidget(
                  borderRadius: AppUtils.kBorderRadius16,
                  onTap: () => selectTheme(themes[i].mode),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Row(
                      children: [
                        Icon(themes[i].icon, color: context.colorScheme.onSurface),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            themes[i].name,
                            style: context.textStyle.manrope16w500,
                          ),
                        ),
                        if (selected == themes[i].mode)
                          Icon(
                            Icons.check_rounded,
                            color: context.colorScheme.primary,
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
