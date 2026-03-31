
import 'failure.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class ServerError implements Exception {
  ServerError.withError({
    required String message,
    int? code,
  }) {
    _errorMessage = message;
    _errorCode = code;
  }

  ServerError.withFirebaseError(FirebaseException error) {
    _errorCode = int.tryParse(error.code) ?? 500;
    _errorMessage = error.message ?? 'Server error';
  }

  int? _errorCode;
  String _errorMessage = '';

  int get errorCode => _errorCode ?? 0;

  String get message => _errorMessage;
}

extension ServerErrorExtension on ServerError {
  bool get isTokenExpired => errorCode == 401;

  ServerFailure get failure => ServerFailure(
        message: message,
        statusCode: errorCode,
      );
}