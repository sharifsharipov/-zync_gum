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

  group('Settings Flow', () {
    setUp(() async {
      await setupTestDI();
      when(mockCheckAuth(any))
          .thenAnswer((_) async => const Right<Failure, UserEntity?>(tUser));
      when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
      when(mockUser.uid).thenReturn('test-uid');
    });

    testWidgets('navigate to settings and see all options', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Go to settings
      await tester.tap(find.byIcon(Icons.settings_outlined));
      await tester.pumpAndSettle();

      // Language section
      expect(find.text('Language'), findsWidgets);
      expect(find.text("🇺🇿 O'zbekcha"), findsOneWidget);
      expect(find.text('🇷🇺 Русский'), findsOneWidget);
      expect(find.text('🇬🇧 English'), findsOneWidget);

      // Theme section
      expect(find.text('Theme'), findsWidgets);
      expect(find.text('Light'), findsOneWidget);
      expect(find.text('Dark'), findsOneWidget);
      expect(find.text('System'), findsWidgets);

      // Logout
      expect(find.text('Logout'), findsOneWidget);
    });

    testWidgets('can switch theme to dark', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      await tester.tap(find.byIcon(Icons.settings_outlined));
      await tester.pumpAndSettle();

      // Tap Dark theme
      await tester.tap(find.text('Dark'));
      await tester.pumpAndSettle();

      // Theme should change — dark mode icon should have a check
      expect(find.byIcon(Icons.check_rounded), findsWidgets);
    });

    testWidgets('can switch language', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      await tester.tap(find.byIcon(Icons.settings_outlined));
      await tester.pumpAndSettle();

      // Tap Russian language
      await tester.tap(find.text('🇷🇺 Русский'));
      await tester.pumpAndSettle();

      // UI should switch to Russian
      expect(find.text('Настройки'), findsOneWidget);
    });

    testWidgets('logout shows confirmation dialog', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      await tester.tap(find.byIcon(Icons.settings_outlined));
      await tester.pumpAndSettle();

      // Tap logout
      await tester.tap(find.text('Logout'));
      await tester.pumpAndSettle();

      // Should show dialog
      expect(find.text('Are you sure you want to log out?'), findsOneWidget);
      expect(find.text('Cancel'), findsOneWidget);
    });

    testWidgets('confirm logout navigates to auth', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      await tester.tap(find.byIcon(Icons.settings_outlined));
      await tester.pumpAndSettle();

      // Tap logout
      await tester.tap(find.text('Logout'));
      await tester.pumpAndSettle();

      // Confirm
      await tester.tap(find.widgetWithText(FilledButton, 'Logout'));
      await tester.pumpAndSettle(const Duration(seconds: 2));

      verify(mockSignOut(any)).called(1);
    });
  });
}
