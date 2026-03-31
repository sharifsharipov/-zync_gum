import 'package:flutter_test/flutter_test.dart';
import 'package:zync_gum/core/enums/user_role.dart';
import 'package:zync_gum/features/auth/data/mapper/auth_mapper.dart';
import 'package:zync_gum/features/auth/data/models/user_response/user_response.dart';

void main() {
  group('AuthMapper', () {
    test('toEmailRequest creates SignInEmailRequest', () {
      final request = AuthMapper.toEmailRequest(
        email: 'test@example.com',
        password: 'password123',
      );

      expect(request.email, 'test@example.com');
      expect(request.password, 'password123');
    });

    test('toUserEntity maps UserResponse to UserEntity', () {
      const response = UserResponse(
        id: 'uid1',
        email: 'test@example.com',
        name: 'Test User',
        role: 'admin',
        avatarUrl: 'https://avatar.png',
      );

      final entity = AuthMapper.toUserEntity(response);

      expect(entity.id, 'uid1');
      expect(entity.email, 'test@example.com');
      expect(entity.name, 'Test User');
      expect(entity.role, UserRole.admin);
      expect(entity.avatarUrl, 'https://avatar.png');
    });

    test('toUserEntity maps defaults correctly', () {
      const response = UserResponse(
        id: 'uid1',
        email: 'test@example.com',
      );

      final entity = AuthMapper.toUserEntity(response);

      expect(entity.name, '');
      expect(entity.role, UserRole.user);
      expect(entity.avatarUrl, '');
    });
  });
}
