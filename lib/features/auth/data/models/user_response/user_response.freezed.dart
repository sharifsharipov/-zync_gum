// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserResponse {

 String get id; String get email; String get name; String get role; String get avatarUrl; String get phone; String get gender; int get age; String get position; String get department;@JsonKey(name: 'last_login') DateTime? get lastLogin;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseCopyWith<UserResponse> get copyWith => _$UserResponseCopyWithImpl<UserResponse>(this as UserResponse, _$identity);

  /// Serializes this UserResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,name,role,avatarUrl,phone,gender,age,position,department,lastLogin,createdAt);

@override
String toString() {
  return 'UserResponse(id: $id, email: $email, name: $name, role: $role, avatarUrl: $avatarUrl, phone: $phone, gender: $gender, age: $age, position: $position, department: $department, lastLogin: $lastLogin, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserResponseCopyWith<$Res>  {
  factory $UserResponseCopyWith(UserResponse value, $Res Function(UserResponse) _then) = _$UserResponseCopyWithImpl;
@useResult
$Res call({
 String id, String email, String name, String role, String avatarUrl, String phone, String gender, int age, String position, String department,@JsonKey(name: 'last_login') DateTime? lastLogin,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$UserResponseCopyWithImpl<$Res>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._self, this._then);

  final UserResponse _self;
  final $Res Function(UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? name = null,Object? role = null,Object? avatarUrl = null,Object? phone = null,Object? gender = null,Object? age = null,Object? position = null,Object? department = null,Object? lastLogin = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserResponse].
extension UserResponsePatterns on UserResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String name,  String role,  String avatarUrl,  String phone,  String gender,  int age,  String position,  String department, @JsonKey(name: 'last_login')  DateTime? lastLogin, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.role,_that.avatarUrl,_that.phone,_that.gender,_that.age,_that.position,_that.department,_that.lastLogin,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String name,  String role,  String avatarUrl,  String phone,  String gender,  int age,  String position,  String department, @JsonKey(name: 'last_login')  DateTime? lastLogin, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserResponse():
return $default(_that.id,_that.email,_that.name,_that.role,_that.avatarUrl,_that.phone,_that.gender,_that.age,_that.position,_that.department,_that.lastLogin,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String name,  String role,  String avatarUrl,  String phone,  String gender,  int age,  String position,  String department, @JsonKey(name: 'last_login')  DateTime? lastLogin, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.role,_that.avatarUrl,_that.phone,_that.gender,_that.age,_that.position,_that.department,_that.lastLogin,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserResponse implements UserResponse {
  const _UserResponse({required this.id, required this.email, this.name = '', this.role = 'user', this.avatarUrl = '', this.phone = '', this.gender = '', this.age = 0, this.position = '', this.department = '', @JsonKey(name: 'last_login') this.lastLogin, @JsonKey(name: 'created_at') this.createdAt});
  factory _UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

@override final  String id;
@override final  String email;
@override@JsonKey() final  String name;
@override@JsonKey() final  String role;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String gender;
@override@JsonKey() final  int age;
@override@JsonKey() final  String position;
@override@JsonKey() final  String department;
@override@JsonKey(name: 'last_login') final  DateTime? lastLogin;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseCopyWith<_UserResponse> get copyWith => __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,name,role,avatarUrl,phone,gender,age,position,department,lastLogin,createdAt);

@override
String toString() {
  return 'UserResponse(id: $id, email: $email, name: $name, role: $role, avatarUrl: $avatarUrl, phone: $phone, gender: $gender, age: $age, position: $position, department: $department, lastLogin: $lastLogin, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserResponseCopyWith<$Res> implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(_UserResponse value, $Res Function(_UserResponse) _then) = __$UserResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String name, String role, String avatarUrl, String phone, String gender, int age, String position, String department,@JsonKey(name: 'last_login') DateTime? lastLogin,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(this._self, this._then);

  final _UserResponse _self;
  final $Res Function(_UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? name = null,Object? role = null,Object? avatarUrl = null,Object? phone = null,Object? gender = null,Object? age = null,Object? position = null,Object? department = null,Object? lastLogin = freezed,Object? createdAt = freezed,}) {
  return _then(_UserResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
