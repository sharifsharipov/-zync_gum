import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/profile/domain/repositories/profile_repositories.dart';

part 'get_user_profile_usecase.freezed.dart';

@lazySingleton
class GetUserProfileUsecase extends UseCase<UserEntity, GetUserProfileParams> {
  GetUserProfileUsecase({required this.repositories});
  final ProfileRepositories repositories;

  @override
  Future<Either<Failure, UserEntity>> call(GetUserProfileParams params) =>
      repositories.getUserProfile(params.userId);
}

@freezed
abstract class GetUserProfileParams with _$GetUserProfileParams {
  const factory GetUserProfileParams({required String userId}) =
      _GetUserProfileParams;
}
