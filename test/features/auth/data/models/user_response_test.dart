import 'package:flutter_test/flutter_test.dart';
import 'package:zync_gum/features/auth/data/models/user_response/user_response.dart';

void main() {
  group('UserResponse', () {
    test('fromJson creates correct model', () {
      final json = {
        'id': 'uid123',
        'email': 'test@example.com',
        'name': 'Test User',
        'role': 'admin',
        'avatarUrl': 'https://example.com/avatar.png',
      };

      final response = UserResponse.fromJson(json);

      expect(response.id, 'uid123');
      expect(response.email, 'test@example.com');
      expect(response.name, 'Test User');
      expect(response.role, 'admin');
      expect(response.avatarUrl, 'https://example.com/avatar.png');
    });

    test('fromJson with defaults', () {
      final json = {
        'id': 'uid123',
        'email': 'test@example.com',
      };

      final response = UserResponse.fromJson(json);

      expect(response.name, '');
      expect(response.role, 'user');
      expect(response.avatarUrl, '');
      expect(response.lastLogin, isNull);
    });

    test('toJson produces correct map', () {
      const response = UserResponse(
        id: 'uid123',
        email: 'test@example.com',
        name: 'Test',
        role: 'user',
      );

      final json = response.toJson();

      expect(json['id'], 'uid123');
      expect(json['email'], 'test@example.com');
      expect(json['name'], 'Test');
      expect(json['role'], 'user');
    });

    test('equality works', () {
      const r1 = UserResponse(id: 'a', email: 'b');
      const r2 = UserResponse(id: 'a', email: 'b');
      expect(r1, r2);
    });
  });
}
