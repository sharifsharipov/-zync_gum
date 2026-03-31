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

  group('Home Flow', () {
    setUp(() async {
      await setupTestDI();
      // Authenticated user
      when(mockCheckAuth(any))
          .thenAnswer((_) async => const Right<Failure, UserEntity?>(tUser));
      when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
      when(mockUser.uid).thenReturn('test-uid');
    });

    testWidgets('home page shows user info card', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // User name should be visible
      expect(find.text('Test User'), findsWidgets);
      // Email
      expect(find.text('test@zyncgum.com'), findsWidgets);
      // Role badge
      expect(find.text('ADMIN'), findsWidgets);
    });

    testWidgets('home page shows production lines', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Production line names
      expect(find.text('Mint Fresh'), findsOneWidget);
      expect(find.text('Strawberry'), findsOneWidget);
      // Status labels
      expect(find.text('Running'), findsOneWidget);
      expect(find.text('Idle'), findsOneWidget);
    });

    testWidgets('home page shows inventory', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      expect(find.text('Sugar'), findsOneWidget);
      expect(find.text('Gum Base'), findsOneWidget);
      // Low stock warning for Gum Base (50 < 200)
      expect(find.text('Low stock'), findsOneWidget);
    });

    testWidgets('home page shows businesses', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      expect(find.text('Zync Factory'), findsOneWidget);
      expect(find.text('Active'), findsOneWidget);
    });

    testWidgets('home page shows section titles', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      expect(find.text('My businesses'), findsOneWidget);
      expect(find.text('Production lines'), findsOneWidget);
      expect(find.text('Warehouse status'), findsOneWidget);
    });

    testWidgets('pull to refresh works', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Pull down to refresh
      await tester.fling(
        find.byType(CustomScrollView),
        const Offset(0, 300),
        1000,
      );
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Data should still be visible
      expect(find.text('Mint Fresh'), findsOneWidget);
    });

    testWidgets('settings button navigates to settings', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Tap settings icon
      await tester.tap(find.byIcon(Icons.settings_outlined));
      await tester.pumpAndSettle();

      // Should see settings page
      expect(find.text('Settings'), findsOneWidget);
      expect(find.text('Language'), findsOneWidget);
      expect(find.text('Theme'), findsOneWidget);
    });
  });
}
