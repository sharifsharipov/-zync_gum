import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/enums/status.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/profile/domain/usecases/get_user_profile_usecase/get_user_profile_usecase.dart';
import 'package:zync_gum/features/profile/domain/usecases/update_avatar_url_usecase/update_avatar_url_usecase.dart';
import 'package:zync_gum/features/profile/domain/usecases/update_user_name_usecase/update_user_name_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required this.getUserProfile,
    required this.updateUserName,
    required this.updateAvatarUrl,
  }) : super(const ProfileState()) {
    on<ProfileLoadRequested>(_onLoad);
    on<ProfileUpdateNameRequested>(_onUpdateName);
    on<ProfileUpdateAvatarRequested>(_onUpdateAvatar);
  }

  final GetUserProfileUsecase getUserProfile;
  final UpdateUserNameUsecase updateUserName;
  final UpdateAvatarUrlUsecase updateAvatarUrl;

  Future<void> _onLoad(
    ProfileLoadRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await getUserProfile(
      GetUserProfileParams(userId: event.userId),
    );
    result.fold(
      (failure) => emit(state.copyWith(status: Status.failed, failure: failure)),
      (user) => emit(state.copyWith(status: Status.success, user: user)),
    );
  }

  Future<void> _onUpdateName(
    ProfileUpdateNameRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await updateUserName(
      UpdateUserNameParams(userId: event.userId, name: event.name),
    );
    result.fold(
      (failure) => emit(state.copyWith(status: Status.failed, failure: failure)),
      (_) => emit(state.copyWith(status: Status.success)),
    );
  }

  Future<void> _onUpdateAvatar(
    ProfileUpdateAvatarRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await updateAvatarUrl(
      UpdateAvatarUrlParams(userId: event.userId, avatarUrl: event.avatarUrl),
    );
    result.fold(
      (failure) => emit(state.copyWith(status: Status.failed, failure: failure)),
      (_) => emit(state.copyWith(status: Status.success)),
    );
  }
}
