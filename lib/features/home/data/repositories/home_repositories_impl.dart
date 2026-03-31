import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/data/data_source/home_data_source.dart';
import 'package:zync_gum/features/home/data/mapper/home_mapper.dart';
import 'package:zync_gum/features/home/domain/entities/business_entity/business_entity.dart';
import 'package:zync_gum/features/home/domain/entities/inventory_entity/inventory_entity.dart';
import 'package:zync_gum/features/home/domain/entities/production_line_entity/production_line_entity.dart';
import 'package:zync_gum/features/home/domain/repositories/home_repositories.dart';

@LazySingleton(as: HomeRepositories)
class HomeRepositoriesImpl implements HomeRepositories {
  HomeRepositoriesImpl({required HomeDataSource dataSource})
      : _dataSource = dataSource;

  final HomeDataSource _dataSource;

  @override
  Stream<Either<Failure, List<ProductionLineEntity>>> watchProductionLines() async* {
    await for (final either in _dataSource.watchProductionLines()) {
      yield either.fold(
        Left.new,
        (models) => Right(
          models.map(HomeMapper.toProductionLineEntity).toList(),
        ),
      );
    }
  }

  @override
  Stream<Either<Failure, List<InventoryEntity>>> watchInventory() async* {
    await for (final either in _dataSource.watchInventory()) {
      yield either.fold(
        Left.new,
        (models) => Right(
          models.map(HomeMapper.toInventoryEntity).toList(),
        ),
      );
    }
  }

  @override
  Stream<Either<Failure, List<BusinessEntity>>> watchBusinesses(String userId) async* {
    await for (final either in _dataSource.watchBusinesses(userId)) {
      yield either.fold(
        Left.new,
        (models) => Right(
          models.map(HomeMapper.toBusinessEntity).toList(),
        ),
      );
    }
  }
}
