import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/features/auth/domain/repositories/auth_repositories.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_out_usecase/sign_out_usecase.dart';

@GenerateMocks([AuthRepositories])
import 'sign_out_usecase_test.mocks.dart';

void main() {
  late SignOutUsecase usecase;
  late MockAuthRepositories mockRepository;

  setUp(() {
    mockRepository = MockAuthRepositories();
    usecase = SignOutUsecase(repositories: mockRepository);

    provideDummy<Either<Failure, void>>(const Right(null));
  });

  test('should call repository signOut', () async {
    when(mockRepository.signOut())
        .thenAnswer((_) async => const Right(null));

    final result = await usecase(NoParams());

    expect(result.isRight, isTrue);
    verify(mockRepository.signOut());
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return failure on error', () async {
    const failure = ServerFailure(message: 'Sign out failed');
    when(mockRepository.signOut())
        .thenAnswer((_) async => const Left(failure));

    final result = await usecase(NoParams());

    expect(result.isLeft, isTrue);
    expect(result.left, failure);
  });
}
