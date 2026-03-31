// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BusinessEntity {

 String get id; String get name; String get type; double get monthlyRevenue; int get employeesCount; bool get isActive; String get address; String get userId; DateTime? get createdAt;
/// Create a copy of BusinessEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessEntityCopyWith<BusinessEntity> get copyWith => _$BusinessEntityCopyWithImpl<BusinessEntity>(this as BusinessEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.monthlyRevenue, monthlyRevenue) || other.monthlyRevenue == monthlyRevenue)&&(identical(other.employeesCount, employeesCount) || other.employeesCount == employeesCount)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.address, address) || other.address == address)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,type,monthlyRevenue,employeesCount,isActive,address,userId,createdAt);

@override
String toString() {
  return 'BusinessEntity(id: $id, name: $name, type: $type, monthlyRevenue: $monthlyRevenue, employeesCount: $employeesCount, isActive: $isActive, address: $address, userId: $userId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BusinessEntityCopyWith<$Res>  {
  factory $BusinessEntityCopyWith(BusinessEntity value, $Res Function(BusinessEntity) _then) = _$BusinessEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, double monthlyRevenue, int employeesCount, bool isActive, String address, String userId, DateTime? createdAt
});




}
/// @nodoc
class _$BusinessEntityCopyWithImpl<$Res>
    implements $BusinessEntityCopyWith<$Res> {
  _$BusinessEntityCopyWithImpl(this._self, this._then);

  final BusinessEntity _self;
  final $Res Function(BusinessEntity) _then;

/// Create a copy of BusinessEntity
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


/// Adds pattern-matching-related methods to [BusinessEntity].
extension BusinessEntityPatterns on BusinessEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessEntity value)  $default,){
final _that = this;
switch (_that) {
case _BusinessEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  double monthlyRevenue,  int employeesCount,  bool isActive,  String address,  String userId,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  double monthlyRevenue,  int employeesCount,  bool isActive,  String address,  String userId,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BusinessEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  double monthlyRevenue,  int employeesCount,  bool isActive,  String address,  String userId,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BusinessEntity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.monthlyRevenue,_that.employeesCount,_that.isActive,_that.address,_that.userId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _BusinessEntity implements BusinessEntity {
  const _BusinessEntity({required this.id, required this.name, required this.type, this.monthlyRevenue = 0.0, this.employeesCount = 0, this.isActive = true, this.address = '', this.userId = '', this.createdAt});
  

@override final  String id;
@override final  String name;
@override final  String type;
@override@JsonKey() final  double monthlyRevenue;
@override@JsonKey() final  int employeesCount;
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  String address;
@override@JsonKey() final  String userId;
@override final  DateTime? createdAt;

/// Create a copy of BusinessEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessEntityCopyWith<_BusinessEntity> get copyWith => __$BusinessEntityCopyWithImpl<_BusinessEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.monthlyRevenue, monthlyRevenue) || other.monthlyRevenue == monthlyRevenue)&&(identical(other.employeesCount, employeesCount) || other.employeesCount == employeesCount)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.address, address) || other.address == address)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,type,monthlyRevenue,employeesCount,isActive,address,userId,createdAt);

@override
String toString() {
  return 'BusinessEntity(id: $id, name: $name, type: $type, monthlyRevenue: $monthlyRevenue, employeesCount: $employeesCount, isActive: $isActive, address: $address, userId: $userId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BusinessEntityCopyWith<$Res> implements $BusinessEntityCopyWith<$Res> {
  factory _$BusinessEntityCopyWith(_BusinessEntity value, $Res Function(_BusinessEntity) _then) = __$BusinessEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, double monthlyRevenue, int employeesCount, bool isActive, String address, String userId, DateTime? createdAt
});




}
/// @nodoc
class __$BusinessEntityCopyWithImpl<$Res>
    implements _$BusinessEntityCopyWith<$Res> {
  __$BusinessEntityCopyWithImpl(this._self, this._then);

  final _BusinessEntity _self;
  final $Res Function(_BusinessEntity) _then;

/// Create a copy of BusinessEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? monthlyRevenue = null,Object? employeesCount = null,Object? isActive = null,Object? address = null,Object? userId = null,Object? createdAt = freezed,}) {
  return _then(_BusinessEntity(
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
