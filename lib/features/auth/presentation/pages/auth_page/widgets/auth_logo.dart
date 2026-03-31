import 'package:flutter/material.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                context.colorScheme.primary,
                context.colorScheme.primary.withValues(alpha: 0.7),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.primary.withValues(alpha: 0.3),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: const SizedBox(
            width: 96,
            height: 96,
            child: Icon(Icons.factory_rounded, size: 48, color: Colors.white),
          ),
        ),
        const SizedBox(height: 20),
        Text('Zync Gum', style: context.textStyle.poppins24w700),
        const SizedBox(height: 6),
        Text(
          context.locale.corporateSystem,
          style: context.textStyle.manrope14w400.copyWith(
            color: context.colorScheme.onSurface.withValues(alpha: 0.5),
          ),
        ),
      ],
    );
  }
}
