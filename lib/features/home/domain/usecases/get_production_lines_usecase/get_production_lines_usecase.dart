import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/domain/entities/production_line_entity/production_line_entity.dart';
import 'package:zync_gum/features/home/domain/repositories/home_repositories.dart';

@lazySingleton
class GetProductionLinesUsecase {
  GetProductionLinesUsecase({required this.repositories});
  final HomeRepositories repositories;

  Stream<Either<Failure, List<ProductionLineEntity>>> call() =>
      repositories.watchProductionLines();
}
