part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadProfile({required String userId}) =
      ProfileLoadRequested;
  const factory ProfileEvent.updateName({
    required String userId,
    required String name,
  }) = ProfileUpdateNameRequested;
  const factory ProfileEvent.updateAvatarUrl({
    required String userId,
    required String avatarUrl,
  }) = ProfileUpdateAvatarRequested;
}
