import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse {
  const factory UserResponse({
    required String id,
    required String email,
    @Default('') String name,
    @Default('user') String role,
    @Default('') String avatarUrl,
    @Default('') String phone,
    @Default('') String gender,
    @Default(0) int age,
    @Default('') String position,
    @Default('') String department,
    @JsonKey(name: 'last_login') DateTime? lastLogin,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
