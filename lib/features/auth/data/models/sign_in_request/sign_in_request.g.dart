// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInEmailRequest _$SignInEmailRequestFromJson(Map<String, dynamic> json) =>
    _SignInEmailRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignInEmailRequestToJson(_SignInEmailRequest instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

_SignInGoogleRequest _$SignInGoogleRequestFromJson(Map<String, dynamic> json) =>
    _SignInGoogleRequest(
      idToken: json['idToken'] as String,
      accessToken: json['accessToken'] as String? ?? '',
    );

Map<String, dynamic> _$SignInGoogleRequestToJson(
  _SignInGoogleRequest instance,
) => <String, dynamic>{
  'idToken': instance.idToken,
  'accessToken': instance.accessToken,
};
