// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String? ?? '',
      role: json['role'] as String? ?? 'user',
      avatarUrl: json['avatarUrl'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
      position: json['position'] as String? ?? '',
      department: json['department'] as String? ?? '',
      lastLogin: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$UserResponseToJson(_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'role': instance.role,
      'avatarUrl': instance.avatarUrl,
      'phone': instance.phone,
      'gender': instance.gender,
      'age': instance.age,
      'position': instance.position,
      'department': instance.department,
      'last_login': instance.lastLogin?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
    };
