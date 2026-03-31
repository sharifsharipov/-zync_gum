import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/core/extensions/padding_extensions.dart';
import 'package:zync_gum/core/utils/utils.dart';
import 'package:zync_gum/features/profile/presentation/pages/parofile_page/profile_mixin.dart';
import 'package:zync_gum/features/profile/presentation/pages/parofile_page/widgets/profile_navigate_widget.dart';
import 'package:zync_gum/l10n/assets/assets.gen.dart';
import 'package:zync_gum/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with ProfileMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          context.locale.profile,
          style: context.textStyle.poppins18w600,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: AppUtils.kBorderRadius16,
                color: context.colorScheme.surface,
              ),
              child: Column(
                children: [
                  ProfileNavigateWidget(
                    title: context.locale.language,
                    borderRadius: AppUtils.kBorderRadiusTop16,
                    onTap: () => context.pushNamed(Routes.language),
                    icon: Assets.icons.language,
                  ),
                  const Divider(height: 0),
                  ProfileNavigateWidget(
                    borderRadius: AppUtils.kBorderRadiusBottom16,
                    title: context.locale.system,
                    onTap: () => context.pushNamed(Routes.theme),
                    icon: Assets.icons.roller,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: AppUtils.kBorderRadius16,
                color: context.colorScheme.surface,
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: AppUtils.kBorderRadius16,
                ),
                onTap: onLogout,
                leading: Assets.icons.logOut.svg(
                  colorFilter: const ColorFilter.mode(
                    Colors.red,
                    BlendMode.srcIn,
                  ),
                ),
                title: Text(
                  context.locale.logout,
                  style: context.textStyle.manrope16w500.copyWith(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
        ],
      ).paddingOnly(left: 16, right: 16, bottom: 45, top: 16),
    );
  }
}
