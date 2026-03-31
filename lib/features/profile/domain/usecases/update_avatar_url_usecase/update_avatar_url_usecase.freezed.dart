// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_avatar_url_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateAvatarUrlParams {

 String get userId; String get avatarUrl;
/// Create a copy of UpdateAvatarUrlParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAvatarUrlParamsCopyWith<UpdateAvatarUrlParams> get copyWith => _$UpdateAvatarUrlParamsCopyWithImpl<UpdateAvatarUrlParams>(this as UpdateAvatarUrlParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAvatarUrlParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userId,avatarUrl);

@override
String toString() {
  return 'UpdateAvatarUrlParams(userId: $userId, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $UpdateAvatarUrlParamsCopyWith<$Res>  {
  factory $UpdateAvatarUrlParamsCopyWith(UpdateAvatarUrlParams value, $Res Function(UpdateAvatarUrlParams) _then) = _$UpdateAvatarUrlParamsCopyWithImpl;
@useResult
$Res call({
 String userId, String avatarUrl
});




}
/// @nodoc
class _$UpdateAvatarUrlParamsCopyWithImpl<$Res>
    implements $UpdateAvatarUrlParamsCopyWith<$Res> {
  _$UpdateAvatarUrlParamsCopyWithImpl(this._self, this._then);

  final UpdateAvatarUrlParams _self;
  final $Res Function(UpdateAvatarUrlParams) _then;

/// Create a copy of UpdateAvatarUrlParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? avatarUrl = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateAvatarUrlParams].
extension UpdateAvatarUrlParamsPatterns on UpdateAvatarUrlParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateAvatarUrlParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateAvatarUrlParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateAvatarUrlParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateAvatarUrlParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateAvatarUrlParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateAvatarUrlParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateAvatarUrlParams() when $default != null:
return $default(_that.userId,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _UpdateAvatarUrlParams():
return $default(_that.userId,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _UpdateAvatarUrlParams() when $default != null:
return $default(_that.userId,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateAvatarUrlParams implements UpdateAvatarUrlParams {
  const _UpdateAvatarUrlParams({required this.userId, required this.avatarUrl});
  

@override final  String userId;
@override final  String avatarUrl;

/// Create a copy of UpdateAvatarUrlParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAvatarUrlParamsCopyWith<_UpdateAvatarUrlParams> get copyWith => __$UpdateAvatarUrlParamsCopyWithImpl<_UpdateAvatarUrlParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAvatarUrlParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userId,avatarUrl);

@override
String toString() {
  return 'UpdateAvatarUrlParams(userId: $userId, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$UpdateAvatarUrlParamsCopyWith<$Res> implements $UpdateAvatarUrlParamsCopyWith<$Res> {
  factory _$UpdateAvatarUrlParamsCopyWith(_UpdateAvatarUrlParams value, $Res Function(_UpdateAvatarUrlParams) _then) = __$UpdateAvatarUrlParamsCopyWithImpl;
@override @useResult
$Res call({
 String userId, String avatarUrl
});




}
/// @nodoc
class __$UpdateAvatarUrlParamsCopyWithImpl<$Res>
    implements _$UpdateAvatarUrlParamsCopyWith<$Res> {
  __$UpdateAvatarUrlParamsCopyWithImpl(this._self, this._then);

  final _UpdateAvatarUrlParams _self;
  final $Res Function(_UpdateAvatarUrlParams) _then;

/// Create a copy of UpdateAvatarUrlParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? avatarUrl = null,}) {
  return _then(_UpdateAvatarUrlParams(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
