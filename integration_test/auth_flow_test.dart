import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';

import 'helpers/test_helpers.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Auth Flow', () {
    setUp(() async {
      await setupTestDI();
    });

    testWidgets('shows auth page when user is not authenticated',
        (tester) async {
      when(mockCheckAuth(any))
          .thenAnswer((_) async => const Right<Failure, UserEntity?>(null));

      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle();

      // Splash navigates to auth
      expect(find.text('Zync Gum'), findsOneWidget);
      expect(find.text('Sign In'), findsWidgets);
    });

    testWidgets('successful email sign-in navigates to home', (tester) async {
      // Start unauthenticated
      when(mockCheckAuth(any))
          .thenAnswer((_) async => const Right<Failure, UserEntity?>(null));

      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle();

      // Fill email
      final emailField = find.byType(TextFormField).first;
      await tester.enterText(emailField, 'test@zyncgum.com');
      await tester.pumpAndSettle();

      // Fill password
      final passwordField = find.byType(TextFormField).last;
      await tester.enterText(passwordField, 'password123');
      await tester.pumpAndSettle();

      // Mock successful sign-in
      when(mockSignInEmail(any))
          .thenAnswer((_) async => const Right(tUser));

      // Now mock auth check returns user (after login)
      when(mockCheckAuth(any))
          .thenAnswer((_) async => const Right<Failure, UserEntity?>(tUser));

      // Tap sign in button
      final signInButton = find.widgetWithText(FilledButton, 'Sign In');
      await tester.tap(signInButton);
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Should show home page
      expect(find.text('Zync Gum'), findsOneWidget);
    });

    testWidgets('sign-in shows error on failure', (tester) async {
      when(mockCheckAuth(any))
          .thenAnswer((_) async => const Right<Failure, UserEntity?>(null));

      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle();

      // Fill form
      final emailField = find.byType(TextFormField).first;
      await tester.enterText(emailField, 'test@zyncgum.com');
      final passwordField = find.byType(TextFormField).last;
      await tester.enterText(passwordField, 'wrongpass');
      await tester.pumpAndSettle();

      // Mock failed sign-in
      when(mockSignInEmail(any)).thenAnswer(
        (_) async => const Left(
          FirebaseAuthFailure(message: 'Wrong password'),
        ),
      );

      // Tap sign in
      final signInButton = find.widgetWithText(FilledButton, 'Sign In');
      await tester.tap(signInButton);
      await tester.pumpAndSettle();

      // Should show error snackbar
      expect(find.text('Wrong password'), findsOneWidget);
    });

    testWidgets('form validation works', (tester) async {
      when(mockCheckAuth(any))
          .thenAnswer((_) async => const Right<Failure, UserEntity?>(null));

      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle();

      // Tap sign in without filling form
      final signInButton = find.widgetWithText(FilledButton, 'Sign In');
      await tester.tap(signInButton);
      await tester.pumpAndSettle();

      // Should show validation errors
      expect(find.text('Enter Email'), findsOneWidget);
      expect(find.text('Enter Password'), findsOneWidget);
    });
  });
}
