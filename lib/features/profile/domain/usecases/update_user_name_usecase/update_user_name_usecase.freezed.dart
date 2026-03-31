// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_name_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateUserNameParams {

 String get userId; String get name;
/// Create a copy of UpdateUserNameParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserNameParamsCopyWith<UpdateUserNameParams> get copyWith => _$UpdateUserNameParamsCopyWithImpl<UpdateUserNameParams>(this as UpdateUserNameParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserNameParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,userId,name);

@override
String toString() {
  return 'UpdateUserNameParams(userId: $userId, name: $name)';
}


}

/// @nodoc
abstract mixin class $UpdateUserNameParamsCopyWith<$Res>  {
  factory $UpdateUserNameParamsCopyWith(UpdateUserNameParams value, $Res Function(UpdateUserNameParams) _then) = _$UpdateUserNameParamsCopyWithImpl;
@useResult
$Res call({
 String userId, String name
});




}
/// @nodoc
class _$UpdateUserNameParamsCopyWithImpl<$Res>
    implements $UpdateUserNameParamsCopyWith<$Res> {
  _$UpdateUserNameParamsCopyWithImpl(this._self, this._then);

  final UpdateUserNameParams _self;
  final $Res Function(UpdateUserNameParams) _then;

/// Create a copy of UpdateUserNameParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? name = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUserNameParams].
extension UpdateUserNameParamsPatterns on UpdateUserNameParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserNameParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserNameParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserNameParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserNameParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserNameParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserNameParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserNameParams() when $default != null:
return $default(_that.userId,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String name)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserNameParams():
return $default(_that.userId,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String name)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserNameParams() when $default != null:
return $default(_that.userId,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateUserNameParams implements UpdateUserNameParams {
  const _UpdateUserNameParams({required this.userId, required this.name});
  

@override final  String userId;
@override final  String name;

/// Create a copy of UpdateUserNameParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserNameParamsCopyWith<_UpdateUserNameParams> get copyWith => __$UpdateUserNameParamsCopyWithImpl<_UpdateUserNameParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserNameParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,userId,name);

@override
String toString() {
  return 'UpdateUserNameParams(userId: $userId, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserNameParamsCopyWith<$Res> implements $UpdateUserNameParamsCopyWith<$Res> {
  factory _$UpdateUserNameParamsCopyWith(_UpdateUserNameParams value, $Res Function(_UpdateUserNameParams) _then) = __$UpdateUserNameParamsCopyWithImpl;
@override @useResult
$Res call({
 String userId, String name
});




}
/// @nodoc
class __$UpdateUserNameParamsCopyWithImpl<$Res>
    implements _$UpdateUserNameParamsCopyWith<$Res> {
  __$UpdateUserNameParamsCopyWithImpl(this._self, this._then);

  final _UpdateUserNameParams _self;
  final $Res Function(_UpdateUserNameParams) _then;

/// Create a copy of UpdateUserNameParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = null,}) {
  return _then(_UpdateUserNameParams(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
