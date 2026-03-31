import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/core/extensions/padding_extensions.dart';
import 'package:zync_gum/core/utils/utils.dart';
import 'package:zync_gum/l10n/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = "",
    this.centerTitle = true,
    this.actions,
    this.leadingVisible = true,
    this.bottom,
    this.onTap,
  });

  final String title;
  final bool centerTitle;
  final Widget? actions;
  final bool leadingVisible;
  final PreferredSizeWidget? bottom;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leadingVisible
          ? IconButton(
              onPressed: () {
                onTap?.call();
                context.pop();
              },
              icon: Assets.icons.arrowBack.svg(
                colorFilter: ColorFilter.mode(
                  context.isDarkMode ? Colors.white :   Colors.black,
                  BlendMode.srcIn,
                ),
              ),
            )
          : const SizedBox.shrink(),
      centerTitle: centerTitle,
      title: Text(
        title,
        style: context.textStyle.manrope16w500,
        maxLines: 10,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
      actions: actions != null ? [actions!.paddingOnly(right: 20)] : [],
      bottom: bottom,
      shape: AppUtils.kShapeBottom16,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(45 + (bottom?.preferredSize.height ?? 0));
}
