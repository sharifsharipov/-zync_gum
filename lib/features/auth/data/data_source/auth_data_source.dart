import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/auth/data/models/sign_in_request/sign_in_request.dart';
import 'package:zync_gum/features/auth/data/models/user_response/user_response.dart';

abstract interface class AuthDataSource {
  Future<Either<Failure, UserResponse>> signInWithEmail(
    SignInEmailRequest params,
  );

  Future<Either<Failure, UserResponse>> signUpWithEmail(
    SignInEmailRequest params, {
    required String name,
  });

  Future<Either<Failure, UserResponse>> signInWithGoogle();

  Future<Either<Failure, void>> signOut();

  Future<Either<Failure, UserResponse?>> getAuthStatus();
}
