part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(Status.pure) Status status,
    UserEntity? user,
    @Default(UnknownFailure()) Failure failure,
  }) = _ProfileState;
}
