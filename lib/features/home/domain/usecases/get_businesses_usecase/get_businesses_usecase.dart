import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/domain/entities/business_entity/business_entity.dart';
import 'package:zync_gum/features/home/domain/repositories/home_repositories.dart';

part 'get_businesses_usecase.freezed.dart';

@lazySingleton
class GetBusinessesUsecase {
  GetBusinessesUsecase({required this.repositories});

  final HomeRepositories repositories;

  Stream<Either<Failure, List<BusinessEntity>>> call(
    GetBusinessesParams params,
  ) =>
      repositories.watchBusinesses(params.userId);
}

@freezed
abstract class GetBusinessesParams with _$GetBusinessesParams {
  const factory GetBusinessesParams({required String userId}) =
      _GetBusinessesParams;
}
