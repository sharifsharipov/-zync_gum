import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zync_gum/features/profile/presentation/pages/parofile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin ProfileMixin on State<ProfilePage> {
  void onLogout() {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(context.locale.logout),
        content: Text(context.locale.logoutConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(context.locale.cancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              context.read<AuthBloc>().add(const AuthEvent.signOut());
            },
            child: Text(context.locale.logout),
          ),
        ],
      ),
    );
  }
}
