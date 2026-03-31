// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {

 String get userId;
/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEventCopyWith<ProfileEvent> get copyWith => _$ProfileEventCopyWithImpl<ProfileEvent>(this as ProfileEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileEvent(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ProfileEventCopyWith<$Res>  {
  factory $ProfileEventCopyWith(ProfileEvent value, $Res Function(ProfileEvent) _then) = _$ProfileEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._self, this._then);

  final ProfileEvent _self;
  final $Res Function(ProfileEvent) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileLoadRequested value)?  loadProfile,TResult Function( ProfileUpdateNameRequested value)?  updateName,TResult Function( ProfileUpdateAvatarRequested value)?  updateAvatarUrl,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileLoadRequested() when loadProfile != null:
return loadProfile(_that);case ProfileUpdateNameRequested() when updateName != null:
return updateName(_that);case ProfileUpdateAvatarRequested() when updateAvatarUrl != null:
return updateAvatarUrl(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileLoadRequested value)  loadProfile,required TResult Function( ProfileUpdateNameRequested value)  updateName,required TResult Function( ProfileUpdateAvatarRequested value)  updateAvatarUrl,}){
final _that = this;
switch (_that) {
case ProfileLoadRequested():
return loadProfile(_that);case ProfileUpdateNameRequested():
return updateName(_that);case ProfileUpdateAvatarRequested():
return updateAvatarUrl(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileLoadRequested value)?  loadProfile,TResult? Function( ProfileUpdateNameRequested value)?  updateName,TResult? Function( ProfileUpdateAvatarRequested value)?  updateAvatarUrl,}){
final _that = this;
switch (_that) {
case ProfileLoadRequested() when loadProfile != null:
return loadProfile(_that);case ProfileUpdateNameRequested() when updateName != null:
return updateName(_that);case ProfileUpdateAvatarRequested() when updateAvatarUrl != null:
return updateAvatarUrl(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  loadProfile,TResult Function( String userId,  String name)?  updateName,TResult Function( String userId,  String avatarUrl)?  updateAvatarUrl,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileLoadRequested() when loadProfile != null:
return loadProfile(_that.userId);case ProfileUpdateNameRequested() when updateName != null:
return updateName(_that.userId,_that.name);case ProfileUpdateAvatarRequested() when updateAvatarUrl != null:
return updateAvatarUrl(_that.userId,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  loadProfile,required TResult Function( String userId,  String name)  updateName,required TResult Function( String userId,  String avatarUrl)  updateAvatarUrl,}) {final _that = this;
switch (_that) {
case ProfileLoadRequested():
return loadProfile(_that.userId);case ProfileUpdateNameRequested():
return updateName(_that.userId,_that.name);case ProfileUpdateAvatarRequested():
return updateAvatarUrl(_that.userId,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  loadProfile,TResult? Function( String userId,  String name)?  updateName,TResult? Function( String userId,  String avatarUrl)?  updateAvatarUrl,}) {final _that = this;
switch (_that) {
case ProfileLoadRequested() when loadProfile != null:
return loadProfile(_that.userId);case ProfileUpdateNameRequested() when updateName != null:
return updateName(_that.userId,_that.name);case ProfileUpdateAvatarRequested() when updateAvatarUrl != null:
return updateAvatarUrl(_that.userId,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc


class ProfileLoadRequested implements ProfileEvent {
  const ProfileLoadRequested({required this.userId});
  

@override final  String userId;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileLoadRequestedCopyWith<ProfileLoadRequested> get copyWith => _$ProfileLoadRequestedCopyWithImpl<ProfileLoadRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoadRequested&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileEvent.loadProfile(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ProfileLoadRequestedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $ProfileLoadRequestedCopyWith(ProfileLoadRequested value, $Res Function(ProfileLoadRequested) _then) = _$ProfileLoadRequestedCopyWithImpl;
@override @useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$ProfileLoadRequestedCopyWithImpl<$Res>
    implements $ProfileLoadRequestedCopyWith<$Res> {
  _$ProfileLoadRequestedCopyWithImpl(this._self, this._then);

  final ProfileLoadRequested _self;
  final $Res Function(ProfileLoadRequested) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(ProfileLoadRequested(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProfileUpdateNameRequested implements ProfileEvent {
  const ProfileUpdateNameRequested({required this.userId, required this.name});
  

@override final  String userId;
 final  String name;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUpdateNameRequestedCopyWith<ProfileUpdateNameRequested> get copyWith => _$ProfileUpdateNameRequestedCopyWithImpl<ProfileUpdateNameRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUpdateNameRequested&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,userId,name);

@override
String toString() {
  return 'ProfileEvent.updateName(userId: $userId, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProfileUpdateNameRequestedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $ProfileUpdateNameRequestedCopyWith(ProfileUpdateNameRequested value, $Res Function(ProfileUpdateNameRequested) _then) = _$ProfileUpdateNameRequestedCopyWithImpl;
@override @useResult
$Res call({
 String userId, String name
});




}
/// @nodoc
class _$ProfileUpdateNameRequestedCopyWithImpl<$Res>
    implements $ProfileUpdateNameRequestedCopyWith<$Res> {
  _$ProfileUpdateNameRequestedCopyWithImpl(this._self, this._then);

  final ProfileUpdateNameRequested _self;
  final $Res Function(ProfileUpdateNameRequested) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = null,}) {
  return _then(ProfileUpdateNameRequested(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProfileUpdateAvatarRequested implements ProfileEvent {
  const ProfileUpdateAvatarRequested({required this.userId, required this.avatarUrl});
  

@override final  String userId;
 final  String avatarUrl;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUpdateAvatarRequestedCopyWith<ProfileUpdateAvatarRequested> get copyWith => _$ProfileUpdateAvatarRequestedCopyWithImpl<ProfileUpdateAvatarRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUpdateAvatarRequested&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userId,avatarUrl);

@override
String toString() {
  return 'ProfileEvent.updateAvatarUrl(userId: $userId, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $ProfileUpdateAvatarRequestedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $ProfileUpdateAvatarRequestedCopyWith(ProfileUpdateAvatarRequested value, $Res Function(ProfileUpdateAvatarRequested) _then) = _$ProfileUpdateAvatarRequestedCopyWithImpl;
@override @useResult
$Res call({
 String userId, String avatarUrl
});




}
/// @nodoc
class _$ProfileUpdateAvatarRequestedCopyWithImpl<$Res>
    implements $ProfileUpdateAvatarRequestedCopyWith<$Res> {
  _$ProfileUpdateAvatarRequestedCopyWithImpl(this._self, this._then);

  final ProfileUpdateAvatarRequested _self;
  final $Res Function(ProfileUpdateAvatarRequested) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? avatarUrl = null,}) {
  return _then(ProfileUpdateAvatarRequested(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProfileState {

 Status get status; UserEntity? get user; Failure get failure;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,user,failure);

@override
String toString() {
  return 'ProfileState(status: $status, user: $user, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 Status status, UserEntity? user, Failure failure
});


$UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? user = freezed,Object? failure = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}
/// Create a copy of ProfileState
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


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Status status,  UserEntity? user,  Failure failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.status,_that.user,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Status status,  UserEntity? user,  Failure failure)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.status,_that.user,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Status status,  UserEntity? user,  Failure failure)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.status,_that.user,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({this.status = Status.pure, this.user, this.failure = const UnknownFailure()});
  

@override@JsonKey() final  Status status;
@override final  UserEntity? user;
@override@JsonKey() final  Failure failure;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,user,failure);

@override
String toString() {
  return 'ProfileState(status: $status, user: $user, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, UserEntity? user, Failure failure
});


@override $UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? user = freezed,Object? failure = null,}) {
  return _then(_ProfileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of ProfileState
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
