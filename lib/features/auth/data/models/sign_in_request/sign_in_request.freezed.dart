// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInEmailRequest {

 String get email; String get password;
/// Create a copy of SignInEmailRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInEmailRequestCopyWith<SignInEmailRequest> get copyWith => _$SignInEmailRequestCopyWithImpl<SignInEmailRequest>(this as SignInEmailRequest, _$identity);

  /// Serializes this SignInEmailRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEmailRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'SignInEmailRequest(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInEmailRequestCopyWith<$Res>  {
  factory $SignInEmailRequestCopyWith(SignInEmailRequest value, $Res Function(SignInEmailRequest) _then) = _$SignInEmailRequestCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$SignInEmailRequestCopyWithImpl<$Res>
    implements $SignInEmailRequestCopyWith<$Res> {
  _$SignInEmailRequestCopyWithImpl(this._self, this._then);

  final SignInEmailRequest _self;
  final $Res Function(SignInEmailRequest) _then;

/// Create a copy of SignInEmailRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInEmailRequest].
extension SignInEmailRequestPatterns on SignInEmailRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInEmailRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInEmailRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInEmailRequest value)  $default,){
final _that = this;
switch (_that) {
case _SignInEmailRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInEmailRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SignInEmailRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInEmailRequest() when $default != null:
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password)  $default,) {final _that = this;
switch (_that) {
case _SignInEmailRequest():
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password)?  $default,) {final _that = this;
switch (_that) {
case _SignInEmailRequest() when $default != null:
return $default(_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInEmailRequest implements SignInEmailRequest {
  const _SignInEmailRequest({required this.email, required this.password});
  factory _SignInEmailRequest.fromJson(Map<String, dynamic> json) => _$SignInEmailRequestFromJson(json);

@override final  String email;
@override final  String password;

/// Create a copy of SignInEmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInEmailRequestCopyWith<_SignInEmailRequest> get copyWith => __$SignInEmailRequestCopyWithImpl<_SignInEmailRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInEmailRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInEmailRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'SignInEmailRequest(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignInEmailRequestCopyWith<$Res> implements $SignInEmailRequestCopyWith<$Res> {
  factory _$SignInEmailRequestCopyWith(_SignInEmailRequest value, $Res Function(_SignInEmailRequest) _then) = __$SignInEmailRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$SignInEmailRequestCopyWithImpl<$Res>
    implements _$SignInEmailRequestCopyWith<$Res> {
  __$SignInEmailRequestCopyWithImpl(this._self, this._then);

  final _SignInEmailRequest _self;
  final $Res Function(_SignInEmailRequest) _then;

/// Create a copy of SignInEmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_SignInEmailRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SignInGoogleRequest {

 String get idToken; String get accessToken;
/// Create a copy of SignInGoogleRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInGoogleRequestCopyWith<SignInGoogleRequest> get copyWith => _$SignInGoogleRequestCopyWithImpl<SignInGoogleRequest>(this as SignInGoogleRequest, _$identity);

  /// Serializes this SignInGoogleRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInGoogleRequest&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idToken,accessToken);

@override
String toString() {
  return 'SignInGoogleRequest(idToken: $idToken, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $SignInGoogleRequestCopyWith<$Res>  {
  factory $SignInGoogleRequestCopyWith(SignInGoogleRequest value, $Res Function(SignInGoogleRequest) _then) = _$SignInGoogleRequestCopyWithImpl;
@useResult
$Res call({
 String idToken, String accessToken
});




}
/// @nodoc
class _$SignInGoogleRequestCopyWithImpl<$Res>
    implements $SignInGoogleRequestCopyWith<$Res> {
  _$SignInGoogleRequestCopyWithImpl(this._self, this._then);

  final SignInGoogleRequest _self;
  final $Res Function(SignInGoogleRequest) _then;

/// Create a copy of SignInGoogleRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idToken = null,Object? accessToken = null,}) {
  return _then(_self.copyWith(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInGoogleRequest].
extension SignInGoogleRequestPatterns on SignInGoogleRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInGoogleRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInGoogleRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInGoogleRequest value)  $default,){
final _that = this;
switch (_that) {
case _SignInGoogleRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInGoogleRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SignInGoogleRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String idToken,  String accessToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInGoogleRequest() when $default != null:
return $default(_that.idToken,_that.accessToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String idToken,  String accessToken)  $default,) {final _that = this;
switch (_that) {
case _SignInGoogleRequest():
return $default(_that.idToken,_that.accessToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String idToken,  String accessToken)?  $default,) {final _that = this;
switch (_that) {
case _SignInGoogleRequest() when $default != null:
return $default(_that.idToken,_that.accessToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInGoogleRequest implements SignInGoogleRequest {
  const _SignInGoogleRequest({required this.idToken, this.accessToken = ''});
  factory _SignInGoogleRequest.fromJson(Map<String, dynamic> json) => _$SignInGoogleRequestFromJson(json);

@override final  String idToken;
@override@JsonKey() final  String accessToken;

/// Create a copy of SignInGoogleRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInGoogleRequestCopyWith<_SignInGoogleRequest> get copyWith => __$SignInGoogleRequestCopyWithImpl<_SignInGoogleRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInGoogleRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInGoogleRequest&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idToken,accessToken);

@override
String toString() {
  return 'SignInGoogleRequest(idToken: $idToken, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$SignInGoogleRequestCopyWith<$Res> implements $SignInGoogleRequestCopyWith<$Res> {
  factory _$SignInGoogleRequestCopyWith(_SignInGoogleRequest value, $Res Function(_SignInGoogleRequest) _then) = __$SignInGoogleRequestCopyWithImpl;
@override @useResult
$Res call({
 String idToken, String accessToken
});




}
/// @nodoc
class __$SignInGoogleRequestCopyWithImpl<$Res>
    implements _$SignInGoogleRequestCopyWith<$Res> {
  __$SignInGoogleRequestCopyWithImpl(this._self, this._then);

  final _SignInGoogleRequest _self;
  final $Res Function(_SignInGoogleRequest) _then;

/// Create a copy of SignInGoogleRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idToken = null,Object? accessToken = null,}) {
  return _then(_SignInGoogleRequest(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
