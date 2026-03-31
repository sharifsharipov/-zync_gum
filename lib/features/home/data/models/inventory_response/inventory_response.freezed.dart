// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryResponse {

 String get id; String get materialName; double get quantity; String get unit; double get minLevel;
/// Create a copy of InventoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryResponseCopyWith<InventoryResponse> get copyWith => _$InventoryResponseCopyWithImpl<InventoryResponse>(this as InventoryResponse, _$identity);

  /// Serializes this InventoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.materialName, materialName) || other.materialName == materialName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,materialName,quantity,unit,minLevel);

@override
String toString() {
  return 'InventoryResponse(id: $id, materialName: $materialName, quantity: $quantity, unit: $unit, minLevel: $minLevel)';
}


}

/// @nodoc
abstract mixin class $InventoryResponseCopyWith<$Res>  {
  factory $InventoryResponseCopyWith(InventoryResponse value, $Res Function(InventoryResponse) _then) = _$InventoryResponseCopyWithImpl;
@useResult
$Res call({
 String id, String materialName, double quantity, String unit, double minLevel
});




}
/// @nodoc
class _$InventoryResponseCopyWithImpl<$Res>
    implements $InventoryResponseCopyWith<$Res> {
  _$InventoryResponseCopyWithImpl(this._self, this._then);

  final InventoryResponse _self;
  final $Res Function(InventoryResponse) _then;

/// Create a copy of InventoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? materialName = null,Object? quantity = null,Object? unit = null,Object? minLevel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,materialName: null == materialName ? _self.materialName : materialName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,minLevel: null == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryResponse].
extension InventoryResponsePatterns on InventoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _InventoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String materialName,  double quantity,  String unit,  double minLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryResponse() when $default != null:
return $default(_that.id,_that.materialName,_that.quantity,_that.unit,_that.minLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String materialName,  double quantity,  String unit,  double minLevel)  $default,) {final _that = this;
switch (_that) {
case _InventoryResponse():
return $default(_that.id,_that.materialName,_that.quantity,_that.unit,_that.minLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String materialName,  double quantity,  String unit,  double minLevel)?  $default,) {final _that = this;
switch (_that) {
case _InventoryResponse() when $default != null:
return $default(_that.id,_that.materialName,_that.quantity,_that.unit,_that.minLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryResponse implements InventoryResponse {
  const _InventoryResponse({required this.id, required this.materialName, this.quantity = 0.0, this.unit = 'kg', this.minLevel = 0.0});
  factory _InventoryResponse.fromJson(Map<String, dynamic> json) => _$InventoryResponseFromJson(json);

@override final  String id;
@override final  String materialName;
@override@JsonKey() final  double quantity;
@override@JsonKey() final  String unit;
@override@JsonKey() final  double minLevel;

/// Create a copy of InventoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryResponseCopyWith<_InventoryResponse> get copyWith => __$InventoryResponseCopyWithImpl<_InventoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.materialName, materialName) || other.materialName == materialName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,materialName,quantity,unit,minLevel);

@override
String toString() {
  return 'InventoryResponse(id: $id, materialName: $materialName, quantity: $quantity, unit: $unit, minLevel: $minLevel)';
}


}

/// @nodoc
abstract mixin class _$InventoryResponseCopyWith<$Res> implements $InventoryResponseCopyWith<$Res> {
  factory _$InventoryResponseCopyWith(_InventoryResponse value, $Res Function(_InventoryResponse) _then) = __$InventoryResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String materialName, double quantity, String unit, double minLevel
});




}
/// @nodoc
class __$InventoryResponseCopyWithImpl<$Res>
    implements _$InventoryResponseCopyWith<$Res> {
  __$InventoryResponseCopyWithImpl(this._self, this._then);

  final _InventoryResponse _self;
  final $Res Function(_InventoryResponse) _then;

/// Create a copy of InventoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? materialName = null,Object? quantity = null,Object? unit = null,Object? minLevel = null,}) {
  return _then(_InventoryResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,materialName: null == materialName ? _self.materialName : materialName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,minLevel: null == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
