import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/domain/entities/production_line_entity/production_line_entity.dart';
import 'package:zync_gum/features/home/domain/repositories/home_repositories.dart';
import 'package:zync_gum/features/home/domain/usecases/get_production_lines_usecase/get_production_lines_usecase.dart';

@GenerateMocks([HomeRepositories])
import 'get_production_lines_usecase_test.mocks.dart';

void main() {
  late GetProductionLinesUsecase usecase;
  late MockHomeRepositories mockRepository;

  final tEntities = [
    const ProductionLineEntity(
      id: '1',
      flavor: 'Mint',
      status: 'running',
      progressPercent: 75.0,
      temperature: 36.5,
    ),
  ];

  setUp(() {
    mockRepository = MockHomeRepositories();
    usecase = GetProductionLinesUsecase(repositories: mockRepository);
  });

  test('should return stream from repository', () async {
    when(mockRepository.watchProductionLines())
        .thenAnswer((_) => Stream.value(Right(tEntities)));

    final result = await usecase().first;

    expect(result.isRight, isTrue);
    expect(result.right, tEntities);
    verify(mockRepository.watchProductionLines());
  });

  test('should return failure stream on error', () async {
    const failure = ServerFailure(message: 'Error', statusCode: 0);
    when(mockRepository.watchProductionLines())
        .thenAnswer((_) => Stream.value(const Left(failure)));

    final result = await usecase().first;

    expect(result.isLeft, isTrue);
  });
}
