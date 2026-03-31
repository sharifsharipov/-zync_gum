import 'package:zync_gum/core/extensions/build_context_extension.dart' show BuildContextExtension;
import 'package:zync_gum/core/extensions/padding_extensions.dart';
import 'package:zync_gum/l10n/assets/assets.gen.dart';
import 'package:flutter/material.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
    spacing: 8,
    children: [
      SizedBox(
        width: 60,
        height: 60,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colorScheme.surface,
          ),
          child: Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: Assets.icons.person.svg(
                height: 40,
                width: 40,
                colorFilter: ColorFilter.mode(
                  context.colorScheme.onSurface,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ).paddingOnly(top: 10),
      Text('Sharif Sharipov', style: context.textStyle.poppins18w600),
    ],
  );
}
