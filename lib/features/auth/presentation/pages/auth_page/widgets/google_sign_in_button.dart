import 'package:flutter/material.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
  });

  final bool isLoading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          side: BorderSide(
            color: context.colorScheme.outline.withValues(alpha: 0.3),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(6),
              ),
              child: SizedBox(
                width: 24,
                height: 24,
                child: Center(
                  child: Text(
                    'G',
                    style: context.textStyle.poppins18w600.copyWith(
                      fontSize: 14,
                      color: context.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              context.locale.signInGoogle,
              style: context.textStyle.manrope16w500,
            ),
          ],
        ),
      ),
    );
  }
}
