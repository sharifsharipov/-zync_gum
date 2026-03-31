import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/domain/entities/inventory_entity/inventory_entity.dart';
import 'package:zync_gum/features/home/domain/repositories/home_repositories.dart';
import 'package:zync_gum/features/home/domain/usecases/get_inventory_usecase/get_inventory_usecase.dart';

@GenerateMocks([HomeRepositories])
import 'get_inventory_usecase_test.mocks.dart';

void main() {
  late GetInventoryUsecase usecase;
  late MockHomeRepositories mockRepository;

  final tEntities = [
    const InventoryEntity(
      id: '1',
      materialName: 'Sugar',
      quantity: 500.0,
      unit: 'kg',
      minLevel: 100.0,
    ),
  ];

  setUp(() {
    mockRepository = MockHomeRepositories();
    usecase = GetInventoryUsecase(repositories: mockRepository);
  });

  test('should return stream from repository', () async {
    when(mockRepository.watchInventory())
        .thenAnswer((_) => Stream.value(Right(tEntities)));

    final result = await usecase().first;

    expect(result.isRight, isTrue);
    expect(result.right, tEntities);
    verify(mockRepository.watchInventory());
  });

  test('should return failure on error', () async {
    const failure = ServerFailure(message: 'Error', statusCode: 0);
    when(mockRepository.watchInventory())
        .thenAnswer((_) => Stream.value(const Left(failure)));

    final result = await usecase().first;

    expect(result.isLeft, isTrue);
  });
}
