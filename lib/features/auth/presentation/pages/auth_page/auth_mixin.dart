import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zync_gum/features/auth/presentation/pages/auth_page/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin AuthMixin on State<AuthPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();
  final nameFocus = FocusNode();
  bool isSignUp = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    nameFocus.dispose();
    super.dispose();
  }

  void resetForm() {
    emailController.clear();
    passwordController.clear();
    nameController.clear();
    formKey.currentState?.reset();
    if (isSignUp) setState(() => isSignUp = false);
  }

  void toggleMode() {
    setState(() {
      emailController.clear();
      passwordController.clear();
      nameController.clear();
      isSignUp = !isSignUp;
      formKey = GlobalKey<FormState>();
    });
  }

  void onSubmit() {
    if (!formKey.currentState!.validate()) return;
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (isSignUp) {
      final name = nameController.text.trim();
      context.read<AuthBloc>().add(
            AuthEvent.signUpWithEmail(
              email: email,
              password: password,
              name: name,
            ),
          );
    } else {
      context.read<AuthBloc>().add(
            AuthEvent.signInWithEmail(email: email, password: password),
          );
    }
  }

  void onGoogleSignIn() {
    context.read<AuthBloc>().add(const AuthEvent.signInWithGoogle());
  }
}
