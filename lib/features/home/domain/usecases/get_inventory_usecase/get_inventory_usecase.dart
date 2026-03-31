import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/domain/entities/inventory_entity/inventory_entity.dart';
import 'package:zync_gum/features/home/domain/repositories/home_repositories.dart';

@lazySingleton
class GetInventoryUsecase {
  GetInventoryUsecase({required this.repositories});
  final HomeRepositories repositories;

  Stream<Either<Failure, List<InventoryEntity>>> call() =>
      repositories.watchInventory();
}
