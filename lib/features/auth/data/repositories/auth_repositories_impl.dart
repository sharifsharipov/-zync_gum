import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/auth/data/data_source/auth_data_source.dart';
import 'package:zync_gum/features/auth/data/mapper/auth_mapper.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/repositories/auth_repositories.dart';

@LazySingleton(as: AuthRepositories)
class AuthRepositoriesImpl implements AuthRepositories {
  AuthRepositoriesImpl({required AuthDataSource dataSource})
    : _dataSource = dataSource;

  final AuthDataSource _dataSource;

  @override
  Future<Either<Failure, UserEntity>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    final result = await _dataSource.signInWithEmail(
      AuthMapper.toEmailRequest(email: email, password: password),
    );
    return result.fold(
      (failure) => Left(failure),
      (response) => Right(AuthMapper.toUserEntity(response)),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmail({
    required String email,
    required String password,
    required String name,
  }) async {
    final result = await _dataSource.signUpWithEmail(
      AuthMapper.toEmailRequest(email: email, password: password),
      name: name,
    );
    return result.fold(
      (failure) => Left(failure),
      (response) => Right(AuthMapper.toUserEntity(response)),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    final result = await _dataSource.signInWithGoogle();
    return result.fold(
      (failure) => Left(failure),
      (response) => Right(AuthMapper.toUserEntity(response)),
    );
  }

  @override
  Future<Either<Failure, void>> signOut() => _dataSource.signOut();

  @override
  Future<Either<Failure, UserEntity?>> getAuthStatus() async {
    final result = await _dataSource.getAuthStatus();
    return result.fold(
      (failure) => Left(failure),
      (response) =>
          Right(response != null ? AuthMapper.toUserEntity(response) : null),
    );
  }
}
