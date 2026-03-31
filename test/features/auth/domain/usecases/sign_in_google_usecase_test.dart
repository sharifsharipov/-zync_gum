import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/core/enums/user_role.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/repositories/auth_repositories.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_google_usecase/sign_in_google_usecase.dart';

@GenerateMocks([AuthRepositories])
import 'sign_in_google_usecase_test.mocks.dart';

void main() {
  late SignInGoogleUsecase usecase;
  late MockAuthRepositories mockRepository;

  const tUser = UserEntity(
    id: 'uid1',
    email: 'google@example.com',
    name: 'Google User',
    role: UserRole.user,
  );

  setUp(() {
    mockRepository = MockAuthRepositories();
    usecase = SignInGoogleUsecase(repositories: mockRepository);

    provideDummy<Either<Failure, UserEntity>>(
      const Right(UserEntity(id: '', email: '', name: '')),
    );
  });

  test('should call repository signInWithGoogle', () async {
    when(mockRepository.signInWithGoogle())
        .thenAnswer((_) async => const Right(tUser));

    final result = await usecase(NoParams());

    expect(result.isRight, isTrue);
    expect(result.right, tUser);
    verify(mockRepository.signInWithGoogle());
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return failure', () async {
    const failure = ServerFailure(message: 'Google sign in failed');
    when(mockRepository.signInWithGoogle())
        .thenAnswer((_) async => const Left(failure));

    final result = await usecase(NoParams());

    expect(result.isLeft, isTrue);
    expect(result.left, failure);
  });
}
