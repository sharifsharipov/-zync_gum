import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title, this.trailing});

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: context.textStyle.manrope18w600),
            if (trailing != null) trailing!,
          ],
        ),
      );
}
