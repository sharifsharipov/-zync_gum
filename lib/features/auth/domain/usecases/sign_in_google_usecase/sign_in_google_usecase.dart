import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/repositories/auth_repositories.dart';

@lazySingleton
class SignInGoogleUsecase extends UseCase<UserEntity, NoParams> {
  SignInGoogleUsecase({required this.repositories});
  final AuthRepositories repositories;

  @override
  Future<Either<Failure, UserEntity>> call(NoParams params) =>
      repositories.signInWithGoogle();
}
