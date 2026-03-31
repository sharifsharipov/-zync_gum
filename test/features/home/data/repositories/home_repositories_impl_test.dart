import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/data/data_source/home_data_source.dart';
import 'package:zync_gum/features/home/data/models/business_response/business_response.dart';
import 'package:zync_gum/features/home/data/models/inventory_response/inventory_response.dart';
import 'package:zync_gum/features/home/data/models/production_line_response/production_line_response.dart';
import 'package:zync_gum/features/home/data/repositories/home_repositories_impl.dart';

@GenerateMocks([HomeDataSource])
import 'home_repositories_impl_test.mocks.dart';

void main() {
  late HomeRepositoriesImpl repository;
  late MockHomeDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockHomeDataSource();
    repository = HomeRepositoriesImpl(dataSource: mockDataSource);
  });

  group('watchProductionLines', () {
    final tModels = [
      const ProductionLineResponse(
        id: '1',
        flavor: 'Mint',
        status: 'running',
        progressPercent: 75.0,
        temperature: 36.5,
        dailyTarget: 1000,
        produced: 750,
      ),
    ];

    test('should return mapped entities on success', () async {
      when(mockDataSource.watchProductionLines())
          .thenAnswer((_) => Stream.value(Right(tModels)));

      final stream = repository.watchProductionLines();
      final result = await stream.first;

      expect(result.isRight, isTrue);
      final entities = result.right;
      expect(entities.length, 1);
      expect(entities.first.id, '1');
      expect(entities.first.flavor, 'Mint');
      expect(entities.first.status, 'running');
      expect(entities.first.progressPercent, 75.0);
    });

    test('should return failure on error', () async {
      const failure = ServerFailure(message: 'Firestore error', statusCode: 0);
      when(mockDataSource.watchProductionLines())
          .thenAnswer((_) => Stream.value(const Left(failure)));

      final stream = repository.watchProductionLines();
      final result = await stream.first;

      expect(result.isLeft, isTrue);
    });
  });

  group('watchInventory', () {
    final tModels = [
      const InventoryResponse(
        id: '1',
        materialName: 'Sugar',
        quantity: 500.0,
        unit: 'kg',
        minLevel: 100.0,
      ),
    ];

    test('should return mapped entities on success', () async {
      when(mockDataSource.watchInventory())
          .thenAnswer((_) => Stream.value(Right(tModels)));

      final stream = repository.watchInventory();
      final result = await stream.first;

      expect(result.isRight, isTrue);
      final entities = result.right;
      expect(entities.length, 1);
      expect(entities.first.materialName, 'Sugar');
      expect(entities.first.quantity, 500.0);
    });

    test('should return failure on error', () async {
      const failure = ServerFailure(message: 'Error', statusCode: 0);
      when(mockDataSource.watchInventory())
          .thenAnswer((_) => Stream.value(const Left(failure)));

      final stream = repository.watchInventory();
      final result = await stream.first;

      expect(result.isLeft, isTrue);
    });
  });

  group('watchBusinesses', () {
    final tModels = [
      const BusinessResponse(
        id: 'b1',
        name: 'Zync Factory',
        type: 'manufacturing',
        monthlyRevenue: 50000.0,
        employeesCount: 25,
        userId: 'uid1',
      ),
    ];

    test('should return mapped entities on success', () async {
      when(mockDataSource.watchBusinesses('uid1'))
          .thenAnswer((_) => Stream.value(Right(tModels)));

      final stream = repository.watchBusinesses('uid1');
      final result = await stream.first;

      expect(result.isRight, isTrue);
      final entities = result.right;
      expect(entities.length, 1);
      expect(entities.first.name, 'Zync Factory');
      expect(entities.first.type, 'manufacturing');
    });

    test('should return failure on error', () async {
      const failure = ServerFailure(message: 'Error', statusCode: 0);
      when(mockDataSource.watchBusinesses('uid1'))
          .thenAnswer((_) => Stream.value(const Left(failure)));

      final stream = repository.watchBusinesses('uid1');
      final result = await stream.first;

      expect(result.isLeft, isTrue);
    });
  });
}
