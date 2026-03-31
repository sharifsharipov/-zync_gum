import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/enums/user_role.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/repositories/auth_repositories.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_email_usecase/sign_in_email_usecase.dart';

@GenerateMocks([AuthRepositories])
import 'sign_in_email_usecase_test.mocks.dart';

void main() {
  late SignInEmailUsecase usecase;
  late MockAuthRepositories mockRepository;

  const tUser = UserEntity(
    id: 'uid1',
    email: 'test@example.com',
    name: 'Test',
    role: UserRole.user,
  );

  setUp(() {
    mockRepository = MockAuthRepositories();
    usecase = SignInEmailUsecase(repositories: mockRepository);

    provideDummy<Either<Failure, UserEntity>>(
      const Right(UserEntity(id: '', email: '', name: '')),
    );
  });

  test('should call repository signInWithEmail', () async {
    when(mockRepository.signInWithEmail(
      email: anyNamed('email'),
      password: anyNamed('password'),
    )).thenAnswer((_) async => const Right(tUser));

    final result = await usecase(
      const SignInEmailParams(email: 'test@example.com', password: '123456'),
    );

    expect(result.isRight, isTrue);
    expect(result.right, tUser);
    verify(mockRepository.signInWithEmail(
      email: 'test@example.com',
      password: '123456',
    ));
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return failure from repository', () async {
    const failure = ServerFailure(message: 'Error');
    when(mockRepository.signInWithEmail(
      email: anyNamed('email'),
      password: anyNamed('password'),
    )).thenAnswer((_) async => const Left(failure));

    final result = await usecase(
      const SignInEmailParams(email: 'test@example.com', password: '123456'),
    );

    expect(result.isLeft, isTrue);
    expect(result.left, failure);
  });
}
