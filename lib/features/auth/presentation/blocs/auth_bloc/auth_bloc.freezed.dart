// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthCheckRequested value)?  checkRequested,TResult Function( SignInWithEmailRequested value)?  signInWithEmail,TResult Function( SignUpWithEmailRequested value)?  signUpWithEmail,TResult Function( SignInWithGoogleRequested value)?  signInWithGoogle,TResult Function( SignOutRequested value)?  signOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthCheckRequested() when checkRequested != null:
return checkRequested(_that);case SignInWithEmailRequested() when signInWithEmail != null:
return signInWithEmail(_that);case SignUpWithEmailRequested() when signUpWithEmail != null:
return signUpWithEmail(_that);case SignInWithGoogleRequested() when signInWithGoogle != null:
return signInWithGoogle(_that);case SignOutRequested() when signOut != null:
return signOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthCheckRequested value)  checkRequested,required TResult Function( SignInWithEmailRequested value)  signInWithEmail,required TResult Function( SignUpWithEmailRequested value)  signUpWithEmail,required TResult Function( SignInWithGoogleRequested value)  signInWithGoogle,required TResult Function( SignOutRequested value)  signOut,}){
final _that = this;
switch (_that) {
case AuthCheckRequested():
return checkRequested(_that);case SignInWithEmailRequested():
return signInWithEmail(_that);case SignUpWithEmailRequested():
return signUpWithEmail(_that);case SignInWithGoogleRequested():
return signInWithGoogle(_that);case SignOutRequested():
return signOut(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthCheckRequested value)?  checkRequested,TResult? Function( SignInWithEmailRequested value)?  signInWithEmail,TResult? Function( SignUpWithEmailRequested value)?  signUpWithEmail,TResult? Function( SignInWithGoogleRequested value)?  signInWithGoogle,TResult? Function( SignOutRequested value)?  signOut,}){
final _that = this;
switch (_that) {
case AuthCheckRequested() when checkRequested != null:
return checkRequested(_that);case SignInWithEmailRequested() when signInWithEmail != null:
return signInWithEmail(_that);case SignUpWithEmailRequested() when signUpWithEmail != null:
return signUpWithEmail(_that);case SignInWithGoogleRequested() when signInWithGoogle != null:
return signInWithGoogle(_that);case SignOutRequested() when signOut != null:
return signOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkRequested,TResult Function( String email,  String password)?  signInWithEmail,TResult Function( String email,  String password,  String name)?  signUpWithEmail,TResult Function()?  signInWithGoogle,TResult Function()?  signOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthCheckRequested() when checkRequested != null:
return checkRequested();case SignInWithEmailRequested() when signInWithEmail != null:
return signInWithEmail(_that.email,_that.password);case SignUpWithEmailRequested() when signUpWithEmail != null:
return signUpWithEmail(_that.email,_that.password,_that.name);case SignInWithGoogleRequested() when signInWithGoogle != null:
return signInWithGoogle();case SignOutRequested() when signOut != null:
return signOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkRequested,required TResult Function( String email,  String password)  signInWithEmail,required TResult Function( String email,  String password,  String name)  signUpWithEmail,required TResult Function()  signInWithGoogle,required TResult Function()  signOut,}) {final _that = this;
switch (_that) {
case AuthCheckRequested():
return checkRequested();case SignInWithEmailRequested():
return signInWithEmail(_that.email,_that.password);case SignUpWithEmailRequested():
return signUpWithEmail(_that.email,_that.password,_that.name);case SignInWithGoogleRequested():
return signInWithGoogle();case SignOutRequested():
return signOut();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkRequested,TResult? Function( String email,  String password)?  signInWithEmail,TResult? Function( String email,  String password,  String name)?  signUpWithEmail,TResult? Function()?  signInWithGoogle,TResult? Function()?  signOut,}) {final _that = this;
switch (_that) {
case AuthCheckRequested() when checkRequested != null:
return checkRequested();case SignInWithEmailRequested() when signInWithEmail != null:
return signInWithEmail(_that.email,_that.password);case SignUpWithEmailRequested() when signUpWithEmail != null:
return signUpWithEmail(_that.email,_that.password,_that.name);case SignInWithGoogleRequested() when signInWithGoogle != null:
return signInWithGoogle();case SignOutRequested() when signOut != null:
return signOut();case _:
  return null;

}
}

}

/// @nodoc


class AuthCheckRequested implements AuthEvent {
  const AuthCheckRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthCheckRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkRequested()';
}


}




/// @nodoc


class SignInWithEmailRequested implements AuthEvent {
  const SignInWithEmailRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInWithEmailRequestedCopyWith<SignInWithEmailRequested> get copyWith => _$SignInWithEmailRequestedCopyWithImpl<SignInWithEmailRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInWithEmailRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signInWithEmail(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInWithEmailRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SignInWithEmailRequestedCopyWith(SignInWithEmailRequested value, $Res Function(SignInWithEmailRequested) _then) = _$SignInWithEmailRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$SignInWithEmailRequestedCopyWithImpl<$Res>
    implements $SignInWithEmailRequestedCopyWith<$Res> {
  _$SignInWithEmailRequestedCopyWithImpl(this._self, this._then);

  final SignInWithEmailRequested _self;
  final $Res Function(SignInWithEmailRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(SignInWithEmailRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpWithEmailRequested implements AuthEvent {
  const SignUpWithEmailRequested({required this.email, required this.password, required this.name});
  

 final  String email;
 final  String password;
 final  String name;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpWithEmailRequestedCopyWith<SignUpWithEmailRequested> get copyWith => _$SignUpWithEmailRequestedCopyWithImpl<SignUpWithEmailRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpWithEmailRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,name);

@override
String toString() {
  return 'AuthEvent.signUpWithEmail(email: $email, password: $password, name: $name)';
}


}

/// @nodoc
abstract mixin class $SignUpWithEmailRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SignUpWithEmailRequestedCopyWith(SignUpWithEmailRequested value, $Res Function(SignUpWithEmailRequested) _then) = _$SignUpWithEmailRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password, String name
});




}
/// @nodoc
class _$SignUpWithEmailRequestedCopyWithImpl<$Res>
    implements $SignUpWithEmailRequestedCopyWith<$Res> {
  _$SignUpWithEmailRequestedCopyWithImpl(this._self, this._then);

  final SignUpWithEmailRequested _self;
  final $Res Function(SignUpWithEmailRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? name = null,}) {
  return _then(SignUpWithEmailRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignInWithGoogleRequested implements AuthEvent {
  const SignInWithGoogleRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInWithGoogleRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signInWithGoogle()';
}


}




/// @nodoc


class SignOutRequested implements AuthEvent {
  const SignOutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signOut()';
}


}




/// @nodoc
mixin _$AuthState {

 Status get status; UserEntity? get user; String get errorMessage;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,user,errorMessage);

@override
String toString() {
  return 'AuthState(status: $status, user: $user, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 Status status, UserEntity? user, String errorMessage
});


$UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? user = freezed,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Status status,  UserEntity? user,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.user,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Status status,  UserEntity? user,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.status,_that.user,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Status status,  UserEntity? user,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.user,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState extends AuthState {
  const _AuthState({this.status = Status.pure, this.user, this.errorMessage = ''}): super._();
  

@override@JsonKey() final  Status status;
@override final  UserEntity? user;
@override@JsonKey() final  String errorMessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,user,errorMessage);

@override
String toString() {
  return 'AuthState(status: $status, user: $user, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, UserEntity? user, String errorMessage
});


@override $UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? user = freezed,Object? errorMessage = null,}) {
  return _then(_AuthState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
