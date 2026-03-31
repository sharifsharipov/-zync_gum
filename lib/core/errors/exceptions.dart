import 'package:zync_gum/core/extensions/localization_extension.dart';

import 'package:firebase_auth/firebase_auth.dart';

class ServerException implements Exception {
  ServerException.withException(String message) {
    _statusCode = 500;
    _message = message;
  }

  ServerException.withFirebaseException(FirebaseException error) {
    _statusCode = int.tryParse(error.code) ?? 500;
    _message = error.message ?? localizationWithoutContext.serverError;
    if (error is FirebaseAuthException) {
      if (error.code == 'wrong-password') {
        _message = localizationWithoutContext.invalidPassword;
      } else if (error.code == 'user-not-found') {
        _message = localizationWithoutContext.userNotFound;
      }
    }
  }

  String _message = '';
  late int _statusCode;
  String? _type;
  dynamic _data;

  String? get type => _type;

  int get statusCode => _statusCode;

  String get message => _message;

  dynamic get data => _data;
}
