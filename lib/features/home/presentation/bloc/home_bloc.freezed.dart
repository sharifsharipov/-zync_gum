// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeLoadRequested value)?  loadRequested,TResult Function( HomeRefreshRequested value)?  refreshRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeLoadRequested() when loadRequested != null:
return loadRequested(_that);case HomeRefreshRequested() when refreshRequested != null:
return refreshRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeLoadRequested value)  loadRequested,required TResult Function( HomeRefreshRequested value)  refreshRequested,}){
final _that = this;
switch (_that) {
case HomeLoadRequested():
return loadRequested(_that);case HomeRefreshRequested():
return refreshRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeLoadRequested value)?  loadRequested,TResult? Function( HomeRefreshRequested value)?  refreshRequested,}){
final _that = this;
switch (_that) {
case HomeLoadRequested() when loadRequested != null:
return loadRequested(_that);case HomeRefreshRequested() when refreshRequested != null:
return refreshRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadRequested,TResult Function()?  refreshRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeLoadRequested() when loadRequested != null:
return loadRequested();case HomeRefreshRequested() when refreshRequested != null:
return refreshRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadRequested,required TResult Function()  refreshRequested,}) {final _that = this;
switch (_that) {
case HomeLoadRequested():
return loadRequested();case HomeRefreshRequested():
return refreshRequested();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadRequested,TResult? Function()?  refreshRequested,}) {final _that = this;
switch (_that) {
case HomeLoadRequested() when loadRequested != null:
return loadRequested();case HomeRefreshRequested() when refreshRequested != null:
return refreshRequested();case _:
  return null;

}
}

}

/// @nodoc


class HomeLoadRequested implements HomeEvent {
  const HomeLoadRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoadRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadRequested()';
}


}




/// @nodoc


class HomeRefreshRequested implements HomeEvent {
  const HomeRefreshRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeRefreshRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.refreshRequested()';
}


}




/// @nodoc
mixin _$HomeState {

 Status get status; List<ProductionLineEntity> get productionLines; List<InventoryEntity> get inventory; List<BusinessEntity> get businesses; Failure get failure;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.productionLines, productionLines)&&const DeepCollectionEquality().equals(other.inventory, inventory)&&const DeepCollectionEquality().equals(other.businesses, businesses)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(productionLines),const DeepCollectionEquality().hash(inventory),const DeepCollectionEquality().hash(businesses),failure);

@override
String toString() {
  return 'HomeState(status: $status, productionLines: $productionLines, inventory: $inventory, businesses: $businesses, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 Status status, List<ProductionLineEntity> productionLines, List<InventoryEntity> inventory, List<BusinessEntity> businesses, Failure failure
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? productionLines = null,Object? inventory = null,Object? businesses = null,Object? failure = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,productionLines: null == productionLines ? _self.productionLines : productionLines // ignore: cast_nullable_to_non_nullable
as List<ProductionLineEntity>,inventory: null == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as List<InventoryEntity>,businesses: null == businesses ? _self.businesses : businesses // ignore: cast_nullable_to_non_nullable
as List<BusinessEntity>,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Status status,  List<ProductionLineEntity> productionLines,  List<InventoryEntity> inventory,  List<BusinessEntity> businesses,  Failure failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.productionLines,_that.inventory,_that.businesses,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Status status,  List<ProductionLineEntity> productionLines,  List<InventoryEntity> inventory,  List<BusinessEntity> businesses,  Failure failure)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.status,_that.productionLines,_that.inventory,_that.businesses,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Status status,  List<ProductionLineEntity> productionLines,  List<InventoryEntity> inventory,  List<BusinessEntity> businesses,  Failure failure)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.productionLines,_that.inventory,_that.businesses,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.status = Status.pure, final  List<ProductionLineEntity> productionLines = const [], final  List<InventoryEntity> inventory = const [], final  List<BusinessEntity> businesses = const [], this.failure = const UnknownFailure()}): _productionLines = productionLines,_inventory = inventory,_businesses = businesses;
  

@override@JsonKey() final  Status status;
 final  List<ProductionLineEntity> _productionLines;
@override@JsonKey() List<ProductionLineEntity> get productionLines {
  if (_productionLines is EqualUnmodifiableListView) return _productionLines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productionLines);
}

 final  List<InventoryEntity> _inventory;
@override@JsonKey() List<InventoryEntity> get inventory {
  if (_inventory is EqualUnmodifiableListView) return _inventory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inventory);
}

 final  List<BusinessEntity> _businesses;
@override@JsonKey() List<BusinessEntity> get businesses {
  if (_businesses is EqualUnmodifiableListView) return _businesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_businesses);
}

@override@JsonKey() final  Failure failure;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._productionLines, _productionLines)&&const DeepCollectionEquality().equals(other._inventory, _inventory)&&const DeepCollectionEquality().equals(other._businesses, _businesses)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_productionLines),const DeepCollectionEquality().hash(_inventory),const DeepCollectionEquality().hash(_businesses),failure);

@override
String toString() {
  return 'HomeState(status: $status, productionLines: $productionLines, inventory: $inventory, businesses: $businesses, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, List<ProductionLineEntity> productionLines, List<InventoryEntity> inventory, List<BusinessEntity> businesses, Failure failure
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? productionLines = null,Object? inventory = null,Object? businesses = null,Object? failure = null,}) {
  return _then(_HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,productionLines: null == productionLines ? _self._productionLines : productionLines // ignore: cast_nullable_to_non_nullable
as List<ProductionLineEntity>,inventory: null == inventory ? _self._inventory : inventory // ignore: cast_nullable_to_non_nullable
as List<InventoryEntity>,businesses: null == businesses ? _self._businesses : businesses // ignore: cast_nullable_to_non_nullable
as List<BusinessEntity>,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
