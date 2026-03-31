import 'package:zync_gum/core/common/custom_app_bar.dart';
import 'package:zync_gum/core/common/custom_ink_widget.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/core/models/app_options.dart';
import 'package:zync_gum/core/utils/utils.dart';
import 'package:zync_gum/features/profile/presentation/pages/language_page/language_mixin.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> with LanguageMixin {
  static const _languages = [
    (lang: AppLanguage.uzbek, name: "🇺🇿 O'zbekcha"),
    (lang: AppLanguage.russian, name: '🇷🇺 Русский'),
    (lang: AppLanguage.english, name: '🇬🇧 English'),
    (lang: AppLanguage.tajik, name: '🇹🇯 Tоҷикӣ'),
  ];

  @override
  Widget build(BuildContext context) {
    final selected = selectedLanguage;
    return Scaffold(
      appBar: CustomAppBar(title: context.locale.language),
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
              for (int i = 0; i < _languages.length; i++) ...[
                if (i != 0) const Divider(height: 0, indent: 16, endIndent: 16),
                CustomInkWidget(
                  borderRadius:i == 0 ? AppUtils.kBorderRadiusTop16 :i == _languages.length - 1 ? AppUtils.kBorderRadiusBottom16 : BorderRadius.zero,
                  onTap: () => selectLanguage(_languages[i].lang),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _languages[i].name,
                            style: context.textStyle.manrope16w500,
                          ),
                        ),
                        if (selected == _languages[i].lang)
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
