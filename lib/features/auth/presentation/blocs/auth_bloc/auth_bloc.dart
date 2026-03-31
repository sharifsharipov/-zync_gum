import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/enums/status.dart';
import 'package:zync_gum/core/usecase/usecase.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/usecases/check_auth_usecase/check_auth_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_email_usecase/sign_in_email_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_google_usecase/sign_in_google_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_out_usecase/sign_out_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_up_email_usecase/sign_up_email_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.checkAuth,
    required this.signInEmail,
    required this.signUpEmail,
    required this.signInGoogle,
    required this.signOut,
  }) : super(const AuthState()) {
    on<AuthCheckRequested>(_onCheckRequested);
    on<SignInWithEmailRequested>(_onSignInWithEmail);
    on<SignUpWithEmailRequested>(_onSignUpWithEmail);
    on<SignInWithGoogleRequested>(_onSignInWithGoogle);
    on<SignOutRequested>(_onSignOut);
  }

  final CheckAuthUsecase checkAuth;
  final SignInEmailUsecase signInEmail;
  final SignUpEmailUsecase signUpEmail;
  final SignInGoogleUsecase signInGoogle;
  final SignOutUsecase signOut;

  Future<void> _onCheckRequested(
    AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await checkAuth(NoParams());
    result.fold(
      (_) => emit(state.copyWith(status: Status.success)),
      (user) => emit(state.copyWith(status: Status.success, user: user)),
    );
  }

  Future<void> _onSignInWithEmail(
    SignInWithEmailRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading, errorMessage: ''));
    final result = await signInEmail(
      SignInEmailParams(email: event.email, password: event.password),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(status: Status.failed, errorMessage: failure.message),
      ),
      (user) => emit(state.copyWith(status: Status.success, user: user)),
    );
  }

  Future<void> _onSignUpWithEmail(
    SignUpWithEmailRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading, errorMessage: ''));
    final result = await signUpEmail(
      SignUpEmailParams(
        email: event.email,
        password: event.password,
        name: event.name,
      ),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(status: Status.failed, errorMessage: failure.message),
      ),
      (user) => emit(state.copyWith(status: Status.success, user: user)),
    );
  }

  Future<void> _onSignInWithGoogle(
    SignInWithGoogleRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading, errorMessage: ''));
    final result = await signInGoogle(NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(status: Status.failed, errorMessage: failure.message),
      ),
      (user) => emit(state.copyWith(status: Status.success, user: user)),
    );
  }

  Future<void> _onSignOut(
    SignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await signOut(NoParams());
    result.fold(
      (_) => emit(state.copyWith(status: Status.failed)),
      (_) => emit(state.copyWith(status: Status.success, user: null)),
    );
  }
}
