import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/enums/status.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/enums/user_role.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/usecases/check_auth_usecase/check_auth_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_email_usecase/sign_in_email_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_google_usecase/sign_in_google_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_out_usecase/sign_out_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_up_email_usecase/sign_up_email_usecase.dart';
import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';

@GenerateMocks([
  CheckAuthUsecase,
  SignInEmailUsecase,
  SignUpEmailUsecase,
  SignInGoogleUsecase,
  SignOutUsecase,
])
import 'auth_bloc_test.mocks.dart';

void main() {
  late AuthBloc bloc;
  late MockCheckAuthUsecase mockCheckAuth;
  late MockSignInEmailUsecase mockSignInEmail;
  late MockSignUpEmailUsecase mockSignUpEmail;
  late MockSignInGoogleUsecase mockSignInGoogle;
  late MockSignOutUsecase mockSignOut;

  const tUser = UserEntity(
    id: 'uid1',
    email: 'test@example.com',
    name: 'Test',
    role: UserRole.user,
  );

  setUp(() {
    mockCheckAuth = MockCheckAuthUsecase();
    mockSignInEmail = MockSignInEmailUsecase();
    mockSignUpEmail = MockSignUpEmailUsecase();
    mockSignInGoogle = MockSignInGoogleUsecase();
    mockSignOut = MockSignOutUsecase();

    provideDummy<Either<Failure, UserEntity?>>(
      const Right<Failure, UserEntity?>(null),
    );
    provideDummy<Either<Failure, UserEntity>>(
      const Right<Failure, UserEntity>(tUser),
    );
    provideDummy<Either<Failure, void>>(const Right(null));

    bloc = AuthBloc(
      checkAuth: mockCheckAuth,
      signInEmail: mockSignInEmail,
      signUpEmail: mockSignUpEmail,
      signInGoogle: mockSignInGoogle,
      signOut: mockSignOut,
    );
  });

  tearDown(() => bloc.close());

  test('initial state is correct', () {
    expect(bloc.state.status, Status.pure);
    expect(bloc.state.user, isNull);
  });

  group('AuthCheckRequested', () {
    test('emits loading then success with user when authenticated', () async {
      when(mockCheckAuth(any))
          .thenAnswer((_) async => const Right(tUser));

      bloc.add(const AuthEvent.checkRequested());

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>()
              .having((s) => s.status, 'status', Status.success)
              .having((s) => s.user, 'user', tUser),
        ]),
      );

      verify(mockCheckAuth(any)).called(1);
    });

    test(
      'emits loading then success with null user when not authenticated',
      () async {
        when(mockCheckAuth(any))
            .thenAnswer((_) async => const Right(null));

        bloc.add(const AuthEvent.checkRequested());

        await expectLater(
          bloc.stream,
          emitsInOrder([
            isA<AuthState>().having((s) => s.status, 'status', Status.loading),
            isA<AuthState>()
                .having((s) => s.status, 'status', Status.success)
                .having((s) => s.user, 'user', isNull),
          ]),
        );
      },
    );

    test('emits loading then success with null user on failure', () async {
      when(mockCheckAuth(any)).thenAnswer(
        (_) async => const Left(ServerFailure(message: 'Auth check failed')),
      );

      bloc.add(const AuthEvent.checkRequested());

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>()
              .having((s) => s.status, 'status', Status.success)
              .having((s) => s.user, 'user', isNull),
        ]),
      );
    });
  });

  group('SignInWithEmailRequested', () {
    test('emits loading then success with user on sign in', () async {
      when(mockSignInEmail(any))
          .thenAnswer((_) async => const Right(tUser));

      bloc.add(const AuthEvent.signInWithEmail(
        email: 'test@example.com',
        password: 'password123',
      ));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>()
              .having((s) => s.status, 'status', Status.success)
              .having((s) => s.user, 'user', tUser),
        ]),
      );

      verify(mockSignInEmail(any)).called(1);
    });

    test('emits loading then failed with error message on failure', () async {
      when(mockSignInEmail(any)).thenAnswer(
        (_) async => const Left(ServerFailure(message: 'Invalid credentials')),
      );

      bloc.add(const AuthEvent.signInWithEmail(
        email: 'test@example.com',
        password: 'wrong',
      ));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>()
              .having((s) => s.status, 'status', Status.failed)
              .having(
                (s) => s.errorMessage,
                'errorMessage',
                'Invalid credentials',
              ),
        ]),
      );
    });
  });

  group('SignUpWithEmailRequested', () {
    test('emits loading then success with user on sign up', () async {
      when(mockSignUpEmail(any))
          .thenAnswer((_) async => const Right(tUser));

      bloc.add(const AuthEvent.signUpWithEmail(
        email: 'test@example.com',
        password: 'password123',
        name: 'Test',
      ));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>()
              .having((s) => s.status, 'status', Status.success)
              .having((s) => s.user, 'user', tUser),
        ]),
      );

      verify(mockSignUpEmail(any)).called(1);
    });

    test('emits loading then failed with error message on failure', () async {
      when(mockSignUpEmail(any)).thenAnswer(
        (_) async =>
            const Left(ServerFailure(message: 'Email already in use')),
      );

      bloc.add(const AuthEvent.signUpWithEmail(
        email: 'test@example.com',
        password: 'password123',
        name: 'Test',
      ));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>()
              .having((s) => s.status, 'status', Status.failed)
              .having(
                (s) => s.errorMessage,
                'errorMessage',
                'Email already in use',
              ),
        ]),
      );
    });
  });

  group('SignInWithGoogleRequested', () {
    test('emits loading then success with user on google sign in', () async {
      when(mockSignInGoogle(any))
          .thenAnswer((_) async => const Right(tUser));

      bloc.add(const AuthEvent.signInWithGoogle());

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>()
              .having((s) => s.status, 'status', Status.success)
              .having((s) => s.user, 'user', tUser),
        ]),
      );

      verify(mockSignInGoogle(any)).called(1);
    });

    test('emits loading then failed with error message on failure', () async {
      when(mockSignInGoogle(any)).thenAnswer(
        (_) async =>
            const Left(ServerFailure(message: 'Google sign in cancelled')),
      );

      bloc.add(const AuthEvent.signInWithGoogle());

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>()
              .having((s) => s.status, 'status', Status.failed)
              .having(
                (s) => s.errorMessage,
                'errorMessage',
                'Google sign in cancelled',
              ),
        ]),
      );
    });
  });

  group('SignOutRequested', () {
    test('emits loading then success with null user on sign out', () async {
      when(mockSignOut(any)).thenAnswer((_) async => const Right(null));

      bloc.add(const AuthEvent.signOut());

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>()
              .having((s) => s.status, 'status', Status.success)
              .having((s) => s.user, 'user', isNull),
        ]),
      );

      verify(mockSignOut(any)).called(1);
    });

    test('emits loading then failed on sign out error', () async {
      when(mockSignOut(any)).thenAnswer(
        (_) async => const Left(ServerFailure(message: 'Sign out failed')),
      );

      bloc.add(const AuthEvent.signOut());

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<AuthState>().having((s) => s.status, 'status', Status.loading),
          isA<AuthState>().having((s) => s.status, 'status', Status.failed),
        ]),
      );
    });
  });

  group('AuthState helpers', () {
    test('isAuthenticated is true when success and user not null', () {
      const state = AuthState(status: Status.success, user: tUser);
      expect(state.isAuthenticated, isTrue);
      expect(state.isUnauthenticated, isFalse);
    });

    test('isUnauthenticated is true when success and user is null', () {
      const state = AuthState(status: Status.success);
      expect(state.isUnauthenticated, isTrue);
      expect(state.isAuthenticated, isFalse);
    });

    test('isLoading is true when loading', () {
      const state = AuthState(status: Status.loading);
      expect(state.isLoading, isTrue);
    });

    test('isFailed is true when failed', () {
      const state = AuthState(status: Status.failed);
      expect(state.isFailed, isTrue);
    });
  });
}
