// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_email_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpEmailParams {

 String get email; String get password; String get name;
/// Create a copy of SignUpEmailParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpEmailParamsCopyWith<SignUpEmailParams> get copyWith => _$SignUpEmailParamsCopyWithImpl<SignUpEmailParams>(this as SignUpEmailParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEmailParams&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,name);

@override
String toString() {
  return 'SignUpEmailParams(email: $email, password: $password, name: $name)';
}


}

/// @nodoc
abstract mixin class $SignUpEmailParamsCopyWith<$Res>  {
  factory $SignUpEmailParamsCopyWith(SignUpEmailParams value, $Res Function(SignUpEmailParams) _then) = _$SignUpEmailParamsCopyWithImpl;
@useResult
$Res call({
 String email, String password, String name
});




}
/// @nodoc
class _$SignUpEmailParamsCopyWithImpl<$Res>
    implements $SignUpEmailParamsCopyWith<$Res> {
  _$SignUpEmailParamsCopyWithImpl(this._self, this._then);

  final SignUpEmailParams _self;
  final $Res Function(SignUpEmailParams) _then;

/// Create a copy of SignUpEmailParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? name = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpEmailParams].
extension SignUpEmailParamsPatterns on SignUpEmailParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpEmailParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpEmailParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpEmailParams value)  $default,){
final _that = this;
switch (_that) {
case _SignUpEmailParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpEmailParams value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpEmailParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpEmailParams() when $default != null:
return $default(_that.email,_that.password,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String name)  $default,) {final _that = this;
switch (_that) {
case _SignUpEmailParams():
return $default(_that.email,_that.password,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String name)?  $default,) {final _that = this;
switch (_that) {
case _SignUpEmailParams() when $default != null:
return $default(_that.email,_that.password,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpEmailParams implements SignUpEmailParams {
  const _SignUpEmailParams({required this.email, required this.password, required this.name});
  

@override final  String email;
@override final  String password;
@override final  String name;

/// Create a copy of SignUpEmailParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpEmailParamsCopyWith<_SignUpEmailParams> get copyWith => __$SignUpEmailParamsCopyWithImpl<_SignUpEmailParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpEmailParams&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,name);

@override
String toString() {
  return 'SignUpEmailParams(email: $email, password: $password, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SignUpEmailParamsCopyWith<$Res> implements $SignUpEmailParamsCopyWith<$Res> {
  factory _$SignUpEmailParamsCopyWith(_SignUpEmailParams value, $Res Function(_SignUpEmailParams) _then) = __$SignUpEmailParamsCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String name
});




}
/// @nodoc
class __$SignUpEmailParamsCopyWithImpl<$Res>
    implements _$SignUpEmailParamsCopyWith<$Res> {
  __$SignUpEmailParamsCopyWithImpl(this._self, this._then);

  final _SignUpEmailParams _self;
  final $Res Function(_SignUpEmailParams) _then;

/// Create a copy of SignUpEmailParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? name = null,}) {
  return _then(_SignUpEmailParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
