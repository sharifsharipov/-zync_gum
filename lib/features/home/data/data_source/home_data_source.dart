import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/data/models/business_response/business_response.dart';
import 'package:zync_gum/features/home/data/models/inventory_response/inventory_response.dart';
import 'package:zync_gum/features/home/data/models/production_line_response/production_line_response.dart';

abstract interface class HomeDataSource {
  Stream<Either<Failure, List<ProductionLineResponse>>> watchProductionLines();
  Stream<Either<Failure, List<InventoryResponse>>> watchInventory();
  Stream<Either<Failure, List<BusinessResponse>>> watchBusinesses(String userId);
}
