import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zync_gum/core/enums/user_role.dart';

part 'auth_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String email,
    required String name,
    @Default(UserRole.user) UserRole role,
    @Default('') String avatarUrl,
    @Default('') String phone,
    @Default('') String gender,
    @Default(0) int age,
    @Default('') String position,
    @Default('') String department,
    DateTime? lastLogin,
    DateTime? createdAt,
  }) = _UserEntity;
  const UserEntity._();
  bool get isAdmin => role.isAdmin;
  bool get isManager => role.isManager;
  bool get canManageUsers => role.canManageUsers;
  bool get canViewReports => role.canViewReports;
}



