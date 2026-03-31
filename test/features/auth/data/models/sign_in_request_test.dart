import 'package:flutter_test/flutter_test.dart';
import 'package:zync_gum/features/auth/data/models/sign_in_request/sign_in_request.dart';

void main() {
  group('SignInEmailRequest', () {
    test('fromJson creates correct model', () {
      final json = {
        'email': 'test@example.com',
        'password': '123456',
      };

      final request = SignInEmailRequest.fromJson(json);

      expect(request.email, 'test@example.com');
      expect(request.password, '123456');
    });

    test('toJson produces correct map', () {
      const request = SignInEmailRequest(
        email: 'test@example.com',
        password: '123456',
      );

      final json = request.toJson();

      expect(json['email'], 'test@example.com');
      expect(json['password'], '123456');
    });

    test('equality works', () {
      const r1 = SignInEmailRequest(email: 'a', password: 'b');
      const r2 = SignInEmailRequest(email: 'a', password: 'b');
      expect(r1, r2);
    });
  });

  group('SignInGoogleRequest', () {
    test('fromJson creates correct model', () {
      final json = {
        'idToken': 'token123',
        'accessToken': 'access456',
      };

      final request = SignInGoogleRequest.fromJson(json);

      expect(request.idToken, 'token123');
      expect(request.accessToken, 'access456');
    });

    test('default accessToken is empty', () {
      const request = SignInGoogleRequest(idToken: 'token');
      expect(request.accessToken, '');
    });
  });
}
