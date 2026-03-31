import 'package:flutter/material.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';

class AuthOrDivider extends StatelessWidget {
  const AuthOrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: context.colorScheme.outline.withValues(alpha: 0.3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            context.locale.or,
            style: context.textStyle.manrope14w400.copyWith(
              color: context.colorScheme.onSurface.withValues(alpha: 0.4),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: context.colorScheme.outline.withValues(alpha: 0.3),
          ),
        ),
      ],
    );
  }
}
