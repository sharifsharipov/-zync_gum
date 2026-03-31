import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/domain/entities/business_entity/business_entity.dart';
import 'package:zync_gum/features/home/domain/entities/inventory_entity/inventory_entity.dart';
import 'package:zync_gum/features/home/domain/entities/production_line_entity/production_line_entity.dart';

abstract class HomeRepositories {
  Stream<Either<Failure, List<ProductionLineEntity>>> watchProductionLines();
  Stream<Either<Failure, List<InventoryEntity>>> watchInventory();
  Stream<Either<Failure, List<BusinessEntity>>> watchBusinesses(String userId);
}
