import 'package:flutter/material.dart';
import 'package:scale_button/scale_button.dart';

class CustomInkWidget extends StatelessWidget {
  const CustomInkWidget({
    super.key,
    required this.borderRadius,
    required this.child,
    required this.onTap,
  });
  final BorderRadius borderRadius;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => ScaleButton(
    onTap: onTap,
    bound: 0.001,
    child: Material(
      borderRadius: borderRadius,
      color: Colors.transparent,
      child: Center(
        child: Ink(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: const Color.fromARGB(
              255,
              153,
              160,
              170,
            ).withValues(alpha: 0.4),
            onTap: onTap,
            borderRadius: borderRadius,
            child: child,
          ),
        ),
      ),
    ),
  );
}
