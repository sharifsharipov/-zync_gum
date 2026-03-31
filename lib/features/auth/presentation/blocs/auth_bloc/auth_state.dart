part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(Status.pure) Status status,
    UserEntity? user,
    @Default('') String errorMessage,
  }) = _AuthState;

  const AuthState._();

  bool get isLoading => status.isLoading;
  bool get isAuthenticated => status.isSuccess && user != null;
  bool get isUnauthenticated => status.isSuccess && user == null;
  bool get isFailed => status.isFailed;
}
