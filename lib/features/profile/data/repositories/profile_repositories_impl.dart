import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/profile/data/data_source/profile_data_source.dart';
import 'package:zync_gum/features/profile/domain/repositories/profile_repositories.dart';
import 'package:zync_gum/features/profile/data/mapper/profile_mapper.dart';

@LazySingleton(as: ProfileRepositories)
class ProfileRepositoriesImpl implements ProfileRepositories {
  ProfileRepositoriesImpl({required ProfileDataSource dataSource})
      : _dataSource = dataSource;

  final ProfileDataSource _dataSource;

  @override
  Future<Either<Failure, UserEntity>> getUserProfile(String userId) async {
    final result = await _dataSource.getUserProfile(userId);
    return result.fold(
      Left.new,
      (response) => Right(ProfileMapper.toUserEntity(response)),
    );
  }

  @override
  Future<Either<Failure, void>> updateUserName(
    String userId,
    String name,
  ) =>
      _dataSource.updateUserName(userId, name);

  @override
  Future<Either<Failure, void>> updateAvatarUrl(
    String userId,
    String avatarUrl,
  ) =>
      _dataSource.updateAvatarUrl(userId, avatarUrl);
}
