// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_line_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductionLineEntity {

 String get id; String get flavor; String get status; double get progressPercent; double get temperature; int get dailyTarget; int get produced;
/// Create a copy of ProductionLineEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductionLineEntityCopyWith<ProductionLineEntity> get copyWith => _$ProductionLineEntityCopyWithImpl<ProductionLineEntity>(this as ProductionLineEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductionLineEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.flavor, flavor) || other.flavor == flavor)&&(identical(other.status, status) || other.status == status)&&(identical(other.progressPercent, progressPercent) || other.progressPercent == progressPercent)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.dailyTarget, dailyTarget) || other.dailyTarget == dailyTarget)&&(identical(other.produced, produced) || other.produced == produced));
}


@override
int get hashCode => Object.hash(runtimeType,id,flavor,status,progressPercent,temperature,dailyTarget,produced);

@override
String toString() {
  return 'ProductionLineEntity(id: $id, flavor: $flavor, status: $status, progressPercent: $progressPercent, temperature: $temperature, dailyTarget: $dailyTarget, produced: $produced)';
}


}

/// @nodoc
abstract mixin class $ProductionLineEntityCopyWith<$Res>  {
  factory $ProductionLineEntityCopyWith(ProductionLineEntity value, $Res Function(ProductionLineEntity) _then) = _$ProductionLineEntityCopyWithImpl;
@useResult
$Res call({
 String id, String flavor, String status, double progressPercent, double temperature, int dailyTarget, int produced
});




}
/// @nodoc
class _$ProductionLineEntityCopyWithImpl<$Res>
    implements $ProductionLineEntityCopyWith<$Res> {
  _$ProductionLineEntityCopyWithImpl(this._self, this._then);

  final ProductionLineEntity _self;
  final $Res Function(ProductionLineEntity) _then;

/// Create a copy of ProductionLineEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? flavor = null,Object? status = null,Object? progressPercent = null,Object? temperature = null,Object? dailyTarget = null,Object? produced = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,flavor: null == flavor ? _self.flavor : flavor // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,progressPercent: null == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as double,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,dailyTarget: null == dailyTarget ? _self.dailyTarget : dailyTarget // ignore: cast_nullable_to_non_nullable
as int,produced: null == produced ? _self.produced : produced // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductionLineEntity].
extension ProductionLineEntityPatterns on ProductionLineEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductionLineEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductionLineEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductionLineEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductionLineEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductionLineEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductionLineEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String flavor,  String status,  double progressPercent,  double temperature,  int dailyTarget,  int produced)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductionLineEntity() when $default != null:
return $default(_that.id,_that.flavor,_that.status,_that.progressPercent,_that.temperature,_that.dailyTarget,_that.produced);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String flavor,  String status,  double progressPercent,  double temperature,  int dailyTarget,  int produced)  $default,) {final _that = this;
switch (_that) {
case _ProductionLineEntity():
return $default(_that.id,_that.flavor,_that.status,_that.progressPercent,_that.temperature,_that.dailyTarget,_that.produced);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String flavor,  String status,  double progressPercent,  double temperature,  int dailyTarget,  int produced)?  $default,) {final _that = this;
switch (_that) {
case _ProductionLineEntity() when $default != null:
return $default(_that.id,_that.flavor,_that.status,_that.progressPercent,_that.temperature,_that.dailyTarget,_that.produced);case _:
  return null;

}
}

}

/// @nodoc


class _ProductionLineEntity implements ProductionLineEntity {
  const _ProductionLineEntity({required this.id, required this.flavor, required this.status, required this.progressPercent, required this.temperature, this.dailyTarget = 0, this.produced = 0});
  

@override final  String id;
@override final  String flavor;
@override final  String status;
@override final  double progressPercent;
@override final  double temperature;
@override@JsonKey() final  int dailyTarget;
@override@JsonKey() final  int produced;

/// Create a copy of ProductionLineEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductionLineEntityCopyWith<_ProductionLineEntity> get copyWith => __$ProductionLineEntityCopyWithImpl<_ProductionLineEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductionLineEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.flavor, flavor) || other.flavor == flavor)&&(identical(other.status, status) || other.status == status)&&(identical(other.progressPercent, progressPercent) || other.progressPercent == progressPercent)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.dailyTarget, dailyTarget) || other.dailyTarget == dailyTarget)&&(identical(other.produced, produced) || other.produced == produced));
}


@override
int get hashCode => Object.hash(runtimeType,id,flavor,status,progressPercent,temperature,dailyTarget,produced);

@override
String toString() {
  return 'ProductionLineEntity(id: $id, flavor: $flavor, status: $status, progressPercent: $progressPercent, temperature: $temperature, dailyTarget: $dailyTarget, produced: $produced)';
}


}

/// @nodoc
abstract mixin class _$ProductionLineEntityCopyWith<$Res> implements $ProductionLineEntityCopyWith<$Res> {
  factory _$ProductionLineEntityCopyWith(_ProductionLineEntity value, $Res Function(_ProductionLineEntity) _then) = __$ProductionLineEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String flavor, String status, double progressPercent, double temperature, int dailyTarget, int produced
});




}
/// @nodoc
class __$ProductionLineEntityCopyWithImpl<$Res>
    implements _$ProductionLineEntityCopyWith<$Res> {
  __$ProductionLineEntityCopyWithImpl(this._self, this._then);

  final _ProductionLineEntity _self;
  final $Res Function(_ProductionLineEntity) _then;

/// Create a copy of ProductionLineEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? flavor = null,Object? status = null,Object? progressPercent = null,Object? temperature = null,Object? dailyTarget = null,Object? produced = null,}) {
  return _then(_ProductionLineEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,flavor: null == flavor ? _self.flavor : flavor // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,progressPercent: null == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as double,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,dailyTarget: null == dailyTarget ? _self.dailyTarget : dailyTarget // ignore: cast_nullable_to_non_nullable
as int,produced: null == produced ? _self.produced : produced // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
