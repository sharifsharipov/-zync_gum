import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';

abstract class ProfileRepositories {
  Future<Either<Failure, UserEntity>> getUserProfile(String userId);
  Future<Either<Failure, void>> updateUserName(String userId, String name);
  Future<Either<Failure, void>> updateAvatarUrl(String userId, String avatarUrl);
}
