import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/features/profile/domain/repositories/profile_repositories.dart';

part 'update_avatar_url_usecase.freezed.dart';

@lazySingleton
class UpdateAvatarUrlUsecase extends UseCase<void, UpdateAvatarUrlParams> {
  UpdateAvatarUrlUsecase({required this.repositories});
  final ProfileRepositories repositories;

  @override
  Future<Either<Failure, void>> call(UpdateAvatarUrlParams params) =>
      repositories.updateAvatarUrl(params.userId, params.avatarUrl);
}

@freezed
abstract class UpdateAvatarUrlParams with _$UpdateAvatarUrlParams {
  const factory UpdateAvatarUrlParams({
    required String userId,
    required String avatarUrl,
  }) = _UpdateAvatarUrlParams;
}
