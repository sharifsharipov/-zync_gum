import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/domain/entities/business_entity/business_entity.dart';
import 'package:zync_gum/features/home/domain/repositories/home_repositories.dart';
import 'package:zync_gum/features/home/domain/usecases/get_businesses_usecase/get_businesses_usecase.dart';

@GenerateMocks([HomeRepositories])
import 'get_businesses_usecase_test.mocks.dart';

void main() {
  late GetBusinessesUsecase usecase;
  late MockHomeRepositories mockRepository;

  final tEntities = [
    const BusinessEntity(
      id: 'b1',
      name: 'Zync Factory',
      type: 'manufacturing',
      monthlyRevenue: 50000.0,
      employeesCount: 25,
      userId: 'uid1',
    ),
  ];

  setUp(() {
    mockRepository = MockHomeRepositories();
    usecase = GetBusinessesUsecase(repositories: mockRepository);
  });

  test('should call repository with correct userId', () async {
    when(mockRepository.watchBusinesses('uid1'))
        .thenAnswer((_) => Stream.value(Right(tEntities)));

    final result = await usecase(
      const GetBusinessesParams(userId: 'uid1'),
    ).first;

    expect(result.isRight, isTrue);
    expect(result.right, tEntities);
    verify(mockRepository.watchBusinesses('uid1'));
  });

  test('should return failure on error', () async {
    const failure = ServerFailure(message: 'Error', statusCode: 0);
    when(mockRepository.watchBusinesses('uid1'))
        .thenAnswer((_) => Stream.value(const Left(failure)));

    final result = await usecase(
      const GetBusinessesParams(userId: 'uid1'),
    ).first;

    expect(result.isLeft, isTrue);
  });
}
