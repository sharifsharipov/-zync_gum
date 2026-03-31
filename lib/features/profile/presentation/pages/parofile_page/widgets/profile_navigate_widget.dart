import 'package:zync_gum/core/common/custom_ink_widget.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/core/extensions/padding_extensions.dart';
import 'package:zync_gum/l10n/assets/assets.gen.dart';
import 'package:flutter/material.dart';

class ProfileNavigateWidget extends StatelessWidget {
  const ProfileNavigateWidget({
    super.key,
    this.borderRadius = BorderRadius.zero,
    required this.title,
    required this.onTap,
    required this.icon,
    this.color,
    this.icons,
  });
  final BorderRadius borderRadius;
  final String title;
  final VoidCallback onTap;
  final SvgGenImage icon;
  final Color? color;
  final IconData? icons;

  @override
  Widget build(BuildContext context) {
    return CustomInkWidget(
      onTap: onTap,
      borderRadius: borderRadius,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 12,
            children: [
              icon.svg(   colorFilter: ColorFilter.mode(
                  context.isDarkMode ? Colors.white :   Colors.black,
                  BlendMode.srcIn,
                ),),
              Text(title, style: context.textStyle.manrope16w500),
            ],
          ),
          GestureDetector(onTap: onTap, child: Assets.icons.chevronRight.svg(   colorFilter: ColorFilter.mode(
                  context.isDarkMode ? Colors.white :   Colors.black,
                  BlendMode.srcIn,
                ),)),
        ],
      ).paddingSymmetric(horizontal: 12, vertical: 10),
    );
  }
}
