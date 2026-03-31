import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/repositories/auth_repositories.dart';

part 'sign_in_email_usecase.freezed.dart';

@lazySingleton
class SignInEmailUsecase extends UseCase<UserEntity, SignInEmailParams> {
  SignInEmailUsecase({required this.repositories});
  final AuthRepositories repositories;

  @override
  Future<Either<Failure, UserEntity>> call(SignInEmailParams params) =>
      repositories.signInWithEmail(
        email: params.email,
        password: params.password,
      );
}

@freezed
abstract class SignInEmailParams with _$SignInEmailParams {
  const factory SignInEmailParams({
    required String email,
    required String password,
  }) = _SignInEmailParams;
}
