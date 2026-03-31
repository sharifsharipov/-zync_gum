import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final user = state.user;
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  context.colorScheme.primary,
                  context.colorScheme.primary.withValues(alpha: 0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: context.colorScheme.primary.withValues(alpha: 0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white.withValues(alpha: 0.2),
                        backgroundImage: (user?.avatarUrl.isNotEmpty == true)
                            ? NetworkImage(user!.avatarUrl)
                            : null,
                        child: (user?.avatarUrl.isEmpty != false)
                            ? const Icon(Icons.person,
                                color: Colors.white, size: 30)
                            : null,
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user?.name.isNotEmpty == true
                                  ? user!.name
                                  : context.locale.user,
                              style: context.textStyle.poppins18w600.copyWith(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              user?.email ?? '',
                              style: context.textStyle.manrope14w400.copyWith(
                                color: Colors.white.withValues(alpha: 0.8),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          child: Text(
                            user?.role.name.toUpperCase() ?? 'USER',
                            style: context.textStyle.manrope14w400.copyWith(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (user != null &&
                      (user.phone.isNotEmpty ||
                          user.department.isNotEmpty ||
                          user.position.isNotEmpty ||
                          user.lastLogin != null)) ...[
                    const SizedBox(height: 16),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Wrap(
                            spacing: 16,
                            runSpacing: 8,
                            children: [
                              if (user.phone.isNotEmpty)
                                _InfoChip(
                                  icon: Icons.phone_outlined,
                                  text: user.phone,
                                ),
                              if (user.department.isNotEmpty)
                                _InfoChip(
                                  icon: Icons.business_outlined,
                                  text: user.department,
                                ),
                              if (user.position.isNotEmpty)
                                _InfoChip(
                                  icon: Icons.work_outline_rounded,
                                  text: user.position,
                                ),
                              if (user.lastLogin != null)
                                _InfoChip(
                                  icon: Icons.access_time_rounded,
                                  text: timeago.format(user.lastLogin!),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: Colors.white.withValues(alpha: 0.7)),
        const SizedBox(width: 4),
        Text(
          text,
          style: context.textStyle.manrope14w400.copyWith(
            color: Colors.white.withValues(alpha: 0.9),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
