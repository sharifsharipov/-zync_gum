// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessResponse {

 String get id; String get name; String get type; double get monthlyRevenue; int get employeesCount; bool get isActive; String get address; String get userId;@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) DateTime? get createdAt;
/// Create a copy of BusinessResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessResponseCopyWith<BusinessResponse> get copyWith => _$BusinessResponseCopyWithImpl<BusinessResponse>(this as BusinessResponse, _$identity);

  /// Serializes this BusinessResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.monthlyRevenue, monthlyRevenue) || other.monthlyRevenue == monthlyRevenue)&&(identical(other.employeesCount, employeesCount) || other.employeesCount == employeesCount)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.address, address) || other.address == address)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,monthlyRevenue,employeesCount,isActive,address,userId,createdAt);

@override
String toString() {
  return 'BusinessResponse(id: $id, name: $name, type: $type, monthlyRevenue: $monthlyRevenue, employeesCount: $employeesCount, isActive: $isActive, address: $address, userId: $userId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BusinessResponseCopyWith<$Res>  {
  factory $BusinessResponseCopyWith(BusinessResponse value, $Res Function(BusinessResponse) _then) = _$BusinessResponseCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, double monthlyRevenue, int employeesCount, bool isActive, String address, String userId,@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) DateTime? createdAt
});




}
/// @nodoc
class _$BusinessResponseCopyWithImpl<$Res>
    implements $BusinessResponseCopyWith<$Res> {
  _$BusinessResponseCopyWithImpl(this._self, this._then);

  final BusinessResponse _self;
  final $Res Function(BusinessResponse) _then;

/// Create a copy of BusinessResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? monthlyRevenue = null,Object? employeesCount = null,Object? isActive = null,Object? address = null,Object? userId = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,monthlyRevenue: null == monthlyRevenue ? _self.monthlyRevenue : monthlyRevenue // ignore: cast_nullable_to_non_nullable
as double,employeesCount: null == employeesCount ? _self.employeesCount : employeesCount // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessResponse].
extension BusinessResponsePatterns on BusinessResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessResponse value)  $default,){
final _that = this;
switch (_that) {
case _BusinessResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  double monthlyRevenue,  int employeesCount,  bool isActive,  String address,  String userId, @JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp)  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessResponse() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.monthlyRevenue,_that.employeesCount,_that.isActive,_that.address,_that.userId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  double monthlyRevenue,  int employeesCount,  bool isActive,  String address,  String userId, @JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp)  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BusinessResponse():
return $default(_that.id,_that.name,_that.type,_that.monthlyRevenue,_that.employeesCount,_that.isActive,_that.address,_that.userId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  double monthlyRevenue,  int employeesCount,  bool isActive,  String address,  String userId, @JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp)  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BusinessResponse() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.monthlyRevenue,_that.employeesCount,_that.isActive,_that.address,_that.userId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessResponse implements BusinessResponse {
  const _BusinessResponse({required this.id, required this.name, this.type = 'other', this.monthlyRevenue = 0.0, this.employeesCount = 0, this.isActive = true, this.address = '', this.userId = '', @JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) this.createdAt});
  factory _BusinessResponse.fromJson(Map<String, dynamic> json) => _$BusinessResponseFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String type;
@override@JsonKey() final  double monthlyRevenue;
@override@JsonKey() final  int employeesCount;
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  String address;
@override@JsonKey() final  String userId;
@override@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) final  DateTime? createdAt;

/// Create a copy of BusinessResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessResponseCopyWith<_BusinessResponse> get copyWith => __$BusinessResponseCopyWithImpl<_BusinessResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.monthlyRevenue, monthlyRevenue) || other.monthlyRevenue == monthlyRevenue)&&(identical(other.employeesCount, employeesCount) || other.employeesCount == employeesCount)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.address, address) || other.address == address)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,monthlyRevenue,employeesCount,isActive,address,userId,createdAt);

@override
String toString() {
  return 'BusinessResponse(id: $id, name: $name, type: $type, monthlyRevenue: $monthlyRevenue, employeesCount: $employeesCount, isActive: $isActive, address: $address, userId: $userId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BusinessResponseCopyWith<$Res> implements $BusinessResponseCopyWith<$Res> {
  factory _$BusinessResponseCopyWith(_BusinessResponse value, $Res Function(_BusinessResponse) _then) = __$BusinessResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, double monthlyRevenue, int employeesCount, bool isActive, String address, String userId,@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) DateTime? createdAt
});




}
/// @nodoc
class __$BusinessResponseCopyWithImpl<$Res>
    implements _$BusinessResponseCopyWith<$Res> {
  __$BusinessResponseCopyWithImpl(this._self, this._then);

  final _BusinessResponse _self;
  final $Res Function(_BusinessResponse) _then;

/// Create a copy of BusinessResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? monthlyRevenue = null,Object? employeesCount = null,Object? isActive = null,Object? address = null,Object? userId = null,Object? createdAt = freezed,}) {
  return _then(_BusinessResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,monthlyRevenue: null == monthlyRevenue ? _self.monthlyRevenue : monthlyRevenue // ignore: cast_nullable_to_non_nullable
as double,employeesCount: null == employeesCount ? _self.employeesCount : employeesCount // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
