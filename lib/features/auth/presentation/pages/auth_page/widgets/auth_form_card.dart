import 'package:flutter/material.dart';
import 'package:zync_gum/core/common/custom_text_field.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';

class AuthFormCard extends StatelessWidget {
  const AuthFormCard({
    super.key,
    required this.isSignUp,
    required this.isLoading,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.emailFocus,
    required this.passwordFocus,
    required this.nameFocus,
    required this.onSubmit,
    required this.onToggle,
  });

  final bool isSignUp;
  final bool isLoading;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final FocusNode emailFocus;
  final FocusNode passwordFocus;
  final FocusNode nameFocus;
  final VoidCallback onSubmit;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: context.colorScheme.outline.withValues(alpha: 0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.06),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isSignUp ? context.locale.signUp : context.locale.signIn,
              style: context.textStyle.manrope18w600,
            ),
            const SizedBox(height: 6),
            Text(
              isSignUp
                  ? context.locale.createAccount
                  : context.locale.welcomeBack,
              style: context.textStyle.manrope14w400.copyWith(
                color: context.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
            const SizedBox(height: 24),
            if (isSignUp) ...[
              CustomTextField(
                key: const ValueKey('name'),
                textEditingController: nameController,
                focusNode: nameFocus,
                hintText: context.locale.enterFullName,
                label: context.locale.fullName,
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) {
                    return context.locale.enterFullName;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
            ],
            CustomTextField(
              key: const ValueKey('email'),
              textEditingController: emailController,
              focusNode: emailFocus,
              hintText: context.locale.enterEmail,
              label: context.locale.email,
              textInputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (v) {
                if (v == null || v.trim().isEmpty) {
                  return context.locale.enterEmail;
                }
                if (!v.contains('@')) {
                  return context.locale.invalidEmail;
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            CustomTextField(
              key: const ValueKey('password'),
              textEditingController: passwordController,
              focusNode: passwordFocus,
              hintText: context.locale.enterPassword,
              label: context.locale.password,
              textInputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              obscure: true,
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return context.locale.enterPassword;
                }
                if (v.length < 6) {
                  return context.locale.passwordLength;
                }
                return null;
              },
            ),
            const SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: FilledButton(
                onPressed: isLoading ? null : onSubmit,
                style: FilledButton.styleFrom(
                  backgroundColor: context.colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                ),
                child: isLoading
                    ? const SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        isSignUp
                            ? context.locale.signUp
                            : context.locale.signIn,
                        style: context.textStyle.manrope16w500
                            .copyWith(color: Colors.white),
                      ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isSignUp
                      ? context.locale.alreadyHaveAccount
                      : context.locale.dontHaveAccount,
                  style: context.textStyle.manrope14w400.copyWith(
                    color:
                        context.colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
                TextButton(
                  onPressed: isLoading ? null : onToggle,
                  child: Text(
                    isSignUp ? context.locale.signIn : context.locale.signUp,
                    style: context.textStyle.manrope14w500primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
