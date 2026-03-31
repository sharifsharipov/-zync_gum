import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_request.freezed.dart';
part 'sign_in_request.g.dart';

/// Email + parol bilan kirish uchun so'rov modeli
@freezed
abstract class SignInEmailRequest with _$SignInEmailRequest {
  const factory SignInEmailRequest({
    required String email,
    required String password,
  }) = _SignInEmailRequest;

  factory SignInEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInEmailRequestFromJson(json);
}

@freezed
abstract class SignInGoogleRequest with _$SignInGoogleRequest {
  const factory SignInGoogleRequest({
    required String idToken,
    @Default('') String accessToken,
  }) = _SignInGoogleRequest;

  factory SignInGoogleRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInGoogleRequestFromJson(json);
}
