import 'package:zync_gum/core/enums/user_role.dart';
import 'package:zync_gum/features/auth/data/models/sign_in_request/sign_in_request.dart';
import 'package:zync_gum/features/auth/data/models/user_response/user_response.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';

sealed class AuthMapper {
 const AuthMapper._();

  static SignInEmailRequest toEmailRequest({
    required String email,
    required String password,
  }) => SignInEmailRequest(email: email, password: password);

  static UserEntity toUserEntity(UserResponse response) => UserEntity(
        id: response.id,
        email: response.email,
        name: response.name,
        role: UserRole.fromString(response.role),
        avatarUrl: response.avatarUrl,
        phone: response.phone,
        gender: response.gender,
        age: response.age,
        position: response.position,
        department: response.department,
        lastLogin: response.lastLogin,
        createdAt: response.createdAt,
      );
}
