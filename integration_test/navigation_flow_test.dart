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

  group('Navigation Flow', () {
    setUp(() async {
      await setupTestDI();
      when(mockCheckAuth(any))
          .thenAnswer((_) async => const Right<Failure, UserEntity?>(tUser));
      when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
      when(mockUser.uid).thenReturn('test-uid');
    });

    testWidgets('bottom navigation switches between home and profile',
        (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Should start on home
      expect(find.text('Zync Gum'), findsOneWidget);

      // Tap Profile tab
      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();

      // Should show profile page
      expect(find.text('Test User'), findsWidgets);
      expect(find.text('test@zyncgum.com'), findsWidgets);

      // Tap Home tab
      await tester.tap(find.text('Home'));
      await tester.pumpAndSettle();

      // Back to home
      expect(find.text('Mint Fresh'), findsOneWidget);
    });

    testWidgets('profile page navigates to settings', (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Go to profile
      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();

      // Tap settings
      await tester.tap(find.text('Settings'));
      await tester.pumpAndSettle();

      // Should see settings
      expect(find.text('Language'), findsWidgets);
      expect(find.text('Theme'), findsWidgets);
    });

    testWidgets('profile page shows edit button and navigates to edit',
        (tester) async {
      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Go to profile
      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();

      // Tap on user card (edit button)
      await tester.tap(find.byIcon(Icons.edit_outlined));
      await tester.pumpAndSettle();

      // Should see edit profile page
      expect(find.text('Edit Profile'), findsOneWidget);
    });

    testWidgets('home error state shows retry button', (tester) async {
      // Override to return failure
      when(mockGetProductionLines()).thenAnswer(
        (_) => Stream.value(
          const Left(ServerFailure(message: 'Network error', statusCode: 0)),
        ),
      );

      await tester.pumpWidget(createTestApp());
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Should show error and retry
      expect(find.text('Retry'), findsOneWidget);
      expect(find.byIcon(Icons.error_outline), findsOneWidget);
    });
  });
}
