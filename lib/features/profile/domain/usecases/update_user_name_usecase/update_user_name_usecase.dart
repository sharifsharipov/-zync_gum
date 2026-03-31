import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/features/profile/domain/repositories/profile_repositories.dart';

part 'update_user_name_usecase.freezed.dart';

@lazySingleton
class UpdateUserNameUsecase extends UseCase<void, UpdateUserNameParams> {
  UpdateUserNameUsecase({required this.repositories});
  final ProfileRepositories repositories;

  @override
  Future<Either<Failure, void>> call(UpdateUserNameParams params) =>
      repositories.updateUserName(params.userId, params.name);
}

@freezed
abstract class UpdateUserNameParams with _$UpdateUserNameParams {
  const factory UpdateUserNameParams({
    required String userId,
    required String name,
  }) = _UpdateUserNameParams;
}
