part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkRequested() = AuthCheckRequested;
  const factory AuthEvent.signInWithEmail({
    required String email,
    required String password,
  }) = SignInWithEmailRequested;
  const factory AuthEvent.signUpWithEmail({
    required String email,
    required String password,
    required String name,
  }) = SignUpWithEmailRequested;
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogleRequested;
  const factory AuthEvent.signOut() = SignOutRequested;
}
