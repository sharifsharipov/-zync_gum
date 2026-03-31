import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/repositories/auth_repositories.dart';

part 'sign_up_email_usecase.freezed.dart';

@lazySingleton
class SignUpEmailUsecase extends UseCase<UserEntity, SignUpEmailParams> {
  SignUpEmailUsecase({required this.repositories});
  final AuthRepositories repositories;

  @override
  Future<Either<Failure, UserEntity>> call(SignUpEmailParams params) =>
      repositories.signUpWithEmail(
        email: params.email,
        password: params.password,
        name: params.name,
      );
}

@freezed
abstract class SignUpEmailParams with _$SignUpEmailParams {
  const factory SignUpEmailParams({
    required String email,
    required String password,
    required String name,
  }) = _SignUpEmailParams;
}
