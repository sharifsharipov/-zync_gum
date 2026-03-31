import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zync_gum/features/auth/presentation/pages/auth_page/auth_mixin.dart';
import 'package:zync_gum/features/auth/presentation/pages/auth_page/widgets/auth_form_card.dart';
import 'package:zync_gum/features/auth/presentation/pages/auth_page/widgets/auth_logo.dart';
import 'package:zync_gum/features/auth/presentation/pages/auth_page/widgets/auth_or_divider.dart';
import 'package:zync_gum/features/auth/presentation/pages/auth_page/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with AuthMixin {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (prev, curr) =>
          prev.status != curr.status || prev.errorMessage != curr.errorMessage,
      listener: (context, state) {
        if (state.isAuthenticated) {
          resetForm();
        } else if (state.isFailed && state.errorMessage.isNotEmpty) {
          context.showFailure(state.errorMessage);
        }
      },
      buildWhen: (prev, curr) => prev.isLoading != curr.isLoading,
      builder: (context, state) {
        final isLoading = state.isLoading;
        return Scaffold(
          body: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  context.colorScheme.primary.withValues(alpha: 0.08),
                  context.colorScheme.surface,
                  context.colorScheme.surface,
                ],
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 48),
                      const AuthLogo(),
                      const SizedBox(height: 48),
                      AuthFormCard(
                        isSignUp: isSignUp,
                        isLoading: isLoading,
                        emailController: emailController,
                        passwordController: passwordController,
                        nameController: nameController,
                        emailFocus: emailFocus,
                        passwordFocus: passwordFocus,
                        nameFocus: nameFocus,
                        onSubmit: onSubmit,
                        onToggle: toggleMode,
                      ),
                      const SizedBox(height: 24),
                      const AuthOrDivider(),
                      const SizedBox(height: 24),
                      GoogleSignInButton(
                        isLoading: isLoading,
                        onPressed: onGoogleSignIn,
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
