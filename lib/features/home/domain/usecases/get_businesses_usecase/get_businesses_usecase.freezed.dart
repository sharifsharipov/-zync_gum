// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_businesses_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetBusinessesParams {

 String get userId;
/// Create a copy of GetBusinessesParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBusinessesParamsCopyWith<GetBusinessesParams> get copyWith => _$GetBusinessesParamsCopyWithImpl<GetBusinessesParams>(this as GetBusinessesParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBusinessesParams&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'GetBusinessesParams(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetBusinessesParamsCopyWith<$Res>  {
  factory $GetBusinessesParamsCopyWith(GetBusinessesParams value, $Res Function(GetBusinessesParams) _then) = _$GetBusinessesParamsCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetBusinessesParamsCopyWithImpl<$Res>
    implements $GetBusinessesParamsCopyWith<$Res> {
  _$GetBusinessesParamsCopyWithImpl(this._self, this._then);

  final GetBusinessesParams _self;
  final $Res Function(GetBusinessesParams) _then;

/// Create a copy of GetBusinessesParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBusinessesParams].
extension GetBusinessesParamsPatterns on GetBusinessesParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBusinessesParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBusinessesParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBusinessesParams value)  $default,){
final _that = this;
switch (_that) {
case _GetBusinessesParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBusinessesParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetBusinessesParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBusinessesParams() when $default != null:
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId)  $default,) {final _that = this;
switch (_that) {
case _GetBusinessesParams():
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId)?  $default,) {final _that = this;
switch (_that) {
case _GetBusinessesParams() when $default != null:
return $default(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _GetBusinessesParams implements GetBusinessesParams {
  const _GetBusinessesParams({required this.userId});
  

@override final  String userId;

/// Create a copy of GetBusinessesParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBusinessesParamsCopyWith<_GetBusinessesParams> get copyWith => __$GetBusinessesParamsCopyWithImpl<_GetBusinessesParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBusinessesParams&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'GetBusinessesParams(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetBusinessesParamsCopyWith<$Res> implements $GetBusinessesParamsCopyWith<$Res> {
  factory _$GetBusinessesParamsCopyWith(_GetBusinessesParams value, $Res Function(_GetBusinessesParams) _then) = __$GetBusinessesParamsCopyWithImpl;
@override @useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetBusinessesParamsCopyWithImpl<$Res>
    implements _$GetBusinessesParamsCopyWith<$Res> {
  __$GetBusinessesParamsCopyWithImpl(this._self, this._then);

  final _GetBusinessesParams _self;
  final $Res Function(_GetBusinessesParams) _then;

/// Create a copy of GetBusinessesParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetBusinessesParams(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
