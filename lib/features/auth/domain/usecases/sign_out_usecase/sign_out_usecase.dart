import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/features/auth/domain/repositories/auth_repositories.dart';

@lazySingleton
class SignOutUsecase extends UseCase<void, NoParams> {
  SignOutUsecase({required this.repositories});
  final AuthRepositories repositories;

  @override
  Future<Either<Failure, void>> call(NoParams params) =>
      repositories.signOut();
}
