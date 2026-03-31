import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/auth/data/data_source/auth_data_source.dart';
import 'package:zync_gum/features/auth/data/models/sign_in_request/sign_in_request.dart';
import 'package:zync_gum/features/auth/data/models/user_response/user_response.dart';
import 'package:zync_gum/features/auth/data/repositories/auth_repositories_impl.dart';

@GenerateMocks([AuthDataSource])
import 'auth_repositories_impl_test.mocks.dart';

void main() {
  late AuthRepositoriesImpl repository;
  late MockAuthDataSource mockDataSource;

  const tUserResponse = UserResponse(
    id: 'uid1',
    email: 'test@example.com',
    name: 'Test User',
    role: 'admin',
    avatarUrl: 'https://avatar.png',
  );

  const tFailure = ServerFailure(message: 'Something went wrong');

  setUp(() {
    mockDataSource = MockAuthDataSource();
    repository = AuthRepositoriesImpl(dataSource: mockDataSource);

    provideDummy<Either<Failure, UserResponse>>(
      const Right(UserResponse(id: '', email: '')),
    );
    provideDummy<Either<Failure, UserResponse?>>(
      const Right<Failure, UserResponse?>(null),
    );
    provideDummy<Either<Failure, void>>(const Right(null));
  });

  group('signInWithEmail', () {
    const tEmail = 'test@example.com';
    const tPassword = 'password123';
    const tRequest = SignInEmailRequest(email: tEmail, password: tPassword);

    test('should return UserEntity on success', () async {
      when(mockDataSource.signInWithEmail(tRequest))
          .thenAnswer((_) async => const Right(tUserResponse));

      final result = await repository.signInWithEmail(
        email: tEmail,
        password: tPassword,
      );

      expect(result.isRight, isTrue);
      final entity = result.right;
      expect(entity.id, 'uid1');
      expect(entity.email, 'test@example.com');
      expect(entity.name, 'Test User');
      verify(mockDataSource.signInWithEmail(tRequest));
    });

    test('should return Failure on error', () async {
      when(mockDataSource.signInWithEmail(tRequest))
          .thenAnswer((_) async => const Left(tFailure));

      final result = await repository.signInWithEmail(
        email: tEmail,
        password: tPassword,
      );

      expect(result.isLeft, isTrue);
      expect(result.left, tFailure);
      verify(mockDataSource.signInWithEmail(tRequest));
    });
  });

  group('signInWithGoogle', () {
    test('should return UserEntity on success', () async {
      when(mockDataSource.signInWithGoogle())
          .thenAnswer((_) async => const Right(tUserResponse));

      final result = await repository.signInWithGoogle();

      expect(result.isRight, isTrue);
      expect(result.right.id, 'uid1');
      verify(mockDataSource.signInWithGoogle());
    });

    test('should return Failure on error', () async {
      when(mockDataSource.signInWithGoogle())
          .thenAnswer((_) async => const Left(tFailure));

      final result = await repository.signInWithGoogle();

      expect(result.isLeft, isTrue);
      expect(result.left, tFailure);
    });
  });

  group('signOut', () {
    test('should delegate to dataSource', () async {
      when(mockDataSource.signOut())
          .thenAnswer((_) async => const Right(null));

      final result = await repository.signOut();

      expect(result.isRight, isTrue);
      verify(mockDataSource.signOut());
    });

    test('should return Failure on error', () async {
      when(mockDataSource.signOut())
          .thenAnswer((_) async => const Left(tFailure));

      final result = await repository.signOut();

      expect(result.isLeft, isTrue);
    });
  });

  group('getAuthStatus', () {
    test('should return UserEntity when authenticated', () async {
      when(mockDataSource.getAuthStatus())
          .thenAnswer((_) async => const Right(tUserResponse));

      final result = await repository.getAuthStatus();

      expect(result.isRight, isTrue);
      expect(result.right, isNotNull);
      expect(result.right!.email, 'test@example.com');
    });

    test('should return null when unauthenticated', () async {
      when(mockDataSource.getAuthStatus())
          .thenAnswer((_) async => const Right(null));

      final result = await repository.getAuthStatus();

      expect(result.isRight, isTrue);
      expect(result.right, isNull);
    });

    test('should return Failure on error', () async {
      when(mockDataSource.getAuthStatus())
          .thenAnswer((_) async => const Left(tFailure));

      final result = await repository.getAuthStatus();

      expect(result.isLeft, isTrue);
    });
  });
}
