import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
    required this.statusCode,
    this.type,
  });

  final String message;
  final int statusCode;
  final String? type;

  @override
  List<Object?> get props => [message, statusCode, type];
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    super.statusCode = 500,
    super.type,
  });
}

class FirebaseAuthFailure extends Failure {
  const FirebaseAuthFailure({
    required super.message,
    super.statusCode = 0,
    super.type,
  });

  factory FirebaseAuthFailure.fromException(FirebaseAuthException e) {
    final msg = switch (e.code) {
      'user-not-found'          => 'Foydalanuvchi topilmadi',
      'wrong-password'          => "Parol noto'g'ri",
      'invalid-email'           => "Email noto'g'ri formatda",
      'user-disabled'           => 'Hisob bloklangan',
      'too-many-requests'       => "Juda ko'p urinish. Keyinroq urining",
      'email-already-in-use'    => "Bu email allaqachon ro'yxatdan o'tgan",
      'operation-not-allowed'   => 'Bu amal ruxsat etilmagan',
      'weak-password'           => 'Parol juda oddiy',
      'network-request-failed'  => "Internet aloqasi yo'q",
      'cancelled-popup-request' => 'Kirish bekor qilindi',
      'popup-closed-by-user'    => 'Kirish oynasi yopildi',
      _                         => e.message ?? "Noma'lum xato",
    };
    return FirebaseAuthFailure(
      message: msg,
      statusCode: 0,
      type: e.code,
    );
  }
}

class DatabaseFailure extends Failure {
  const DatabaseFailure({
    required super.message,
    super.statusCode = 0,
    super.type,
  });
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    super.message = "Internet aloqasi yo'q",
    super.statusCode = 0,
  });
}

class CacheFailure extends Failure {
  const CacheFailure({
    super.message = 'Mahalliy xato yuz berdi',
    super.statusCode = 0,
  });
}

class UnknownFailure extends Failure {
  const UnknownFailure({super.message = "Noma'lum xato"})
      : super(statusCode: 0);
}
