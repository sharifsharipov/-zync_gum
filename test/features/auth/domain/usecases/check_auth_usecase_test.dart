import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/core/enums/user_role.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/repositories/auth_repositories.dart';
import 'package:zync_gum/features/auth/domain/usecases/check_auth_usecase/check_auth_usecase.dart';

@GenerateMocks([AuthRepositories])
import 'check_auth_usecase_test.mocks.dart';

void main() {
  late CheckAuthUsecase usecase;
  late MockAuthRepositories mockRepository;

  const tUser = UserEntity(
    id: 'uid1',
    email: 'test@example.com',
    name: 'Test',
    role: UserRole.user,
  );

  setUp(() {
    mockRepository = MockAuthRepositories();
    usecase = CheckAuthUsecase(repositories: mockRepository);

    provideDummy<Either<Failure, UserEntity?>>(
      const Right<Failure, UserEntity?>(null),
    );
  });

  test('should return user when authenticated', () async {
    when(mockRepository.getAuthStatus())
        .thenAnswer((_) async => const Right(tUser));

    final result = await usecase(NoParams());

    expect(result.isRight, isTrue);
    expect(result.right, tUser);
    verify(mockRepository.getAuthStatus());
  });

  test('should return null when not authenticated', () async {
    when(mockRepository.getAuthStatus())
        .thenAnswer((_) async => const Right(null));

    final result = await usecase(NoParams());

    expect(result.isRight, isTrue);
    expect(result.right, isNull);
  });

  test('should return failure on error', () async {
    const failure = ServerFailure(message: 'Error');
    when(mockRepository.getAuthStatus())
        .thenAnswer((_) async => const Left(failure));

    final result = await usecase(NoParams());

    expect(result.isLeft, isTrue);
    expect(result.left, failure);
  });
}
