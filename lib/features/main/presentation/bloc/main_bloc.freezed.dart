// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainEvent {

 MainMenu get menu;
/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainEventCopyWith<MainEvent> get copyWith => _$MainEventCopyWithImpl<MainEvent>(this as MainEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainEvent&&(identical(other.menu, menu) || other.menu == menu));
}


@override
int get hashCode => Object.hash(runtimeType,menu);

@override
String toString() {
  return 'MainEvent(menu: $menu)';
}


}

/// @nodoc
abstract mixin class $MainEventCopyWith<$Res>  {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) _then) = _$MainEventCopyWithImpl;
@useResult
$Res call({
 MainMenu menu
});




}
/// @nodoc
class _$MainEventCopyWithImpl<$Res>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._self, this._then);

  final MainEvent _self;
  final $Res Function(MainEvent) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menu = null,}) {
  return _then(_self.copyWith(
menu: null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as MainMenu,
  ));
}

}


/// Adds pattern-matching-related methods to [MainEvent].
extension MainEventPatterns on MainEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ChangeMenu value)?  changeMenu,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeMenu() when changeMenu != null:
return changeMenu(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ChangeMenu value)  changeMenu,}){
final _that = this;
switch (_that) {
case _ChangeMenu():
return changeMenu(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ChangeMenu value)?  changeMenu,}){
final _that = this;
switch (_that) {
case _ChangeMenu() when changeMenu != null:
return changeMenu(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MainMenu menu)?  changeMenu,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeMenu() when changeMenu != null:
return changeMenu(_that.menu);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MainMenu menu)  changeMenu,}) {final _that = this;
switch (_that) {
case _ChangeMenu():
return changeMenu(_that.menu);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MainMenu menu)?  changeMenu,}) {final _that = this;
switch (_that) {
case _ChangeMenu() when changeMenu != null:
return changeMenu(_that.menu);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeMenu implements MainEvent {
  const _ChangeMenu(this.menu);
  

@override final  MainMenu menu;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeMenuCopyWith<_ChangeMenu> get copyWith => __$ChangeMenuCopyWithImpl<_ChangeMenu>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeMenu&&(identical(other.menu, menu) || other.menu == menu));
}


@override
int get hashCode => Object.hash(runtimeType,menu);

@override
String toString() {
  return 'MainEvent.changeMenu(menu: $menu)';
}


}

/// @nodoc
abstract mixin class _$ChangeMenuCopyWith<$Res> implements $MainEventCopyWith<$Res> {
  factory _$ChangeMenuCopyWith(_ChangeMenu value, $Res Function(_ChangeMenu) _then) = __$ChangeMenuCopyWithImpl;
@override @useResult
$Res call({
 MainMenu menu
});




}
/// @nodoc
class __$ChangeMenuCopyWithImpl<$Res>
    implements _$ChangeMenuCopyWith<$Res> {
  __$ChangeMenuCopyWithImpl(this._self, this._then);

  final _ChangeMenu _self;
  final $Res Function(_ChangeMenu) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menu = null,}) {
  return _then(_ChangeMenu(
null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as MainMenu,
  ));
}


}

/// @nodoc
mixin _$MainState {

 MainMenu get menu;
/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainStateCopyWith<MainState> get copyWith => _$MainStateCopyWithImpl<MainState>(this as MainState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainState&&(identical(other.menu, menu) || other.menu == menu));
}


@override
int get hashCode => Object.hash(runtimeType,menu);

@override
String toString() {
  return 'MainState(menu: $menu)';
}


}

/// @nodoc
abstract mixin class $MainStateCopyWith<$Res>  {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) _then) = _$MainStateCopyWithImpl;
@useResult
$Res call({
 MainMenu menu
});




}
/// @nodoc
class _$MainStateCopyWithImpl<$Res>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._self, this._then);

  final MainState _self;
  final $Res Function(MainState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menu = null,}) {
  return _then(_self.copyWith(
menu: null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as MainMenu,
  ));
}

}


/// Adds pattern-matching-related methods to [MainState].
extension MainStatePatterns on MainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MainMenu menu)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.menu);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MainMenu menu)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.menu);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MainMenu menu)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.menu);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MainState {
  const _Initial({this.menu = MainMenu.home});
  

@override@JsonKey() final  MainMenu menu;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.menu, menu) || other.menu == menu));
}


@override
int get hashCode => Object.hash(runtimeType,menu);

@override
String toString() {
  return 'MainState.initial(menu: $menu)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 MainMenu menu
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menu = null,}) {
  return _then(_Initial(
menu: null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as MainMenu,
  ));
}


}

// dart format on
