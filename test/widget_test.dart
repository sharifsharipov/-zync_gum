import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/app_options.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/themes/app_theme.dart';
import 'package:zync_gum/core/enums/user_role.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/usecases/check_auth_usecase/check_auth_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_email_usecase/sign_in_email_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_google_usecase/sign_in_google_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_out_usecase/sign_out_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_up_email_usecase/sign_up_email_usecase.dart';
import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zync_gum/features/auth/presentation/pages/auth_page/auth_page.dart';
import 'package:zync_gum/generated/l10n.dart';

@GenerateMocks([
  CheckAuthUsecase,
  SignInEmailUsecase,
  SignInGoogleUsecase,
  SignUpEmailUsecase,
  SignOutUsecase,
])
import 'widget_test.mocks.dart';

void main() {
  late AuthBloc authBloc;
  late MockCheckAuthUsecase mockCheckAuth;
  late MockSignInEmailUsecase mockSignInEmail;
  late MockSignUpEmailUsecase mockSignUpEmail;
  late MockSignInGoogleUsecase mockSignInGoogle;
  late MockSignOutUsecase mockSignOut;

  const tUser = UserEntity(
    id: 'uid1',
    email: 'test@example.com',
    name: 'Test User',
    role: UserRole.user,
  );

  setUp(() {
    mockCheckAuth = MockCheckAuthUsecase();
    mockSignInEmail = MockSignInEmailUsecase();
    mockSignUpEmail = MockSignUpEmailUsecase();
    mockSignInGoogle = MockSignInGoogleUsecase();
    mockSignOut = MockSignOutUsecase();

    provideDummy<Either<Failure, UserEntity>>(const Right(tUser));
    provideDummy<Either<Failure, UserEntity?>>(
      const Right<Failure, UserEntity?>(null),
    );
    provideDummy<Either<Failure, void>>(const Right(null));

    authBloc = AuthBloc(
      checkAuth: mockCheckAuth,
      signInEmail: mockSignInEmail,
      signUpEmail: mockSignUpEmail,
      signInGoogle: mockSignInGoogle,
      signOut: mockSignOut,
    );
  });

  tearDown(() => authBloc.close());

  Widget buildTestWidget() {
    return ModelBinding(
      initialModel: const AppOptions(
        themeMode: ThemeMode.light,
        language: AppLanguage.english,
      ),
      child: MaterialApp(
        theme: Themes.lightTheme,
        localizationsDelegates: const [
          S.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('ru'),
          Locale('uz'),
          Locale('tg'),
        ],
        locale: const Locale('en'),
        home: BlocProvider<AuthBloc>.value(
          value: authBloc,
          child: const AuthPage(),
        ),
      ),
    );
  }

  group('AuthPage widget tests', () {
    testWidgets('renders auth page with email and password fields', (
      tester,
    ) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();

      expect(find.byType(TextFormField), findsAtLeast(2));
      expect(find.byType(Form), findsOneWidget);
    });

    testWidgets('renders sign in and google sign in buttons', (tester) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();

      expect(find.byType(FilledButton), findsOneWidget);
      expect(find.byType(OutlinedButton), findsOneWidget);
    });

    testWidgets('shows validation error when email is empty', (tester) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();

      await tester.ensureVisible(find.byType(FilledButton));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FilledButton));
      await tester.pumpAndSettle();

      verifyNever(mockSignInEmail(any));
    });

    testWidgets('shows validation error when password is too short', (
      tester,
    ) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();

      final textFields = find.byType(TextFormField);
      await tester.enterText(textFields.first, 'test@example.com');
      await tester.enterText(textFields.last, '123');

      await tester.ensureVisible(find.byType(FilledButton));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FilledButton));
      await tester.pumpAndSettle();

      verifyNever(mockSignInEmail(any));
    });

    testWidgets('calls signInEmail when form is valid', (tester) async {
      when(mockSignInEmail(any)).thenAnswer((_) async => const Right(tUser));

      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();

      final textFields = find.byType(TextFormField);
      await tester.enterText(textFields.first, 'test@example.com');
      await tester.enterText(textFields.last, 'password123');

      await tester.ensureVisible(find.byType(FilledButton));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FilledButton));
      await tester.pumpAndSettle();

      verify(mockSignInEmail(any)).called(1);
    });

    testWidgets('calls signInGoogle when google button tapped', (tester) async {
      when(mockSignInGoogle(any)).thenAnswer((_) async => const Right(tUser));

      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();

      await tester.ensureVisible(find.byType(OutlinedButton));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(OutlinedButton));
      await tester.pumpAndSettle();

      verify(mockSignInGoogle(any)).called(1);
    });
  });
}
